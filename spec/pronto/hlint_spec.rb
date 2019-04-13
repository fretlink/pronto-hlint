# frozen_string_literal: true

require 'spec_helper'

module Pronto
  module Hlint
    describe Runner do
      let(:hlint) { Hlint::Runner.new(patches) }
      let(:patches) { [] }

      describe '#run' do
        subject(:run) { hlint.run }

        context 'patches are nil' do
          let(:patches) { nil }

          it 'returns an empty array' do
            expect(run).to eql([])
          end
        end

        context 'no patches' do
          let(:patches) { [] }

          it 'returns an empty array' do
            expect(run).to eql([])
          end
        end

        context 'patches with a one and a four warnings' do
          include_context 'test repo'

          let(:patches) { repo.diff('master') }

          it 'returns correct number of errors' do
            expect(run.count).to eql(3)
          end

          it 'has correct first message' do
            expect(run.first.msg).to match("Unused LANGUAGE pragma")
          end

          context(
            'with files to lint config that never matches',
            config: { 'files_to_lint' => 'will never match' }
          ) do
            it 'returns zero errors' do
              expect(run.count).to eql(0)
            end
          end

          context(
            'with files to lint config that matches only .lhs',
            config: { 'files_to_lint' => '\.lhs$' }
          ) do
            it 'returns correct amount of errors' do
              expect(run.count).to eql(0)
            end
          end

          context(
            'with different hlint executable',
            config: { 'hlint_executable' => './custom_hlint.sh' }
          ) do
            it 'calls the custom hlint hlint_executable' do
              expect { run }.to raise_error(JSON::ParserError, /hlint called!/)
            end
          end
        end
      end

      describe '#files_to_lint' do
        subject(:files_to_lint) { hlint.files_to_lint }

        it 'matches .he by default' do
          expect(files_to_lint).to match('Types.hs')
        end
      end

      describe '#hlint_executable' do
        subject(:hlint_executable) { hlint.hlint_executable }

        it 'is `hlint` by default' do
          expect(hlint_executable).to eql('hlint')
        end

        context(
          'with different hlint executable config',
          config: { 'hlint_executable' => 'custom_hlint' }
        ) do
          it 'is correct' do
            hlint.read_config
            expect(hlint_executable).to eql('custom_hlint')
          end
        end
      end

      describe '#hlint_command_line' do
        subject(:hlint_command_line) { hlint.send(:hlint_command_line, path) }
        let(:path) { '/some/path.rb' }

        it 'adds json output flag' do
          expect(hlint_command_line).to include('--json')
        end

        it 'adds path' do
          expect(hlint_command_line).to include(path)
        end

        it 'starts with hlint executable' do
          expect(hlint_command_line).to start_with(hlint.hlint_executable)
        end

        context 'with path that should be escaped' do
          let(:path) { '/must be/$escaped' }

          it 'escapes the path correctly' do
            expect(hlint_command_line).to include('/must\\ be/\\$escaped')
          end

          it 'does not include unescaped path' do
            expect(hlint_command_line).not_to include(path)
          end
        end

        context(
          'with some command line options',
          config: { 'cmd_line_opts' => '--my command --line opts' }
        ) do
          it 'includes the custom command line options' do
            hlint.read_config
            expect(hlint_command_line).to include('--my command --line opts')
          end
        end
      end
    end
  end
end

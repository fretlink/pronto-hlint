# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'pronto/hlint/version'

Gem::Specification.new do |s|
  s.name     = 'pronto-hlint'
  s.version  = Pronto::Hlint::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors  = ['Paul Bonaud']
  s.email    = 'paul.bonaud@fretlink.com'
  s.homepage = 'https://github.com/fretlink/pronto-hlint'
  s.summary  = <<-EOF
    Pronto runner for Hlint, pluggable linting utility for Haskell
  EOF

  s.licenses              = ['MIT']
  s.required_ruby_version = '>= 2.3.0'

  s.files            = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(lib/|(LICENSE|README.md)$)}) }
  s.extra_rdoc_files = ['LICENSE', 'README.md']
  s.require_paths    = ['lib']
  s.requirements << 'hlint (in PATH)'

  s.add_dependency('pronto', '~> 0.10.0')
  s.add_development_dependency('byebug', '>= 9')
  s.add_development_dependency('rake', '>= 11.0', '< 13')
  s.add_development_dependency('rspec', '~> 3.4')
end

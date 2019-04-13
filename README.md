# Pronto runner for Hlint

[![Build Status](https://travis-ci.org/fretlink/pronto-hlint.svg?branch=master)](https://travis-ci.org/fretlink/pronto-hlint)
[![Gem Version](https://badge.fury.io/rb/pronto-hlint.svg)](http://badge.fury.io/rb/pronto-hlint)

Pronto runner for [Hlint](https://hackage.haskell.org/package/hlint), pluggable linting utility for Haskell. [What is Pronto?](https://github.com/mmozuras/pronto)

## Prerequisites

You'll need to install [hlint by yourself with cabal or stack][hlint-install]. If `hlint` is in your `PATH`, everything will simply work, otherwise you have to provide pronto-hlint your custom executable path (see [below](#configuration-of-hlint)).

[hlint-install]: https://github.com/ndmitchell/hlint#installing-and-running-hlint

## Configuration of Hlint

Configuring Hlint via [.hlint.yaml][.hlint.yaml] will work just fine with pronto-hlint.

[.hlint.yaml]: https://github.com/ndmitchell/hlint#customizing-the-hints

## Configuration of Pronto-Hlint

pronto-hlint can be configured by placing a `.pronto_hlint.yml` inside the directory where pronto will run.

Following options are available:

| Option            | Meaning                                                                                  | Default                             |
| ----------------- | ---------------------------------------------------------------------------------------- | ----------------------------------- |
| hlint_executable  | Hlint executable to call.                                                                | `hlint` (calls `hlint` in `PATH`)   |
| files_to_lint     | What files to lint. Absolute path of offending file will be matched against this Regexp. | `(\.hs)$`                           |
| cmd_line_opts     | Command line options to pass to hlint when running                                       | ``                                  |

Example configuration to call custom hlint executable and only lint files ending with `.my_custom_extension`:

```yaml
# .pronto_hlint.yml
hlint_executable: '/my/custom/path/.bin/hlint'
files_to_lint: '\.my_custom_extension$'
cmd_line_opts: '-j $(nproc) --typecheck'
```

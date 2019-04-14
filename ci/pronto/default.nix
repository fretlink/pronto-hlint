{ bundlerEnv, ruby, hlint }:
let gems = import ./gemset.nix;
in
  bundlerEnv {
    name = "pronto-${gems.pronto.version}";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  }

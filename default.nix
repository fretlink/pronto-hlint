{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let ci = callPackage ./ci/default.nix {};

in ci

{ pkgs ? import <nixpkgs> { } } :
let
  ericspkgs = import (
    builtins.fetchurl "https://ericjohannesson.github.io/nix-repo/default.nix"
  ) { };
in
pkgs.mkShellNoCC {
  packages =
  ( with ericspkgs; [
      nmm-ocaml
      natural-deduction
      cmdsync
    ]
  )
  ++
  ( with pkgs; [
      gh
      gh-markdown-preview
    ]
  );
}


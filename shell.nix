{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/26.05.tar.gz") {} 
}:
let
  ericspkgs = import (
    #fetchurl "https://ericjohannesson.github.io/nix-repo/default.nix"
    ./.
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


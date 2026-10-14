{ pkgs ? import (
    builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/26.05.tar.gz";
      sha256 = "sha256-md0zn0RnwNvPyASas1yG5YUuwQ4ALA6ucL50l0DvqCo=";
    }
  ) { }
}:
let
  ericspkgs = pkgs.callPackage ./. { };
in
pkgs.mkShellNoCC {
  packages =
    with ericspkgs; [
      nmm-ocaml
      natural-deduction
      cmdsync
    ];
}

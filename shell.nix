{ pkgs ? import <nixpkgs> { } } :
let
  ericspkgs = import ./. { };
in
pkgs.mkShellNoCC {
  packages = with ericspkgs; [
    nmm-ocaml
    natural-deduction
    cmdsync
  ];
}

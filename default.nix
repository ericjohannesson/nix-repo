{ pkgs ? import <nixpkgs> { } } : {

  nmm-ocaml = pkgs.callPackage (
    builtins.fetchTarball "https://github.com/ericjohannesson/nmm-ocaml/archive/refs/tags/3.tar.gz"
  ) { };

  natural-deduction = pkgs.callPackage (
    builtins.fetchTarball "https://github.com/ericjohannesson/natural-deduction/archive/refs/tags/0.tar.gz"
  ) { };

  cmdsync = pkgs.callPackage (
    builtins.fetchTarball "https://github.com/ericjohannesson/cmdsync/archive/refs/tags/5.tar.gz"
  ) { };

}

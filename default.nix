{ pkgs ? import <nixpkgs> { } } : {

  nmm-ocaml = pkgs.callPackage (
    builtins.fetchTarball "https://github.com/ericjohannesson/nmm-ocaml/archive/refs/tags/1.tar.gz"
  ) { };

  natural-deduction = pkgs.callPackage (
    builtins.fetchTarball "https://github.com/ericjohannesson/natural-deduction/archive/refs/tags/1.tar.gz"
  ) { };

}

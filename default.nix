{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/26.05.tar.gz") {} 
}:
{

  nmm-ocaml = pkgs.callPackage (
    fetchTarball "https://github.com/ericjohannesson/nmm-ocaml/archive/refs/tags/3.tar.gz"
  ) { };

  natural-deduction = pkgs.callPackage (
    fetchTarball "https://github.com/ericjohannesson/natural-deduction/archive/refs/tags/0.tar.gz"
  ) { };

  cmdsync = pkgs.callPackage (
    fetchTarball "https://github.com/ericjohannesson/cmdsync/archive/refs/tags/5.tar.gz"
  ) { };

}

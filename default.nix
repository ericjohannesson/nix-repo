{ pkgs ? import (
    builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/26.05.tar.gz";
      sha256 = "sha256-md0zn0RnwNvPyASas1yG5YUuwQ4ALA6ucL50l0DvqCo=";
    }
  ) { }
}:
{
  nmm-ocaml = pkgs.callPackage (
    pkgs.fetchgit {
      url = "https://github.com/ericjohannesson/nmm-ocaml";
      hash = "sha256-VsWRoCSux0N8NDm/t6pK1N6XOALqyi4pq7j56e98MQA=";
    }
  ) { };

  natural-deduction = pkgs.callPackage (
    pkgs.fetchgit {
      url = "https://github.com/ericjohannesson/natural-deduction";
      hash = "sha256-dVVG7jBe+LYnZZCWdeGJy/2GaRz5JpCROQiHxhIkgbs=";
    }
  ) { };

  cmdsync = pkgs.callPackage (
    pkgs.fetchgit {
      url = "https://github.com/ericjohannesson/cmdsync";
      hash = "sha256-21qcrucZZMxBalMC7DObyFkFLyhxF2RJnnEsexJD3Ss=";
    }
  ) { };
}

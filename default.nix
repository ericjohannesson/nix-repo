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
      hash = "sha256-/1YdzFIEfo6EyDnQsAIaCSzpW5P1GcXie6JeRsZiMEc=";
    }
  ) { };

  natural-deduction = pkgs.callPackage (
    pkgs.fetchgit {
      url = "https://github.com/ericjohannesson/natural-deduction";
      hash = "sha256-0eGVTQ0OiCNVdL25967K8E7Qypcka3gfgiP/ZQalWtw=";
    }
  ) { };

  cmdsync = pkgs.callPackage (
    pkgs.fetchgit {
      url = "https://github.com/ericjohannesson/cmdsync";
      hash = "sha256-LjLZSrZBOl0LNNMdxsr9qePEOHn8W8Tg+QyflGINppQ=";
    }
  ) { };
}

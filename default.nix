{ pkgs ? import (
    builtins.fetchTarball {
      url    = "https://github.com/NixOS/nixpkgs/archive/refs/tags/26.05.tar.gz";
      sha256 = "sha256-md0zn0RnwNvPyASas1yG5YUuwQ4ALA6ucL50l0DvqCo=";
    }
  ) { }
}:
{
  nmm-ocaml = pkgs.callPackage (
    pkgs.fetchgit {
      url  = "https://github.com/ericjohannesson/nmm-ocaml";
      rev  = "55ae67a11616d3175954300d859e8dcdb0cf93aa";
      hash = "sha256-/1YdzFIEfo6EyDnQsAIaCSzpW5P1GcXie6JeRsZiMEc=";
    }
  ) { };

  natural-deduction = pkgs.callPackage (
    pkgs.fetchgit {
      url  = "https://github.com/ericjohannesson/natural-deduction";
      rev  = "7170d8a424c9ce8e5d6202f42c69f8dee6dab8ad";
      hash = "sha256-0eGVTQ0OiCNVdL25967K8E7Qypcka3gfgiP/ZQalWtw=";
    }
  ) { };

  cmdsync = pkgs.callPackage (
    pkgs.fetchgit {
      url  = "https://github.com/ericjohannesson/cmdsync";
      rev  = "96111a38414bb71253776933876c660e031da7dd";
      hash = "sha256-LjLZSrZBOl0LNNMdxsr9qePEOHn8W8Tg+QyflGINppQ=";
    }
  ) { };
}

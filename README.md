# nix-repo

## Usage

To use the packages in this repo, you may include the following in your nix-files:
```nix
# ...
let
  ericspkgs = import (
    builtins.fetchTarball "https://github.com/ericjohannesson/nix-repo/archive/refs/tags/v3.tar.gz"
  ) { };
in
# ... ericspkgs ...
```

## Packages

- nmm-ocaml
  https://github.com/ericjohannesson/nmm-ocaml

- natural-deduction
  https://github.com/ericjohannesson/natural-deduction

- cmdsync
  https://github.com/ericjohannesson/cmdsync

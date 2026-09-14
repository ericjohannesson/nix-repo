{ } : {

  nmm-ocaml = import (
    builtins.fetchTarball "https://github.com/ericjohannesson/nmm-ocaml/archive/refs/tags/1.tar.gz"
  ) { };

  natural-deduction = import (
    builtins.fetchTarball "https://github.com/ericjohannesson/natural-deduction/archive/refs/tags/1.tar.gz"
  ) { };

}

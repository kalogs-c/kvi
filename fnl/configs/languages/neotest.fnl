(local opts {:adapters [(require :neotest-go) (require :neotest-rust)]})

((. (require :neotest) :setup) opts)

(let [files (require :mini.files)
      pairs (require :mini.pairs)
      surround (require :mini.surround)
      splitjoin (require :mini.splitjoin)]
  (pairs.setup)
  (files.setup {:mappings {:close "<C-n>"}})
  (surround.setup)
  (splitjoin.setup {:mappings {:toggle "fS"}}))

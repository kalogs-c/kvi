(let [files (require :mini.files)
      pairs (require :mini.pairs)
      surround (require :mini.surround)
      splitjoin (require :mini.splitjoin)]
  (files.setup)
  (pairs.setup)
  (surround.setup)
  (splitjoin.setup {:mappings {:toggle "fS"}}))

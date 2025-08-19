(local opts 
  {:auto_install true
   :highlight {:enable true 
               :use_languagetree true}
   :indent {:enable true}})

(let [ts (require :nvim-treesitter.configs)]
  (ts.setup opts))

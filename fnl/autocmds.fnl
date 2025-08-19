(local autocmd vim.api.nvim_create_autocmd)

(fn augroup [group-name]
  (vim.api.nvim_create_augroup group-name {}))

;; Highlight text on yank
(autocmd "TextYankPost"
         {:group (augroup "HighlightOnYank")
          :callback (fn []
                      (vim.highlight.on_yank))})

;; Return to last edit position when opening files
(fn return-last-position []
  (let [mark (vim.api.nvim_buf_get_mark 0 "\"")
        lcount (vim.api.nvim_buf_line_count 0)]
    (when (and (> (. mark 1) 0) (<= (. mark 1) lcount))
      (pcall vim.api.nvim_win_set_cursor 0 mark))))

(autocmd "BufReadPost" {:group (augroup "ReturnToLastEditPositionWhenOpeningFiles")
                        :callback return-last-position})

;; Auto-resize splits when window is resized
(autocmd "VimResized"
         {:group (augroup "AutoResizeSplits")
          :callback (fn []
                      (vim.cmd "tabdo wincmd ="))})

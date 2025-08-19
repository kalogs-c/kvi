(local map vim.keymap.set)

(map "i" "jk" "<ESC>")
(map "n" "<ESC>" "<cmd>noh<CR><ESC>")

;; Center screen when jumping
(map "n" "n" "nzzzv" {:desc "Next search result (centered)"})
(map "n" "N" "Nzzzv" {:desc "Previous search result (centered)"})
(map "n" "<C-d>" "<C-d>zz" {:desc "Half page down (centered)"})
(map "n" "<C-u>" "<C-u>zz" {:desc "Half page up (centered)"})

;; Move on insert mode
(map "i" "<C-h>" "<Left>" {:desc "Move left"})
(map "i" "<C-l>" "<Right>" {:desc "Move right"})
(map "i" "<C-j>" "<Down>" {:desc "Move down"})
(map "i" "<C-k>" "<Up>" {:desc "Move up"})

;; Switch window
(map "n" "<C-h>" "<C-w>h" {:desc "Switch window left"})
(map "n" "<C-l>" "<C-w>l" {:desc "Switch window right"})
(map "n" "<C-j>" "<C-w>j" {:desc "Switch window down"})
(map "n" "<C-k>" "<C-w>k" {:desc "Switch window up"})

;; Buffers
(map "n" "<Tab>" "<cmd>bnext<CR>" {:desc "Next buffer"})
(map "n" "<S-Tab>" "<cmd>bprev<CR>" {:desc "Previous buffer"})
(map "n" "<leader>x" "<cmd>bdelete!<CR>" {:desc "Close buffer"})

;; Resizing
(map "n" "<C-Up>" ":resize +2<CR>" {:desc "Increase window height"})
(map "n" "<C-Down>" ":resize -2<CR>" {:desc "Decrease window height"})
(map "n" "<C-Left>" ":vertical resize +2<CR>" {:desc "Increase window width"})
(map "n" "<C-Right>" ":vertical resize -2<CR>" {:desc "Decrease window width"})

;; Move lines up/down
(map "n" "<A-k>" ":m .-2<CR>==" {:desc "Move line up"})
(map "n" "<A-j>" ":m .+1<CR>==" {:desc "Move line down"})
(map "v" "<A-k>" ":m '<-2<CR>gv=gv" {:desc "Move selection up"})
(map "v" "<A-j>" ":m '>+1<CR>gv=gv" {:desc "Move selection down"})

;; Line numbers
(map "n" "<leader>rn" "<cmd>set rnu!<CR>" {:desc "Toggle relative number"})

;; Comment
(map "n" "<leader>/" "gcc" {:desc "Toggle comment" :remap true})
(map "v" "<leader>/" "gc" {:desc "Toggle comment" :remap true})

;; Indenting
(map ["n" "v"] ">" ">gv")
(map ["n" "v"] "<" "<gv")

;; Save
(map ["i" "x" "n" "s"] "<C-s>" "<cmd>w<cr><esc>" {:desc "Save File"})

;; ========== TELESCOPE ========== 
(local telescope (require :telescope.builtin))

(map "n" "<leader>ff"
     (fn []
       (telescope.find_files {:hidden true :file_ignore_patterns [".git/"]}))
     {:desc "[Telescope] Find Files"})

(map "n" "<leader>fw"
     (fn []
       (telescope.live_grep {:hidden true :file_ignore_patterns [".git/"]}))
     {:desc "[Telescope] Find Words"})

(map "n" "<leader>fb" telescope.buffers {:desc "[Telescope] Find Buffers"})
(map "n" "<leader>fz" telescope.current_buffer_fuzzy_find
     {:desc "[Telescope] Find in Current Buffer"})

;; ========== MINI ========== 
(map "n" "<C-n>" MiniFiles.open)

;; ========== TEST ========== 
(local neotest (require :neotest))

(map "n" "<leader>ts" neotest.summary.toggle {:desc "[Test] - Toggle Summary"})
(map "n" "<leader>to"
     (fn []
       (neotest.output.open {:enter true}))
     {:desc "[Test] - Open Test Output"})

(map "n" "<leader>trn" neotest.run.run {:desc "[Test] - Run Nearest Test"})
(map "n" "<leader>trf"
     (fn []
       (neotest.run.run (vim.fn.expand "%")))
     {:desc "[Test] - Run File Tests"})

;; ========== DEBUG ========== 
(local dap (require :dap))

(map "n" "<leader>db" dap.toggle_breakpoint {:desc "[Debug] Toggle Breakpoint"})
(map "n" "<leader>dc" dap.continue {:desc "[Debug] Continue"})
(map "n" "<leader>dso" dap.step_over {:desc "[Debug] Step Over"})
(map "n" "<leader>dsi" dap.step_into {:desc "[Debug] Step Into"})
(map "n" "<leader>dt" dap.terminate {:desc "[Debug] Terminate"})

require "nvchad.mappings"

local map = vim.keymap.set

map("i", "jk", "<ESC>")

-- load all mappings from lua/mappings/*.lua
local mappings_path = vim.fn.stdpath "config" .. "/lua/mappings"
local files = vim.fn.readdir(mappings_path, [[v:val =~ '\.lua$']])
for _, file in ipairs(files) do
  require("mappings." .. file:gsub("%.lua", ""))
end

local plugins = {}

local plugins_path = vim.fn.stdpath "config" .. "/lua/plugins"
local files = vim.fn.readdir(plugins_path, [[v:val =~ '\.lua$']])

for _, file in ipairs(files) do
  if file ~= "init.lua" then
    local plugin = require("plugins." .. file:gsub("%.lua", ""))

    table.insert(plugins, plugin)
  end
end

return plugins

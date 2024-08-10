local config = require "nvchad.configs.telescope"

-- elixir ignore
table.insert(config.defaults.file_ignore_patterns, "_build")
table.insert(config.defaults.file_ignore_patterns, "deps")

return config

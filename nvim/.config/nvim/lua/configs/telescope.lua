local config = require "nvchad.configs.telescope"
local defaults = config.defaults
defaults["find_command"] = { "rg", "--files", "--hidden" }
local options = config

return options

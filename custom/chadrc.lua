---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.options = {
  user = function()
    vim.opt.expandtab = true -- Use spaces instead of tabs
    vim.opt.shiftwidth = 2 -- Size of an indent
    vim.opt.tabstop = 2 -- Number of spaces tabs count for
  end,
}

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M

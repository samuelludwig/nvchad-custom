-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

--local opt = vim.opt
local g = vim.g
local opt = vim.opt
--local config = require("core.utils").load_config()

g.maplocalleader = ","

opt.scrolloff = 11

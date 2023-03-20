---@type MappingsTable
local M = {}

M.general = {
  n = {
    --[";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<Space>sh"] = { ":Gitsigns stage_hunk<CR>", "Stage hunk under cursor", opts = {}}
    --["<Space>cm"] = { ":Git commit<CR>", "Open commit message window", opts = {}}
  },
  v = {
    ["<Space>sh"] = { ":Gitsigns stage_hunk<CR>", "Stage highlighted hunks", opts = {}}
  },
}

-- more keybinds!

return M

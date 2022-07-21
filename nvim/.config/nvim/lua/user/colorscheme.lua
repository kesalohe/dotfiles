-- vim.cmd([[ colorscheme vscode ]])
-- vim.o.background = "dark"
vim.o.background = "light"

local vscode_status_ok, vscode = pcall(require, "vscode")
if not vscode_status_ok then
  return
end

-- local c = require('vscode.colors')
require('vscode').setup({
    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,
})


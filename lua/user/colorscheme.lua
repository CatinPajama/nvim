require('vscode').change_style("dark")
vim.cmd [[colorscheme darkplus]]
vim.cmd [[hi clear CursorLine]]
vim.cmd [[hi CursorLine gui=underline cterm=underline]]
--[[vim.g.termguicolors=true
require('doom-one').setup{
    cursor_coloring = true,
    plugins_integrations = {
        bufferline = true,
        telescope = true,
        nvim_tree = true,
        indent_blankline = true,

    }
}
vim.cmd [[colorscheme doom-one]]
--]]

vim.g.moonlight_contrast = false
vim.g.moonlight_italic_comments = false
vim.g.moonlight_italic_keywords = false
vim.g.moonlight_italic_functions = true
vim.g.moonlight_italic_variables = false
require('moonlight').set()
vim.cmd [[hi clear CursorLine]]
vim.cmd [[hi CursorLine gui=underline cterm=underline]]


local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = " "
vim.g.maplocaleader = " "

--vim.cmd [[ autocmd filetype cpp :lua vim.api.nvim_set_keymap("n","<Leader>cpb",":vsp<CR> :terminal ~/cp/build.sh %:r<CR> :startinsert<CR>",{noremap = true, silent=true})]]
--vim.cmd(setkeymap("cpp","n","<leader>cpb",":echo hi"))
--print(setkeymap("cpp","n","<leader>n",":echo hi"))
--keymap("n","<Leader>cpr",":vsp<CR> :term ./%:r<CR> :startinsert<CR>",opts)
keymap("i", "jk", "<ESC>", opts)

function setkeymap(filetype,mode,binding,task)
    return string.format("autocmd filetype %s nnoremap %s %s)",filetype,mode,binding,task)
end

--vim.cmd [[ autocmd filetype cpp :lua vim.api.nvim_set_keymap("n","<Leader>cpb",":vsp<CR> :terminal ~/cp/build.sh %:r<CR> :startinsert<CR>",{noremap = true, silent=true})]]
vim.cmd(setkeymap("cpp","n","<Leader>cpb",":vsp<CR> :terminal ~/cp/build.sh %:r<CR> :startinsert<CR>"))

vim.cmd(setkeymap("cpp","n","<Leader>cpr",":vsp<CR> :term ./%:r<CR> :startinsert<CR>"))


function setkeymap(filetype,mode,binding,task)
    return string.format("autocmd filetype %s nnoremap %s %s)",filetype,mode,binding,task)
end

vim.g.mapleader = " "
--vim.cmd [[ autocmd filetype cpp :lua vim.api.nvim_set_keymap("n","<Leader>cpb",":vsp<CR> :terminal ~/cp/build.sh %:r<CR> :startinsert<CR>",{noremap = true, silent=true})]]
vim.cmd(setkeymap("cpp","n","<Leader>cpb",":vsp<CR> :terminal ~/cp/build.sh %:r<CR> :startinsert<CR>"))

vim.cmd(setkeymap("cpp","n","<Leader>cpr",":vsp<CR> :term ./%:r<CR> :startinsert<CR>"))


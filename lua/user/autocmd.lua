--vim.cmd [[ autocmd filetype cpp :lua vim.api.nvim_set_keymap("n","<Leader>cpb",":vsp<CR> :terminal ~/cp/build.sh %:r<CR> :startinsert<CR>",{noremap = true, silent=true})]]
vim.cmd(setkeymap("cpp","n","<Leader>cpb",":vsp<CR> :terminal ~/cp/build.sh %:r<CR> :startinsert<CR>"))

vim.cmd(setkeymap("cpp","n","<Leader>cpr",":vsp<CR> :term ./%:r<CR> :startinsert<CR>"))

vim.api.nvim_create_autocmd("FileType", {
    pattern = "cpp",
    callback = function()
        vim.api.nvim_set_keymap("n","<leader>cpb",":vsp<CR> :terminal ~/cp/build.sh %:r<CR> :startinsert<CR>",{silent = true, noremap = true})
        vim.api.nvim_set_keymap("n","<leader>cpr",":vsp<CR> :term ./%:r<CR> :startinsert<CR>",{silent = true, noremap = true})
    end
})


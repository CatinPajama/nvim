vim.api.nvim_set_keymap("n","<leader>ff","<cmd>lua require('telescope.builtin').find_files()<CR>",{noremap=true})
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

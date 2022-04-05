require('telescope').setup{
    defaults ={
        file_ignore_patterns = {"node_modules"}
    },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"

        }
  }
}
require('telescope').load_extension('fzf')
vim.api.nvim_set_keymap("n","<leader>ff","<cmd>lua require('telescope.builtin').find_files()<CR>",{noremap=true})
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

require 'nvim-treesitter.configs'.setup{
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    rainbow = {
        enable  = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}

require('lualine').setup({
    theme = "solarized",section_separators = '', component_separators = '',extensions = {'nvim-tree'}
})


local function name()
    return [[NVIM]]
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = "rose-pine",
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
    extensions = {'nvim-tree'}
  },

  sections = {
    lualine_a = {{name,color = {fg = "#FFFFFF",bg = "#5D4D7A",gui="bold"}}},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

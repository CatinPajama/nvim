local custom_vscode = require 'lualine.themes.vscode'
local colors = {
	fg = "#D4D4D4",
	bg = "#121C27",
	alt_bg = "#2D333C",
	dark = "#2F333F",
	accent = "#989EAE",
	popup_back = "#2D2D30",
	search_orange = "#613214",
	search_blue = "#5e81ac",
	white = "#D8DEE9",
	gray = "#474E5E",
	dark_gray = "#3e3e3e",
	context = "#606060",
	light_gray = "#cccccc",
	tree_gray = "#2D333C",
	blue = "#7A99B6",
	vivid_blue = "#8BB5E4",
	dark_blue = "#223E55",
	folder_blue = "#8BB5E4",
	light_blue = "#F8F4F9",
	green = "#98B285",
	cyan = "#8AD2D7",
	light_green = "#C77EB5",
	red = "#B45C65",
	orange = "#C77EB5",
	light_red = "#B45C65",
	yellow = "#E6C98E",
	yellow_orange = "#D7BA7D",
	purple = "#B45C65",
	magenta = "#B45C65",
	cursor_fg = "#515052",
	cursor_bg = "#AEAFAD",
	sign_add = "#587c0c",
	sign_change = "#0c7d9d",
	sign_delete = "#94151b",
	tree_sign_add = "#73C991",
	tree_sign_change = "#CCA700",
	error_red = "#F44747",
	warning_orange = "#ff8800",
	info_yellow = "#FFCC66",
	hint_blue = "#4FC1FF",
	success_green = "#14C50B",
	purple_test = "#ff007c",
	cyan_test = "#00dfff",
	ui_blue = "#264F78",
	ui2_blue = "#042E48",
	ui3_blue = "#0195F7",
	ui4_blue = "#75BEFF",
	ui_orange = "#E8AB53",
	ui_purple = "#B180D7",
}

--[[
local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}
--]]

--custom_vscode.normal.a.bg = "#5D4D7A"
--custom_vscode.insert.a.bg = "#5D4D7A"
--custom_vscode.visual.a.bg = "#5D4D7A"
--custom_vscode.insert.a.bg = "#5D4D7A"
require('lualine').setup({
    theme = "solarized",section_separators = '', component_separators = '',extensions = {'nvim-tree'}
})


local function name()
    return [[NVIM]]
end

require('lualine').setup {
  options = {
    icons_enabled = true,
--    theme = custom_vscode,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },

  sections = {
    lualine_a = {
        {
            function()
                return '█'
            end,
            --[[
            color = function()
                --[[
                local mode_color = {
                    n = "#5D4D7A",
                    i = "#F5044E",
                    v = "#703AE6"
                }
                local mode_color = {
                    n = colors.ui_purple,
                    i = colors.light_green,
                    v = colors.blue,
                    [''] = colors.blue,
                    V = colors.blue,
                    c = colors.red,
                    no = colors.red,
                    s = colors.orange,
                    S = colors.orange,
                    [''] = colors.orange,
                    ic = colors.yellow,
                    R = colors.violet,
                    Rv = colors.violet,
                    cv = colors.red,
                    ce = colors.red,
                    r = colors.cyan,
                    rm = colors.cyan,
                    ['r?'] = colors.cyan,
                    ['!'] = colors.red,
                    t = colors.red,
                }
                return {fg = mode_color[vim.fn.mode()],bg="#5D4D7A"}
            end,
            --]]
            padding = { left = 0, right = 0}
        }
    },
    lualine_b = {{name,color = {fg = "#FFFFFF",bg = "#5D4D7A",gui="bold"}}},
    lualine_c = {'branch', 'diff', 'diagnostics'},
    lualine_d = {'filename'},
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

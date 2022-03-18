local project = require('project')

project.setup({
	active = true,
	on_config_done = nil,
	manual_mode = false,
	detection_methods = { "pattern" },
	patterns = { ".git", "package.json" },
	show_hidden = false,
	silent_chdir = true,
	ignore_lsp = {},
    datapath = vim.fn.stdpath("data"),
})

local telescope = require('telescope')
telescope.load_extension('projects')


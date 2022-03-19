local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local packer = require("packer")

packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)

	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'

	use 'windwp/nvim-autopairs'
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup{
                'lua';
                'css';
            }
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use "lukas-reineke/indent-blankline.nvim"
--    use {
 --       'nvim-lualine/lualine.nvim',
  --      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
   -- }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
  
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use "folke/trouble.nvim"
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'jonstoler/lua-snip'

    use 'ahmedkhalf/project.nvim'
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
    }    
    use 'simrat39/rust-tools.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
    }
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })
    use 'martinsione/darkplus.nvim'
    use 'marko-cerovac/material.nvim'
    use 'navarasu/onedark.nvim'
    use "rebelot/kanagawa.nvim"

    use 'Mofiqul/vscode.nvim'
    use 'shaunsingh/solarized.nvim'


	if packer_boostrap then
		require('packer').sync()
	end
end)

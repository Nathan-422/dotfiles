local fn = vim.fn

-- Auto install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print "That didn't work"
	return
end

-- Have packer use a popup window
-- And use rounded borders
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float {border = "rounded"}
		end,
	},
}

-- Install your plugins here
return packer.startup(function(use)
	-- Plugins go here

	use "wbthomason/packer.nvim" 	-- Packer manages itself
	use "nvim-lua/popup.nvim" 		-- An implement ion of the popup API from vim in neovim
	use "nvim-lua/plenary.nvim"		-- Useful lua functions used by logs of plugins

	-- LSP 
	use "neovim/nvim-lspconfig"						-- enable LSP
  use "williamboman/mason.nvim" -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
--  use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions

	-- Colorscheme
	use 'Nathan-422/solarized.nvim'	-- Theme

	-- CMP 
	use "hrsh7th/nvim-cmp"					-- The completion plugin
	use "hrsh7th/cmp-buffer"				-- Buffer completion
	use "hrsh7th/cmp-path"					-- Path completion
	use "hrsh7th/cmp-cmdline"				-- cmdline completion
	use "saadparwaiz1/cmp_luasnip"	-- snipped completion
	use "hrsh7th/cmp-nvim-lsp"			-- LSP completion	
  use "hrsh7th/cmp-nvim-lua"			-- Lua completion

	-- snippets
	use "L3MON4D3/LuaSnip"							-- snipped engine
	use "rafamadriz/friendly-snippets"	-- some useful snippets

	-- telescope
	use "nvim-telescope/telescope.nvim"
	use "nvim-telescope/telescope-media-files.nvim"

	-- treesitter
	use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

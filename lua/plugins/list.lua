local function load_config(package)
	return function()
		require("plugins." .. package)
	end
end

local plugins = {
	-- UI
	{
		"navarasu/onedark.nvim",
		config = load_config("ui.onedark"),
		lazy = false,
		priority = 1000,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = load_config("ui.lualine"),
		event = { "BufReadPre", "BufNewFile" },
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = load_config("ui.indentline"),
		main = "ibl",
		event = { "BufReadPre", "BufNewFile" },
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		config = load_config("ui.rainbow"),
		event = { "BufReadPre", "BufNewFile" },
	},
	{
		"rcarriga/nvim-notify",
		config = load_config("ui.notify"),
		event = "VeryLazy",
		cmd = "Notifications",
	},
	{
		"stevearc/dressing.nvim",
		config = load_config("ui.dressing"),
		event = { "BufReadPre", "BufNewFile" },
	},
	{
		"nvimdev/dashboard-nvim",
		config = load_config("ui.dashboard"),
		-- Only load when no arguments
		event = function()
			if vim.fn.argc() == 0 then
				return "VimEnter"
			end
		end,
		cmd = "Dashboard",
	},
	{
		"gelguy/wilder.nvim",
		build = function()
			vim.cmd([[silent UpdateRemotePlugins]])
		end,
		config = load_config("ui.wilder"),
		keys = { ":", "/", "?" },
	},
	{
		"folke/zen-mode.nvim",
		dependencies = {
			"folke/twilight.nvim",
			config = load_config("ui.twilight"),
		},
		config = load_config("ui.zen-mode"),
		cmd = { "ZenMode", "Twilight" },
	},

	-- Language
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
		},
		config = load_config("lang.dap"),
		cmd = { "DapUIToggle", "DapToggleRepl", "DapToggleBreakpoint" },
	},
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"olimorris/neotest-rspec",
			"haydenmeade/neotest-jest",
		},
		config = load_config("lang.neotest"),
		cmd = "Neotest",
	},
	{
		"michaelb/sniprun",
		build = "bash ./install.sh",
		config = load_config("lang.sniprun"),
		cmd = "SnipRun",
	},
	{
		"ThePrimeagen/refactoring.nvim",
		config = load_config("lang.refactoring"),
	},
	{
		"windwp/nvim-autopairs",
		config = load_config("lang.autopairs"),
		event = "InsertEnter",
	},
	{
		"echasnovski/mini.comment",
		version = "*",
		dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
		config = load_config("lang.comment"),
		event = { "BufReadPre", "BufNewFile" },
		-- enabled if anything not 0.10
		enabled = vim.fn.has("nvim-0.10.0") == 0,
	},
	{
		"echasnovski/mini.surround",
		version = "*",
		config = load_config("lang.surround"),
		event = { "BufReadPre", "BufNewFile" },
	},
	{
		"echasnovski/mini.ai",
		version = "*",
		config = load_config("lang.ai"),
		event = { "BufReadPre", "BufNewFile" },
	},

	-- Tresitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-refactor",
			"nvim-treesitter/nvim-treesitter-textobjects",
			"RRethy/nvim-treesitter-endwise",
			"RRethy/nvim-treesitter-textsubjects",
			"windwp/nvim-ts-autotag",
		},
		config = load_config("lang.treesitter"),
		event = { "BufReadPre", "BufNewFile" },
	},
	{
        'ckolkey/ts-node-action',
        dependencies = { 'nvim-treesitter' },
        enabled = false,
  },
  -- LSP
  {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/cmp-nvim-lsp',
        },
        config = load_config('lang.lspconfig'),
        event = { 'BufReadPre', 'BufNewFile' },
    },
{
        'folke/lazydev.nvim',
        ft = 'lua',
    },
    {
        'nvimdev/lspsaga.nvim',
        config = load_config('lang.lspsaga'),
        event = 'LspAttach',
    },
     {
        'williamboman/mason.nvim',
        config = load_config('lang.mason'),
        cmd = 'Mason',
    },
}

return {
	plugins = plugins,
}

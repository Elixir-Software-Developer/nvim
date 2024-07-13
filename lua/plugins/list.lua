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
}

return {
	plugins = plugins,
}

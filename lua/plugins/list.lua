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
}

return {
	plugins = plugins,
}

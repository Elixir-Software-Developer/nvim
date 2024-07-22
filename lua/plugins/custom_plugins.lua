-- lua/plugins/custom_plugins.lua

local extra_plugins = {
    {
        "kelly-lin/ranger.nvim",
        config = function()
            local ranger_nvim = require("ranger-nvim")
            require("ranger-nvim").setup({
                enable_cmds = false,
                replace_netrw = false,
                keybinds = {
                    ["sv"] = ranger_nvim.OPEN_MODE.vsplit,
                    ["sh"] = ranger_nvim.OPEN_MODE.split,
                    ["st"] = ranger_nvim.OPEN_MODE.tabedit,
                    ["sr"] = ranger_nvim.OPEN_MODE.rifle,
                },
                ui = {
                    border = "none",
                    height = 0.5,
                    width = 0.6,
                    x = 0.5,
                    y = 0.5,
                },
            })
        end,
    },
    {
        "roobert/activate.nvim",
        keys = {
            {
                "<leader>P",
                '<CMD>lua require("activate").list_plugins()<CR>',
                desc = "Plugins",
            },
        },
        dependencies = {
            { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } }
        }
    },
    {
        "booperlv/nvim-gomove",
        event = "BufRead", -- Cargar al leer un buffer
        config = function()
        require("gomove").setup({
        -- Opciones de configuración de nvim-gomove
        -- alt+h,j,k,l para mover lineas o bloques
        map_defaults = true,
        reindent = true,
        undojoin = true,
        move_past_end_col = false,
        })
        end,
    },

}

return extra_plugins

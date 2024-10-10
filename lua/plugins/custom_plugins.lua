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
                    ["sr"] = ranger_nvim.OPEN_MODE.rifle
                },
                ui = {
                    border = "none",
                    height = 0.5,
                    width = 0.6,
                    x = 0.5,
                    y = 0.5
                }
            })
        end
    }, {
        "roobert/activate.nvim",
        keys = {
            {
                "<leader>P",
                '<CMD>lua require("activate").list_plugins()<CR>',
                desc = "Plugins"
            }
        },
        dependencies = {
            {
                'nvim-telescope/telescope.nvim',
                branch = '0.1.x',
                dependencies = {'nvim-lua/plenary.nvim'}
            }
        }
    }, {
        "booperlv/nvim-gomove",
        event = "BufRead", -- Cargar al leer un buffer
        config = function()
            require("gomove").setup({
                -- Opciones de configuración de nvim-gomove
                -- alt+h,j,k,l para mover lineas o bloques
                map_defaults = true,
                reindent = true,
                undojoin = true,
                move_past_end_col = false
            })
        end
    }, -- Harpoon
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        config = function()
            local harpoon = require('harpoon')

            harpoon:extend({
                UI_CREATE = function(cx)
                    -- print("Harpoon UI_CREATE called")  -- Depuración
                    vim.keymap.set("n", "<C-b>", function()
                        -- print("Harpoon <C-b> called")  -- Depuración
                        harpoon.ui:select_menu_item({vsplit = true})
                    end, {buffer = cx.bufnr})

                    vim.keymap.set("n", "<C-n>", function()
                        -- print("Harpoon <C-n> called")  -- Depuración
                        harpoon.ui:select_menu_item({split = true})
                    end, {buffer = cx.bufnr})

                    vim.keymap.set("n", "<C-m>", function()
                        -- print("Harpoon <C-m> called")  -- Depuración
                        harpoon.ui:select_menu_item({tabedit = true})
                    end, {buffer = cx.bufnr})
                end
            })

            harpoon.setup({
                menu = {width = vim.api.nvim_win_get_width(0) - 4},
                settings = {save_on_toggle = true}
            })
        end
    }, -- Catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                styles = {
                    comments = {"bold"},
                    properties = {"bold"},
                    functions = {"bold"},
                    keywords = {"italic"},
                    operators = {"bold"},
                    conditionals = {"italic"},
                    loops = {"italic"},
                    booleans = {"bold", "italic"},
                    numbers = {},
                    types = {},
                    strings = {},
                    variables = {}
                }
            })

            -- Asegúrate de que el tema se aplique
            vim.cmd.colorscheme "catppuccin"
        end
    }, {
        "natecraddock/workspaces.nvim",
        dependencies = {"nvim-telescope/telescope.nvim"},
        config = function()
            require("workspaces").setup({
                path = vim.fn.stdpath("data") .. "/workspaces",
                cd_type = "global",
                sort = true,
                mru_sort = true,
                auto_open = false,
                auto_dir = false,
                notify_info = true,
                hooks = {open = {"Telescope find_files"}}
            })
        end
    },
    {
		"telescope.nvim",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
			"nvim-telescope/telescope-file-browser.nvim",
		},
		keys = {
			{
				"fp",
				function()
					require("telescope.builtin").find_files({
						cwd = require("lazy.core.config").options.root,
					})
				end,
				desc = "Find Plugin File",
			},
            -- keymap("n", ";f", function()
            --     builtin.find_files({
            --         find_command = { "rg", "--files", "--glob", "!**/.git/*", "--glob", "!**/build/*" },
            --         hidden = true,  -- Esto permite a Telescope mostrar archivos ocultos
            --         no_ignore = false,  -- Esto respeta .gitignore
            --     })
            -- end, { desc = "Find files, including hidden, ignoring .git and build directories" })

            -- -- Opción alternativa sin archivos ocultos
            -- keymap("n", ";F", function()
            --     builtin.find_files({
            --         find_command = { "rg", "--files", "--glob", "!**/.git/*", "--glob", "!**/build/*" },
            --         hidden = false,  -- Esto evita que Telescope muestre archivos ocultos
            --         no_ignore = false,  -- Esto respeta .gitignore
            --     })
            -- end, { desc = "Find files, excluding hidden, ignoring .git and build directories" })

			{
				";f",
				function()
					local builtin = require("telescope.builtin")
					builtin.find_files({
						no_ignore = false,
						hidden = true,
					})
				end,
				desc = "Lists files in your current working directory, respects .gitignore",
			},
			{
				";r",
				function()
					local builtin = require("telescope.builtin")
					builtin.live_grep({
						additional_args = { "--hidden" },
					})
				end,
				desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore",
			},
			{
				"\\\\",
				function()
					local builtin = require("telescope.builtin")
					builtin.buffers()
				end,
				desc = "Lists open buffers",
			},
			{
				";t",
				function()
					local builtin = require("telescope.builtin")
					builtin.help_tags()
				end,
				desc = "Lists available help tags and opens a new window with the relevant help info on <cr>",
			},
			{
				";;",
				function()
					local builtin = require("telescope.builtin")
					builtin.resume()
				end,
				desc = "Resume the previous telescope picker",
			},
			{
				";e",
				function()
					local builtin = require("telescope.builtin")
					builtin.diagnostics()
				end,
				desc = "Lists Diagnostics for all open buffers or a specific buffer",
			},
			{
				";s",
				function()
					local builtin = require("telescope.builtin")
					builtin.treesitter()
				end,
				desc = "Lists Function names, variables, from Treesitter",
			},
            {
                "sf",
                function()
                    local telescope = require("telescope")
                    local fb_actions = require("telescope").extensions.file_browser.actions

                    local function telescope_buffer_dir()
                        return vim.fn.expand("%:p:h")
                    end

                    telescope.extensions.file_browser.file_browser({
                        path = "%:p:h",
                        cwd = telescope_buffer_dir(),
                        respect_gitignore = false,
                        hidden = true,
                        grouped = true,
                        previewer = false,
                        initial_mode = "normal",
                        layout_config = { height = 40 },
                        mappings = {
                            ["n"] = {
                                ["c"] = fb_actions.create, -- Crear archivo/carpeta en la ruta actual (separador de ruta final crea carpeta)
                                ["<S-CR>"] = fb_actions.create_from_prompt, -- Crear y abrir archivo/carpeta desde el prompt (separador de ruta final crea carpeta)
                                ["r"] = fb_actions.rename, -- Renombrar archivos/carpetas seleccionados
                                ["m"] = fb_actions.move, -- Mover archivos/carpetas seleccionados a la ruta actual
                                ["y"] = fb_actions.copy, -- Copiar archivos/carpetas seleccionados a la ruta actual
                                ["d"] = fb_actions.remove, -- Eliminar archivos/carpetas seleccionados
                                ["o"] = fb_actions.open, -- Abrir archivo/carpeta con la aplicación predeterminada del sistema
                                ["g"] = fb_actions.goto_parent_dir, -- Ir al directorio padre
                                ["e"] = fb_actions.goto_home_dir, -- Ir al directorio de inicio
                                ["w"] = fb_actions.goto_cwd, -- Ir al directorio de trabajo actual (cwd)
                                ["t"] = fb_actions.change_cwd, -- Cambiar el cwd de nvim al directorio/archivo seleccionado (padre)
                                ["f"] = fb_actions.toggle_browser, -- Alternar entre el navegador de archivos y carpetas
                                ["h"] = fb_actions.toggle_hidden, -- Alternar archivos/carpetas ocultos
                                ["s"] = fb_actions.toggle_all, -- Alternar todas las entradas ignorando ./ y ../
                                -- ["<Tab>"] = fb_actions.toggle_selection, -- Alternar selección y mover a la siguiente selección
                                -- ["<S-Tab>"] = fb_actions.toggle_selection_previous, -- Alternar selección y mover a la selección anterior
                                ["<bs>"] = fb_actions.backspace, -- Con un prompt vacío, ir al directorio padre. De lo contrario, actuar normalmente
                            },
                        },
                    })
                end,
                desc = "Open File Browser with the path of the current buffer",
            }
		},

	},
    	-- animations
	{
		"echasnovski/mini.animate",
		event = "VeryLazy",
		opts = function(_, opts)
			opts.scroll = {
				enable = false,
			}
		end,
	},

}
return extra_plugins

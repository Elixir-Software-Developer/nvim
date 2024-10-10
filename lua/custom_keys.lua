local wk = require('which-key')
-- Asegúrate de requerir telescope.builtin al principio de tu archivo
local telescope = require('telescope.builtin')
local workspaces = require('workspaces')

local opts = {
    mode = 'n', -- Modo normal
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
}

-- -- Configuración para mostrar archivos ocultos
-- function _G.find_files_with_hidden()
--     require('telescope.builtin').find_files({
--         find_command = { 'rg', '--files', '--hidden', '--glob', '!.git/*' },
--     })
-- end


-- 2. Buscar solo archivos de cierto tipo (por ejemplo, Lua)
function _G.find_lua_files()
    telescope.find_files({
        find_command = { 'fd', '--type', 'f', '--hidden', '--follow', '--exclude', '.git', '-e', 'lua' },
        hidden = true,
    })
end

-- Configuración para mostrar archivos ocultos, excluyendo node_modules, build y .git
function _G.find_files_with_hidden()
    require('telescope.builtin').find_files({
        find_command = { 'rg',
                         '--files',
                         '--hidden',
                         '--glob', '!.git/*',
                         '--glob', '!node_modules/*',
                         '--glob', '!build/*'
                       },
    })
end

-- Configuración para mostrar archivos ocultos, pero solo en el direcotrio actual
function _G.find_files_current_dir()
    require('telescope.builtin').find_files({
        find_command = { 'fd', '--type', 'f', '--hidden', '--follow', '--exclude', 'node_modules', '--exclude', 'build', '--exclude', '.git', '--max-depth', '1', '.'},
        hidden = true,
    })
end

-- 3. Buscar archivos modificados en las últimas 24 horas solo en directorio actual
function _G.find_recent_files_current_dir()
    telescope.find_files({
        find_command = { 'fd', '--type', 'f', '--hidden', '--follow', '--exclude', 'node_modules', '--exclude', 'build', '--exclude', '.git', '--changed-within', '24h', '--max-depth', '1' },
        hidden = true,
    })
end

-- 3. Buscar archivos modificados en las últimas 24 horas
function _G.find_recent_files()
    telescope.find_files({
        find_command = { 'fd', '--type', 'f', '--hidden', '--follow','--exclude', 'node_modules', '--exclude', 'build', '--exclude', '.git', '--changed-within', '24h' },
        hidden = true,
    })
end

-- Configuración para workspace.nvim

local mappings = {
    y = {
        name = 'Custom Yank',
        l = { '"+yy', 'R- Copy Line to Clipboard' }, -- Copiar línea al portapapeles del sistema
        -- ... otros comandos personalizados que quieras agregar ...
    },

    v = {
        name = 'Select',
        f = { 'dyaf', 'R- Delete Function' }, -- Eliminar función en modo visual
        a = { 'ggVG', "R- Select Whole File" },
        w = { '"_diw', "R- Delete Word" },
        -- ... otros comandos personalizados en modo visual ...
    },
    t = {
        z = { '<cmd>Fterm ranger<cr>', 'Rangerl cli' },
    },
    z = {
        name = 'Randoms',
        a = { '<cmd>WorkspacesAdd<cr>', 'Add Workspace' },
        b = { '<cmd>WorkspacesRemove<cr>', 'Remove Workspace' },
        c = { '<cmd>WorkspacesOpen<cr>', 'Open Workspace' },
        d = { '<cmd>WorkspacesList<cr>', 'List Workspaces' },
        e = { '<cmd>Telescope workspaces<cr>', 'Search Workspaces' },
        r = { "<cmd>lua require('ranger-nvim').open()<CR>", "Ranger" },
        z = { '<CMD>lua require("activate").list_plugins()<CR>', "Activate Plugins"},
    },
     -- Atajos de Harpoon
     ["1"] = { '<cmd>lua require("harpoon"):list():select(1)<CR>', 'Harpoon to File 1' },
     ["2"] = { '<cmd>lua require("harpoon"):list():select(2)<CR>', 'Harpoon to File 2' },
     ["3"] = { '<cmd>lua require("harpoon"):list():select(3)<CR>', 'Harpoon to File 3' },
     ["4"] = { '<cmd>lua require("harpoon"):list():select(4)<CR>', 'Harpoon to File 4' },
     ["5"] = { '<cmd>lua require("harpoon"):list():select(5)<CR>', 'Harpoon to File 5' },
     ["0"] = { '<cmd>lua require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())<CR>', 'Harpoon Quick Menu' },
     ["."] = { '<cmd>lua require("harpoon"):list():add()<CR>', 'Harpoon File' },
    -- Atajos adicionales para abrir archivos en diferentes modos
    -- v = { '<cmd>lua require("harpoon").ui:select_menu_item({ vsplit = true })<CR>', 'Harpoon Open in Vertical Split' },
    -- x = { '<cmd>lua require("harpoon").ui:select_menu_item({ split = true })<CR>', 'Harpoon Open in Horizontal Split' },
    -- t = { '<cmd>lua require("harpoon").ui:select_menu_item({ tabedit = true })<CR>', 'Harpoon Open in New Tab' },

    -- Mapeo para abrir Telescope con archivos ocultos
    fv = { find_files_current_dir, 'All Files with hidden Current Dir' },
    fz = { find_files_with_hidden, 'All Files with hidden' },
    fy = { find_recent_files, "Recent Files" },
    fx = { find_recent_files_current_dir, "Recent Files Current Dir" },
    fn = { find_lua_files, "Lua Files" },



        -- Mapeo para workspace.nvim
        -- ["9"] = { "<cmd>lua _G.setup_workspace()<cr>", "Switch to Work Workspace" },
        -- ["8"] = { "<cmd>lua _G.setup_workspace()<cr>", "Switch to Hobby Workspace" },
}

-- Registrar los mapeos en which-key
wk.register(mappings, opts)

-- Devolver los mapeos para que puedan ser usados por otros archivos
return {
    mappings = mappings,
    opts = opts,
}

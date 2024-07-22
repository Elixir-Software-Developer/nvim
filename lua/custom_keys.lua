local wk = require('which-key')

local opts = {
    mode = 'n', -- Modo normal
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
}

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
        z = { '<cmd>R- Fterm ranger<cr>', 'Rangerl cli' },
    },
    z = {
        name = 'Randoms',
        z = { '<cmd>R- Fterm ranger<cr>', 'Rangerl cli' },
    },
}

-- Registrar los mapeos en which-key
wk.register(mappings, opts)

-- Devolver los mapeos para que puedan ser usados por otros archivos
return {
    mappings = mappings,
    opts = opts,
}

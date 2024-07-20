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
        l = { '"+yy', 'Copy Line to Clipboard' }, -- Copiar línea al portapapeles del sistema
        -- ... otros comandos personalizados que quieras agregar ...
    },

    v = {
        name = 'Select',
        f = { 'dyaf', 'Delete Function' }, -- Eliminar función en modo visual
        -- ... otros comandos personalizados en modo visual ...
    },
    t = {
        z = { '<cmd>Fterm ranger<cr>', 'Rangerl cli' },
    },
}

-- Registrar los mapeos en which-key
wk.register(mappings, opts)

-- Devolver los mapeos para que puedan ser usados por otros archivos
return {
    mappings = mappings,
    opts = opts,
}

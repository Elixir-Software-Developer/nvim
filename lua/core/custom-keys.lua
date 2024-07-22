local function map(mode, lhs, rhs, opts)
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
end
local opts = { noremap = true, silent = true }

-- Space as leader
map('n', '<Space>', '', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
-- normal_mode = "n", insert_mode = "i", visual_mode = "v",
-- visual_block_mode = "x", term_mode = "t", command_mode = "c",
-- Define tus mapeos personalizados aquí
-- Ejemplo:

-- Mapeos en modo normal
map('n', '<C-s>', '<cmd>write<CR>', { desc = 'Guardar archivo' })
map('n', '<C-v>', '"+p', { desc = 'Paste at Cursor' })
map('n', '<C-d>', 'yypkA', { desc = 'Salir a modo normal, copiar y pegar la línea, volver a insertar al final' })
  
-- Map para Spectre en modo visual
  
-- Mapeos en modo visual
map('v', '<C-c>', '"+y', { desc = 'Copiar al portapapeles del sistema' })
map('v', '<C-x>', '"+d', { desc = 'cortar al portapapeles del sistema' })
-- Mapeos en modo inserción
map('i', '<C-F>', '<Esc>:lua vim.lsp.buf.format()<CR>a', { desc = 'Formato' })
map('i', '<S-Left>', '<C-o>^', { desc = 'Start of Line' })
map('i', '<S-Right>', '<C-o>$', { desc = 'End of Line' })
map('i', '<C-x>', '<C-o>dd', { desc = 'Cut Line' })
map('i', '<C-c>', '<C-o>yy', { desc = 'Copy Line' })
map('i', '<C-v>', '<Esc>gpa', { desc = 'Paste' })
map('i', '<Tab>', '<C-T>', { desc = 'Indent' })
map('i', '<S-Tab>', '<C-D>', { desc = 'Unindent' })
map('i', '<C-s>', '<cmd>write<CR>', { desc = 'Guardar archivo' })
map('i', '<C-d>', '<Esc>yypkA', { desc = 'Salir a modo normal, copiar y pegar la línea, volver a insertar al final' })

--    map('n', '<F3>', '<cmd>lua vim.lsp.buf.formatting()<CR>', { desc = 'Formato' })

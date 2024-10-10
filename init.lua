require('core.options')
require('core.functions')
require('core.keys')
require('core.autocmd')
require('plugins.lazy')
-- Add user configs to this module
pcall(require, 'user')

-- Optimización de Carga: Se habilita vim.loader para mejorar el rendimiento de carga de módulos Lua.
if vim.loader then
	vim.loader.enable()
end

-- Depuración: Se define una función dd para facilitar la depuración y se reasigna vim.print para usar esta función.
_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

-- Ejecuta NeovideFocus si esta en neovide
if vim.g.neovide then
    vim.defer_fn(function()
      vim.cmd("NeovideFocus")
    end, 100)
  end

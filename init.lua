require('core.options')
require('core.functions')
require('core.keys')
require('core.autocmd')
require('plugins.lazy')
-- Add user configs to this module
pcall(require, 'user')


if vim.g.neovide then
    vim.defer_fn(function()
      vim.cmd("NeovideFocus")
    end, 100)
  end
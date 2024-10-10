-- -- local status_ok, telescope = pcall(require, 'telescope')
-- -- if not status_ok then
-- --     return
-- -- end
-- -- telescope.load_extension('harpoon')


-- -- ~/.config/nvim/lua/harpoon.lua

-- local harpoon = require('harpoon')

-- harpoon:extend({
--   UI_CREATE = function(cx)
--     vim.keymap.set("n", "<C-F6>", function()
--       harpoon.ui:select_menu_item({ vsplit = true })
--     end, { buffer = cx.bufnr })

--     vim.keymap.set("n", "<C-F7>", function()
--       harpoon.ui:select_menu_item({ split = true })
--     end, { buffer = cx.bufnr })

--     vim.keymap.set("n", "<C-F8>", function()
--       harpoon.ui:select_menu_item({ tabedit = true })
--     end, { buffer = cx.bufnr })
--   end,
-- })

-- -- Configuración adicional de Harpoon si es necesario
-- harpoon.setup({
--   menu = {
--     width = vim.api.nvim_win_get_width(0) - 4,
--   },
--   settings = {
--     save_on_toggle = true,
--   },
-- })

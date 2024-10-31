-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local M = {}
--
-- M.general = {
--   n = {
--     ["<C-h>"] = { "<cmd> TmuxNavigatorLeft<CR>", "window left" },
--     ["<C-l>"] = { "<cmd> TmuxNavigatorRight<CR>", "window right" },
--     ["<C-j>"] = { "<cmd> TmuxNavigatorDown<CR>", "window down" },
--     ["<C-k>"] = { "<cmd> TmuxNavigatorUp<CR>", "window up" },
--
--     ["<C-S-Left>"] = { "<cmd> TmuxNavigatorLeft<CR>", "window left" },
--     ["<C-S-Right>"] = { "<cmd> TmuxNavigatorRight<CR>", "window right" },
--     ["<C-S-Down>"] = { "<cmd> TmuxNavigatorDown<CR>", "window down" },
--     ["<C-S-Up>"] = { "<cmd> TmuxNavigatorUp<CR>", "window up" },
--   },
-- }
--
-- return M
--

vim.keymap.set("n", "<leader>bf", "<Cmd>Telescope buffers<CR>")

vim.keymap.set("i", "<CR>", "o")

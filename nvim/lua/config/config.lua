vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.tabstop = 8
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true
vim.cmd.colorscheme "kanagawa"

-- Highlight when yanking text
vim.api.nvim_create_autocmd(
    'TextYankPost', {
        desc = 'Highlight when yanking text',
        group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
        callback = function()
            vim.highlight.on_yank()
        end,
    })
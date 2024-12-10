-- Set leader to space
vim.keymap.set("n", "<space>", "<nop>")
vim.g.mapleader = " "

-- Buffers
vim.keymap.set("n", "<leader>bn", "<CMD>bn<CR>")
vim.keymap.set("n", "<leader>bp", "<CMD>bp<CR>")
vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>")
vim.keymap.set("n", "<leader>bD", "<CMD>bd!<CR>")

-- Telescope keybindings
vim.keymap.set("n", "<leader>ff", function() require('telescope.builtin').find_files() end, default_opts)
vim.keymap.set("n", "<leader>fs", function() require('telescope.builtin').grep_string() end, default_opts)
vim.keymap.set("n", "<leader>fb", function() require('telescope.builtin').buffers() end, default_opts)
vim.keymap.set("n", "<leader>f\"", function() require('telescope.builtin').registers() end, default_opts)
vim.keymap.set("n", "<leader>fh", function() require('telescope.builtin').help_tags() end, default_opts)
vim.keymap.set("n", "<leader>En", function()
    require('telescope.builtin').find_files {
        cwd = vim.fn.stdpath("config")
    }
end)

-- Lazy.nvim
vim.keymap.set("n", "<leader>l", "<CMD>Lazy<CR>")

-- mini.completion
local imap_expr = function(lhs, rhs)
    vim.keymap.set('i', lhs, rhs, { expr = true })
end
imap_expr('<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
imap_expr('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])

-- mini.files
vim.keymap.set('n', '<leader>e', '<CMD>lua MiniFiles.open()<CR>')

-- Lsp actions
vim.keymap.set('n', '<leader>cr', function() vim.lsp.buf.rename() end)
vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end)
vim.keymap.set('n', '<leader>cR', "<CMD>Telescope lsp_references theme=cursor<CR>")
vim.keymap.set('n', '<leader>ci', "<CMD>Telescope lsp_implementations theme=cursor<CR>")
vim.keymap.set('n', '<leader>co', "<CMD>Telescope lsp_document_symbols theme=cursor<CR>")
vim.keymap.set('n', '<leader>cF', function() vim.lsp.buf.format() end)
vim.keymap.set('n', '<leader>cd', "<CMD>Telescope lsp_definitions theme=cursor<CR>")
vim.keymap.set('i', '<C-s>', function() vim.lsp.buf.signature_help() end)

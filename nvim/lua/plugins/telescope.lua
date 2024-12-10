local M = {
    { 'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}
        },
        config = function()
            require('telescope').setup({
                pickers = {
                    find_files = { theme = "dropdown" },
                    buffers = { theme = "dropdown" },
                    registers = { theme = "dropdown" },
                    grep_string = { theme = "dropdown" },
                    help_tags = { theme = "dropdown" },
                }
            })
        end,
    },
}

return M

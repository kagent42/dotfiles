local M = {
    'echasnovski/mini.nvim',
    config = function()
        require('mini.icons').setup()
        -- require('mini.statusline').setup({
        --     use_icons = false,
        -- })
        -- require('mini.tabline').setup()
        require('mini.comment').setup({
            mappings = {
                -- comment = '<leader>/',
                comment_line = '<leader>/',
                comment_visual = '<leader>/',
            }
        })
        require('mini.completion').setup()
        require('mini.files').setup()
    end
}

return M


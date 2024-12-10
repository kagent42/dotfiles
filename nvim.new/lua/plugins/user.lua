return {
    -- LSP
    { 'https://github.com/mfussenegger/nvim-dap',
        dependencies = { 'mfussenegger/nvim-dap-ui',
                         'nvim-neotest/nvim-nio'},
    },
    { 'mfussenegger/nvim-lint' },
    -- { 'mhartington/formatter.nvim',
    --     config = function()
    --         require('formatter').setup()
    --     end
    -- },
    {
      'mrcjkb/haskell-tools.nvim',
      version = '^4', -- Recommended
      lazy = false, -- This plugin is already lazy
    },
    -- Functionality
    { 'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end
    },
    { 'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
    { 'christoomey/vim-tmux-navigator',
      lazy = false,
      cmd = {   'TmuxNavigateLeft',
                'TmuxNavigateDown',
                'TmuxNavigateUp',
                'TmuxNavigateRight',
                'TmuxNavigatePrevious',
        },
        keys = {
            { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
            { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
            { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
            { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
            { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
        },
    },
--   _______ _    _ ______ __  __ ______  _____ 
--  |__   __| |  | |  ____|  \/  |  ____|/ ____|
--     | |  | |__| | |__  | \  / | |__  | (___  
--     | |  |  __  |  __| | |\/| |  __|  \___ \ 
--     | |  | |  | | |____| |  | | |____ ____) |
--     |_|  |_|  |_|______|_|  |_|______|_____/ 

    {
      'rose-pine/neovim',
      name = 'rose-pine',
    },
    {
      'catppuccin/nvim',
      name = 'catppuccin',
    },
    { 'rebelot/kanagawa.nvim' },
}


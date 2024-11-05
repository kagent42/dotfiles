return {
    { "hrsh7th/nvim-cmp" },
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason-lspconfig.nvim" },
    { "williamboman/mason.nvim" },
    { "christoomey/vim-tmux-navigator",
      lazy = false,
      cmd = {   "TmuxNavigateLeft",
                "TmuxNavigateDown",
                "TmuxNavigateUp",
                "TmuxNavigateRight",
                "TmuxNavigatePrevious", 
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },
 
--[[
  _______ _    _ ______ __  __ ______  _____ 
 |__   __| |  | |  ____|  \/  |  ____|/ ____|
    | |  | |__| | |__  | \  / | |__  | (___  
    | |  |  __  |  __| | |\/| |  __|  \___ \ 
    | |  | |  | | |____| |  | | |____ ____) |
    |_|  |_|  |_|______|_|  |_|______|_____/ 
--]]

    -- {
    --   "rose-pine/neovim",
    --   name = "rose-pine",
    -- },
    -- {
    --   "LazyVim/LazyVim",
    --   opts = {
    --     colorscheme = function()
    --       require("catppuccin").load()
    --     end,
    --   },
    -- },
    -- {
    --   "catppuccin/nvim",
    --   name = "catppuccin",
    -- },
    -- Other
}


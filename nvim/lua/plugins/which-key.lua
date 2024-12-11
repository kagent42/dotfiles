local M = {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        {
            "<leader>?",
            function() require("which-key").show({global = false}) end,
            desc = "Buffer Local Keymaps (which-key)"
        }
    },
    config = function()
        local wk = require("which-key")
        wk.add {
            -- Telescope actions
            {"<leader>f", group = "Telescope..."},
            {"<leader>ff", desc = "Find files..."},
            {"<leader>fs", desc = "Find strings..."},
            {"<leader>fg", desc = "Multi grep..."},
            {"<leader>fm", desc = "Find messages..."},
            {"<leader>fb", desc = "Find buffers..."},
            {"<leader>fh", desc = "Find neovim docs..."},
            {"<leader>fm", desc = "Find messages..."},
            {"<leader>f\"", desc = "Find registers..."},

            -- Edit...
            {"<leader>E", desc = "Edit..."},
            {"<leader>En", desc = "Edit config"},
            {"<leader>Ep", desc = "Edit plugins"},

            -- Lsp/code actions
            {"<leader>c", group = "Lsp/Code"},
            {"<leader>cF", desc = "Format (Neoformat)"},
            {'<leader>cr', desc = "Rename symbol"},
            {'<leader>ca', desc = "Code action"},
            {'<leader>cR', desc = "References"},
            {'<leader>ci', desc = "Implementation"},
            {'<leader>co', desc = "Symbols"},
            {'<leader>cd', desc = "Diagnostics"},
            {'<leader>cD', desc = "Definition"},

            -- mini.files
            {"<leader>e", desc = "Explore..."},

            -- Buffers
            {"<leader>b", group = "Buffer"},
            {"<leader>bn", desc = "Next buffer"},
            {"<leader>bp", desc = "Previous buffer"},
            {"<leader>bd", desc = "Delete buffer"},
            {"<leader>bD", desc = "Force delete buffer"},
        }
    end
}

return M

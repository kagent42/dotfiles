local M = {
    {  'williamboman/mason.nvim',
        config = function()
            require("mason").setup {ui = {icons = {package_installed = "✓"}}}
        end
    },
    { 'williamboman/mason-lspconfig.nvim',
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    "lua_ls", "rust_analyzer", "clangd", "ruff", "basedpyright",
                    "taplo"
                }
            }
        end
    },
    {  'neovim/nvim-lspconfig',
        dependencies = {
            { "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = { library = {{ path = "luvit-meta/library", words = {"vim%.uv"}}}
                }
            }
        },
        config = function()
            require("lspconfig").lua_ls.setup {
                settings = { Lua = { diagnostics = { globals = {'default_opts'}}}}
            }
            require("lspconfig").clangd.setup {}
            require("lspconfig").ruff.setup {}
            require("lspconfig").basedpyright.setup {}
            require("lspconfig").taplo.setup {}
            require("lspconfig").rust_analyzer.setup {}
        end
    }
}

return M

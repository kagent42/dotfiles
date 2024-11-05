return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "haskell", "rust"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end,
    lazy = false,
    dependencies = {
        -- NOTE: additional parser
        { "nushell/tree-sitter-nu", build = ":TSUpdate nu" },
    },
    }

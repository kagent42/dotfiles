-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "haskell",
      "rust",
      "c",
      -- add more arguments for adding more treesitter parsers
    },
  },
}

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Theme
require("catppuccin").setup({
  color_overrides = {
    all = {
      base = "#1F1F1F",
    },
  },
})
vim.cmd.colorscheme("catppuccin-mocha")
require("config.keymaps")

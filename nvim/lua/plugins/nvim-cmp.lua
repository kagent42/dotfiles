-- This doesn't work, so for now just don't use it
if true then return {} end

local M = {
    'hrsh7th/nvim-cmp',
    config = function()
        require("nvim-cmp").setup{}
    end,
}

return M

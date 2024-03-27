-- require("rose-pine").setup()
-- vim.cmd("colorscheme rose-pine")

return { 
    "catppuccin/nvim", 
    lazy = false, 
    name = "catppuccin", 
    priority = 999, 
    config = function()
        vim.cmd.colorscheme "catppuccin"
    end
}


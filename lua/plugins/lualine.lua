-- DETAILS BAR AT THE BOTTOM OF THE TERMINAL --

return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = "iceberg_dark",
            },
        })
    end,
}

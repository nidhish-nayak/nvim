-- THEMES --

-- return {
--     "catppuccin/nvim",
--     lazy = false,
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--         require("catppuccin").setup({
--             transparent_background = true,
--         })
--         vim.cmd.colorscheme("catppuccin")
--     end,
-- }

return {
    "rose-pine/neovim",
    lazy = false,
    name = "rose-pine",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("rose-pine")
        -- require("rose-pine").setup({
        --     styles = {
        --         bold = true,
        --         italic = true,
        --         transparency = true,
        --     },
        -- })
    end,
}

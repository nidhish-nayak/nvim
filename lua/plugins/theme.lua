-- THEMES --

-- return {
--     "catppuccin/nvim",
--     lazy = false,
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--         require("catppuccin").setup({
--             transparent_background = false,
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
        -- require("rose-pine").setup({
        --     styles = {
        --         bold = true,
        --         italic = true,
        --         transparency = true,
        --     },
        -- })
        vim.cmd.colorscheme("rose-pine")
    end,
}

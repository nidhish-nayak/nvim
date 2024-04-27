-- MAJOR GIT PLUGINS --

return {
    {
        "tpope/vim-fugitive",
    },
    {
        "sindrets/diffview.nvim",
        config = function()
            -- KEYBINDS --
            vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>", {})
            vim.keymap.set("n", "<leader>gc", ":DiffviewClose<CR>", {})
            vim.keymap.set("n", "<leader>gf", ":DiffviewToggleFiles<CR>", {})
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            -- KEYBINDS --
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
        end,
    },
}

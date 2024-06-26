-- TELESCOPE TO FUZZY SEARCH FILES & GREP --

return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "-1.1.6",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- FIND FILES
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- GREP FIND
            vim.keymap.set("n", "<leader>bb", builtin.buffers, {}) -- FILE TABS (BUFFERS)
            vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {}) -- FIND REFS
            vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions, {}) -- FIND DEFS
            vim.keymap.set("n", "<leader>fc", builtin.git_commits, {}) -- SHOW COMMITS
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        -- This is your opts table
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}

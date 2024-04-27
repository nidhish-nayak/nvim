return {
    "mfussenegger/nvim-lint",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    config = function()
        local lint = require("lint")

        -- LIST ALL LINTERS --
        lint.linters_by_ft = {
            -- javascript = { "eslint_d" },
            -- typescript = { "eslint_d" },
            -- javascriptreact = { "eslint_d" },
            -- typescriptreact = { "eslint_d" },
            -- svelte = { "eslint_d" },
            scss = { "stylelint" },
            less = { "stylelint" },
            sass = { "stylelint" },
            css = { "stylelint" },
        }

        -- CONFIGURE AUTOCMD --
        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            callback = function()
                require("lint").try_lint()
            end,
        })
    end,
}

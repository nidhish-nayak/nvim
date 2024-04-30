-- NONE-LS, ALTERNATIVE OF DEPRICATED NULL-LS --

return {
    "nvimtools/none-ls.nvim",
    lazy = false,
    config = function()
        vim.lsp.buf.format({ timeout_ms = 5000 })
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- FORMATTERS --
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,

                -- LINTERS CONFIGURED IN NVIM-LINT --
            },
        })

        -- KEYMAPS --
        vim.keymap.set("n", "<A-f>", vim.lsp.buf.format, {})
    end,
}

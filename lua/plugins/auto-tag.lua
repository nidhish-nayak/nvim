-- AUTO CLOSE TAGS FOR HTML --

return {
    "windwp/nvim-ts-autotag",
    ft = {
        "html",
        "xml",
        "astro",
        "svelte",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
    },

    config = function()
        require("nvim-ts-autotag").setup()
    end,
}

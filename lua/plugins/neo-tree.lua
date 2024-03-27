return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<leader>fo", ':Neotree toggle float filesystem reveal<CR>', {})    -- FILE TREE (FLOAT)
        vim.keymap.set("n", "<leader>gg", ':Neotree toggle float git_status<CR>', {})           -- FILE TREE (GIT STATUS)
        vim.keymap.set("n", "<leader>fl", ':Neotree toggle filesystem reveal left<CR>', {})     -- FILE TREE (LEFT) 
    end
}

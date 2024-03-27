return {
    'nvim-telescope/telescope.nvim', tag = '-1.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})   -- FIND FILES
        vim.keymap.set("n", "<C-f>", builtin.live_grep, {})         -- GREP FIND
   end
}


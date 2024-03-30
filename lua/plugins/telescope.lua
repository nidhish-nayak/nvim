-- TELESCOPE TO FUZZY SEARCH FILES & GREP --

return {
   {
      "nvim-telescope/telescope.nvim",
      tag = "-1.1.6",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
         local builtin = require("telescope.builtin")
         vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- FIND FILES
         vim.keymap.set("n", "<C-f>", builtin.live_grep, {}) -- GREP FIND
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

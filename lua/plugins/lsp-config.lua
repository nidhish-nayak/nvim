-- LSP SERVERS --

return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = {
               "lua_ls", "tsserver"
            }
         })
      end
   },
   {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
         local harpoon = require("harpoon")

         -- REQUIRED
         harpoon:setup()
         -- REQUIRED

         vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
         vim.keymap.set("n", "<leader>pp", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

         vim.keymap.set("n", "<A-q>", function() harpoon:list():select(1) end)
         vim.keymap.set("n", "<A-w>", function() harpoon:list():select(2) end)
         vim.keymap.set("n", "<A-e>", function() harpoon:list():select(3) end)
         vim.keymap.set("n", "<A-r>", function() harpoon:list():select(4) end)

         -- Toggle previous & next buffers stored within Harpoon list
         vim.keymap.set("n", "<A-p>", function() harpoon:list():prev() end)
         vim.keymap.set("n", "<A-n>", function() harpoon:list():next() end)
      end
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require('lspconfig')

         -- SETUP SERVERS HERE ONCE ENSURE INSTALLED --
         lspconfig.lua_ls.setup({})
         lspconfig.tsserver.setup({})

         -- KEYMAPS FOR LSP INSIGHTS --
         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set('n',  'gd', vim.lsp.buf.definition, {})
         vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
      end
   }
}


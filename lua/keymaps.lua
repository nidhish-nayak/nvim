-- SET NUMBERS FOR NVIM LINES --
vim.wo.number = true

-- SET TAB & SHIFT WIDTH AS REQUIRED --
vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")

-- MAP LEADER --
vim.g.mapleader = " "

-- KEYMAPS --
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- folder tree
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y')  -- yank motion
vim.keymap.set({ "n", "v" }, "<C-d>", '"+d')  -- delete motion
vim.keymap.set("n", "<C-v>", '"+p')           -- paste after cursor

-- GIT KEYMAPS --
vim.keymap.set("n", "<leader>grc", ":Git reset --soft HEAD~<CR>", {})                   -- UNDO GIT COMMIT
vim.keymap.set("n", "<leader>grs", ":Git reset HEAD -- % && Git checkout -- %<CR>", {}) -- UNSTAGE & RESET FILE

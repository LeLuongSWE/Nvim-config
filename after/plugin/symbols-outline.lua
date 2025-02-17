vim.keymap.set("n", "<C-S-Right>", "<cmd>:vertical resize -1<cr>", { noremap = true, silent = true, desc = "Minimize window" })
vim.keymap.set("n", "<C-S-Left>", "<cmd>:vertical resize +1<cr>", { noremap = true, silent = true, desc = "Maximize window" })

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>f.", vim.cmd.Ex)


-- Window Spawning
vim.keymap.set("n", "<leader>ws", vim.cmd.split)
vim.keymap.set("n", "<leader>wv", vim.cmd.vsplit)

-- Window moving
vim.keymap.set("n", "<leader>wh", function() vim.api.nvim_command('wincmd h') end)
vim.keymap.set("n", "<leader>wl", function() vim.api.nvim_command('wincmd l') end)
vim.keymap.set("n", "<leader>wj", function() vim.api.nvim_command('wincmd j') end)
vim.keymap.set("n", "<leader>wk", function() vim.api.nvim_command('wincmd k') end)


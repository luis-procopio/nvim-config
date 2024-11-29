vim.cmd("let mapleader = ' '")

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right toggle<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, {})
vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>x", ":BufferClose<CR>")
vim.keymap.set("n", "<C-s>", ":wa<CR>")

vim.keymap.set("n", "<leader>rp", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], { noremap = true, silent = false })

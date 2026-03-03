local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- 1. THE BASICS
-- Space is leader, 'x' is a black hole
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", opts)
vim.keymap.set("n", "x", '"_x', opts)

-- 2. FILE & SESSION (Simplified)
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", opts)
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w<CR>", opts) -- Save without linting/format
vim.keymap.set("n", "<C-q>", "<cmd>q<CR>", opts)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww god-tmux<CR>") -- Your tmux jumper

-- 3. MOVEMENT (Always centered)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Buffers are faster than Tabs. Use H/L to cycle.
vim.keymap.set("n", "H", ":bprev<CR>", opts)
vim.keymap.set("n", "L", ":bnext<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts)
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- Vertical split
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- Horizontal split
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- Balance splits

-- Move lines/blocks like VS Code
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", opts)
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

-- Better Indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Better Pasting (Don't lose your yanked text)
vim.keymap.set("v", "p", '"_dP', opts)

-- Fast Word Edit (The "Rename" - simplified to one map)
vim.keymap.set("n", "<C-c>", "ciw", opts)

-- 6. LSP & DIAGNOSTICS
vim.keymap.set("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, opts)
vim.keymap.set("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, opts)
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

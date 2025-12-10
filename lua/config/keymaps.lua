vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "jj", "<Esc>", { noremap = true, silent = true })

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- Navigate between splits
-- vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
-- vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
-- vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
-- vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Go to previous diagnostic message" })

vim.keymap.set("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Go to next diagnostic message" })

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww god-tmux<CR>")

--new keymaps
-- Move current line / visual selection up & down (VS Code style Alt+↑ / Alt+↓)
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opts) -- move current line down
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opts) -- move current line up
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts) -- move selected block down
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts) -- move selected block up
-- If Alt+j / Alt+k don't work in your terminal, change <A-j>/<A-k> to <C-j>/<C-k>

-- Delete previous word in insert mode (like Ctrl+Backspace)
-- (Vim already has <C-w> in insert mode, this just wires it to Ctrl+Backspace)
vim.keymap.set("i", "<C-BS>", "<C-w>", opts)
vim.keymap.set("i", "<C-h>", "<C-w>", opts) -- some terminals send <C-h> for Ctrl+Backspace

-- Optional: fast delete / yank word + space using leader (built on 'daw' / 'yaw')
vim.keymap.set("n", "<leader>dw", "daw", opts) -- delete word + trailing space
vim.keymap.set("n", "<leader>yw", "yaw", opts) -- yank word + trailing space

--rename
vim.keymap.set("n", "<leader>rn", "ciw", opts) -- Space + r + n

-- leader as space
vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>fv", "<cmd>Explore<CR>")

-- better move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor where it belongs while moving
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste and delete without yanking deleted
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without yank
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format
vim.keymap.set("n", "<leader>F", vim.lsp.buf.format)

-- quickfix jumps
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- sub word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- file into executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- copilot remaps due to tab use
vim.g.copilot_assume_mapped = true

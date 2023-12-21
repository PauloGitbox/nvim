-- ctrl + c = copy
vim.api.nvim_set_keymap('i', '<C-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true })
-- ctrl + v = paste
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-v>', '"+p', { noremap = true })
-- ctrl + x = cut
vim.api.nvim_set_keymap('i', '<C-x>', '<Esc>"+diw', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-x>', '"+d', { noremap = true })

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Explore<CR>")

vim.keymap.set("n", "<S-End>",":call delete(expand('%')) | :q!<CR>")
vim.keymap.set("n", "<C-PageUp>", ":wq!<CR>")
vim.keymap.set("n", "<C-PageDown>", ":q!<CR>")
vim.keymap.set("n", "<S-q>", ":tabprevious<CR>")
vim.keymap.set("n", "<S-Tab>", ":tabnext<CR>")
vim.keymap.set("n", "<F1>", ":1tabnext<CR>")
vim.keymap.set("n", "<F2>", ":2tabnext<CR>")
vim.keymap.set("n", "<F3>", ":3tabnext<CR>")
vim.keymap.set("n", "<F4>", ":4tabnext<CR>")
vim.keymap.set("n", "<F5>", ":5tabnext<CR>")
vim.keymap.set("n", "<F6>", ":6tabnext<CR>")
vim.keymap.set("n", "<F7>", ":7tabnext<CR>")
vim.keymap.set("n", "<F8>", ":8tabnext<CR>")
vim.keymap.set("n", "<F9>", ":9tabnext<CR>")
vim.keymap.set("n", "<F10>", ":10tabnext<CR>")
vim.keymap.set("n", "<C-T>", ":tabnew<CR>")
vim.keymap.set("n", "<C-w>", ":tabclose<CR>")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

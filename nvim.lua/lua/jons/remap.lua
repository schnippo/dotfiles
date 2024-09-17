vim.g.mapleader = " "
vim.keymap.set("n", "<leader>E", vim.cmd.Lex)
-- vim.keymap.set("n", "<leader>v", ":VimwikiUISelect<CR>", { noremap = true, silent = true, nowait = true })
-- vim.keymap.set("n", "<F1>", ":h " , { noremap = true, silent = true, nowait = true })
vim.keymap.set("n", "<F1>", "<nop>" , { noremap = true, silent = true, nowait = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>D", [["_D]])
vim.keymap.set({ "n", "v" }, "x", [["_x]])
vim.keymap.set({ "n", "v" }, "x", [["_x]])

-- Also delete the character under the cursor
vim.keymap.set({ "n" }, "cb", [[vbc]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("i", "<F1>", "<nop>")
vim.keymap.set("n", "<F13>", ":! compiler %<CR>") -- Shift-F1
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>z", vim.cmd.Goyo)

vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<F9>",  ":colorscheme tokyonight-moon<CR>")
vim.keymap.set("n", "<F10>", ":colorscheme tokyonight-day <CR>")

vim.keymap.set({"n", "i", "v"}, "<F11>", vim.cmd.tabprevious)
vim.keymap.set({"n", "i", "v"}, "<F12>", vim.cmd.tabnext )
vim.keymap.set({"n", "i", "v"}, "<C-F12>", vim.cmd.tabnew )
-- vim.keymap.set("n", "<C-BS>", "[[hi]]")


vim.keymap.set("n", "<S-CR>", ":VimwikiTabnewLink<CR>")
vim.keymap.set("n", "<leader>id", ":-1 pu=strftime('%F')<CR>")
vim.keymap.set("n", "<leader>iD", ":-1 pu=strftime('%c')<CR>")

-- For Development, jumping around errors
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>/", ":Commentary<CR>")
vim.keymap.set("v", "<leader>/", ":Commentary<CR>")
vim.keymap.set("n", "<leader>M", ":! cd # && make && sudo make install")

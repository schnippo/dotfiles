-- keybindings -----------------------------------------------------
vim.cmd("let g:CommandTPreferredImplementation='lua'")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cf", ":e ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree toggle right reveal_force_cwd last<CR>")

vim.keymap.set({"n", "i"}, "<F1>", "<nop>" , { noremap = true, silent = true, nowait = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>ca", [[mzggVGy`z]])

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>D", [["_D]])
vim.keymap.set({ "n", "v" }, "x", [["_x]])
vim.keymap.set({ "n", "v" }, "x", [["_x]])

-- Also delete the character under the cursor
vim.keymap.set({ "n" }, "cb", [[vbc]])

vim.keymap.set("n", "Q>", [[12<C-W>>]])
vim.keymap.set("n", "Q<", [[12<C-W><]])
vim.keymap.set("n", "Q-", [[4<C-W>-]])
vim.keymap.set("n", "Q_", [[4<C-W>-]])
vim.keymap.set("n", "Q+", [[4<C-W>+]])

vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]])
vim.keymap.set({"n", "i", "t" }, "<C-h>", [[<Cmd>wincmd h<CR>]])
vim.keymap.set({"n", "i", "t" }, "<C-j>", [[<Cmd>wincmd j<CR>]])
vim.keymap.set({"n", "i", "t" }, "<C-k>", [[<Cmd>wincmd k<CR>]])
vim.keymap.set({"n", "i", "t" }, "<C-l>", [[<Cmd>wincmd l<CR>]])

vim.keymap.set({"n", "i", "v", "t"}, "<F11>", vim.cmd.tabprevious)
vim.keymap.set({"n", "i", "v", "t"}, "<F12>", vim.cmd.tabnext )


vim.keymap.set("n", "<leader>id", ":-1 pu=strftime('%F')<CR>")
vim.keymap.set("n", "<leader>iD", ":-1 pu=strftime('%c')<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>/", ":Commentary<CR>")

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- settings ----------------------
vim.opt.guicursor = ""
vim.opt.clipboard = "unnamedplus"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Plugins -------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
local plugins = {
    'windwp/nvim-autopairs',
    'windwp/nvim-ts-autotag',
    "nvim-lua/plenary.nvim",

    {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}},
	'nvim-treesitter/playground',
	'nvim-treesitter/nvim-treesitter',
	'mbbill/undotree',
    'tpope/vim-commentary',
    'tpope/vim-surround',
    'tpope/vim-repeat',
    'MunifTanjim/nui.nvim',
    {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "s1n7ax/nvim-window-picker"
    },
    {
      'ribru17/bamboo.nvim',
      lazy = false,
      priority = 1000,
      config = function()
        require('bamboo').setup {
          -- optional configuration here
          style = 'vulgaris', -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
          toggle_style_key = "<F10>", -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
          toggle_style_list = { 'vulgaris', 'light' }, -- List of styles to toggle between
          transparent = false, -- Show/hide background
          dim_inactive = true, -- Dim inactive windows/buffers
          term_colors = true, -- Change terminal color as per the selected theme style
          ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
          cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
        }
        require('bamboo').load()
      end,
    }
}
}
-- Plugin Settings -----------

local opts = {}
require("lazy").setup(plugins, opts)

require("toggleterm").setup {
    open_mapping= [[<c-\>]],
    shade_terminals= true,
    shell="/usr/bin/zsh",
    persist_mode=true,
    start_in_insert=true,
    insert_mappings=true,
    close_on_exit=true,
    -- z_index=3
}
require.setup {}
-- require("plenary").setup {}
require("neo-tree").setup ({
    -- pop_border_style = :
    windows = {
        mappings = {
            ["P"] = { "toggle_preview", config = { use_float = true} },
        }
    }

})

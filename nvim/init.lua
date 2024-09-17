-- keybindings -----------------------------------------------------
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cf", ":e ~/.config/nvim/init.lua<CR>")
-- vim.keymap.set("n", "<leader>e", ":Lfcd<CR>")
vim.keymap.set("n", "<leader>f", vim.cmd.LfCurrentFileExistingOrNewTab)
vim.keymap.set("n", "<F13>", ":! compiler %<CR>") -- Shift-F1
vim.keymap.set("n", "<F14>", ":! opout %<CR>")    -- Shift-F2
vim.keymap.set({ "n", "v"}, "<F15>", ":0r !copysnippet.sh<CR>")
vim.keymap.set({ "n", "v"}, "<F16>", ":r !ls -1 \"$OLDPWD\" | dmenu -l 20<CR>:VimwikiFollowLink<CR>")
vim.keymap.set({ "n", "v"}, "<F17>", ":r !maimpick<CR>:VimwikiFollowLink<CR>")

vim.keymap.set({ "n" }, "<leader>sa", ":! inka2 collect %<CR>")

-- vim.keymap.set({ "n", "v", "i" }, "<c-s>", ":0r !copysnippet.sh 2>/dev/null<CR>")

-- vim.keymap.set("n", "<F1>", ":h " , { noremap = true, silent = true, nowait = true })
vim.keymap.set("n", "<F1>", "<nop>", { noremap = true, silent = true, nowait = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>rr", [[oif err != nil {<CR>log.Fatal(err)<esc>o}<esc>o<esc>]])
vim.keymap.set("n", "<leader>ca", [[mzggVGy`z`]])

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


vim.keymap.set("n", "Q>", [[8<C-W>>]])
vim.keymap.set("n", "Q<", [[8<C-W><]])
vim.keymap.set("n", "Q-", [[4<C-W>-]])
vim.keymap.set("n", "Q_", [[4<C-W>-]])
vim.keymap.set("n", "Q+", [[4<C-W>+]])
vim.keymap.set("i", "<F1>", "<nop>")

vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]])
-- vim.keymap.set({ "n", "i", "t" }, "<C-h>", [[<Cmd>wincmd h<CR>]])
-- vim.keymap.set({ "n", "i", "t" }, "<C-j>", [[<Cmd>wincmd j<CR>]])
-- vim.keymap.set({ "n", "i", "t" }, "<C-k>", [[<Cmd>wincmd k<CR>]])
-- vim.keymap.set({ "n", "i", "t" }, "<C-l>", [[<Cmd>wincmd l<CR>]])

-- don't work
-- vim.keymap.set("i", "<S-BS>", [[<esc>vBdi]]) -- <C-BS> would be <C-H>, but is already mapped, could do:
-- vim.keymap.set("i", "<C-H>", [[<esc>vBdi]]) and exclude "i" from (maybe all, for completion's sake) wincmd above.

-- But this does: Also delete the character under the cursor
vim.keymap.set({ "n" }, "cb", [[vbc]])

vim.keymap.set("n", "<F9>", vim.cmd.bnext)
vim.keymap.set({ "n", "i", "v", "t" }, "<F11>", vim.cmd.tabprevious)
vim.keymap.set({ "n", "i", "v", "t" }, "<F12>", vim.cmd.tabnext)
vim.keymap.set({ "n", "v" }, "<leader>/", vim.cmd.Commentary)
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("n", "<leader>z", vim.cmd.Goyo)

--
-- vim.keymap.set("n", "<S-CR>", ":VimwikiTabnewLink<CR>")
vim.keymap.set("n", "<leader>id", ":-1 pu=strftime('%F')<CR>")
vim.keymap.set("n", "<leader>iD", ":-1 pu=strftime('%c')<CR>")

-- For Development, jumping around errors
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

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

vim.g.lf_replace_netrw = 1

-- Vimwiki
vim.g.vimwiki_list = {
    {
        path = '~/nc/zettel/',
        syntax = 'markdown',
        ext = '.md',
    },
    {
        path = '~/nc/work/alpine/wiki',
        syntax = 'markdown',
        ext = '.md'
    }
}
vim.g.vimwiki_ext2syntax = {
    ['.rmd'] = 'markdown',
    ['.md'] = 'markdown',
    ['.markdown'] = 'markdown',
    ['.mdown'] = 'markdown',
}
vim.g.vimwiki_global_ext = 1
vim.cmd([[
let g:vimwiki_rx_todo = '\C\<\%(WIP\|DEP\|TODO\|HEAD\|DONE\|IDLE\|FIXME\|FIXED\|XXX\)\>'
]])

vim.api.nvim_create_autocmd("BufWrite", {
    pattern = "xresources",
    command = "!xrdb %",
})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.nu",
    command = ":TSBufEnable highlight",
})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "xresources",
    command = "set ft=xdefaults",
})

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
    'ptzz/lf.vim',
    'voldikss/vim-floaterm',
    'windwp/nvim-autopairs',
    -- 'windwp/nvim-ts-autotag',
    'vimwiki/vimwiki',
    'MunifTanjim/nui.nvim',
    'mipmip/vim-scimark',
    -- { 'akinsho/toggleterm.nvim', version = "*", opts = { --[[ things you want to change go here]] } },
    -- { 'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { {'nvim-lua/plenary.nvim'} } },
    -- 'nvim-treesitter/playground',
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            -- setup treesitter with config
        end,
        dependencies = {
            -- NOTE: additional parser
            { "nushell/tree-sitter-nu" },
        },
        build = ":TSUpdate",
    },
    { 'theprimeagen/harpoon',    dependencies = { 'nvim-lua/plenary.nvim' } },
    'junegunn/goyo.vim',
    'mbbill/undotree',
    'tpope/vim-fugitive', -- git client
    'tpope/vim-commentary',
    'tpope/vim-surround',
    'tpope/vim-repeat',
    'tpope/vim-obsession',

    { 'rrethy/vim-hexokinase', build = "make hexokinase" },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            'neovim/nvim-lspconfig', -- Required
            {                        -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            'williamboman/mason-lspconfig.nvim', -- Optional

            -- Autocompletion
            'hrsh7th/nvim-cmp',     -- Required
            'hrsh7th/cmp-nvim-lsp', -- Required
            'L3MON4D3/LuaSnip',     -- Required
        }
    },{
        'ribru17/bamboo.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('bamboo').setup {
                -- optional configuration here
            }
            require('bamboo').load()
        end,
    },
    {
        "vhyrro/luarocks.nvim",
        priority = 1001, -- this plugin needs to run before anything else
        opts = {
            rocks = { "magick" },
        }
    },
    {
      "christoomey/vim-tmux-navigator",
      cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
      },
      keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
      },
    },
    {
    "3rd/image.nvim",
    event = "VeryLazy",
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
          require("nvim-treesitter.configs").setup({
            ensure_installed = { "markdown" },
            highlight = { enable = true },
          })
        end,
      },
    },
    opts = {
      backend = "ueberzug",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = true,
          download_remote_images = true,
          only_render_image_at_cursor = true,
          filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
        },
        -- neorg = {
        --   enabled = true,
        --   clear_in_insert_mode = false,
        --   download_remote_images = true,
        --   only_render_image_at_cursor = false,
        --   filetypes = { "norg" },
        -- },
      },
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 30,
      -- kitty_method = "normal",
    },
  }

}
-- Plugin Settings -----------
local opts = {}

require("lazy").setup(plugins, opts)

-- require("toggleterm").setup {
--     open_mapping = [[<c-\>]],
--     shade_terminals = true,
--     shell = "/usr/bin/zsh",
--     persist_mode = true,
--     start_in_insert = true,
--     insert_mappings = true,
--     close_on_exit = true,
--     -- z_index=3
-- }

require("nvim-autopairs").setup {}
-- require'nvim-treesitter.configs'.setup { }


-- THEME------------------------------------------------------------------------------
require('bamboo').setup {
    -- Main options --
    -- NOTE: to use the light theme, set `vim.o.background = 'light'`
    style = 'vulgaris',                          -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
    toggle_style_key = "<F10>",                  -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
    toggle_style_list = { 'vulgaris', 'light' }, -- List of styles to toggle between
    transparent = false,                         -- Show/hide background
    dim_inactive = false,                        -- Dim inactive windows/buffers
    term_colors = true,                          -- Change terminal color as per the selected theme style
    ending_tildes = false,                       -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false,                -- reverse item kind highlights in cmp menu

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        conditionals = 'bold',
        keywords = 'italic',
        functions = 'bold',
        namespaces = 'none',
        parameters = 'none',
        strings = 'none',
        variables = 'none',
    },
    -- Custom Highlights --
    colors = {},     -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = false,    -- darker colors for diagnostic
        undercurl = true,  -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
    },
}


vim.g.tmux_navigator_disable_when_zoomed=1

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<F5>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<F6>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<F7>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<F8>", function() ui.nav_file(4) end)

-- -- telescope
-- require('telescope').setup{
--       defaults = {
--           vimgrep_arguments = {
--               'ag',
--               "--hidden",
--               "--ignore",
--               "~/docker",
--               "-l",
--               "-g",
--               '""'
--               -- 'rg',
--               -- '--color=never',
--               -- '--no-heading',
--               -- '--with-filename',
--               -- '--line-number',
--               -- '--column',
--               -- '--smart-case',
--               -- '--hidden',
--           },
--       }
--   }
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>F', function()
--     builtin.find_files({ cwd = "/home/jons", hidden = true, no_ignore = true })
-- end)
-- -- vim.keymap.set('n', '<leader>T', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>G', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

-- lsp setup
local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.ensure_installed({
    'gopls',
    -- 'marksman'
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil
lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})
lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})
lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)
lsp.setup()
vim.diagnostic.config({
    virtual_text = true
})

-- require("neo-tree").setup({
--     -- pop_border_style = :
--     windows = {
--         mappings = {
--             ["P"] = { "toggle_preview", config = { use_float = true } },
--         }
--     }
-- })

-- treesitter setup
-- require'nvim-treesitter.configs'.setup {
    --   -- A list of parser names, or "all" (the five listed parsers should always be installed)
    --   ensure_installed = { "c", "lua", "vim", "vimdoc", "query" , "go", "python", "bash"},
    --   -- Install parsers synchronously (only applied to `ensure_installed`)
    --   sync_install = false,
    --   -- Automatically install missing parsers when entering buffer
    --   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    --   auto_install = true,
    --   highlight = {
        --     enable = true,
        --     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        --     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        --     -- Using this option may slow down your editor, and you may see some duplicate highlights.
        --     -- Instead of true it can also be a list of languages
        --     additional_vim_regex_highlighting = false,
        --   },
        --   autotag = {
            --     enable = true,
            --     filetypes = {
                --     'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
                --     'xml',
                --     'php',
                --     'markdown',
                --     -- 'astro', 'glimmer', 'handlebars', 'hbs'
                --     },
                --     skip_tags = {
                    --       'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
                    --       'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr','menuitem'
                    --     }
                    --   }
                    -- }
-- vim.api.nvim_create_user_command("OpenPDF",
--     function ()
--         local buffer = vim.api.nvim_buf_get_name(0)
--         local pdf = string.gsub(buffer, ".r*md", ".pdf" )
--         -- local code=os.execute("test -f "..pdf)
--         local tmpf=io.open("/home/jons/test.txt", "a")
--         -- io.write(tmpf, tostring(code))
--         tmpf.write("hi")

--         print(tmpf)
--         tmpf.close()
--         -- print(os.execute("test -f "..pdf))
--         -- if os.execute("test -f "..pdf) then
--         --     io.popen("setsid -f zathura "..pdf)
--         -- else
--         --     local dir = io.popen("dirname "..vim.api.nvim_buf_get_name(0))
--         --     io.popen("setsid -f zathura $(ls -1 "..dir.." | dmesg -l)")
--         -- end
--     end, {})

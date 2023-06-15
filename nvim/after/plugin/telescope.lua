require('telescope').setup{
      defaults = {
          vimgrep_arguments = {
              'rg',
              '--color=never',
              '--no-heading',
              '--with-filename',
              '--line-number',
              '--column',
              '--smart-case',
              '--hidden',
          },
      }
  }

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>F', function()
    builtin.find_files({ cwd = "/home/jons", hidden = true, no_ignore = true })
end)
vim.keymap.set('n', '<leader>G', builtin.git_files, {})
vim.keymap.set('n', '<C-G>', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)


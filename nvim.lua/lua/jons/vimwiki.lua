vim.g.vimwiki_list = {
      {
          path = '~/nc/zettel/',
          syntax = 'default',
          ext = '.wiki',
      },
      {
          path = '~/nc/work/alpine/wiki',
          syntax= 'markdown',
          ext= '.md'
      }
  }
  vim.g.vimwiki_ext2syntax = {
      ['.rmd'] = 'markdown',
      ['.md'] = 'markdown',
      ['.markdown'] = 'markdown',
      ['.mdown'] = 'markdown',
  }
  vim.g.vimwiki_global_ext = 1

-- vim.g.vimwiki-option_rx_todo = "\C\<\%(TODO\|DONE\|STARTED\|FIXME\|FIXED\|WIP\|XXX\)\>"

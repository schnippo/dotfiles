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
      ['.md'] = 'markdown',
      ['.markdown'] = 'markdown',
      ['.mdown'] = 'markdown',
  }

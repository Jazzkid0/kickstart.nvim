--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {

  -- [[ Default plugins in lua/kickstart/ ]]

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- Use `opts = {}` to force a plugin to be loaded.

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  -- Modular plugins use `require 'path/name'`
  -- Config at lua/path/name.lua

  require 'kickstart/plugins/gitsigns',

  require 'kickstart/plugins/which-key',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/lsp',

  require 'kickstart/plugins/cmp',

  require 'kickstart/plugins/tokyonight',

  require 'kickstart/plugins/mini',

  require 'kickstart/plugins/treesitter',

  require 'kickstart.plugins.indent_line',

  -- [[ Custom plugins in lua/custom/plugins/ ]]

  -- Non-negotiable.
  require 'custom/plugins/harpoon',

  -- Best featured git integration, awful ux lmao
  require 'custom/plugins/fugitive',

  -- Branching undo history
  require 'custom/plugins/undotree',

  -- Exstensible statusline
  require 'custom/plugins/statusline',

  -- File navigation.
  -- TODO: Find a better visualisation with file creation and deletion only.
  require 'custom/plugins/file-browser',

  -- More powerful diagnostic management
  require 'custom/plugins/trouble',

  -- Zen mode for writing prose and removing distractions
  require 'custom/plugins/zen-mode',

  -- UI replacement for messages, cmdline, popupmenu
  require 'custom/plugins/noice',

  -- Ding powered llm completion
  require 'custom/plugins/copilot',
}

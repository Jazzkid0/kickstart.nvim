-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins, you can run
--    :Lazy update

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

  -- The most important plugin
  require 'custom/plugins/harpoon',

  -- Git integration with a misleading name
  require 'custom/plugins/fugitive',

  -- Undo history and navigation
  require 'custom/plugins/undotree',

  -- Had problems with the mini statusline
  require 'custom/plugins/statusline',

  -- A little more feature rich than netrw
  require 'custom/plugins/file-browser',

  -- Trouble is a great plugin for managing diagnostics
  require 'custom/plugins/trouble',

  -- Zen mode for writing prose and removing distractions
  require 'custom/plugins/zen-mode',

  -- Copilot
  require 'custom/plugins/copilot',
  { 'AndreM222/copilot-lualine' },
}

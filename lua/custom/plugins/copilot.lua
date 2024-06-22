return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    local copilot = require 'copilot'

    copilot.setup()
    copilot.suggestion = {
      keymap = {
        accept = "<M-l>",
        accept_line = "<M-'>",
        next = "<M-y>",
        prev = "<M-u>",
        dismiss = "<M-j>",
      }
    }
    copilot.panel = { enabled = false }
    copilot.filetypes = {
      markdown = true,
    }
    copilot.copilot_node_command = 'node'
    copilot.server_opts_overrides = {}
  end,
}

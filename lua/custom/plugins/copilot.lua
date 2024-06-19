return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    local copilot = require 'copilot'

    copilot.setup()
    copilot.suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
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
      yaml = false,
      markdown = true,
    }
    copilot.copilot_node_command = 'bun'
    copilot.server_opts_overrides = {}
  end,
}

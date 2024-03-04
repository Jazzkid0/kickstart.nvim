return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    local copilot = require 'copilot'

    copilot.setup()
    copilot.suggestion = { enabled = false }
    copilot.panel = { enabled = false }
  end,
}

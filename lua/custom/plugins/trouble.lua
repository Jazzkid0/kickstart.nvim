return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
  },
  config = function()
    local trouble = require("trouble")
    trouble.setup {
      vim.keymap.set("n", "<leader>tt", function() trouble.toggle() end, { desc = "Trouble Toggle" }),
      vim.keymap.set("n", "<leader>tR", function() trouble.refresh() end, { desc = "Trouble Refresh" }),
      vim.keymap.set("n", "<leader>tq", function() trouble.toggle("quickfix") end, { desc = "Trouble Quickfix" }),
      vim.keymap.set("n", "<leader>tl", function() trouble.toggle("loclist") end, { desc = "Trouble Location List" }),
      vim.keymap.set("n", "<leader>td", function() trouble.toggle("document_diagnostics") end, { desc = "Trouble Document Diagnostics" }),
      vim.keymap.set("n", "<leader>tw", function() trouble.toggle("workspace_diagnostics") end, { desc = "Trouble Workspace Diagnostics" }),
      vim.keymap.set("n", "<leader>tn", function() trouble.next({ skip_groups = true, jump = true}) end, { desc = "Trouble Next" }),
      vim.keymap.set("n", "<leader>tN", function() trouble.next({ skip_groups = true, jump = true}) end, { desc = "Trouble First" }),
      vim.keymap.set("n", "<leader>tp", function() trouble.previous({ skip_groups = true, jump = true}) end, { desc = "Trouble Previous" }),
      vim.keymap.set("n", "<leader>tP", function() trouble.previous({ skip_groups = true, jump = true}) end, { desc = "Trouble Last" }),
    }
  end
}

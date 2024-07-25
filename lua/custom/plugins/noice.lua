return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {},
  dependencies = {
    "MunifTanjim/nui.nvim",
    -- optional for notification view
    "rcarriga/nvim-notify",
  },
  config = function ()
    local noice = require("noice")
    noice.setup {
      lsp = {
        override = {  
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
        },
        hover = {
          silent = true,
        },
      },
      presets = {
        bottom_search = true, -- bottom cmdline for search
        command_palette = true, -- cmdline and popupmenu position
        long_message_to_split = true,
        inc_rename = false, -- inc-rename.nvim idk?
        lsp_doc_border = false, -- docs and signature help borders
      },
      vim.keymap.set("n", "<leader>n", function() vim.cmd('Noice') end, { desc = "View [n]otificatoins" })
    }
  end,
}

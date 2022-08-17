-- Additional Plugins
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  },
  --  {
  --    "tzachar/cmp-tabnine",
  --    config = function()
  --      local tabnine = require "cmp_tabnine.config"
  --      tabnine:setup {
  --        max_lines = 1000,
  --        max_num_results = 20,
  --        sort = true,
  --      }
  --    end,
  --
  --    run = "./install.sh",
  --    requires = "hrsh7th/nvim-cmp",
  --  },
  {
    "nvim-telescope/telescope-media-files.nvim"
  },
  { "github/copilot.vim",
    config = function()
      -- disable cmp's ghost text override
      lvim.builtin.cmp.experimental.ghost_text = false

      vim.g.copilot_filetypes = { xml = false, markdown = false }
      -- vim.g.copilot_filetypes = { ["*"] = false, python = true, java = true }

      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("\\<CR>")', { silent = true, expr = true })
      vim.api.nvim_set_keymap("i", "<C-j>", "copilot#Previous()", { silent = true, expr = true })
      vim.api.nvim_set_keymap("i", "<C-k>", "copilot#Next()", { silent = true, expr = true })
      vim.api.nvim_set_keymap("i", "<C-d>", "copilot#Dismiss()", { silent = true, expr = true })
      vim.defer_fn(function()
        vim.api.nvim_set_hl(0, "CopilotSuggestion", { fg = "#888888" })
      end, 1000)
    end,
  },
}

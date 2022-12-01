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
  {
    "nvim-telescope/telescope-media-files.nvim"
  },
  { "github/copilot.vim",
    config = function()
      -- disable cmp's ghost text override
      lvim.builtin.cmp.experimental.ghost_text = false
      vim.g.copilot_filetypes = { xml = false }
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
  { 'junegunn/fzf', run = ":call fzf#install()" },
  { "junegunn/fzf.vim" },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   config = function()
  --     require("user.theme").kanagawa()
  --     vim.cmd [[colorscheme kanagawa]]
  --   end,
  -- },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    -- run = ":CatppuccinCompile",
    config = function()
      require("user.theme").catppuccin()
      vim.cmd [[colorscheme catppuccin-mocha]]
    end,
  },
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
}

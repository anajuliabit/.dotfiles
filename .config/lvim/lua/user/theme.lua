local M = {}

M.kanagawa = function()
  local kanagawa = require "kanagawa"
  kanagawa.setup {
    undercurl = true, -- enable undercurls
    commentStyle = {},
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { italic = true },
    typeStyle = {},
    variablebuiltinStyle = { italic = true },
    specialReturn = true, -- special highlight for the return keyword
    specialException = true, -- special highlight for exception handling keywords
    dimInactive = lvim.builtin.global_statusline, -- dim inactive window `:h hl-NormalNC`
    globalStatus = lvim.builtin.global_statusline, -- adjust window separators highlight for laststatus=3
    transparent = lvim.transparent_window,
    colors = { sumiInk1b = "#1b1b23" },
    overrides = {
      diffRemoved = { fg = "#E46876" },
    },
  }
end

M.catppuccin = function()
  local catppuccin = require "catppuccin"
  local opts = {
    flavour = "macchiato",
    background = { light = "latte", dark = "mocha" },
    transparent_background = lvim.transparent_window,
    term_colors = false,
    styles = {
      comments = {},
      keywords = { "italic" },
    },
    compile = {
      enabled = true, -- NOTE: make sure to run `:CatppuccinCompile`
      path = vim.fn.stdpath "cache" .. "/catppuccin",
    },
    dim_inactive = {
      enabled = lvim.builtin.global_statusline,
      shade = "dark",
      percentage = 0.15,
    },
    integrations = {
      cmp = true,
      fidget = true,
      lsp_trouble = true,
      telescope = true,
      treesitter = true,
      mason = true,
      neotest = lvim.builtin.test_runner == "neotest",
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = {},
          warnings = { "italic" },
          information = {},
        },
        underlines = {
          errors = { "undercurl" },
          hints = {},
          warnings = { "undercurl" },
          information = {},
        },
      },
      dap = {
        enabled = lvim.builtin.dap.active,
        enable_ui = lvim.builtin.dap.active,
      },
      indent_blankline = {
        enabled = true,
        colored_indent_levels = false,
      },
      gitsigns = lvim.builtin.gitsigns.active,
      notify = true,
      nvimtree = true,
      neotree = lvim.builtin.tree_provider == "neo-tree",
      overseer = lvim.builtin.task_runner == "overseer",
      symbols_outline = lvim.builtin.tag_provider == "symbols-outline",
      which_key = lvim.builtin.which_key.active,
      lightspeed = lvim.builtin.motion_provider == "lightspeed",
      hop = lvim.builtin.motion_provider == "hop",
    },
    highlight_overrides = {
      mocha = {
        NormalFloat = { fg = "#CDD6F4", bg = "#151521" },
        CmpItemKindEnum = { fg = "#B4BEFE" },
        CmpItemKindEnumMember = { fg = "#F5C2E7" },
        CmpItemMenu = { fg = "#7F849C" },
        CmpItemAbbr = { fg = "#BAC2DE" },
        Cursor = { fg = "#1e1e2e", bg = "#d9e0ee" },
        ["@constant.builtin"] = { fg = "#EBA0AC" },
        TSConstBuiltin = { fg = "#EBA0AC" },
      },
    },
  }
  if lvim.transparent_window then
    local colors = require("catppuccin.palettes").get_palette()
    colors.none = "NONE"
    opts.custom_highlights = {
      Comment = { fg = colors.overlay1 },
      LineNr = { fg = colors.overlay1 },
      CursorLine = { bg = colors.none },
      CursorLineNr = { fg = colors.lavender },
      DiagnosticVirtualTextError = { bg = colors.none },
      DiagnosticVirtualTextWarn = { bg = colors.none },
      DiagnosticVirtualTextInfo = { bg = colors.none },
      DiagnosticVirtualTextHint = { bg = colors.none },
    }
  end
  catppuccin.setup(opts)
end

return M

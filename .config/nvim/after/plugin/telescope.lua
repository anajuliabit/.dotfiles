local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    winblend = 0, 
    layout_config = {
    prompt_position = "top",
    width = 0.75,
    height = 0.5,
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
      layout_config = {
        width = 0.5,
        height = 0.5,
      },
    },
  },
  extensions = {},
}


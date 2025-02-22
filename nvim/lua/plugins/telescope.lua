return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
  event = 'VeryLazy',
  dependencies = { 
	  'nvim-lua/plenary.nvim',
	  'nvim-treesitter/nvim-treesitter',
	  'BurntSushi/ripgrep',
  },

  config = function()
	require('telescope').setup {}

	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
  end
}

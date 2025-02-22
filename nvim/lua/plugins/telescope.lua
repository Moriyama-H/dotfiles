return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
  event = 'VeryLazy',
  dependencies = { 
	  'nvim-lua/plenary.nvim',
	  'nvim-treesitter/nvim-treesitter',
	  'BurntSushi/ripgrep',
	  'nvim-telescope/telescope-frecency.nvim',
  },

  config = function()
	require('telescope').setup {}
	require('telescope').load_extension('frecency')

	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<C-;>', builtin.live_grep, { desc = 'Telescope live grep' })
  end
}

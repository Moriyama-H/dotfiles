return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  priority = 900,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
      
    -- disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup ({
		filters = {
			git_ignored = false, -- git files are not ignored by default
		}
	})
  end,
  keys = {
      {'<C-n>', ':NvimTreeToggle<CR>', desc = 'Toggle NvimTree' },
  },
}


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

    require("nvim-tree").setup {}
  end,
  keys = {
      {'<C-n>', ':NvimTreeToggle<CR>', desc = 'Toggle NvimTree' },
  },
}


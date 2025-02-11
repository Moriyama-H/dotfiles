return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },  -- アイコンの表示に必要
	lazy = false,
    config = function()
      require("lualine").setup {
        options = {
          -- icons_enabled = false,  -- アイコンを無効化する場合はコメントアウト解除
          theme = "auto",
          section_separators = "",  -- セクション区切りを無効化
          component_separators = "", -- コンポーネント区切りを無効化
        },
      }
    end,
  },
}

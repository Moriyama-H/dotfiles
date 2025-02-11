return {
  {
    "preservim/vim-markdown",
    ft = { "markdown" },  -- Markdownファイルを開いたときに読み込む
    dependencies = {
      "godlygeek/tabular",  -- 必要な依存プラグイン
    },
	config = function()
	  vim.g.vim_markdown_folding_style_pythonic = 1
	  vim.g.vim_markdown_new_list_item_indent = 2
	end,
  },
}

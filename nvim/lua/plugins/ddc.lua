return {
  {
    "Shougo/ddc.vim",
    dependencies = {
      "vim-denops/denops.vim",  -- 必須依存プラグイン
	  "vim-denops/denops-helloworld.vim",
      "Shougo/ddc-ui-native",   -- UI の設定
      "Shougo/ddc-source-around", -- 周辺の単語を補完候補
	  "Shougo/ddc-source-shell-native",
      -- "Shougo/ddc-source-vim-lsp", -- LSP 補完
	  "tani/ddc-fuzzy", -- ファジー検索
      -- "Shougo/ddc-filter-matcher_fuzzy", -- ファジーマッチング
      -- "Shougo/ddc-filter-sorter_fuzzy",  -- ファジーソート
      -- "Shougo/ddc-converter-fuzzy",      -- ファジー変換
	  "Shougo/ddc-filter-matcher_head",
	  "Shougo/ddc-filter-sorter_rank",
	  "Shougo/ddc-source-nextword",
	  "LumaKernel/ddc-source-file",	-- ファイル名補完

      "prabirshrestha/vim-lsp",
      "mattn/vim-lsp-settings", -- lsp server autoset :LspInstallServer
      "shun/ddc-source-vim-lsp",
      "neovim/nvim-lspconfig",

      -- 'vim-skk/skkeleton',
    },
    config = function()
      vim.fn["ddc#custom#patch_global"]("ui", "native")

      -- 使用する補完ソース
      vim.fn["ddc#custom#patch_global"]("sources", { "vim-lsp", "around", "file", "skkeleton"})

      -- ソースごとのオプション設定
      vim.fn["ddc#custom#patch_global"]("sourceOptions", {
        _ = {
          matchers = { "matcher_fuzzy" },
          sorters = { "sorter_fuzzy" },
          converters = { "converter_fuzzy" },
          minAutoCompleteLength = 1,
        },
        around = {
          mark = "|A|",
        },
        ["vim-lsp"] = {
          mark = "|LSP|",
          forceCompletionPattern = { [[\.\w*|:\w*|->\w*]] },
        },
		file = {
		  mark = "|File|",
		  forceCompletionPattern = {[[\S\\\S*]]},
		},
		skkeleton = {
			mark = "|SKK|",
			matchers = {},
			sorters = {},
			converters = {},
			isVolatile = true,
			minAutoCompleteLength = 1,
		},
      })

      -- ddc.vim を有効化
      vim.fn["ddc#enable"]()

	  vim.g.lsp_diagnostics_enabled = 0  -- Disable LSP diagnostics

    end,
  },
}

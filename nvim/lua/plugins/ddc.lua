return {
  {
    "Shougo/ddc.vim",
    dependencies = {
      "vim-denops/denops.vim",  -- $BI,?\0MB8%W%i%0%$%s(B
	  "vim-denops/denops-helloworld.vim",
      "Shougo/ddc-ui-native",   -- UI $B$N@_Dj(B
      "Shougo/ddc-source-around", -- $B<~JU$NC18l$rJd408uJd(B
	  "Shougo/ddc-source-shell-native",
      -- "Shougo/ddc-source-vim-lsp", -- LSP $BJd40(B
	  "tani/ddc-fuzzy", -- $B%U%!%8!<8!:w(B
      -- "Shougo/ddc-filter-matcher_fuzzy", -- $B%U%!%8!<%^%C%A%s%0(B
      -- "Shougo/ddc-filter-sorter_fuzzy",  -- $B%U%!%8!<%=!<%H(B
      -- "Shougo/ddc-converter-fuzzy",      -- $B%U%!%8!<JQ49(B
	  "Shougo/ddc-filter-matcher_head",
	  "Shougo/ddc-filter-sorter_rank",
	  "Shougo/ddc-source-nextword",
	  "LumaKernel/ddc-source-file",	-- $B%U%!%$%kL>Jd40(B

      "prabirshrestha/vim-lsp",
      "mattn/vim-lsp-settings", -- lsp server autoset :LspInstallServer
      "shun/ddc-source-vim-lsp",
      "neovim/nvim-lspconfig",

      -- 'vim-skk/skkeleton',
    },
    config = function()
      vim.fn["ddc#custom#patch_global"]("ui", "native")

      -- $B;HMQ$9$kJd40%=!<%9(B
      vim.fn["ddc#custom#patch_global"]("sources", { "vim-lsp", "around", "file", "skkeleton"})

      -- $B%=!<%9$4$H$N%*%W%7%g%s@_Dj(B
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

      -- ddc.vim $B$rM-8z2=(B
      vim.fn["ddc#enable"]()

	  vim.g.lsp_diagnostics_enabled = 0  -- Disable LSP diagnostics

    end,
  },
}

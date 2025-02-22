return { 
        'vim-skk/skkeleton',
		event = 'VeryLazy',
        dependencies = {
            "vim-denops/denops.vim",
            "Shougo/ddc.vim",
            "Shougo/ddc-ui-native",
			{
				"delphinus/skkeleton_indicator.nvim",
				opts = {},
				event = "InsertEnter",
			}
        },
        config = function()
            vim.fn["skkeleton#config"]({
                globalDictionaries = { '~/.config/nvim/SKK-JISYO.L', 'utf-8'},
                eggLikeNewline = true,
				keepState = true,
				-- keepMode = true,
            })

      		vim.fn["skkeleton#register_kanatable"]("rom", {
      		  [","] = {"\u{FF0C}", ""},	-- \u{FF0C}（，）
      		  ["."] = {"\u{FF0E}", ""}, -- \u{FF0E}（．）
      		})
			
			vim.keymap.set({ "i", "c" }, [[<C-j>]], [[<Plug>(skkeleton-toggle)]], { noremap = false })
        end
    }

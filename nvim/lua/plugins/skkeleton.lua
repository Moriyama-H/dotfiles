return { 
        'vim-skk/skkeleton',
        dependencies = {
            "vim-denops/denops.vim",
            "Shougo/ddc.vim",
            "Shougo/ddc-ui-native",
			{
				"delphinus/skkeleton_indicator.nvim",
				opts = {},
			}
        },
        config = function()
            vim.fn["skkeleton#config"]({
                globalDictionaries = { '~/.config/nvim/SKK-JISYO.L' },
                eggLikeNewline = true,
				keepMode = true,
            })
            -- vim.fn["ddc#custom#patch_global"]('ui', 'native')
            -- vim.fn["ddc#custom#patch_global"]('sources', { 'skkeleton' })
            -- vim.fn["ddc#custom#patch_global"]({
            --     sourceOptions = {
            --         ["skkeleton"] = {
            --             mark = 'skkeleton',
            --             matchers = {},
            --             sorters = {},
            --             converters = {},
            --             isVolatile = true,
            --             minAutoCompleteLength = 1,
            --         },
            --     }
            -- })
            -- vim.fn["ddc#enable"]()
			
			vim.keymap.set({ "i", "c" }, [[<C-j>]], [[<Plug>(skkeleton-toggle)]], { noremap = false })
        end
    }

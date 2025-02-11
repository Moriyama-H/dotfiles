-- return {
--     "iamcco/markdown-preview.nvim",
--     cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--     ft = { "markdown" },
--     build = function()
-- 		vim.fn["mkdp#util#install"]()
-- 	end,
-- }
--
return {
	"kat0h/bufpreview.vim",
	event = "VeryLazy"
	-- ft = { "markdown" },	-- not work
}

return {
  {
    "lervag/vimtex",
    lazy = false, -- 遅延読み込みを無効化
    config = function()
      vim.g.vimtex_view_method = "skim" -- Skim ビューアを使用
      vim.g.vimtex_compiler_latexmk = {
        options = {
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        },
      }
    end,
  },
}

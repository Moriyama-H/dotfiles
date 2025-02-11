return {
  {
    "lervag/vimtex",
    lazy = false, -- $BCY1dFI$_9~$_$rL58z2=(B
    config = function()
      vim.g.vimtex_view_method = "skim" -- Skim $B%S%e!<%"$r;HMQ(B
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

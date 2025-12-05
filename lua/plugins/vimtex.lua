return {
  {
    "lervag/vimtex",
    config = function()
      -- 编译方法：latexmk
      vim.g.vimtex_compiler_method = "latexmk"

      -- PDF 查看器：zathura
      vim.g.vimtex_view_method = "zathura"

      vim.g.tex_flavor = "latex" --撰写的 TeX 文档是 LaTeX 语法风格的文档
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk_engines = { --这里需要把默认引擎设置为xelatex
        ["_"] = "-xelatex",
        pdfdvi = "-pdfdvi",
        pdfps = "-pdfps",
        pdflatex = "-pdf",
        luatex = "-lualatex",
        lualatex = "-lualatex",
        xelatex = "-xelatex",
        ["context (pdftex)"] = "-pdf -pdflatex=texexec",
        ["context (luatex)"] = "-pdf -pdflatex=context",
        ["context (xetex)"] = "-pdf -pdflatex='texexec --xtx'",
      }
      vim.g.tex_comment_nospell = 1 --不进行注释检查
      -- vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = "",
        out_dir = "",
        callback = 1,
        continuous = 1, -- 持续编译
        executable = "latexmk",
        hooks = {},
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

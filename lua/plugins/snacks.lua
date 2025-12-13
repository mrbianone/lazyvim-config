return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        -- your image configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        doc = {
          enabled = true,
          inline = false,
          float = true,
        },
        math = {
          enabled = true,
          latex = {
            font_size = "Large",
            packages = { "amsmath", "amsfonts", "amssymb", "amscd", "mathtools" },
            tpl = [[
                    \documentclass[preview,border=0pt,varwidth,12pt]{standalone}
        \usepackage{${packages}}
      \renewenvironment{equation}{\begin{equation*}}{\end{equation*}}
        \begin{document}
        ${header}
        {\${font_size} \selectfont
          \color{white}
          ${content}}
        \end{document}
                   ]],
          },
        },
      },
    },
  },
}

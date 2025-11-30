return {
  {
    "Saghen/blink.cmp",
    opts = function(_, opts)
      opts.enabled = function()
        -- 禁用 LaTeX 补全
        if vim.bo.filetype == "tex" then
          return false
        end
        return true
      end
      return opts
    end,
  },
}

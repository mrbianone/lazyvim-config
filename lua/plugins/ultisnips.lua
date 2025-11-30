return {
  {
    "sirver/UltiSnips",
    config = function()
      -- 设置触发器
      vim.g.UltiSnipsExpandTrigger = "<tab>"
      vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
    end,
  },
}

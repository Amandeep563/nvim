return {
  {
    "mvllow/modes.nvim",
    event = "VeryLazy",
    config = function()
      require("modes").setup({
        colors = {
          copy = "#f5e0dc",
          delete = "#f38ba8",
          insert = "#a6e3a1",
          visual = "#89b4fa",
        },
        line_opacity = 0.15,
      })
    end,
  },
}

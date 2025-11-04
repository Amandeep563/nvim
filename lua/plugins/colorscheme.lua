return {
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa-paper").setup({
        undercurl = true,
        transparent = false,
        gutter = false,
        diag_background = true,
        dim_inactive = false,
        terminal_colors = true,
        cache = false,
        styles = {
          comment = { italic = true },
          functions = { italic = false },
          keyword = { italic = false, bold = false },
          statement = { italic = false, bold = false },
          type = { italic = false },
        },
      })

      vim.cmd.colorscheme("kanagawa-paper-ink") -- dark
      -- vim.cmd.colorscheme("kanagawa-paper-canvas") -- light
    end,
  },
}

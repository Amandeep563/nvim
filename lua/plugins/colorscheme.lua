return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("oxocarbon")

      -- FULL TRANSPARENCY
      local groups = {
        "Normal",
        "NormalNC",
        "SignColumn",
        "EndOfBuffer",
        "NormalFloat",
        "FloatBorder",
        "StatusLine",
        "StatusLineNC",
        "LineNr",
        "Folded",
        "WinSeparator",
      }

      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
      end

      -- HARD BLACK & WHITE TUNING
      vim.api.nvim_set_hl(0, "Comment", { fg = "#6f6f6f", italic = true })
      vim.api.nvim_set_hl(0, "Function", { fg = "#ffffff", bold = true })
      vim.api.nvim_set_hl(0, "Keyword", { fg = "#ffffff", bold = true })
      vim.api.nvim_set_hl(0, "String", { fg = "#d0d0d0" })
      vim.api.nvim_set_hl(0, "Type", { fg = "#e0e0e0" })
    end,
  },
}

-- return {
--   {
--     "gbprod/nord.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require("nord").setup({})
--       vim.cmd.colorscheme("nord")
--     end,
--   },
-- }
return {
  {
    "mhartington/oceanic-next",
    name = "oceanic-next",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("OceanicNext")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "OceanicNext",
    },
  },
}

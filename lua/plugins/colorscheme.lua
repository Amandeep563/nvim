-- return {
--   "navarasu/onedark.nvim",
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require("onedark").setup({
--       style = "darker",
--     })
--     -- Enable theme
--     require("onedark").load()
--   end,
-- }
return {
  "shaunsingh/nord.nvim",
  priority = 1000, -- Ensures it loads before other plugins
  config = function()
    require("nord").set()
  end,
}

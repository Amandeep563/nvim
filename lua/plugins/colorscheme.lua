return {
  "shaunsingh/nord.nvim",
  priority = 1000, -- Ensures it loads before other plugins
  config = function()
    require("nord").set()
  end,
}

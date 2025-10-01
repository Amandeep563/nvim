return {
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- colorscheme plugins should have high priority
  lazy = false, -- load during startup
  config = function()
    require("onedarkpro").setup({
      colorscheme = "onedark_vivid", -- yahi tu chah raha hai
    })
    vim.cmd("colorscheme onedark_vivid")
  end,
}

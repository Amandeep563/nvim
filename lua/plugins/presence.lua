return {
  "andweeb/presence.nvim",
  enabled = true,

  event = "VeryLazy", -- Optional: lazy load karne ke liye
  config = function()
    require("presence").setup({
      main_image = "neovim",

      log_level = "error",
      editing_text = "Editing: %s", -- File ka naam dikhane ke liye
      buttons = false,
    })
  end,
}

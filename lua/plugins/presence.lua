return {
  "vyfor/cord.nvim",
  enabled = true,

  event = "VeryLazy", -- Lazy loading on the VeryLazy event
  config = function()
    require("cord").setup({
      display = {
        theme = "default", -- You can change to "catppuccin", "atom", "classic", etc.
        main_image = "neovim", -- Main icon image
        editing_text = "Editing: %s", -- Text to show file name in activity
        buttons = false, -- No buttons in presence
      },
      log_level = "error", -- Log level for errors only
    })
  end,
}

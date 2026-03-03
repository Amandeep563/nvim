return {
  "vyfor/cord.nvim",
  build = ":Cord update fetch", -- downloads server automatically
  opts = {
    -- optional config
    display = {
      theme = "catppuccin", -- or default / atom / classic
    },
  },
}

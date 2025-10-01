-- ~/.config/nvim/lua/plugins/custom-diagnostics.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,

      underline = true,
    },
  },
}

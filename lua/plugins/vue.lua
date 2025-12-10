return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      volar = {},
      vtsls = {}, -- Required for volar TypeScript support
    },
  },
}

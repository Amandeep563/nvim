-- ~/.config/nvim/lua/plugins/lsp-tsserver.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {
        init_options = {
          preferences = {
            includeCompletionsForImportStatements = true,
            includeCompletionsWithInsertText = true,
            includeCompletionsWithAutoImport = true,
          },
        },
      },
    },
  },
}

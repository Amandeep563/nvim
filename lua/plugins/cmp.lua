return {
  {
    "saghen/blink.cmp",
    version = "*", -- always use latest stable
    event = "InsertEnter",
    dependencies = {
      "rafamadriz/friendly-snippets", -- optional but nice
    },
    opts = {
      -- basic keymaps (Tab / Shift-Tab to move, Enter to confirm, etc.)
      keymap = {
        preset = "default",
      },

      -- this makes colors look ok even if your theme doesn't support blink yet
      appearance = {
        use_nvim_cmp_as_default = true, -- from blink + LazyVim docs :contentReference[oaicite:0]{index=0}
      },

      -- which completion sources to use
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
    config = function(_, opts)
      require("blink.cmp").setup(opts)
    end,
  },
}

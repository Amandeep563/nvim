return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
      },
    })
    vim.keymap.set({ "n", "x" }, "<leader>e", function()
      require("oil").open()
    end, { silent = true })
  end,
}

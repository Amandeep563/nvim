return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    require("telescope").setup({
      defaults = {
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "bottom" },
      },
    })

    -- Example keymaps
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help" })
  end,
}

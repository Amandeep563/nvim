return {
  "ph1losof/ecolog.nvim",
  branch = "v1",
  config = function()
    local ecolog = require("ecolog")

    ecolog.setup({
      shelter = {
        enabled = true, -- start with secrets hidden
        configuration = {
          patterns = {
            ["*_KEY"] = "full",
            ["*_SECRET"] = "full",
            ["*_TOKEN"] = "full",
            ["*_PASSWORD"] = "full",
          },
        },
      },
      integrations = {
        cmp = true,
        lsp = true,
      },
      vim_env = true,
    })

    -- Toggle hide/unhide env values
    vim.keymap.set("n", "<leader>eh", function()
      if ecolog.is_shelter_enabled() then
        ecolog.disable_shelter()
        print("Env values visible 👀")
      else
        ecolog.enable_shelter()
        print("Env values hidden 🔒")
      end
    end, { desc = "Toggle env hide/show" })
  end,
}

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          on_init = function(client)
            -- no workspace => single-file mode; lua_ls only analyzes the open file
            client.workspace_folders = nil
            client.config.settings = vim.tbl_deep_extend("force", client.config.settings, {
              Lua = {
                workspace = {
                  checkThirdParty = false,
                },
                diagnostics = {
                  workspaceEvent = "OnSave",
                },
              },
            })
          end,
        },
      },
    },
  },
}

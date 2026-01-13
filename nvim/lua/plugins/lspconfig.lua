return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup({
      automatic_installation = true,
    })

    -- For each installed server, configure and enable it
    for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
      vim.lsp.config(server, {
        capabilities = capabilities,
      })

      vim.lsp.enable(server)
    end
  end,
}

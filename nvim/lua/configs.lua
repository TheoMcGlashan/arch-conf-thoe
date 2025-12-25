require("nvim-autopairs").setup()
require("nvim-treesitter").setup({
	highlight = { enable = true },
	indent = { enable = true },
})
local ok, cmp = pcall(require, "cmp")
if ok then
  cmp.setup({
    completion = {
      autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged },
      completeopt = "menuone,noselect,popup"
    },

    mapping = cmp.mapping.preset.insert({
      ["<Up>"] = cmp.mapping.select_prev_item(),
      ["<Down>"] = cmp.mapping.select_next_item(),

      ["<Tab>"] = cmp.mapping.confirm({ select = true }),

      ["<Esc>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.abort()
        else
          fallback()
        end
      end, { "i", "s" }),
    }),

    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "buffer" },
    }),
  })

  local caps_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
  if caps_ok then
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
  end
end

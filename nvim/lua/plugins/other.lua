-- Language servers{{{
require'lspconfig'.pyright.setup{
  capabilities = capabilities
}
require'lspconfig'.bashls.setup{
  capabilities = capabilities
}

require'lspconfig'.lua_ls.setup{
  capabilities = capabilities,
  cmd = {'/bin/lua-language-server'}
}

-- require'lspconfig'.emmet_ls.setup{
--   capabilities = capabilities
-- }

require'lspconfig'.clangd.setup{
  capabilities = capabilities
}

require 'lspconfig'.gopls.setup{
  capabilities = capabilities
}

-- require'lspconfig'.tsserver.setup{
--   cmd= { "typescript-language-server", "--stdio" },
--   filetypes= { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
-- }

--}}}

local ns = vim.api.nvim_create_namespace('toggle_hlsearch')

local function toggle_hlsearch(char)
  if vim.fn.mode() == 'n' then
    local keys = { '<CR>', 'n', 'N', '*', '#', '?', '/' }
    local new_hlsearch = vim.tbl_contains(keys, vim.fn.keytrans(char))

    if vim.opt.hlsearch:get() ~= new_hlsearch then
      vim.opt.hlsearch = new_hlsearch
    end
  end
end

vim.on_key(toggle_hlsearch, ns)

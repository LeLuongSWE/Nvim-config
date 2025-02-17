local lspconfig = require('lspconfig')

-- Bật snippet capability cho completion (nếu bạn muốn snippet support)
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.html.setup {
  capabilities = capabilities, -- Sử dụng capabilities đã cấu hình snippet support
  cmd = { "vscode-html-language-server", "--stdio" }, -- Lệnh khởi chạy language server (mặc định)
  filetypes = { "html", "templ" }, -- Các filetypes mà LSP sẽ hoạt động
  init_options = { -- Các init options (mặc định)
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true -- Bật code formatting
  },
  -- settings = {}, -- Bạn có thể thêm settings tùy chỉnh ở đây nếu cần
  -- single_file_support = true, -- Mặc định đã là true, hỗ trợ single file
}

local lspconfig = require('lspconfig')

-- ... (Các cấu hình LSP khác của bạn, ví dụ HTML, CSS LSP) ...

-- Cấu hình tsserver (typescript-language-server) cho JavaScript và TypeScript
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true -- Bật snippet support

lspconfig.ts_ls.setup {
 -- capabilities = capabilities, -- Sử dụng capabilities đã bật snippet support
  cmd = { "typescript-language-server", "--stdio" }, -- Lệnh khởi chạy server (mặc định)
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" }, -- Filetypes mà LSP hoạt động
  root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"), -- Tìm root project
  -- settings = {}, -- Bạn có thể thêm settings tùy chỉnh nếu cần
  -- single_file_support = true, -- Mặc định là true, hỗ trợ single file
  -- disable_snippets = false, -- Mặc định là false, snippet được bật nếu capabilities hỗ trợ
}

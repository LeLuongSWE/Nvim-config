-- local builtin = require("telescope.builtin")
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<C-g>', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>fw', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

require('telescope').setup({
  defaults = {
    path_display = {
      shorten = {
        len = 3, exclude = {1, -1}
      },
      truncate = true
    },
    dynamic_preview_title = true,
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
})
require('telescope').load_extension('fzf')
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { noremap = true, silent = true, desc = "Find file" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true, desc = "Grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { noremap = true, silent = true, desc = "Find buffer" })
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope marks<cr>", { noremap = true, silent = true, desc = "Find mark" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", { noremap = true, silent = true, desc = "Find references (LSP)" })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { noremap = true, silent = true, desc = "Find symbols (LSP)" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope lsp_incoming_calls<cr>", { noremap = true, silent = true, desc = "Find incoming calls (LSP)" })
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope lsp_outgoing_calls<cr>", { noremap = true, silent = true, desc = "Find outgoing calls (LSP)" })
vim.keymap.set("n", "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", { noremap = true, silent = true, desc = "Find implementations (LSP)" })
vim.keymap.set("n", "<leader>fx", "<cmd>Telescope diagnostics bufnr=0<cr>", { noremap = true, silent = true, desc = "Find errors (LSP)" })

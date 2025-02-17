require("nvim-autopairs").setup {
  -- Các cấu hình chung khác của autopairs (nếu có) ...

  fast_wrap = {
    map = '<leader>w', -- Phím tắt để wrap đoạn văn bản được chọn bằng cặp thẻ, ví dụ `<p>...</p>`
    chars = { '{', '[', '(', '"', "'", '`', '<' }, -- Các ký tự kích hoạt tính năng fast-wrap
    pattern = string.gsub([[ [%'%"%>%`%-=%.%w] ]], '%s', ''),
    end_of_line = true, -- Wrap đến cuối dòng
    before_word = false, -- Wrap trước từ
    check_comma_space = true, -- Kiểm tra dấu phẩy và khoảng trắng trước khi wrap
    highlight = 'Search',
    -- event = "InsertEnter", -- Sự kiện kích hoạt fast-wrap (có thể là "InsertEnter" hoặc "TextYankPost")
    -- ... các tùy chọn khác của fast_wrap ...
  },

  disable_filetype = { "javascript", "typescript" }, -- Tắt autopairs cho các filetype này (ví dụ JS, TS - có thể tùy chỉnh)
  enable_check_bracket_line = true,     -- Cho phép kiểm tra bracket trên cùng một dòng
  enable_bracket_in_quote = true,       -- Cho phép bracket trong dấu ngoặc kép
  enable_defer_time = true,             -- Cho phép trì hoãn thời gian
  enable_close_quote = true,            -- Cho phép tự động đóng dấu ngoặc kép
  break_line_regex_exps = {
    '^%', '^table', '^tbody', '^tr', '^li',
    '=', --lua pattern
    '- ', --markdown
    '> ', --markdown
    '%)', --erlang
  },
}

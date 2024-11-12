-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.dbs = {
  dev = "postgresql://postgres:postgres@127.0.0.1:54322/postgres",
  --staging = "Replace with your database connection URL.",
}

-- LazyVim auto format
vim.g.autoformat = false

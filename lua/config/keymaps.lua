-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Enable inlay hints
if vim.lsp.inlay_hint then
  vim.keymap.set("n", "<leader>ti", function()
    vim.lsp.inlay_hint(0, true)
  end, { desc = "Toggle inlay hints" })
end

vim.keymap.set("n", "<leader>p", '"_dp', { desc = "Paste without copying" })

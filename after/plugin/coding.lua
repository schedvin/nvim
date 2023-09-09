require("mini.comment").setup()
require("mini.surround").setup()

local prettier = require("prettier")

prettier.setup({
  bin = "prettierd", -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
  cli_options = {
    -- https://prettier.io/docs/en/cli.html#--config-precedence
    config_precedence = "cli-override", -- or "cli-override" or "file-override"
  },
})
-- Prettier
vim.keymap.set("n", "<leader>f", "<cmd>Prettier<CR>")
-- TroubleToggle
vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle workspace_diagnostics<CR>")

-- Spectre
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "Search current word" })
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "Search on current file"})

-- Quickfind
vim.keymap.set("n", "<leader>qf", function()
  local query = vim.fn.input("Find: ")
  local cmd = "QuickFind "..("%s"):format(query)
  vim.cmd(cmd)
end)

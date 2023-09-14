return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c_sharp", "html", "http", "json", "lua", "markdown", "toml", "tsx", "typescript", "yaml" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
}

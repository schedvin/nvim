
-- QuickFind
vim.api.nvim_create_user_command("QuickFind",
  function(opts)
    local builtin = require("telescope.builtin")
    local cmd = ("vimgrep /%s/gi **/*"):format(opts.fargs[1])
    vim.cmd(cmd)
    builtin.quickfix()
  end,
  { nargs = 1 })

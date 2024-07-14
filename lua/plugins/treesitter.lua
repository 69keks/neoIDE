return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = { "windwp/nvim-ts-autotag" },
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,
      highlight = {
        enable = true,
        --				disable = { "bash" },
      },
      indent = { enable = true },
      autotag = { enable = true },
    })
  end,
}

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Füge HTML zur Liste der installierten Parser hinzu
      vim.list_extend(opts.ensure_installed, {
        "html",
        "css",         -- optional, falls du HTML mit CSS schreibst
        "javascript"   -- optional, falls du HTML mit JS schreibst
      })
    end,
  },
}

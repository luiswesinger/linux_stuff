local options = {
  -- Weise Formatierer bestimmten Dateitypen zu
  formatters_by_ft = {
    lua = { "stylua" },
    html = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier" },
    json = { "prettier" },
    python = { "black" },
    cpp = { "clang-format" },
    c = { "clang-format" },
    -- füge weitere Dateitypen nach Bedarf hinzu
  },

  -- Format on Save aktivieren (optional)
--[[
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true, -- fallback auf LSP-Formatierung, falls kein Formatter definiert ist
  },
]]
}
return options


return {
  load = {
    require 'plugins.language.go', -- go support
    require 'plugins.llm.avante', -- Cursor-like LLM helper
  },
  nvim_lspconfig = {
    servers = {
      clangd = {},
      cmake = {},
      gopls = {},
      hyprls = {},
      ts_ls = {},
      cssls = {},
      pyright = {},
      rust_analyzer = {},
      bashls = {},
    },
  },
}

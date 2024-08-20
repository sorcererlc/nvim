return {
  opts = {
    ensure_installed = {
      'arduino',
      'bash',
      'c',
      'diff',
      'go',
      'gomod',
      'gosum',
      'html',
      'hyprlang',
      'java',
      'javascript',
      'jsdoc',
      'json',
      'json5',
      'lua',
      'luadoc',
      'make',
      'markdown',
      'markdown_inline',
      -- 'python',
      'rasi',
      'regex',
      -- 'rust',
      'query',
      'toml',
      'typescript',
      'vim',
      'vimdoc',
      'yaml',
    },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  If you are experiencing weird indenting issues, add the language to
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
}

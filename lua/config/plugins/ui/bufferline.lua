local icons = require 'config.icons'

local function is_ft(b, ft)
  return vim.bo[b].filetype == ft
end

local function diagnostics_indicator(num, _, diagnostics, _)
  local result = {}
  local symbols = {
    error = icons.diagnostics.Error,
    warning = icons.diagnostics.Warning,
    info = icons.diagnostics.Information,
  }
  if not true then
    return '(' .. num .. ')'
  end
  for name, count in pairs(diagnostics) do
    if symbols[name] and count > 0 then
      table.insert(result, symbols[name] .. ' ' .. count)
    end
  end
  local out = table.concat(result, ' ')
  return #out > 0 and result or ''
end

local function custom_filter(buf, buf_nums)
  local logs = vim.tbl_filter(function(b)
    return is_ft(b, 'log')
  end, buf_nums or {})
  if vim.tbl_isempty(logs) then
    return true
  end
  local tab_num = vim.fn.tabpagenr()
  local last_tab = vim.fn.tabpagenr '$'
  local is_log = is_ft(buf, 'log')
  if last_tab == 1 then
    return true
  end
  -- only show log buffers in secondary tabs
  return (tab_num == last_tab and is_log) or (tab_num ~= last_tab and not is_log)
end

local offsets = {
  {
    filetype = 'undotree',
    text = 'Undotree',
    highlight = 'PanelHeading',
    padding = 1,
  },
  {
    filetype = 'NvimTree',
    text = 'Explorer',
    highlight = 'PanelHeading',
    padding = 1,
  },
  {
    filetype = 'DiffviewFiles',
    text = 'Diff View',
    highlight = 'PanelHeading',
    padding = 1,
  },
  {
    filetype = 'flutterToolsOutline',
    text = 'Flutter Outline',
    highlight = 'PanelHeading',
  },
  {
    filetype = 'lazy',
    text = 'Lazy',
    highlight = 'PanelHeading',
    padding = 1,
  },
}

return {
  highlights = {
    background = {
      italic = true,
    },
    buffer_selected = {
      bold = true,
    },
  },
  options = {
    themable = true, -- whether or not bufferline highlights can be overridden externally
    -- style_preset = preset,
    get_element_icon = nil,
    show_duplicate_prefix = true,
    duplicates_across_groups = true,
    auto_toggle_bufferline = true,
    move_wraps_at_ends = false,
    groups = {
      items = {},
      options = {
        toggle_hidden_on_enter = true,
      },
    },
    mode = 'tabs', -- set to "tabs" to only show tabpages instead
    numbers = 'none', -- can be "none" | "ordinal" | "buffer_id" | "both" | functions
    right_mouse_command = 'vert sbuffer %d', -- can be a string | function, see "Mouse actions"
    left_mouse_command = 'buffer %d', -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
    indicator = {
      style = 'underline', -- can also be 'underline'|'none',
    },
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    truncate_names = true, -- whether or not tab names should be truncated
    tab_size = 18,
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = false,
    diagnostics_indicator = diagnostics_indicator,
    -- NOTE: this will be called a lot so don't do any heavy processing here
    custom_filter = custom_filter,
    offsets = offsets,
    color_icons = true, -- whether or not to add the filetype icon highlights
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = true,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = 'slope',
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    hover = {
      enabled = false, -- requires nvim 0.8+
      delay = 200,
      reveal = { 'close' },
    },
    sort_by = 'id',
    debug = { logging = false },
    name_formatter = function(buf) -- buf contains a "name", "path" and "bufnr"
      -- remove extension from markdown files for example
      if buf.name:match '%.md' then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
  },
}

-- Global configuration
require 'config.globals'

-- Global key mappings
require 'config.mappings.global'

-- Define commands
require 'config.commands.loader'

-- Disable some builtin plugins
require 'config.plugins.core.disabled'

-- Plugin loader
require 'plugins.core.loader'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

-- Bootstrap configration
require 'bootstrap'

-- Load global configuration
require('config'):load()

-- Global key mappings
require 'config.mappings.global'

-- Plugin loader
require('plugins'):load()

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

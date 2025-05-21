-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This holds the configuration
local config = wezterm.config_builder()

-- Configuration Goes Here
config.initial_cols = 120
config.initial_rows = 40

config.font_size = 16
config.color_scheme = 'shades-of-purple'

config.window_background_opacity = .8

-- Returns the config
return config

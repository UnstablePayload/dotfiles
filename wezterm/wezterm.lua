-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This holds the configuration
local config = wezterm.config_builder()

-- Configuration Goes Here
config.initial_cols = 120
config.initial_rows = 40

<<<<<<< HEAD
config.font_size = 16
config.color_scheme = 'shades-of-purple'

config.window_background_opacity = .8
=======
font = wezterm.font('JetBrains Mono Nerd Font')
config.font_size = 18

config.color_scheme = 'shades-of-purple'

config.window_background_opacity = .8
config.macos_window_background_blur = 20
>>>>>>> 883ec5d (config updates and snippets.lua)

-- Returns the config
return config

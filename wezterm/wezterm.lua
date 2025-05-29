-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This holds the configuration
local config = wezterm.config_builder()

-- Configuration Goes Here
config.initial_cols = 120
config.initial_rows = 40

config.color_scheme = 'kanagawabones'
font = wezterm.font('JetBrains Mono Nerd Font')
config.font_size = 15

config.window_background_opacity = .8
config.macos_window_background_blur = 20
-- config.tab_bar_at_bottom = truei
config.enable_tab_bar = false
-- Returns the config
return config

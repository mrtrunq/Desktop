local wezterm = require "wezterm"
local config = wezterm.config_builder()

config.font_size = 13
config.enable_tab_bar = false
config.color_scheme = "Tokyo Night"
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.98
config.font = wezterm.font("JetbrainsMono NF")
config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
	top = 16,
	bottom = 16,
	left = 16,
	right = 16
}

return config


local wezterm = require "wezterm"
local config = wezterm.config_builder()

config.font_size = 10
config.enable_tab_bar = false
config.color_scheme = "Dracula"
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.96
config.font = wezterm.font("JetBrainsMono NF")
config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
	top = 16,
	bottom = 16,
	left = 16,
	right = 16
}
config.keys = {
	{key="PageUp", mods="SHIFT", action=wezterm.action.ScrollByPage(-1)},
	{key="PageDown", mods="SHIFT", action=wezterm.action.ScrollByPage(1)},
}

return config


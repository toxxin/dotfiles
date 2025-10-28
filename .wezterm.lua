-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
--config.color_scheme = 'Batman'
config.color_scheme = 'Catppuccin Mocha'

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha"
  else
    return "Catppuccin Latte"
  end
end

-- color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())


-- bobuk start
config.window_frame = {
	font_size = 12,
}

config.command_palette_font_size = 16
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = false

config.front_end = "OpenGL"
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"
config.cell_width = 0.9
config.window_background_opacity = 0.99
config.initial_rows = 40
config.initial_cols = 150
config.window_decorations = "RESIZE"



config.keys = {
	{ key = "Enter", mods = "ALT", action = "DisableDefaultAssignment" },
	{ key = "p", mods = "SHIFT|SUPER", action = wezterm.action.ActivateCommandPalette },
	{
		key = "|",
		mods = "SHIFT|ALT",
		action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
	},
	{
		key = "_",
		mods = "SHIFT|ALT",
		action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
	},
	{ key = "LeftArrow", mods = "ALT|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
	{ key = "RightArrow", mods = "ALT|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
	{ key = "UpArrow", mods = "ALT|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
	{ key = "DownArrow", mods = "ALT|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	{ key = 'm', mods = 'ALT|SHIFT', action = wezterm.action.TogglePaneZoomState },
}
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config)

-- bobuk end

config.font =
  -- wezterm.font("Iosevka Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
  wezterm.font("IosevkaTerm Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 15

-- and finally, return the configuration to wezterm
return config


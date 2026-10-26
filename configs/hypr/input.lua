-- Personal input configuration.
-- Omarchy's defaults are loaded first; these are my overrides.

-- 1. Global config wrapper
hl.config({
	input = {
		touchpad = {
			natural_scroll = true,
		},
		-- Add your compose key from earlier here!
		kb_layout = "us",
		kb_options = "compose:ralt",
	},

	-- xxxIf your Omarchy version supports device blocks inside config, place them here:
	device = {
		{
			name = "wacom-bamboo-pen-pen",
			output = "HDMI-A-1",
		},
		{
			name = "wacom-one-pen-display-13-pen",
			output = "DVI-D-1",
		},
	},
})

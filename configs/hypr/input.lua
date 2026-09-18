-- Personal input configuration.
-- Omarchy's defaults are loaded first; these are my overrides.

hl.config({
	input = {
		touchpad = {
			natural_scroll = true,
		},
		tablet = {
			-- output = "DVI-D-1",
			output = "HDMI-A-1",
		},
	},
	-- Add a dedicated device section below input
	device = {
		{
			name = "wacom-bamboo-pen-pen",
			output = "HDMI-A-1",
			type = "tablet",
		},
	},
})

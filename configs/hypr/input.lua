-- Personal input configuration.
-- Omarchy's defaults are loaded first; these are my overrides.
-- test
-- 1. Main global configuration block
hl.config({
	input = {
		touchpad = {
			natural_scroll = true,
		},
	},
})

-- 2. Dedicated function call for the Bamboo Pen
hl.device({
	name = "wacom-bamboo-pen-pen",
	output = "HDMI-A-1", -- Maps the Bamboo to your main monitor
})

-- 3. Dedicated function call for the Wacom One Display
hl.device({
	name = "wacom-one-pen-display-13-pen",
	output = "DVI-D-1", -- Maps the screen-tablet to its matching display
})

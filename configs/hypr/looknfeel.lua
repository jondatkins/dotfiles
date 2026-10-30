-- Personal look and feel
--
o.window("org\\.gnome\\.Evince", {
	tag = "-floating-window",
})

o.window("imv", {
	tag = "-floating-window",
})

o.window("mpv", {
	tag = "-floating-window",
})

-- Force the Path Runner window to float, center, and size appropriately
o.window({ title = "^Path Runner$" }, {
	float = true,
	center = true,
	size = { 600, 400 },
})

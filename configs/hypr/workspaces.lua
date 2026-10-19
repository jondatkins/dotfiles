for i = 1, 9 do
	hl.workspace_rule({
		workspace = tostring(i),
		monitor = "HDMI-A-1",
		persistent = true,
		default = i == 1,
	})
end

hl.workspace_rule({
	workspace = "10",
	monitor = "DVI-D-1",
	persistent = true,
})

local function move_tablet_workspace(monitor)
	if monitor.name == "DVI-D-1" then
		hl.dsp.workspace.move({
			workspace = "10",
			monitor = monitor.name,
		})
	end
end

hl.on("monitor.added", move_tablet_workspace)

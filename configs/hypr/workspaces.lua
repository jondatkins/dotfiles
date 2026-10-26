local function connected(output)
	local pipe = io.popen("hyprctl monitors")
	local out = pipe and pipe:read("*a") or ""
	if pipe then
		pipe:close()
	end
	return out:match("Monitor " .. output .. " %(") ~= nil
end

local main_monitor = connected("HDMI-A-1") and "HDMI-A-1" or "eDP-1"

for i = 1, 9 do
	hl.workspace_rule({
		workspace = tostring(i),
		monitor = main_monitor,
		persistent = true,
		default = i == 1,
	})
end

if connected("DVI-D-1") then
	hl.workspace_rule({
		workspace = "10",
		monitor = "DVI-D-1",
		persistent = true,
	})
end

local function move_tablet_workspace(monitor)
	if monitor.name == "DVI-D-1" then
		hl.dsp.workspace.move({
			workspace = "10",
			monitor = monitor.name,
		})
	end
end

hl.on("monitor.added", move_tablet_workspace)

-- 1. Fast, non-blocking check to skip this entire file if running on a laptop.
-- This reads the Linux kernel system class directly from memory without spawning shell processes.
local f = io.open("/sys/class/dmi/id/chassis_type", "r")
local chassis = f and f:read("*l") or ""
if f then
	f:close()
end

-- Chassis type '9', '10', or '14' usually indicates a laptop/notebook.
-- If it matches, bail out immediately.
if chassis == "9" or chassis == "10" or chassis == "14" then
	return
end

-- 2. PC Setup (Only runs if not on a laptop)
-- Since we are on the PC, we can safely assume your static monitors are intended targets.
local main_monitor = "HDMI-A-1"

for i = 1, 9 do
	hl.workspace_rule({
		workspace = tostring(i),
		monitor = main_monitor,
		persistent = true,
		default = i == 1,
	})
end

-- Rules for the drawing tablet monitor
hl.workspace_rule({
	workspace = "10",
	monitor = "DVI-D-1",
	persistent = true,
})

-- 3. Asynchronous Event Handler
-- Uses your framework's native event wrapper which does not block the thread.
local function move_tablet_workspace(monitor)
	if monitor.name == "DVI-D-1" then
		hl.dsp.workspace.move({
			workspace = "10",
			monitor = monitor.name,
		})
	end
end

hl.on("monitor.added", move_tablet_workspace)

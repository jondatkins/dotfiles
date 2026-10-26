-- Read the system hardware class directly from kernel memory without spawning shell processes
local f = io.open("/sys/class/dmi/id/chassis_type", "r")
local chassis = f and f:read("*l") or ""
if f then
	f:close()
end

-- Check if this machine is a laptop (Chassis profiles 9, 10, or 14)
if chassis == "9" or chassis == "10" or chassis == "14" then
	----------------------------------------------------
	-- LAPTOP CONFIGURATION
	----------------------------------------------------
	-- Explicitly declare all your laptop workspaces so it doesn't fall back to defaults
	for i = 1, 9 do
		hl.workspace_rule({
			workspace = tostring(i),
			monitor = "eDP-1",
			persistent = true,
			default = i == 1,
		})
	end
else
	----------------------------------------------------
	-- PC CONFIGURATION
	----------------------------------------------------
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

	-- Asynchronous Event Handler for the PC drawing tablet
	local function move_tablet_workspace(monitor)
		if monitor.name == "DVI-D-1" then
			hl.dsp.workspace.move({
				workspace = "10",
				monitor = monitor.name,
			})
		end
	end

	hl.on("monitor.added", move_tablet_workspace)
end

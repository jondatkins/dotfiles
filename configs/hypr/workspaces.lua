-- Workspaces bind to the desktop monitors (HDMI-A-1 / DVI-D-1) when those are
-- connected, and fall back to the live monitor (e.g. laptop eDP-1) so the full
-- set of workspaces exists on either machine.

local function connected(output)
	return o.shell_succeeds("hyprctl monitors | grep -q '^Monitor " .. output .. " ('")
end

local function first_monitor()
	local pipe = io.popen("hyprctl monitors")
	local out = pipe and pipe:read("*a") or ""
	if pipe then
		pipe:close()
	end
	return out:match("Monitor ([%w%.%-]+) ") or "eDP-1"
end

local function rule(workspace, pinned, default)
	if connected(pinned) then
		hl.workspace_rule({ workspace = workspace, monitor = pinned, persistent = true, default = default })
	else
		-- Desktop output absent (e.g. laptop): keep the workspace persistent on the
		-- live monitor instead of pinning it to a missing one. Only workspace 1 is
		-- default so a single-monitor machine boots into it.
		hl.workspace_rule({
			workspace = workspace,
			monitor = first_monitor(),
			persistent = true,
			default = workspace == "1",
		})
	end
end

rule("1", "HDMI-A-1", true)
rule("2", "HDMI-A-1", false)
rule("3", "HDMI-A-1", false)
rule("4", "HDMI-A-1", false)
rule("5", "HDMI-A-1", false)
rule("6", "HDMI-A-1", false)
rule("7", "HDMI-A-1", false)
rule("8", "HDMI-A-1", false)
rule("9", "HDMI-A-1", false)
rule("10", "DVI-D-1", true)
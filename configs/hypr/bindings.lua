-- Personal Hyprland keybindings.
-- Omarchy's defaults are loaded first; these are my overrides.

-- Window focus: HJKL
o.bind("SUPER + H", "Focus left", hl.dsp.focus({ direction = "l" }))
hl.unbind("SUPER + L")
o.bind("SUPER + L", "Focus right", hl.dsp.focus({ direction = "r" }))
-- omarchy uses super k to show the keybinds
hl.unbind("SUPER + K")
o.bind("SUPER + K", "Focus up", hl.dsp.focus({ direction = "u" }))
-- omarchy uses super j to toggle splits
hl.unbind("SUPER + J")
o.bind("SUPER + J", "Focus down", hl.dsp.focus({ direction = "d" }))

-- -- Toggle split
hl.unbind("SUPER + U")
o.bind("SUPER + U", "Toggle split", hl.dsp.layout("togglesplit"))

-- -- Move windows: Ctrl + Super + HJKL
-- o.bind("SUPER + CTRL + H", "Move window left", hl.dsp.window.move({ direction = "l" }))
-- o.bind("SUPER + CTRL + L", "Move window right", hl.dsp.window.move({ direction = "r" }))
-- o.bind("SUPER + CTRL + K", "Move window up", hl.dsp.window.move({ direction = "u" }))
-- o.bind("SUPER + CTRL + J", "Move window down", hl.dsp.window.move({ direction = "d" }))
--
-- -- Swap windows: Alt + Super + HJKL
o.bind("SUPER + ALT + H", "Swap window left", hl.dsp.window.swap({ direction = "l" }))
o.bind("SUPER + ALT + L", "Swap window right", hl.dsp.window.swap({ direction = "r" }))
o.bind("SUPER + ALT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("SUPER + ALT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))

-- Resize windows: Shift + Super + HJKL
o.bind("SUPER + SHIFT + H", "Resize left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
o.bind("SUPER + SHIFT + L", "Resize right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))
o.bind("SUPER + SHIFT + K", "Resize up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
o.bind("SUPER + SHIFT + J", "Resize down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))
--
--
-- -- Keybindings menu
-- hl.unbind("SUPER + K")
o.bind("SUPER + I", "Show key bindings", "omarchy-menu-keybindings")
--
-- -- Workspace navigation
-- hl.unbind("SUPER + CTRL + LEFT")
-- hl.unbind("SUPER + CTRL + RIGHT")
-- o.bind("SUPER + CTRL + LEFT", "Previous workspace", hl.dsp.focus({ workspace = "m-1" }))
-- o.bind("SUPER + CTRL + RIGHT", "Next workspace", hl.dsp.focus({ workspace = "m+1" }))
--
-- -- Suspend
-- hl.unbind("SUPER + CTRL + S")
-- o.bind("SUPER + CTRL + S", "Suspend", "systemctl suspend")
--
-- -- Fullscreen
hl.unbind("SUPER + F")
hl.unbind("SUPER + CTRL + F")
o.bind("SUPER + F", "Fake fullscreen", hl.dsp.window.fullscreen({ mode = "maximized" }))
o.bind("SUPER + CTRL + F", "Fullscreen", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
--
-- -- Tmux terminal
-- hl.unbind("SUPER + ALT + RETURN")
-- o.bind("SUPER + ALT + RETURN", "Tmux", { omarchy = "terminal-tmux" })
--
-- -- Launch Walker
o.bind("SUPER + B", "Walker", "walker")
--
-- -- Don't care about twitter, but want to keep the dwindle / scrolling toggle
hl.unbind("SUPER + X")
o.bind("SUPER + X", "Toggle workspace layout", "omarchy-hyprland-workspace-layout-toggle")

-- DMS user keybind overrides (edit via Control Center or dms; do not remove this header)

hl.unbind("SUPER + B")
hl.bind("SUPER + B", hl.dsp.exec_cmd("brave"))
hl.unbind("SUPER + F")
hl.bind("SUPER + F", hl.dsp.exec_cmd("nautilus"))
hl.unbind("SUPER + O")
hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"))
hl.unbind("SUPER + S")
hl.bind("SUPER + S", function ()
    if hl.get_workspace("special:minimized") then
        hl.dispatch(hl.dsp.window.move({ workspace = hl.get_active_workspace(), window = "tag:minimized" }))
        hl.dispatch(hl.dsp.window.clear_tags({ window = "tag:minimized" }))
    else
        hl.dispatch(hl.dsp.window.tag({ tag = "minimized", window = hl.get_active_window() }))
        hl.dispatch(hl.dsp.window.move({ workspace = "special:minimized", follow = false }))
    end
end)
hl.unbind("SUPER + T")
hl.unbind("SUPER + Return")
hl.bind("SUPER + Return", hl.dsp.exec_cmd("ghostty"), { description = "ghostty" })

hl.bind("SUPER + CTRL + X", hl.dsp.exec_cmd("voxtype record toggle"), { description = "Toggle dictation"})
hl.bind("F9", hl.dsp.exec_cmd("voxtype record start"), { description = "Start dictation (push-to-talk)"})
hl.bind("F9", hl.dsp.exec_cmd("voxtype record stop"), { release = true }, { description = "Stop dictation (push-to-talk)"})

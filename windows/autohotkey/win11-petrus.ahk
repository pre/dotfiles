#Requires AutoHotkey v2.0
#SingleInstance Force

lastMinimized := 0

; Win+H minimizes current window and remember it
#h:: {
    global lastMinimized
    lastMinimized := WinGetID("A")
    WinMinimize(lastMinimized)
}

; Win+Shift+H restores the last minimized window
#j:: {
    global lastMinimized
    if lastMinimized && WinExist("ahk_id " lastMinimized) {
        DllCall("ShowWindow", "Ptr", lastMinimized, "Int", 9)  ; 9 = SW_RESTORE
        WinActivate("ahk_id " lastMinimized)
    }
}

; WIN-W sends ALT-F4 to close current window
#w::Send "!{F4}"

; WIN-C copy, WIN-V paste
#c::Send "^c"
#v::Send "^v"

; CTRL-ALT-ARROWLEFT/RIGHT - Move between Firefox tabs
#HotIf WinActive("ahk_exe firefox.exe")
^!Left::Send "^{PgUp}"
^!Right::Send "^{PgDn}"
#HotIf

; Ignore WIN key-down key-up (opens Start menu by default)
; ~ keeps Win native (so Win+key combos work); the dummy unassigned
; key vkE8 makes Windows treat the press as a combo, so no Start menu on release.
~LWin::Send "{Blind}{vkE8}"
~RWin::Send "{Blind}{vkE8}"
﻿;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times() {
    buff_right_right(500)
    run(1900)
    skill("r", 500)
    run(1500)
    skill("w", 500)
    run(1500)
    skill("d", 500)
    skill("Numpad0", 1000)
    skill("d", 4500)
}

abyss_times_new() {
    buff_right_right(500)
    run(1400)
    skill("r", 500)
    run(1500)
    skill("w", 500)
    run(1500)
    skill("d", 500)
    skill("Numpad0", 1000)
    skill("d", 4500)
}

test(times) {
    count := times
    while (count > 0)
    {
        count := count - 1
        skill("x", 1000)
    }
}

;#HotIf

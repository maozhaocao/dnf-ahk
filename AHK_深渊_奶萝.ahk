﻿;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_nailuo() {
    ; buff_right_right(2000)
    run(1900)
    skill("q", 500)
    run(1400)
    skill("q", 500)
    run(1000)
    skill("d", 1000)
    skill("r", 300)
    skill("s", 100)
    skill("e", 1000)
    skill("r", 4000)
    skill("f", 500)
}

abyss_times_new_nailuo() {
    ; buff_right_right(2000)
    run(1400)
    skill("q", 500)
    run(1400)
    skill("q", 500)
    run(1000)
    skill("d", 1000)
    skill("r", 300)
    skill("s", 100)
    skill("e", 1000)
    skill("r", 4000)
    skill("f", 500)
}
;#HotIf

;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_wunv() {
    buff_right_right(1000)
    run(1600)
    skill("v", 500)
    run(1500)
    skill("e", 500)
    run(1700)
    skill("s", 700)
    skill("q", 4000)
    skill("w", 1000)
}

abyss_times_new_wunv() {
    buff_right_right(1000)
    run(1100)
    skill("v", 500)
    run(1500)
    skill("e", 500)
    run(1700)
    skill("s", 700)
    skill("q", 4000)
    skill("w", 1000)
}
;#HotIf

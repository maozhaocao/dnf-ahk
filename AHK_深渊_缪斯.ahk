;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_miusi() {
    buff_right_right(1000)
    run(1700)
    skill("ctrl", 500)
    run(1000)
    skill("g", 200)
    skill("g", 500)
    run(1600)
    skill("s", 500)
    skill("w", 500)
    skill("e", 5000)
}

abyss_times_new_miusi() {
    buff_right_right(1000)
    run(1200)
    skill("ctrl", 500)
    run(1000)
    skill("g", 200)
    skill("g", 500)
    run(1600)
    skill("s", 500)
    skill("w", 500)
    skill("e", 5000)
}
;#HotIf

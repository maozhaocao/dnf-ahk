;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_jianmo() {
    buff_right_right(1500)
    run(1500)
    skill("h", 1500)
    run(1500)
    skill("alt", 2500)
    run(1700)
    skill("a", 1000)
    down_down_z(5000)
    skill("w", 1000)
}

abyss_times_new_jianmo() {
    buff_right_right(1500)
    run(1100)
    skill("h", 1500)
    run(1500)
    skill("alt", 2500)
    run(1700)
    skill("a", 1000)
    down_down_z(5000)
    skill("w", 1000)
}
;#HotIf

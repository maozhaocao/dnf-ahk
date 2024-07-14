;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_renying() {
    buff_right_right(1000)
    run(1600)
    skill("g", 2500)
    run(1400)
    skill("s", 1500)
    run(1300)
    skill("f", 1000)
    skill("ctrl", 4000)
    skill("d", 500)
}

abyss_times_new_renying() {
    buff_right_right(1000)
    run(1100)
    skill("g", 2500)
    run(1400)
    skill("s", 1500)
    run(1300)
    skill("f", 1000)
    skill("ctrl", 4000)
    skill("d", 500)
}
;#HotIf

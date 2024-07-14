;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_douluo() {
    buff_right_right(1000)
    run(1500)
    skill("d", 500)
    run(1200)
    skill("v", 1000)
    run(1000)
    skill("r", 1000)
    skill("g", 4000)
    skill("d", 500)
}

abyss_times_new_douluo() {
    buff_right_right(1000)
    run(1000)
    skill("d", 500)
    run(1300)
    skill("v", 1000)
    run(1100)
    skill("r", 1000)
    skill("g", 4000)
    skill("d", 500)
}
;#HotIf

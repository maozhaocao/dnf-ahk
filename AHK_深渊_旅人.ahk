;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_lvren() {
    buff_right_right(1000)
    run(1500)
    skill("r", 1500)
    run(1700)
    skill("e", 1000)
    run(1500)
    skill("s", 700)
    skill("g", 4000)
    skill("f", 700)
}

abyss_times_new_lvren() {
    buff_right_right(1000)
    run(900)
    skill("r", 1500)
    run(1300)
    skill("e", 1000)
    run(1100)
    skill("s", 700)
    skill("g", 2500)
}
;#HotIf

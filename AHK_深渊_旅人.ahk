;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_lvren() {
    buff_right_right(1000)
    run(1100)
    skill("f", 1500)
    run(1300)
    skill("e", 1000)
    run(1300)
    skill("a", 700)
    skill("r", 3000)
    skill("d", 700)
}

abyss_times_new_lvren() {
    buff_right_right(1000)
    run(900)
    skill("f", 1500)
    run(1300)
    skill("e", 1000)
    run(1300)
    skill("a", 700)
    skill("r", 3000)
    skill("d", 700)
}
;#HotIf

;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_ningmao() {
    buff_right_right(1000)
    run(1700)
    skill("s", 1500)
    run(1400)
    skill("a", 1000)
    run(1300)
    skill("z", 700)
    skill("ctrl", 700)
    skill("w", 3000)
}

abyss_times_new_ningmao() {
    buff_right_right(1000)
    run(1200)
    skill("s", 1500)
    run(1400)
    skill("a", 1000)
    run(1500)
    skill("z", 700)
    skill("ctrl", 700)
    skill("w", 3000)
}
;#HotIf

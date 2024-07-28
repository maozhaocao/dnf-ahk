;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_guiqi() {
    buff_right_right(1500)
    run(1900)
    skill("a", 800)
    run(1700)
    skill("e", 800)
    run(1400)
    skill("r", 100)
    skill("w", 1500)
    skill("t", 4000)
    run(500)
    skill("h", 1200)
}

abyss_times_new_guiqi() {
    buff_right_right(1500)
    run(1300)
    skill("a", 800)
    run(1500)
    skill("e", 800)
    run(1200)
    skill("r", 100)
    skill("w", 1500)
    skill("t", 4000)
    run(500)
    skill("h", 1200)
}
;#HotIf

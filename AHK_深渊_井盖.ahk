;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_jinggai() {
    buff_up_up(1000)
    run(1600)
    skill("f", 500)
    run(1500)
    skill("a", 2000)
    run(1400)
    skill("e", 500)
    skill("Numpad0", 9000)
}

abyss_times_new_jinggai() {
    buff_up_up(1000)
    run(1100)
    skill("f", 500)
    run(1500)
    skill("a", 2000)
    run(1400)
    skill("e", 500)
    skill("g", 3000)
}
;#HotIf

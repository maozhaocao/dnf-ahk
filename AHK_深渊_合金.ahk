;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_hejin() {
    buff_right_right(1500)
    skill("f", 1000)
    run(2500)
    skill("g", 2500)
    run(2500)
    skill("s", 1500)
    run(2500)
    skill("a", 1000)
    skill("d", 500)
    skill("Numpad4", 9000)
    skill("q", 1000)
}

abyss_times_new_hejin() {
    buff_right_right(1500)
    skill("f", 1000)
    run(1100)
    skill("g", 2500)
    run(1800)
    skill("s", 1500)
    run(1800)
    skill("a", 1000)
    skill("d", 500)
    skill("Numpad4", 9000)
    skill("q", 1000)
}


storm_hejin() {
    skill("s", 2000)
    buff_right_right(1500)
    skill("f", 1000)
    run_search_next(2300)

    run(1000)
    skill("r", 1500)
    run_search_next(1300)

    run(1000)
    skill("g", 1500)
    run_search_next(1200)

    run(1000)
    skill("d", 1000)
    skill("ctrl", 3000)
}
;#HotIf

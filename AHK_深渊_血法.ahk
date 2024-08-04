;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_xuefa() {
    buff_right_right(1000)
    run(1800)
    skill("q", 500)
    skill("w", 500)
    run(1800)
    skill("a", 1500)
    run(2000)
    skill("s", 800)
    skill("q", 500)
    skill("w", 500)
    skill("z", 500)
    skill("w", 3000)
}

abyss_times_new_xuefa() {
    buff_right_right(1000)
    run(1400)
    skill("q", 500)
    skill("w", 500)
    run(2000)
    skill("a", 1500)
    run(2000)
    skill("s", 800)
    skill("q", 500)
    skill("w", 500)
    skill("z", 500)
    skill("w", 3000)
}


storm_xuefa() {
    Sleep(1000)
    run(1000)
    skill("f", 2000)
    skill("w", 1000)
    buff_right_right(1000)
    run_search_next(1700)

    run(900)
    skill("a", 1500)
    run_search_next(1400)

    run(900)
    skill("w", 1500)
    run_search_next(1400)

    run(900)
    skill("g", 1000)
    skill("ctrl", 2000)
}
;#HotIf

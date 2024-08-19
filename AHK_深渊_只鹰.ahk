;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_zhiying() {
    buff_right_right(1500)
    run(2200)
    skill("d", 2000)
    run(1600)
    skill("q", 1000)
    run(1500)
    skill("r", 700)
    skill("ctrl", 700)
    skill("w", 3000)
}

abyss_times_new_zhiying() {
    buff_right_right(1500)
    run(1600)
    skill("d", 2000)
    run(1600)
    skill("q", 1000)
    run(1500)
    skill("r", 700)
    skill("ctrl", 700)
    skill("f", 700)
    skill("w", 3000)
}

storm_zhiying() {
    skill("v", 1000)
    buff_right_right(1000)
    run_search_next(1900)

    run(700)
    skill("a", 1000)
    run_search_next(1300)

    run(700)
    skill("q", 1000)
    run_search_next(1300)

    run(700)
    skill("w", 3000)
}
;#HotIf

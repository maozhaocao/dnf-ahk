;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_nailuo2() {
    buff_right_right(2000)
    run(1900)
    skill("q", 500)
    run(1900)
    skill("q", 500)
    run(1900)
    skill("d", 1000)
    skill("r", 300)
    skill("s", 100)
    skill("e", 1000)
    skill("r", 4000)
    skill("f", 500)
}

abyss_times_new_nailuo2() {
    buff_right_right(2000)
    run(1300)
    skill("q", 500)
    run(1500)
    skill("q", 500)
    run(1200)
    skill("d", 1000)
    skill("r", 300)
    skill("s", 100)
    skill("e", 1000)
    skill("r", 4000)
    skill("f", 500)
}

storm_nailuo2() {
    run(500)
    skill("q", 1500)
    run_search_next(1000)

    run(700)
    skill("q", 1500)
    run_search_next(1000)

    run(800)
    skill("q", 1000)
    run_search_next(1000)

    run(800)
    skill("e", 1000)
    skill("s", 2000)
}
;#HotIf

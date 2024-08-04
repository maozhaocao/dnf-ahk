;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_guiqi() {
    buff_up_down(1500)
    run(1900)
    skill("f", 300)
    skill("r", 1200)
    run(1700)
    skill("g", 1500)
    run(1500)
    skill("a", 500)
    skill("q", 100)
    skill("w", 1200)
    skill("Numpad4", 9000)
    run(500)
    skill("v", 1200)
}

abyss_times_new_guiqi() {
    buff_up_down(1500)
    run(1300)
    skill("f", 300)
    skill("r", 1200)
    run(1400)
    skill("g", 1500)
    run(1200)
    skill("a", 300)
    skill("q", 100)
    skill("w", 1200)
    run(500)
    skill("v", 1200)
}


storm_guiqi() {
    run(400)
    skill("g", 2000)
    buff_up_down(1500)
    run_search_next(1700)

    run(800)
    skill("r", 1500)
    run_search_next(1400)

    run(800)
    skill("q", 1500)
    run_search_next(1400)

    run(800)
    skill("w", 1000)
    skill("d", 1000)
}
;#HotIf

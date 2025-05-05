;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_papa() {
    run_left(1000)
    run(1800)
    skill_down_up("e", 500, 500)
    run(1500)
    skill("a", 500)
    run(1300)
    skill("g", 1000)

    if (!can_back_city()) { 
        sleep(1000)
    }

    if (!can_back_city()) { 
        sleep(1000)
    }

    if (!can_back_city()) { 
        skill("w", 2000) 
    }

    if (!can_back_city()) { 
        skill("ctrl", 2000) 
    }

    if (!can_back_city()) { 
        skill("v", 2000) 
    }
}

abyss_times_new_papa() {
    sleep(10)
    buff_right_right(1500)
    run(1000)
    skill_down_up("e", 500, 500)
    run(1000)
    skill("ctrl", 2500)
    run(1600)
    skill("s", 800)
    skill("g", 800)
    skill("v", 1000)
    skill("w", 1000)
}

storm_papa() {
    run(500)
    skill("Numpad0", 3000)
    buff_right_right(1500)
    run_search_next(1000)

    run(700)
    skill("s", 1500)
    run_search_next(900)

    run(700)
    skill("g", 1500)
    run_search_next(1200)

    run(700)
    skill("q", 1000)
    skill("w", 1000)
}
;#HotIf

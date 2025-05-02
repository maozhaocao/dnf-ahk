;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_guiqi() {
    run_left(1000)
    run(2200)
    skill("a", 1000)
    run(1700)
    skill("w", 500)
    run(2000)
    skill("s", 300)
    skill("r", 1000)

    if (!can_back_city()) {       
        sleep(1000)
    }

    if (!can_back_city()) {       
        sleep(1000)
    }

    if (!can_back_city()) {       
        sleep(1000)
    }

    if (!can_back_city()) {       
        sleep(1000)
    }

    if (!can_back_city()) {       
        sleep(1000)
    }

    if (!can_back_city()) {       
        skill("ctrl", 2000) 
    }

    if (!can_back_city()) {       
        skill("f", 2000) 
    }

    if (!can_back_city()) {       
        skill("q", 2000) 
    }
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

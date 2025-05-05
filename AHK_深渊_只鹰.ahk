;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_zhiying() {
    run_left(1000)
    run(2500)
    skill("w", 700)
    run(1900)
    skill("q", 1000)
    run(1800)
    skill("a", 500)
    skill("f", 1000)


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
        skill("w", 2500) 
    }

    if (!can_back_city()) {       
        skill("q", 1000) 
    }

    if (!can_back_city()) {       
        skill("r", 2000) 
    }
}

abyss_times_new_zhiying() {
    buff_right_right(1500)
    run(1200)
    skill("d", 2000)
    run(1200)
    skill("q", 1000)
    run(1300)
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

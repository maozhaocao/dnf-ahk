;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_huahua() {
    run_left(700)
    run(4600)
    skill("a", 1000)

    if (!can_back_city()) { 
        sleep(1000)
    }

    if (!can_back_city()) { 
        sleep(1000)
    }

    if (!can_back_city()) { 
        skill("f", 2000) 
    }

    if (!can_back_city()) { 
        skill("g", 2000) 
    }

    if (!can_back_city()) { 
        skill("e", 2000) 
    }

    if (!can_back_city()) { 
        skill("v", 2000) 
    }
    
    if (!can_back_city()) { 
        skill("q", 2000) 
    }

    if (!can_back_city()) { 
        ; skill("Numpad4", 7000) 
    }
}

abyss_times_new_huahua() {
    buff_right_right(1500)
    buff_right(1000)
    run(1500)
    skill("w", 1500)
    run(1600)
    skill("v", 1500)
    run(1300)
    skill("e", 1000)
    skill("g", 4000)
    skill("f", 1000)
}

storm_huahua() {
    run(800)
    skill("Numpad0", 2500)
    buff_right_right(1500)
    buff_right(1000)
    run_search_next(1400)

    run(800)
    skill("w", 1500)
    run_search_next(1300)

    run(800)
    skill("v", 1500)
    run_search_next(1300)

    run(800)
    skill("e", 1000)
    skill("f", 1000)
}

;#HotIf

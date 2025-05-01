;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_wunv() {
    run(2300)
    run_left(300)
    skill("s", 1000)
    run(2200)
    run_left(300)
    skill("v", 500)
    run(800)
    skill("e", 1000)

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
        skill("r", 2000) 
    }

    if (!can_back_city()) { 
        skill("Numpad4", 2000) 
    }

    if (!can_back_city()) { 
        skill("q", 2000) 
    }
    
    if (!can_back_city()) { 
        skill("g", 2000) 
    }

    if (!can_back_city()) { 
        skill("Numpad0", 7000) 
    }
}

abyss_times_new_wunv() {
    buff_right_right(1000)
    run(900)
    skill("v", 500)
    run(1200)
    skill("e", 500)
    run(1300)
    skill("s", 700)
    skill("q", 4000)
    skill("w", 1000)
}
;#HotIf

;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_naima() {
    run(2700)
    run_left(300)
    skill("e", 1000)
    run(2500)
    run_left(300)
    skill("e", 1000)
    run(800)
    skill("f", 1000)

    if (!can_back_city()) { 
        sleep(1000)
    }

    if (!can_back_city()) { 
        skill("ctrl", 1000) 
    }

    if (!can_back_city()) { 
        skill("w", 1000) 
    }

    if (!can_back_city()) { 
        sleep(1000)
    }

    if (!can_back_city()) { 
        sleep(1000)
    }

        
    if (!can_back_city()) { 
        skill("r", 2000) 
    }

    if (!can_back_city()) { 
        skill("q", 2000) 
    }

    if (!can_back_city()) { 
        skill("numpad4", 4000) 
    }
}

abyss_times_new_naima() {
    buff_right_right(1000)
    run(1200)
    skill("e", 1000)
    run(3200)
    skill("v", 7000)
    run(500)
    skill("e", 1000)
}
;#HotIf

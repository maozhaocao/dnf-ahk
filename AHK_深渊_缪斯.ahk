;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_miusi() {
    run(2300)
    run_left(300)
    skill("Rctrl", 700)
    run(2200)
    run_left(300)
    skill("g", 500)
    skill("g", 500)
    run(800)
    skill("s", 1000)

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
        skill("w", 2000) 
    }

    if (!can_back_city()) {       
        skill("e", 2000) 
    }

    if (!can_back_city()) {       
        skill("q", 2000) 
    }

    if (!can_back_city()) {       
        skill("ctrl", 2000) 
    }
}

abyss_times_new_miusi() {
    buff_right_right(1000)
    run(1200)
    skill("ctrl", 500)
    run(1000)
    skill("g", 200)
    skill("g", 500)
    run(1600)
    skill("s", 500)
    skill("w", 500)
    skill("e", 5000)
}
;#HotIf

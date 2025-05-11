;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_douluo() {

    run_left(1200)
    run(2300)
    skill("d", 700)
    run(1500)
    skill("ctrl", 1000)
    run(1300)
    skill("s", 500)
    skill("Rctrl", 1000)

    if (!can_back_city()) {       
        sleep(1000)
    }

    if (!can_back_city()) {       
        sleep(1000)
    }

    if (!can_back_city()) {       
        skill("ctrl", 1000) 
    }

    if (!can_back_city()) {       
        skill("f", 1000) 
    }

    if (!can_back_city()) {       
        skill("r", 1000) 
    }

    if (!can_back_city()) {       
        skill("v", 1000) 
    }
}

abyss_times_new_douluo() {
    buff_right_right(1000)
    run(1000)
    skill("d", 500)
    run(1300)
    skill("v", 1000)
    run(1100)
    skill("r", 1000)
    skill("g", 4000)
    skill("d", 500)
}
;#HotIf

;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_jianhun() {
    run(3000)
    ; run_left(300)
    skill("g", 500)
    run(2100)
    ; run_left(300)
    skill("ctrl", 2300)
    ; run(800)
    skill("d", 1000)

    if (!can_back_city()) {       
        skill("w", 2000) 
    }

    if (!can_back_city()) {       
        skill("q", 3000) 
    }

    if (!can_back_city()) {       
        skill("a", 2000) 
    }

    if (!can_back_city()) {       
        skill("ctrl", 2000) 
    }

    if (!can_back_city()) {       
        buff_left_down_right(7000)
    }
}

abyss_times_new_jianhun() {
    buff_right_right(1000)
    skill("r", 100)
    skill("r", 1000)
    run(1300)
    skill("g", 500)
    run(1300)
    skill("ctrl", 1000)
    skill("q", 2000)
}

;#HotIf

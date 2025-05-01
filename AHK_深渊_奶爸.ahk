;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_naiba() {
    skill("ctrl", 500) 

    run(4500)
    ; skill("d", 500)
    skill("w", 1000)

    if (!can_back_city()) {       
        sleep(1000)
    }

    if (!can_back_city()) {       
        skill("v", 1000) 
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
        skill("d", 1000) 
    }
}

abyss_times_new_naiba() {
    buff_right_right(1000)
    buff_down_up(1000)
    run(1000)
    skill("r", 2000)
    run(1700)
    skill("numpad0", 1000)
    run(1100)
    skill("w", 700)
    skill("g", 500)
    skill("q", 4000)
    skill("w", 700)
}
;#HotIf

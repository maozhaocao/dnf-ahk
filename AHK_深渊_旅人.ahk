;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_lvren() {
    skill("Numpad0", 1500) 
    run(4800)
    skill("s", 500)

    if (!can_back_city()) {       
        skill("f", 2000) 
    }

    if (!can_back_city()) {       
        skill("r", 3000) 
    }

    if (!can_back_city()) {       
        skill("e", 2000) 
    }

    if (!can_back_city()) {       
        skill("z", 2000) 
    }

    if (!can_back_city()) {       
        buff_left_down_right(7000)
    }
}

abyss_times_new_lvren() {
    buff_right_right(1000)
    run(900)
    skill("f", 1500)
    run(1300)
    skill("e", 1000)
    run(1300)
    skill("a", 700)
    skill("r", 3000)
    skill("d", 700)
}
;#HotIf

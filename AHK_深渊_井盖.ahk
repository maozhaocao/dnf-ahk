;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_jinggai() {
    run_left(600)
    run(400)


    skill("ctrl", 500) 

    run(4500)
    ; skill("d", 500)
    skill("e", 1000)

    if (!can_back_city()) {       
        skill("R", 1000) 
    }

    if (!can_back_city()) {       
        skill("r", 1000) 
    }

    if (!can_back_city()) {       
        sleep(1000) 
    }

    if (!can_back_city()) {       
        skill("g", 1000) 
    }

    if (!can_back_city()) {       
        sleep(1000) 
    }

    if (!can_back_city()) {       
        skill("a", 2000) 
    }

    if (!can_back_city()) {       
        skill("e", 1000) 
    }

    if (!can_back_city()) {       
        skill("Numpad0", 7000) 
    }
}

abyss_times_new_jinggai() {
    buff_up_up(1000)
    run(1200)
    skill("f", 500)
    run(1800)
    skill("a", 2000)
    run(1700)
    skill("e", 500)
    skill("r", 3000)
}
;#HotIf

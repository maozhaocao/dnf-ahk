;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

use_leiyun := false


abyss_times_xiazi() {
    global use_leiyun
    if(!use_leiyun){
        use_leiyun := true
        skill("Numpad0", 1000)
    }


    run_left(700)
    run(4900)
    skill("s", 1000)

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
        skill("d", 2000) 
    }

    if (!can_back_city()) { 
        skill("ctrl", 2000) 
    }

    ; if (!can_back_city()) { 
    ;     skill("v", 2000) 
    ; }
    
    ; if (!can_back_city()) { 
    ;     skill("q", 2000) 
    ; }
}

abyss_times_new_xiazi() {
    buff_right_right(1500)
    skill("Numpad0", 1000)
    run(1600)
    skill("w", 1500)
    run(2100)
    skill("ctrl", 2500)
    run(1900)
    skill("s", 1000)
    skill("Numpad4", 1000)
    skill("Numpad0", 8000)
    skill("d", 1000)
}

storm_xiazi() {
    skill("w", 1500)
    buff_right_right(1500)
    skill("Numpad0", 1000)
    run_search_next(2500)

    run(1000)
    skill("q", 1500)
    run_search_next(1400)

    run(1000)
    skill("s", 1500)
    run_search_next(1300)

    run(1000)
    skill("ctrl", 2500)
    skill("d", 1000)

}
;#HotIf

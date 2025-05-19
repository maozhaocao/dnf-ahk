;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_renying() {
    ; 100移速
    ; run_left(1500)
    ; run(2700)
    ; skill("a", 1000)
    ; run(2300)
    ; skill("", 1000)
    ; run(1800)

    run(2600)
    run_left(300)
    skill("a", 500)
    run(2600)
    run_left(300)
    skill("d", 500)
    run(1100)
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
        skill("f", 2000) 
    }

    if (!can_back_city()) { 
        skill("q", 2000) 
    }

    if (!can_back_city()) { 
        skill("Numpad0", 2000) 
    }

    if (!can_back_city()) { 
        skill("d", 2000) 
    }
    
    if (!can_back_city()) { 
        skill("g", 2000) 
    }

    if (!can_back_city()) { 
        skill("Numpad4", 4000) 
    }
}

abyss_times_new_renying() {
    buff_right_right(1000)
    run(1100)
    skill("g", 2500)
    run(1400)
    skill("s", 1500)
    run(1300)
    skill("f", 1000)
    skill("ctrl", 4000)
    skill("d", 500)
}
;#HotIf

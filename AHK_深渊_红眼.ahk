;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_hongyan() {
    run(2300)
    run_left(300)
    skill("a", 500)
    run(2200)
    run_left(300)
    skill("g", 1000)
    run(800)
    skill("d", 1000)

    if (!can_back_city()) { 
        sleep(1500)
    }

    if (!can_back_city()) { 
        skill("s", 2000) 
    }

    if (!can_back_city()) { 
        skill("w", 2000) 
    }

        
    if (!can_back_city()) { 
        skill("v", 2000) 
    }

    if (!can_back_city()) { 
        skill("ctrl", 2000) 
    }

    if (!can_back_city()) { 
        skill("q", 2000) 
    }

    if (!can_back_city()) { 
        ; skill("Numpad0", 7000) 
    }
}

abyss_times_new_hongyan() {
    buff_right_right(800)
    skill("space", 800)
    run(900)
    skill("v", 1500)
    run(1400)
    skill("ctrl", 2000)
    run(1400)
    skill("RCtrl", 1000)
    skill("RCtrl", 1000)
    skill("w", 5000)
}
;#HotIf

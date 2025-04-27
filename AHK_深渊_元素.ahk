;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times() {
    run(3000)
    run_left(300)
    skill("g", 500)
    run(2200)
    run_left(300)
    skill("r", 500)
    run(800)
    skill("w", 3000)

    if (!can_back_city()) {       
        skill("ctrl", 1500) 
    }

    if (!can_back_city()) {       
        skill("f", 2000) 
    }


    if (!can_back_city()) {       
        skill("r", 2000) 
    }

    if (!can_back_city()) {       
        skill("Numpad0", 4000) 
    }
}

abyss_times_new() {
    buff_right_right(500)
    run(1400)
    skill("r", 500)
    run(1500)
    skill("w", 500)
    run(1500)
    skill("d", 500)
    skill("Numpad0", 1000)
    skill("d", 4500)
}

test(times) {
    count := times
    while (count > 0)
    {
        count := count - 1
        skill("x", 1000)
    }
}

;#HotIf

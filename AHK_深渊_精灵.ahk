;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk


abyss_times_jingling() {
    run_left(1000)
    run(1700)
    skill("q", 1000)
    run(1200)
    skill("g", 500)
    run(1500)
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
}

abyss_times_new_jingling() {
    buff_up_up(1000)
    run(1500)
    skill("s", 1000)
    run(1800)
    skill("e", 1200)
    run(1800)
    skill("q", 4000)
}
;#HotIf

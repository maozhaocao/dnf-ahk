;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

zhao := false

abyss_times_zhaohuan() {
    global zhao
    if(!zhao){
        zhao := true
        buff_left_up_right(2000)
        skill("space", 500)
    }

    skill("space", 500)

    run(6000)
    if (!can_back_city()) { 
        sleep(1000) 
    }

    if (!can_back_city()) { 
        skill("f", 1000)
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
        sleep(1000) 
    }

    if (!can_back_city()) { 
        sleep(1000) 
    }

    if (can_back_city()) { 
        run_left(500)
    }
}

abyss_times_new_zhaohuan() {
    buff_right_right(1500)
    buff_left_up_right(2000)
    skill("space", 500)
    run(1500)
    skill("f", 500)
    run(3500)
    buff_left_down_right(10000)
    skill("g", 1000)
}
;#HotIf

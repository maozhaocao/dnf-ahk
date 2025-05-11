;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk


use_miusi_bf2 := false
abyss_times_miusi2() {
    global use_miusi_bf2
    if(!use_miusi_bf2){
        use_miusi_bf2 := true
        buff_right_right(1000)
    }


    run(2300)
    run_left(300)
    skill("a", 700)
    run(2500)
    run_left(300)
    skill("g", 500)
    skill("g", 500)
    run(800)
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

    if (!can_back_city()) {       
        skill("ctrl", 2000) 
    }
}
;#HotIf

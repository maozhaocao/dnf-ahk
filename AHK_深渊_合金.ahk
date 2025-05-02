;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

use_hejin_che := 2

abyss_times_hejin() {
    global use_hejin_che
    if(use_hejin_che == 2){
        skill("f", 1000)
        use_hejin_che :=use_hejin_che - 1 
    }else if(use_hejin_che == 0){
        use_hejin_che := 2
    }else{
        use_hejin_che :=use_hejin_che - 1 
    }

    run_left(1000)
    run(2200)
    skill("g", 1000)
    run(1900)
    skill("r", 1000)
    run(1800)
    skill("d", 1500)
    skill("v", 1000)

    if (!can_back_city()) { 
        sleep(1000)
    }

    if (!can_back_city()) { 
        sleep(1000)
    }

    if (!can_back_city()) { 
        skill("ctrl", 2000) 
    }

    if (!can_back_city()) { 
        skill("q", 2000) 
    }

    if (!can_back_city()) { 
        skill("w", 2000) 
    }
}

abyss_times_new_hejin() {
    buff_right_right(1500)
    skill("f", 1000)
    run(1100)
    skill("g", 2500)
    run(2000)
    skill("s", 1500)
    run(2200)
    skill("a", 1000)
    skill("d", 500)
    skill("Numpad4", 9000)
    skill("q", 1000)
}

storm_hejin() {
    run(300)
    skill("s", 2000)
    buff_right_right(1500)
    skill("f", 1000)
    run_search_next(2000)

    run(1000)
    skill("r", 1500)
    run_search_next(1300)

    run(1000)
    skill("g", 1500)
    run_search_next(1200)

    run(1000)
    skill("d", 1000)
    skill("ctrl", 3000)
}
;#HotIf

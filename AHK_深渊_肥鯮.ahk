;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_feizong() {
    buff_right_right(1500)
    buff_right(1000)
    skill("left", 1000)
    run(1400)
    skill("g", 1000)
    run(1700)
    down("q")
    sleep(500)
    up("q")
    sleep(500)
    run(1100)
    skill("s", 1000)
    skill("v", 3000)
    ; skill("f",300)
    ; skill("Numpad4",9000)
    skill("r", 1000)
}

abyss_times_new_feizong() {
    buff_right_right(1500)
    buff_right(1000)
    skill("left", 1000)
    run(900)
    skill("g", 1000)
    run(1700)
    down("q")
    sleep(500)
    up("q")
    sleep(500)
    run(1100)
    skill("s", 1000)
    skill("v", 3000)
    ; skill("f",300)
    ; skill("Numpad4",9000)
    skill("r", 1000)
}


storm_feizong() {
    run(500)
    skill("g", 2000)
    buff_right_right(1500)
    buff_right(1000)
    skill("left", 1000)
    run_search_next(1500)

    run(500)
    skill("r", 2000)
    run_search_next(1200)

    run(700)
    down("q")
    sleep(500)
    up("q")
    sleep(500)
    run_search_next(1400)

    run(1000)
    skill("v", 1000)
    skill("w", 1000)
}
;#HotIf

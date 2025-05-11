;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

zhao := false

abyss_times_zhaohuan() {
    global zhao
    if(!zhao){
        zhao := true
        buff_up_up(2000)
        skill("w", 500)
    }

    skill("w", 500)

    run(6000)

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
    buff_right_right(1200)
    buff_up_up(2000)
    skill("w", 500)
    skill("a", 1000)
    run(2000)
    ; down_down_z(1000)
    run(4500)
    ; down_down_down_z(8000)
    run(1000)
}
;#HotIf

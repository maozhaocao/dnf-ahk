;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_miusi() {
    ; 120移速
    run_left(1300)
    run(2500)
    skill("f", 1000)
    run(1800)
    skill("h", 1000)
    run(1800)
    skill("CapsLock", 3000)

    if (!can_back_city()) {
        skill("e", 2000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("w", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("q", 1000)
    }

    if (!can_back_city()) {
        skill("g", 1000)
    }
}

abyss_times_new_miusi() {
    buff_right_right(1000)
    run(1200)
    skill("f", 1000)
    run(1300)
    ; skill("d",200)
    skill("h", 1000)
    run(1600)
    skill("CapsLock", 500)
    skill("w", 500)
    skill("e", 5000)
}
;#HotIf

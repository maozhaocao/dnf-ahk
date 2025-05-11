;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times() {
    run_left(1300)
    run(2800)
    skill("tab", 1000)
    run(2200)
    skill("f", 1000)
    run(2600)
    skill("e", 3000)

    if (!can_back_city()) {
        skill("alt", 2000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("d", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("q", 1000)
    }

    if (!can_back_city()) {
        skill("t", 3000)
    }
}

abyss_times_new() {
    buff_right_right(500)
    run(1200)
    skill("f", 500)
    run(1800)
    skill("e", 500)
    run(1800)
    skill("g", 500)
    skill("tab", 1000)
    skill("g", 4500)
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

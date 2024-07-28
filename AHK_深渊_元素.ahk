;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times() {
    buff_right_right(500)
    run(2400)
    skill("f", 500)
    run(2400)
    skill("e", 500)
    run(1800)
    skill("g", 500)
    skill("CapsLock", 1000)
    skill("g", 4500)
}

abyss_times_new() {
    buff_right_right(500)
    run(1800)
    skill("f", 500)
    run(2400)
    skill("e", 500)
    run(1800)
    skill("g", 500)
    skill("CapsLock", 1000)
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

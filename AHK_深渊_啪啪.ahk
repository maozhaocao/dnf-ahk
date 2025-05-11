;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_papa() {
    run_left(1300)
    run(2800)
    skill("space", 1000)
    run(2200)
    skill("e", 1000)
    run(2600)
    skill("w", 3000)

    if (!can_back_city()) {
        skill("h", 2000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("q", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("g", 1000)
    }

    if (!can_back_city()) {
        skill("t", 3000)
    }
}
;#HotIf

;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk
abyss_times_cike() {
    run_left(1300)
    run(2500)
    skill("s", 1000)
    run(1800)
    skill("s", 1000)
    run(1600)
    skill("e", 3000)

    if (!can_back_city()) {
        skill("r", 2000)
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
        skill("f", 1000)
    }

    if (!can_back_city()) {
        skill("g", 1000)
    }
}
;#HotIf

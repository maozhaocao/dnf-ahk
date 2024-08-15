;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_hongyan() {
    buff_right_right(800)
    skill("space", 800)
    run(1100)
    skill("v", 1500)
    run(1100)
    skill("ctrl", 2000)
    run(1100)
    skill("RCtrl", 1000)
    skill("RCtrl", 1000)
    skill("w", 5000)
}

abyss_times_new_hongyan() {
    buff_right_right(800)
    skill("space", 800)
    run(900)
    skill("v", 1500)
    run(1400)
    skill("ctrl", 2000)
    run(1400)
    skill("RCtrl", 1000)
    skill("RCtrl", 1000)
    skill("w", 5000)
}
;#HotIf

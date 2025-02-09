;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_new_bingjie() {
    sleep(500)
    run(1500)
    skill("d", 1000)
    run(1800)
    skill("v", 1200)
    run(1800)
    skill("q", 700)
    skill("g", 4000)
}
;#HotIf

;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_new_baobao() {
    buff_up_up(1000)
    run(1500)
    skill("s", 1000)
    run(2000)
    skill("e", 1200)
    run(1800)
    skill("q", 4000)
}
;#HotIf

;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_jianhun(){
    buff_right_right(1000)
    skill("r",100)
    skill("r",1000)
    run(1700)
    skill("g",500)
    run(1500)
    skill("ctrl",1000)
    skill("q",2000)
}
;#HotIf
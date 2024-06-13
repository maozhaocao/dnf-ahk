;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_xiazi(){
buff_right_right(1500)
skill("Numpad0",1000)
run(2300)
skill("w",1500)
run(2100)
skill("ctrl",2500)
run(1300)
skill("s",1000)
skill("Numpad4",1000)
skill("Numpad0",8000)
skill("d",1000)
}

storm_xiazi(){
    skill("w",1500)
    buff_right_right(1500)
skill("Numpad0",1000)
run_search_next(2500)

run(1000)
skill("q",1500)
run_search_next(1400)

run(1000)
skill("s",1500)
run_search_next(1300)

run(1000)
skill("ctrl",2500)
skill("d",1000)

}
;#HotIf
;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_xuefa(){
buff_right_right(1000)
run(2500)
skill("q",500)
skill("w",500)
run(2500)
skill("a",1500)
run(2500)
skill("s",800)
skill("q",500)
skill("w",500)
skill("z",500)
skill("Numpad4",8000)
skill("w",1000)
}


storm_xuefa(){
run(1000)
skill("f",2000)
buff_right_right(1000)
run_search_next(2000)

run(1000)
skill("a",1500)
run_search_next(2400)

run(1000)
skill("w",1500)
run_search_next(2300)

run(1000)
skill("g",1000)
skill("ctrl",2000)
}
;#HotIf
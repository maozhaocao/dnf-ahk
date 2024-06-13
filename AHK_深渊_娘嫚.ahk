;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_niangman(){
buff_right_right(1500)
skill("a",200)
skill("s",500)
run(1800)
skill("v",1500)
run(2100)
skill("ctrl",1500)
run(1500)
skill("a",500)
skill("g",1000)
skill("Numpad0",2000)
skill("Numpad4",9000)
skill("x",1000)
}

storm_niangman(){
    run(500)
    skill("Numpad0",3000)
    buff_right_right(1500)
    skill("a",200)
    skill("s",500)
    run_search_next(1500)

    run(700)
    skill("ctrl",1500)
    run_search_next(1600)

    run(400)
    skill("v",1500)
    run_search_next(1500)

    run(1000)
    skill("q",1000)
    skill("q",2000)
}
;#HotIf
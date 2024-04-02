;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_feizong(){
buff_right_right(1500)
buff_right(1000)
skill("left",1000)
run(1400)
skill("g",1000)
run(1700)
down("q")
sleep(500)
up("q")
sleep(500)
run(1100)
skill("s",1000)
skill("v",3000)
; skill("f",300)
; skill("Numpad4",9000)
skill("r",1000)
}
;#HotIf
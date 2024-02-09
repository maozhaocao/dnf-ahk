#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_feizong(){
buff_right_right(1500)
buff_right(1000)
skill("left",1000)
run(1800)
skill("g",1000)
run(2200)
down("q")
sleep 500
up("q")
sleep 500
run(1000)
skill("s",1000)
skill("f",300)
skill("Numpad4",9000)
}
#HotIf
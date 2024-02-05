#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_feizong(times){
count := times
while (count > 0)
{
count := count - 1
buff_right_right(1500)
buff_right(1000)
skill("left",1000)
run(2100)
skill("ctrl",2500)
run(2000)
skill("Numpad0",3500)
run(1500)
skill("s",1000)
skill("Numpad4",9000)
pick()
}
}
#HotIf
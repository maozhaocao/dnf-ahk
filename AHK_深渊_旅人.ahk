#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_lvren(times){
count := times
while (count > 0)
{
count := count - 1
buff_right_right(1000)
run(1600)
skill("f",1500)
run(1500)
skill("e",1000)
run(1600)
skill("a",700)
skill("Numpad4",9000)
pick()
}
}
#HotIf
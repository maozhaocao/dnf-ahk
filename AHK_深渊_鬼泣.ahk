﻿#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_guiqi(times){
count := times
while (count > 0)
{
count := count - 1
buff_up_down(1500)
run(1900)
skill("f",1500)
run(1700)
skill("g",1500)
run(1500)
skill("a",1500)
skill("Numpad4",9000)
pick()
}
}
#HotIf
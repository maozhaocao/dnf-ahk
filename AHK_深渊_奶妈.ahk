﻿#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_naima(times){
count := times
while (count > 0)
{
count := count - 1
buff_right_right(1000)
run(1800)
skill("e",1000)
run(1800)
skill("e",1000)
run(1400)
skill("f",1000)
skill("ctrl",500)
skill("q",500)
skill("ctrl",4000)
pick()
}
}
#HotIf
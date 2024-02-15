;#HotIf WinActive("ahk_exe DNF.exe")
run_with_admin()
#Include AHK_角色列表.ahk

start_abyss(index,abyss_times_total){
    skill("space",4000)
    if(!can_enter_abyss()){
        ; ToolTip "can_not_enter_abyss", 200, 200, 1
        sleep(1000)
        return
    }
    sleep(1000)
    count := abyss_times_total
    while (count > 0)
    {
    count := count - 1
    abyss_times_one(index)
    pick()
    if(have_no_pl()){
        ; ToolTip "have_no_pl", 200, 200, 1
        break
    }
    sleep(500)
    if(have_no_ticket()){
        ; ToolTip "have_no_ticket", 200, 200, 1
        break
    }
    sleep(500)
    if(count >0){
        skill("F10",4000)
    }
    }
}

F1::
{
index := input_value("请输入当前角色id")
if(index <=0){
    return
}
; ch_count := input_value("请输入最大角色id")
; if(ch_count <=0){
;     return
; }
; abyss_times_total := input_value("深渊次数")
; if(abyss_times_total <=0){
;     return
; }
ch_count :=24
abyss_times_total := 26
while (index <=ch_count){
sleep(500)
if(have_pl()){
    ToolTip "have_pl", 200, 200, 1
    go_abyss_door()
    start_abyss(index,abyss_times_total)
    back_city()
}
back_select_character()
sleep(4000)
skill("right",2000)
skill("space",5000)
index := index+1
}
return
}



F2::
{
abyss_times_feizong()
pick()
return
}

F3::
{
    ; Click
if have_pl()
    MsgBox "yes"
else
    MsgBox "no"
; ToolTip,"BUFF ON", 200, 200, 1
return
}

F12::ExitApp

^!r::Reload  ; Ctrl+Alt+R

; MouseX := 0 
; MouseY := 0 
; mouseColor :=""

; ^!z::  ; Control+Alt+Z 复制当前鼠标所在像素.
; {
;     global MouseX,MouseY,mouseColor
;     MouseGetPos MouseX, MouseY
;     mouseColor:= PixelGetColor(MouseX, MouseY)
; }

; ^!x::  ; Control+Alt+x 粘贴复制的像素.
; {
;     global MouseX,MouseY,mouseColor
;     Send MouseX-3 "," MouseY-3 "," MouseX+3 "," MouseY+3 "," mouseColor
; }


;#HotIf
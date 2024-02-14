;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_深渊_元素.ahk
#Include AHK_深渊_斗萝.ahk
#Include AHK_深渊_奶萝.ahk
#Include AHK_深渊_召唤.ahk
#Include AHK_深渊_井盖.ahk
#Include AHK_深渊_奶爸.ahk
#Include AHK_深渊_奶妈.ahk
#Include AHK_深渊_刃影.ahk
#Include AHK_深渊_剑魂.ahk
#Include AHK_深渊_缪斯.ahk
#Include AHK_深渊_旅人.ahk
#Include AHK_深渊_巫女.ahk
#Include AHK_深渊_红眼.ahk
#Include AHK_深渊_肥鯮.ahk
#Include AHK_深渊_花花.ahk
#Include AHK_深渊_瞎子.ahk
#Include AHK_深渊_鬼泣.ahk
#Include AHK_深渊_合金.ahk
#Include AHK_深渊_血法.ahk
#Include AHK_深渊_啪啪.ahk
#Include AHK_深渊_娘嫚.ahk

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

abyss_times_one(index){

if (index ==1){
abyss_times()
}
if (index ==4){
abyss_times()
}
if (index ==8){
abyss_times()
}

if (index ==2){
abyss_times_douluo()
}

if (index ==3){
abyss_times_nailuo()
}
if (index ==5){
abyss_times_nailuo()
}

if (index ==6){
abyss_times_zhaohuan()
}

if (index ==7){
abyss_times_jinggai()
}

if (index ==9){
abyss_times_naiba()
}

if (index ==10){
abyss_times_naima()
}

if (index ==11){
abyss_times_renying()
}

if (index ==12){
abyss_times_jianhun()
}

if (index ==13){
abyss_times_miusi()
}

if (index ==14){
abyss_times_lvren()
}

if (index ==15){
abyss_times_wunv()
}

if (index ==16){
abyss_times_hongyan()
}

if (index ==17){
abyss_times_feizong()
}

if (index ==18){
abyss_times_huahua()
}

if (index ==19){
abyss_times_xiazi()
}

if (index ==20){
abyss_times_guiqi()
}

if (index ==21){
    abyss_times_hejin()
}

if (index ==22){
    abyss_times_xuefa()
}

if (index ==23){
    abyss_times_papa()
}

if (index ==24){
    abyss_times_niangman()
}
}

F1::
{
InputBox,index, "请输入当前角色id",, 200,150
if ErrorLevel{
    MsgBox,"操作被取消"
    return
}
ch_count :=24
abyss_times_total := 1
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

MouseX := 0 
MouseY := 0 
mouseColor :=""

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
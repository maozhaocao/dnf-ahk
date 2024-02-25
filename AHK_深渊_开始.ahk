;#HotIf WinActive("ahk_exe DNF.exe")
run_with_admin()
#Include AHK_角色列表.ahk

start_abyss(index,abyss_times_total){
    skill("space",4000)
    if(!can_enter_abyss()){
        log.info("深渊票不足,进入深渊失败")
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
        log.info("pl不足,停止继续深渊")
        break
    }
    sleep(500)
    if(have_no_ticket()){
        log.info("深渊票不足,停止继续深渊")
        break
    }
    sleep(500)
    if(count >0){
        skill("F10",4000)
    }
    }
    log.info("当前角色深渊已刷完,实际循环次数:" ,abyss_times_total-count)
}

F3::
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
ch_count :=16
abyss_times_total := 2
log.info("设置当前角色id:",index,",设置深渊次数:",abyss_times_total)
while (index <=ch_count){
sleep(500)
log.info("--------------------")
start_time := A_Now
log.info("切换角色,当前角色id:",index,"当前时间:",start_time)
if(have_pl()){
    log.info("有pl,开始深渊")
    go_abyss_door()
    start_abyss(index,abyss_times_total)
    back_city()
    finish_daily_task()
    finish_abyss_task()
}else{
    log.info("无pl")
}
back_select_character()
sleep(4000)
skill("right",2000)
skill("space",5000)
index := index+1
end_time := A_Now
log.info("当前时间:",end_time,"当前角色花费时间:",end_time-start_time)
}
return
}



; F2::
; {
;     sleep(100)
;     abyss_times_zhaohuan()
; pick()
; return
; }

F2::
{
    ; Click
if have_pl()
    ToolTip "have_pl", 200, 200, 1
else
    ToolTip "have_no_pl", 200, 200, 1
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
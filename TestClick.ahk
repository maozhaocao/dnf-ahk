#Include AHK_角色操作.ahk
run_with_admin()

F2::
{
    times := 100
    while (times > 0){
        open_76()
    }
        return
}

F3::
{
    Process, Priority,, High
    keyCode := "k"
    SendInput, {Blind}{%keyCode% DownTemp}
    Sleep, 1
    SendInput, {Blind}{%keyCode% Up}
    Sleep, 1
    return
; if have_pl()
;     MsgBox "yes"
; else
;     MsgBox "no"
}

F1::
{
    times := 100
while (times > 0){
    open_75()
}
    return
}

open_76(){
    Click,1127,531,0
    sleep,200
    Click,right
    sleep,50

    move_and_click_one(815,250,200)
    move_and_click_one(815,278,200)

    move_and_click_one(815,313,200)
    move_and_click_one(737,705,200)
    send_key("space")
sleep,500
send_key("space")
sleep,500
send_key("space")
sleep,500

}

open_75(){
    Click,1127,531,0
sleep,200
Click,right
sleep,50

Click,815,250,0
sleep,200
Click
sleep,50

Click,817,278,0
sleep,500
Click
sleep,50

Click,817,278,0
sleep,200
Click
sleep,200

Click,817,313,0
sleep,200
Click
sleep,200

Click,818,608,0
sleep,200
Click
sleep,50

Click,734,747,0
sleep,200
Click
sleep,500

send_key("space")
sleep,500
send_key("space")
sleep,500
send_key("space")
sleep,500
}

F12::Reload

^!r::Reload 
﻿;#HotIf WinActive("ahk_exe DNF.exe")
run_with_admin()
#Include AHK_角色列表.ahk
#Include abyss_reminder.ahk

start_abyss(index, abyss_times_total) {
    skill("space", 4000)
    if (!can_enter_abyss()) {
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
        if (have_no_pl()) {
            log.info("pl不足,停止继续深渊")
            break
        }
        sleep(500)
        if (have_no_ticket()) {
            log.info("深渊票不足,停止继续深渊")
            break
        }
        sleep(500)
        if (count > 0) {
            skill("F10", 4000)
        }
    }
    log.info("当前角色深渊已刷完,实际循环次数:", abyss_times_total - count)
}

start_abyss_new(index, abyss_times_total) {
    sleep(500)
    MouseMove 1250, 400
    sleep(500)
    click_for_success()
    sleep(6000)
    if (!can_enter_abyss()) {
        log.info("记忆落痕不足,进入深渊失败")
        sleep(1000)
        return
    }
    sleep(1000)
    count := abyss_times_total
    while (count > 0)
    {
        count := count - 1
        abyss_new_times_one(index)
        pick()
        if (have_no_pl()) {
            log.info("pl不足,停止继续深渊")
            break
        }
        sleep(500)
        if (have_no_ticket()) {
            log.info("记忆落痕不足,停止继续深渊")
            break
        }
        sleep(500)
        if (count > 0) {
            skill("F10", 4000)
        }
    }
    log.info("当前角色深渊已刷完,实际循环次数:", abyss_times_total - count)
}

start_ss_road(index, abyss_times_total) {
    sleep(500)
    MouseMove 1220, 337
    sleep(500)
    click_for_success()
    sleep(4000)
    ; if (!can_enter_abyss()) {
    ;     log.info("进入史诗之路失败")
    ;     sleep(1000)
    ;     return
    ; }
    sleep(1000)
    count := abyss_times_total
    while (count > 0)
    {
        count := count - 1
        abyss_new_times_one(index)
        pick()
        if (have_no_pl()) {
            log.info("pl不足,停止继续史诗之路")
            break
        }
        sleep(500)
        if (have_no_ticket()) {
            log.info("次数不足,停止史诗之路")
            break
        }
        sleep(500)
        if (count > 0) {
            skill("F10", 4000)
        }
    }
    log.info("当前角色史诗之路已刷完,实际循环次数:", abyss_times_total - count)
}

F1::
{
    index := input_value("请输入当前角色id")
    if (index <= 0) {
        return
    }
    start_day := SubStr(A_DD, 2)
    start_hour := A_Hour
    log.info("开始时间:", start_day, start_hour)
    start(index)
    end_day := SubStr(A_DD, 2)
    end_hour := A_Hour
    log.info("结束时间:", end_day, end_hour)


    clean_screen()
    back_select_character()
    sleep(4000)
    skill_many("up", 1000, 5)
    skill_many("left", 1000, 5)
    skill("space", 5000)
    while (true) {
        end_day := SubStr(A_DD, 2)
        end_hour := A_Hour

        if (end_hour < 6) {
            sleep(1000 * 60 * 10)
            continue
        }

        if (start_day == end_day and start_hour >= 6) {
            sleep(1000 * 60 * 10)
            continue
        }
        start(1)
        break
    }
    return
}

start(index) {
    ch_count := 33
    abyss_times_total := 18
    ; skip_list := [2,6,11,12,14,15,16]
    skip_list := []
    all_pl_list := []

    abyss_list := []
    abyss_new_list := []
    abyss_storm_list := []
    ss_road_list := []

    if (is_friday()) {
        log.info("当天为星期五")
        all_pl_list := [17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]
        abyss_list := []
        abyss_new_list := [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]
        abyss_storm_list := []
        ss_road_list := [8]
    } else {
        log.info("当天不为星期五")
        all_pl_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]
        abyss_list := []
        abyss_new_list := [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]
        abyss_storm_list := []
        ss_road_list := [8]
    }

    log.info("设置当前角色id:", index, ",设置深渊次数:", abyss_times_total)
    while (index <= ch_count) {
        sleep(500)
        log.info("--------------------")
        start_time := A_Now
        log.info("切换角色,当前角色id:", index, "当前时间:", start_time)
        if (have_pl()) {
            if (list_contains_key(skip_list, index)) {
                log.info("配置角色跳过")
            } else {
                log.info("有pl,开始深渊")
                receive_daily_ticket()
                abyss_times_total := 0
                if (!list_contains_key(all_pl_list, index)) {
                    abyss_times_total := 19
                } else if (list_contains_key(abyss_list, index)) {
                    abyss_times_total := 18
                } else if (list_contains_key(abyss_new_list, index)) {
                    abyss_times_total := 26
                } else if (list_contains_key(abyss_storm_list, index)) {
                    abyss_times_total := 32
                } else if (list_contains_key(ss_road_list, index)) {
                    abyss_times_total := 26
                }

                if (list_contains_key(abyss_list, index)) {
                    go_abyss_door()
                    start_abyss(index, abyss_times_total)
                } else if (list_contains_key(abyss_new_list, index)) {
                    go_abyss_new_door()
                    start_abyss_new(index, abyss_times_total)
                } else if (list_contains_key(abyss_storm_list, index)) {
                    go_abyss_door()
                    start_storm(index, abyss_times_total)
                } else if (list_contains_key(ss_road_list, index)) {
                    go_ss_road_door()
                    start_ss_road(index, abyss_times_total)
                }
                back_city()
                chat_daily()
                decompose()
                finish_daily_task()
                ; finish_abyss_task()
            }
        } else {
            log.info("无pl")
        }
        back_select_character()
        sleep(4000)
        skill("right", 2000)
        skill("space", 5000)
        index := index + 1
        end_time := A_Now
        log.info("当前时间:", end_time, "当前角色花费时间:", end_time - start_time)
    }
    ; auto_resume(ch_count)
    return
}


F2::
{
    ; skip_list := [10,30]

    ; if(list_contains_key(skip_list,1)){
    ;     MsgBox "yes"
    ; }else{
    ;     MsgBox "no1111"
    ; }
    ; return
    ; auto_resume(26)
    send_msg("hello")
    ; pick()
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

F12:: ExitApp

^!r:: Reload  ; Ctrl+Alt+R

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

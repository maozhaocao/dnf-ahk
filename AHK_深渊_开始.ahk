﻿;#HotIf WinActive("ahk_exe DNF.exe")
run_with_admin()
#Include AHK_角色列表.ahk
#Include abyss_reminder.ahk

start_abyss(index, abyss_times_total) {
    skill("space", 4000)
    ; if (!can_enter_abyss()) {
    ;     log.info("深渊票不足,进入深渊失败")
    ;     sleep(1000)
    ;     return
    ; }
    sleep(1000)
    count := abyss_times_total
    while (count > 0)
    {
        count := count - 1
        abyss_times_one(index)
        abyss_pick()
        ; skill("esc",500)
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
            skill("F10", 3000)
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
    skill_many("up", 1000, 7)
    skill_many("left", 1000, 5)
    skill_many("right", 1000, 19)
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
        ; start(20)
        break
    }
    return
}

start(index) {
    deleteLastHeartbeat()
    SetTimer, CheckHeartbeat, 60000
    ch_count := 53
    abyss_times_total := 18
    ; skip_list := [2,6,11,12,14,15,16]
    skip_list := [2, 11, 13]

    abyss_list := [1, 2, 4, 5, 6, 7, 11, 12, 13, 14]
    islands_list := [3, 8, 9, 10, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]

    pl_0_list := []
    pl_17_list := []
    pl_30_list := []
    pl_60_list := []
    pl_90_list := []
    pl_107_list := []

    if (is_thursday() or is_friday()) {
        log.info("当天为星期四")
        pl_0_list := [28, 29, 31, 32, 33, 37, 39, 41, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]
        pl_17_list := []
        pl_30_list := [35, 40, 42]
        pl_60_list := [22, 24, 36]
        pl_90_list := [20, 21, 23, 25, 26, 27, 30, 38]
        pl_107_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 34]

    } else {
        log.info("当天不为星期五")
        pl_0_list := [20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]
        pl_17_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 34]
        pl_30_list := []
        pl_60_list := []
        pl_90_list := []
        pl_107_list := []
    }

    log.info("设置当前角色id:", index, ",设置深渊次数:", abyss_times_total)
    while (index <= ch_count) {
        updateHeartbeat()
        end_hour := A_Hour

        if (end_hour == 6) {
            skip_list.Push(index)
            log.info("超6点保留PL:", index)
        }


        sleep(500)
        log.info("--------------------")
        start_time := A_Now
        log.info("切换角色,当前角色id:", index, "当前时间:", start_time)
        if (have_pl()) {
            if (list_contains_key(skip_list, index)) {
                log.info("配置角色跳过")
            } else {
                log.info("有pl,开始深渊")
                ; receive_daily_ticket()
                sleep(1000)
                abyss_times_total := 0

                if (list_contains_key(abyss_list, index)) {
                    if (list_contains_key(pl_0_list, index)) {
                        abyss_times_total := 24
                    }
                    if (list_contains_key(pl_17_list, index)) {
                        abyss_times_total := 21
                    }
                    if (list_contains_key(pl_30_list, index)) {
                        abyss_times_total := 19
                    }
                    if (list_contains_key(pl_60_list, index)) {
                        abyss_times_total := 16
                    }
                    if (list_contains_key(pl_90_list, index)) {
                        abyss_times_total := 12
                    }
                    if (list_contains_key(pl_107_list, index)) {
                        abyss_times_total := 10
                    }
                } else if (list_contains_key(islands_list, index)) {
                    if (list_contains_key(pl_0_list, index)) {
                        abyss_times_total := 12
                    }
                    if (list_contains_key(pl_17_list, index)) {
                        abyss_times_total := 10
                    }
                    if (list_contains_key(pl_30_list, index)) {
                        abyss_times_total := 9
                    }
                    if (list_contains_key(pl_60_list, index)) {
                        abyss_times_total := 8
                    }
                    if (list_contains_key(pl_90_list, index)) {
                        abyss_times_total := 6
                    }
                    if (list_contains_key(pl_107_list, index)) {
                        abyss_times_total := 5
                    }
                }


                if (list_contains_key(abyss_list, index)) {
                    go_abyss_115_door()
                    start_abyss(index, abyss_times_total)
                } else if (list_contains_key(islands_list, index)) {
                    go_islands_door()
                    start_qundao(index, abyss_times_total)
                }
                back_city()
                ; chat_daily()
                ; decompose()
                ; finish_daily_task()
                ; finish_abyss_task()
            }
        } else {
            log.info("无pl")
        }
        sleep(1000)
        back_select_character()
        sleep(4000)
        skill("right", 2000)
        skill("space", 5000)
        index := index + 1
        end_time := A_Now
        log.info("当前时间:", end_time, "当前角色花费时间:", end_time - start_time)
    }
    auto_resume(ch_count)
    return
}

NowToUnix() {
    FormatTime, currentTime, %A_Now%, yyyyMMddHHmmss 
    EnvSub, currentTime, 19700101000000, Seconds 
    return currentTime*1000+ A_MSec 
}

deleteLastHeartbeat(){
    ; 获取当前脚本所在目录 
    currentDir := A_ScriptDir  
    ; 构建完整文件路径 
    heartbeatPath := currentDir . "\heartbeat.ini" 
    FileDelete, %heartbeatPath%  
}


updateHeartbeat()
{
    ; 获取当前脚本所在目录 
    currentDir := A_ScriptDir  
    ; 构建完整文件路径 
    heartbeatPath := currentDir . "\heartbeat.ini" 
    ; 写入时间戳
    current_time :=  NowToUnix()
    IniWrite, %current_time%, %heartbeatPath%, Activity, LastAction 
}

CheckHeartbeat:
{
    ; 获取当前脚本所在目录 
    currentDir := A_ScriptDir  
    ; 构建完整文件路径 
    heartbeatPath := currentDir . "\heartbeat.ini" 
 
    ; 获取最后操作时间 
    IniRead, lastAction, %heartbeatPath%,  Activity, LastAction 
    log.info("lastAction:",lastAction)

    timeDiff := NowToUnix() - lastAction 
    log.info("timeDiff:",timeDiff)
    
    if (timeDiff > 600000) {  
        log.info("发送邮件中")
        ; SendAlertEmail(timeDiff)
    }
    Return
} 

SendAlertEmail(timeout) {
    url := "https://your-api.com/alert"  
    params := "script=main&timeout=" timeout "&host=" A_ComputerName 
    
    try {
        whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        whr.Open("POST", url, true)
        whr.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
        whr.Send(params)
        whr.WaitForResponse()
    } catch {
        log.info("邮件发送失败")  
    }
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
    ; qundao11()
    ; point := get_current_point()
    ; MsgBox %point%
    ; pick()

    ; RGBList := GetRectSampledRGBList(275, 820, 290, 845, 8)
    ; buy_panibo()
    ; buy_panibo2()
    ; buy_ss_guan()

    ; map1_start()


    ; index := 26

    ; current_map := get_current_map()
    ; if (current_map == 1) {
    ;     map1_start(index)
    ; }

    ; if (current_map == 2) {
    ;     map2_start(index)
    ; }

    ; if (current_map == 3) {
    ;     map3_start(index)
    ; }

    abyss_times_zhaohuan()
    abyss_pick()
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

global isPaused := false 
 
; 设置热键（默认F1）
F4::
    isPaused := !isPaused 
    if isPaused {
        Pause,,1 ; 暂停所有线程 
        SoundBeep, 500, 300
    } else {
        Pause, Off, 1 ; 恢复执行 
        TrayTip, 脚本状态, 已恢复, 1, 1 
    }
return 

F12:: ExitApp

^!r:: Reload ; Ctrl+Alt+R

MouseX := 0
MouseY := 0
mouseColor := ""

^!z:: ; Control+Alt+Z 复制当前鼠标所在像素.
{
    global MouseX, MouseY, mouseColor
    MouseGetPos, MouseX, MouseY
    PixelGetColor, mouseColor, %MouseX%, %MouseY%
    return
    ; MouseGetPos MouseX, MouseY
    ; mouseColor:= pixel_getColor(MouseX, MouseY)
}

^!x:: ; Control+Alt+x 粘贴复制的像素.
{
    global MouseX, MouseY, mouseColor
    Send %MouseX%, %MouseY%, %mouseColor%
    return
}

;#HotIf

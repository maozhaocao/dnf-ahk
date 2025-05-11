;#HotIf WinActive("ahk_exe DNF.exe")
run_with_admin()
#Include AHK_角色列表.ahk
#Include abyss_reminder.ahk

start_abyss(index, abyss_times_total) {
    skill("space", 4000)
     if (not_enter_abyss()) {
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
        if (count == 0) {
            run_left(500)
        }
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

            if (can_back_city()) {
                skill_many("x", 200, 10)
                skill("F10", 3000)
            }

            if (can_back_city()) {
                skill_many("x", 200, 10)
                skill("F10", 3000)
            }

            if (can_back_city()) {
                skill_many("x", 200, 10)
                skill("F10", 3000)
            }

            if (can_back_city()) {
                skill_many("x", 200, 10)
                skill("F10", 3000)
            }

            if (can_back_city()) {
                skill_many("x", 200, 10)
                skill("F10", 3000)
            }

            if (can_back_city()) {
                skill_many("x", 200, 10)
                skill("F10", 3000)
            }
        }
    }
    skill_many("x", 500, 15)
    log.info("当前角色深渊已刷完,实际循环次数:", abyss_times_total - count)
}

F3::
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
    ch_count := 24
    abyss_times_total := 18
    skip_list := []

    abyss_list := [1, 2,3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
    islands_list := []

    pl_0_list := []
    pl_17_list := []
    pl_30_list := []
    pl_60_list := []
    pl_77_list := []
    pl_90_list := []
    pl_107_list := []

    if (is_thursday()) {
        log.info("当天为星期四")
        pl_0_list := []
        pl_17_list := []
        pl_30_list := []
        pl_60_list := []
        pl_90_list := [21, 22, 23, 24, 25, 26, 27, 28, 29]
        pl_107_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

    } else {
        log.info("当天不为星期四")
        pl_0_list := [21, 22, 23, 24, 25, 26, 27, 28, 29]
        pl_17_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
        pl_30_list := []
        pl_60_list := []
        pl_90_list := []
        pl_107_list := []
    }

    log.info("设置当前角色id:", index, ",设置深渊次数:", abyss_times_total)
    while (index <= ch_count) {
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
                    if (list_contains_key(pl_77_list, index)) {
                        abyss_times_total := 13
                    }
                    if (list_contains_key(pl_90_list, index)) {
                        abyss_times_total := 12
                    }
                    if (list_contains_key(pl_107_list, index)) {
                        abyss_times_total := 10
                    }
                }

                if (list_contains_key(abyss_list, index)) {
                    go_abyss_115_door()
                    start_abyss(index, abyss_times_total)
                } else if (list_contains_key(islands_list, index)) {
                    ; go_islands_door()
                    ; start_qundao(index, abyss_times_total)
                }
                back_city()
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

F2::
{
     RGBList := GetRectSampledRGBList(1792, 995, 1870, 1002, 8)
    ; buy_panibo()
    ; buy_panibo2()
    ; buy_ss_guan()

;    abyss_times_andi()
;    abyss_pick()
    return
}

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

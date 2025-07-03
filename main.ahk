;#HotIf WinActive("ahk_exe DNF.exe")
run_with_admin()
#Include config_read.ahk
#Include abyss_reminder.ahk
#include action.ahk
init_env()
init_config()

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
    skill_many("up", 1000, 9)
    skill_many("left", 1000, 5)
    ; skill_many("right", 1000, 19)
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
        global enbale_auto_start := read_config("option", "enbale_auto_start")
        if (enbale_auto_start) {
            back_select_character()
            sleep(4000)
            skill("space",5000)
            start(1)
        }
        break
    }
    return
}


F2::
{
    ; RGBList := GetRectSampledRGBList(275, 820, 290, 845, 8)
    ; buy_shanshanming_chuanshuo()
    ; init_character_config(42)
    ; abyss_times_one_with_config()

    ; ; abyss_times_douluo()
    ; abyss_pick()
    return
}


F3::
{
    updateHeartbeat()
    global have_send := false
    return
}

; ===== 公共热键定义 =====
F4:: toggle_pause()
F12:: exit_app()
^!r:: reload_script() ; Ctrl+Alt+R
^!z:: copy_pixel()    ; Ctrl+Alt+Z
^!x:: paste_pixel()   ; Ctrl+Alt+X 

;#HotIf

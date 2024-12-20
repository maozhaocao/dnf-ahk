﻿#Include AHK_版本v1.ahk

run(time) {
    sleep(50)
    send_key("right")
    sleep(10)
    down("right")
    sleep(time)
    up("right")
    sleep(50)
}

run_left(time) {
    sleep(50)
    send_key("left")
    sleep(10)
    down("left")
    sleep(time)
    up("left")
    sleep(50)
}

skill(name, time) {
    sleep(10)
    send_key(name)
    sleep(time)
}

skill_many(name, time, times) {
    current_times := 1
    while (current_times <= times) {
        skill(name, time)
        current_times := current_times + 1
    }
}

skill_down_up(name, time, delay) {
    sleep(10)
    down(name)
    sleep(time)
    up(name)
    sleep(delay)
}

pick2() {
    skill("numpaddiv", 2000)
    skill("x", 200)
    skill("x", 200)
    skill("x", 200)
    skill("x", 200)
    skill("x", 200)
    skill("x", 200)
    skill("x", 200)
    skill("x", 200)
    skill("x", 200)
    skill("x", 200)
    skill("esc", 500)
}

pick() {
    count := 8
    while (count > 0) {
        count := count - 1
        if (can_back_city()) {
            sleep(1000)
            skill("numpaddiv", 2000)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("esc", 500)
            break
        }
        if (count <= 3) {
            log.info("深渊疑似卡住,执行修正流程")
            run(3000)
            run_left(1000)
            if (count == 3) {
                skill("q", 1000)
                skill("w", 1000)
                skill("e", 1000)
            }
            if (count == 2) {
                skill("a", 1000)
                skill("s", 1000)
                skill("d", 1000)
            }
            if (count == 1) {
                skill("r", 1000)
                skill("f", 1000)
                skill("g", 1000)
            }
        }
        sleep(1000)
    }
}

start_storm(index, storm_times_total) {
    move_and_click(1270, 410, 800)
    Sleep(2000)
    count := storm_times_total
    while (count > 0)
    {
        count := count - 1
        storm_times_one(index)
        check_pick_count := 8
        while (check_pick_count > 1) {
            check_pick_count := check_pick_count - 1
            if (can_back_city()) {
                sleep(1000)
                skill("numpaddiv", 2000)
                skill("x", 200)
                skill("x", 200)
                skill("x", 200)
                skill("x", 200)
                skill("x", 200)
                skill("x", 200)
                skill("x", 200)
                skill("x", 200)
                skill("x", 200)
                skill("x", 200)
                skill("esc", 500)
                break
            }
            if (check_pick_count <= 3) {
                log.info("深渊疑似卡住,执行修正流程")
                run_search_next(3000)
                run_left(1000)
                if (check_pick_count == 3) {
                    skill_down_up("up", 500, 100)
                    skill("Numpad4", 7000)
                    skill("q", 1000)
                    skill("w", 1000)
                    skill("e", 1000)
                }
                if (check_pick_count == 2) {
                    skill_down_up("down", 500, 100)
                    skill("Numpad0", 4000)
                    skill("a", 1000)
                    skill("s", 1000)
                    skill("d", 1000)
                }
            }
            sleep(1000)
        }
        if (check_pick_count == 1) {
            log.info("风暴卡住,执行重进流程")
            back_city()
            sleep(2000)
            down("right")
            sleep(2000)
            up("right")
            sleep(500)
            move_and_click(1270, 410, 800)
            sleep(2000)
            continue
        }
        if (have_no_pl()) {
            log.info("pl不足,停止继续风暴")
            break
        }
        sleep(500)
        if (have_no_ticket()) {
            log.info("金绿不足,停止继续风暴")
            break
        }
        sleep(500)
        if (count > 0) {
            skill("F10", 5000)
        }
    }
    log.info("当前角色风暴已刷完,实际循环次数:", storm_times_total - count)
}

pick_no_check() {
    count := 8
    while (count > 1) {
        count := count - 1
        if (can_back_city()) {
            sleep(1000)
            skill("numpaddiv", 2000)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("x", 200)
            skill("esc", 500)
            break
        }
        if (count <= 3) {
            log.info("深渊疑似卡住,执行修正流程")
            run_search_next(3000)
            run_left(1000)
            if (count == 3) {
                skill_down_up("up", 500, 100)
                skill("Numpad4", 7000)
                skill("q", 1000)
                skill("w", 1000)
                skill("e", 1000)
            }
            if (count == 2) {
                skill_down_up("down", 500, 100)
                skill("Numpad0", 4000)
                skill("a", 1000)
                skill("s", 1000)
                skill("d", 1000)
            }
            if (count == 1) {
                back_city()
                sleep(2000)
                down("right")
                sleep(2000)
                up("right")
                sleep(500)
                move_and_click(1270, 410, 800)
                sleep(500)
            }
        }
        sleep(1000)
    }
}

try_search_next() {
    sleep(300)
    down("right")
    sleep(2000)

    down("up")
    sleep(2000)
    up("up")
    sleep(500)

    down("down")
    sleep(1000)
    up("down")
    sleep(500)

    up("right")
    sleep(500)
}

buff_right_right(time) {
    send_key("right")
    sleep(10)
    send_key("right")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_up_up(time) {
    send_key("up")
    sleep(10)
    send_key("up")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_down_up(time) {
    send_key("down")
    sleep(10)
    send_key("up")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_up_down(time) {
    send_key("up")
    sleep(10)
    send_key("down")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_left_up_right(time) {
    send_key("left")
    sleep(10)
    send_key("up")
    sleep(10)
    send_key("right")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_left_down_right(time) {
    send_key("left")
    sleep(10)
    send_key("down")
    sleep(10)
    send_key("right")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_left_right(time) {
    send_key("left")
    sleep(10)
    send_key("right")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_right(time) {
    send_key("right")
    sleep(10)
    send_key("space")
    sleep(time)
}

click_times(times) {
    cur := 0
    while (cur < times) {
        Click 1
        sleep(10)
        cur := cur + 1
    }
}

click_for_success() {
    click_times(5)
}

clean_screen() {
    sleep(500)
    skill("F5", 2000)
    skill("esc", 1000)
}

go_abyss_door() {
    down("right")
    sleep(2000)
    up("right")
    sleep(500)
    MouseMove 360, 550
    sleep(500)
    skill("WheelUp", 100)
    skill("WheelUp", 100)
    skill("WheelUp", 100)
    skill("WheelUp", 100)
    skill("WheelUp", 100)
    skill("WheelUp", 100)
    skill("WheelUp", 100)
    skill("WheelUp", 100)
    skill("WheelUp", 100)
    skill("WheelUp", 100)
    MouseMove 360, 550
    sleep(500)
    click_for_success()
    skill("space", 1000)
    sleep(2000)
    down("right")
    sleep(2000)
    up("right")
    sleep(500)
}

go_abyss_new_door() {
    down("right")
    sleep(2000)
    up("right")
    sleep(500)
    MouseMove 813, 700
    sleep(500)
    click_for_success()
    sleep(2000)
    down("right")
    sleep(2000)
    up("right")
    sleep(500)
}

go_ss_road_door(){
    move_and_click(1267,603,1000)
    move_and_click(1374,730,1000)
    down("up")
    sleep(2000)
    up("up")
    sleep(500)
}

back_city() {
    clean_screen()
    skill("esc", 500)
    MouseMove 1135, 835
    sleep(500)
    MouseMove 1135, 835
    sleep(500)
    click_for_success()
    sleep(500)
    skill("space", 2000)
    skill("F12", 2000)
    clean_screen()
}

back_select_character() {
    clean_screen()
    skill("esc", 500)
    MouseMove 925, 840
    sleep(500)
    MouseMove 925, 840
    sleep(500)
    click_times(2)
    sleep(500)
}

pixel_search_point(pointX, pointY, colorId) {
    return pixel_search(pointX - 3, pointY - 3, pointX + 3, pointY + 3, colorId)
}

have_no_pl() {
    return !have_pl()
}

have_pl() {
    sleep(100)
    if (pixel_search_point(1429, 1071, 0x00CEDE)) {
        return true
    }
    if (pixel_search_point(1424, 1069, 0x8F1E00)) {
        return true
    }
    return false
}

have_ticket() {
    score := 0
    if (pixel_search_point(1635, 155, 0xCEB37D)) {
        score := score + 50
    }
    if (pixel_search_point(1664, 157, 0xEEC88E)) {
        score := score + 50
    }
    if (pixel_search_point(1688, 154, 0xEAC484)) {
        score := score + 50
    }
    if (pixel_search_point(1718, 151, 0xDCC38A)) {
        score := score + 50
    }
    return score >= 150
}

have_no_ticket2() {
    return !have_ticket()
}

have_no_ticket() {
    score := 0
    if (pixel_search_point(1625, 158, 0x818181)) {
        score := score + 50
    }
    if (pixel_search_point(1660, 151, 0xBBBBBB)) {
        score := score + 50
    }
    if (pixel_search_point(1689, 154, 0xADADAD)) {
        score := score + 50
    }
    if (pixel_search_point(1710, 154, 0xA6A6A6)) {
        score := score + 50
    }
    return score >= 150
}

can_enter_abyss() {
    score := 0
    if (pixel_search_point(1578, 995, 0x0B2C54)) {
        score := score + 50
    }
    if (pixel_search_point(1703, 996, 0x0B2B51)) {
        score := score + 50
    }
    if (pixel_search_point(1764, 997, 0x0B2A50)) {
        score := score + 50
    }
    if (pixel_search_point(1884, 993, 0x0D2E58)) {
        score := score + 50
    }
    ;score>=150说明实际因为没有票或者pl没有进去
    return score < 150
}

can_back_city() {
    score := 0
    if (pixel_search_point(1628, 266, 0x90784D)) {
        score := score + 50
    }
    if (pixel_search_point(1659, 266, 0x90784D)) {
        score := score + 50
    }
    if (pixel_search_point(1681, 266, 0x90784D)) {
        score := score + 50
    }
    if (pixel_search_point(1708, 266, 0x90784D)) {
        score := score + 50
    }
    return score >= 150
}

; can_back_city2(){
;     if (ImageSearch(&FoundX, &FoundY, 1614, 253, 1738, 290, "D:\GitProject\maozhaocao\dnf-ahk\image\bmp\返回城镇_1614_253_1738_290.bmp"))
;         MsgBox "The icon was found at " FoundX "x" FoundY
;     else
;         MsgBox "Icon could not be found on the screen."
; }
move_and_click(mouse_x, mouse_y, delay) {
    sleep(200)
    MouseMove mouse_x, mouse_y
    sleep(delay)
    click_for_success()
    sleep(200)
}

move_and_click_one(mouse_x, mouse_y, delay) {
    sleep(200)
    MouseMove mouse_x, mouse_y
    sleep(delay)
    click_times(1)
    sleep(200)
}

receive_daily_ticket() {
    sleep(200)
    move_and_click_one(1386, 977, 800)
    move_and_click_one(890, 307, 800)
    clean_screen()
}

finish_daily_task() {
    sleep(200)
    MouseMove 1386, 977
    sleep(800)
    click_times(1)
    move_and_click(890, 420, 800)
    move_and_click(890, 536, 800)
    move_and_click(890, 658, 800)
    move_and_click(890, 805, 800)
    move_and_click(890, 307, 800)
    sleep(500)
    skill("F5", 1000)
    skill("F5", 1000)
}

finish_abyss_task() {
    sleep(200)
    MouseMove 1620, 930
    sleep(800)
    click_times(1)
    move_and_click(1158, 460, 800)
    move_and_click(1158, 572, 800)
    move_and_click(1158, 709, 800)
    move_and_click(1158, 800, 800)
    move_and_click(1158, 884, 800)
    sleep(500)
    skill("F5", 1000)
    skill("F5", 1000)
}

run_search_next(time) {
    run(time)
    skill_down_up("up", 300, 100)
    skill_down_up("down", 300, 1000)
}

decompose() {
    clean_screen()
    skill("esc", 500)
    move_and_click(547, 513, 800)

    fix_decompose_machine()

    move_and_click(988, 580, 800)
    skill("a",800)
    skill("space",800)
    Sleep(3000)
    skill("esc", 500)
}

fix_decompose_machine() {
    move_and_click(1100, 580, 800)
    move_and_click(1100, 580, 800)
    skill("space", 500)
}

chat_daily() {
    skill("enter", 500)
    skill("/", 500)
    skill("a", 500)
    skill("space", 500)
    skill("space", 500)
    skill("enter", 1500)

    skill("enter", 500)
    skill("/", 500)
    skill("g", 500)
    skill("space", 500)
    skill("space", 500)
    skill("enter", 500)
}

auto_resume(ch_count) {
    clean_screen()
    back_select_character()
    sleep(4000)
    skill_many("up", 1000, 5)
    skill_many("left", 1000, 2)
    index := 17
    skill_many("right", 1000, index - 1)
    skill("space", 5000)
    while (index <= ch_count) {
        sleep(500)
        check_count := 1
        while (check_count <= 20) {
            if (is_max_hp()) {
                log.info("恢复角色:", index, "check_count:", check_count)
                break
            }
            check_count := check_count + 1
            sleep(30000)
        }
        back_select_character()
        skill("right", 2000)
        skill("space", 5000)
        index := index + 1
    }
}

is_max_hp() {
    score := 0
    if (pixel_search_point(700, 978, 0x831414)) {
        score := score + 50
    }
    if (pixel_search_point(700, 978, 0x9A1414)) {
        score := score + 50
    }
    if (pixel_search_point(700, 978, 0x7A1414)) {
        score := score + 50
    }
    return score >= 50
}
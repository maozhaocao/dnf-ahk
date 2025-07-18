﻿#Include AHK_v1.ahk
#Include character_list.ahk
#Include islands_1.ahk
#Include islands_2.ahk
#Include islands_3.ahk

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

walk(time) {
    sleep(50)
    down("right")
    sleep(time)
    up("right")
    sleep(50)
}

walk_left(time) {
    sleep(50)
    down("left")
    sleep(time)
    up("left")
    sleep(50)
}

walk_up(time) {
    sleep(50)
    down("up")
    sleep(time)
    up("up")
    sleep(50)
}

walk_down(time) {
    sleep(50)
    down("down")
    sleep(time)
    up("down")
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

go_islands_door() {
    down("right")
    sleep(2000)
    up("right")
    sleep(500)
    MouseMove 265, 555
    sleep(500)
    click_for_success()
    sleep(3000)
    down("right")
    sleep(500)
    up("right")

    down("left")
    sleep(200)
    down("up")
    sleep(500)
    up("up")
    sleep(2000)
    up("left")
    sleep(500)
    MouseMove 1060, 535
    sleep(500)
    click_for_success()
}

go_abyss_115_door() {
    down("right")
    sleep(2000)
    up("right")
    sleep(500)
    global abyss_door_x
    global abyss_door_y
    MouseMove abyss_door_x, abyss_door_y
    sleep(500)
    click_for_success()
    sleep(3000)
    down("right")
    sleep(500)
    up("right")
    down("left")
    sleep(200)
    down("up")
    sleep(500)
    up("up")
    sleep(2000)
    up("left")
    sleep(500)
    sleep(500)
    MouseMove 1215, 850
    sleep(500)
    click_for_success()
}

back_city() {
    clean_screen()
    ; skill("esc", 500)
    move_and_click(1505, 1041, 1000)
    global back_city_x
    global back_city_y
    MouseMove back_city_x, back_city_y
    sleep(500)
    MouseMove back_city_x, back_city_y
    sleep(500)
    click_for_success()
    sleep(500)
    skill("space", 2000)
    skill("F12", 2000)
    clean_screen()
}

back_select_character() {
    sleep(500)
    ; skill("esc", 500)
    global back_selct_character_x
    global back_selct_character_y
    move_and_click(1505, 1041, 1000)
    MouseMove back_selct_character_x, back_selct_character_y
    sleep(500)
    MouseMove back_selct_character_x, back_selct_character_y
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

move_and_click(mouse_x, mouse_y, delay) {
    sleep(200)
    MouseMove mouse_x, mouse_y
    sleep(delay)
    click_times(1)
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
    ; clean_screen()
    skill("esc", 2000)
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
    ; skill("F5", 1000)
    ; skill("F5", 1000)
    skill("esc", 2000)
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
    skill("a", 800)
    skill("space", 800)
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
    global enbale_auto_resume := read_config("option", "enbale_auto_resume")
    if (!enbale_auto_resume) {
        return
    }

    clean_screen()
    back_select_character()
    sleep(4000)
    skill_many("up", 1000, 9)
    skill_many("left", 1000, 5)
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

get_current_point() {
    if (pixel_search_point(1787, 111, 0xFFAE00)) {
        return 1
    }
    if (pixel_search_point(1820, 111, 0xE4B905)) {
        return 2
    }
    if (pixel_search_point(1852, 111, 0xDBB80B)) {
        return 3
    }
    if (pixel_search_point(1884, 111, 0xDBB80B)) {
        return 4
    }
    return 0
}

start_qundao(index, abyss_times_total) {
    sleep(4000)

    while (abyss_times_total > 0) {
        updateHeartbeat()
        islands(index)

        abyss_times_total := abyss_times_total - 1
        current_map := get_current_map()
        loc := 1

        if (current_map == 1) {
            loc := map1_start(index)
        }

        if (current_map == 2) {
            loc := map2_start(index)
        }

        if (current_map == 3) {
            loc := map3_start(index)
        }

        if (loc == -1) {
            log.info("疑似卡住，直接回城")
            ; back_city()
            break
        }

        if (have_no_pl()) {
            log.info("pl不足,停止群岛")
            break
        }
        sleep(500)
        if (have_no_ticket()) {
            log.info("记忆落痕不足,停止继续深渊")
            break
        }
        sleep(500)
        if (abyss_times_total > 0) {
            skill("F10", 6000)
        }
    }
}

is_map1() {
    ; boss是第3行第2列
    RGB_list := [0x142700, 0x122600, 0xE72200, 0xD65900, 0x271700, 0x0D0801, 0xD44301, 0x1B4001, 0x1C2C01, 0x620301]
    similarity := CalculateSimilarity(RGB_list, 1806, 161, 1833, 187, 10)
    log.info("similarity:", similarity)
    return similarity
}

is_map2() {
    ; boss是第2行第6列
    RGB_list := [0x700802, 0xE84D02, 0xE73F01, 0xB42200, 0x1D3300, 0xE75300, 0xDB4700, 0x060C00, 0x2F5100, 0x204100]
    similarity := CalculateSimilarity(RGB_list, 1883, 132, 1896, 153, 10)
    log.info("similarity:", similarity)
    return similarity
}

is_map3() {
    ; boss是第3行第3列
    RGB_list := [0x981100, 0xE77300, 0x3B2A12, 0x610D00, 0x0B1400, 0x1E3701, 0xAA2301, 0x2A1D08, 0x660301, 0x1F3D01]
    similarity := CalculateSimilarity(RGB_list, 1840, 165, 1874, 188, 10)
    log.info("similarity:", similarity)
    return similarity
}

get_current_map() {
    similarity_list := [is_map1(), is_map2(), is_map3()]
    log.info("map score:", similarity_list)
    return FindMaxIndex(similarity_list)
}

go_right(action_index, index) {
    if (action_index == 1) {
        sleep(1000)
    }

    if (action_index == 2) {
        islands_skill(index)
    }

    if (action_index == 3) {
        walk_up(1000)
    }

    if (action_index == 4) {
        walk_down(1000)
    }

    if (action_index == 5) {
        sleep(200)
        down("left")
        sleep(200)
        islands_skill(index)
        up("left")
        sleep(500)
    }
}

go_left(action_index, index) {
    if (action_index == 1) {
        sleep(1000)
    }

    if (action_index == 2) {
        islands_skill(index)
    }

    if (action_index == 3) {
        walk_up(1000)
    }

    if (action_index == 4) {
        down("right")
        sleep(200)
        up("right")
        sleep(1000)
    }

    if (action_index == 5) {
        walk_down(1000)
    }
}

go_up(action_index, index) {
    if (action_index == 1) {
        run(1500)
    }

    if (action_index == 2) {
        islands_skill(index)
    }

    if (action_index == 3) {
        sleep(1000)
    }

    if (action_index == 4) {
        islands_skill(index)
    }

    if (action_index == 5) {
        run_left(1500)
    }
}

go_down(action_index, index) {
    if (action_index == 1) {
        run(1500)
    }

    if (action_index == 2) {
        islands_skill(index)
    }

    if (action_index == 3) {
        sleep(1000)
    }

    if (action_index == 4) {
        islands_skill(index)
    }

    if (action_index == 5) {
        run_left(1500)
    }
}

islands_pick(index) {
    islands_skill_loc8(index)

    count := 7
    while (count > 0) {
        move_and_click_one(1637, 110, 1000)
        count := count - 1
        if (can_back_city()) {
            sleep(1000)
            walk_up(500)
            skill("numpaddiv", 2000)
            skill_many("x", 200, 5)
            ; buy_ticket(index)
            buy_panibo()
            buy_panibo2()
            skill("esc", 500)
            break
        }

        skill("a", 1000)
    }
}

buy_ticket(index) {
    buy_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 34, 35, 38]
    if (list_contains_key(buy_list, index)) {
        move_and_click(630, 400, 500)
        move_and_click(630, 400, 500)
    }
    move_and_click(1035, 77, 1000)
}

buy_panibo() {
    RGB_list := [0x266992, 0x4AAC95, 0x398667, 0x3BC951, 0x307F8A, 0x18612A, 0x2A9240, 0x38A34C]
    similarity := CalculateSimilarity(RGB_list, 275, 820, 290, 845, 8)
    ; log.info("similarity",similarity)
    if (similarity >= 80) {
        move_and_click(290, 827, 500)
        move_and_click(290, 827, 500)
        sleep(500)
    }
}

buy_panibo2() {
    RGB_list := [0x45C0C1, 0x40D550, 0x379259, 0x1D2A52, 0x45A257, 0x2EAC54, 0x0E1736, 0x101F59]
    similarity := CalculateSimilarity(RGB_list, 335, 820, 360, 845, 8)
    ; log.info("similarity",similarity)
    if (similarity >= 80) {
        move_and_click(345, 827, 500)
        move_and_click(345, 827, 500)
        sleep(500)
    }
}

buy_ss_guan() {
    RGB_list := [0xC17F48, 0xB46A3B, 0xCB7713, 0xC24710, 0xC25B0A, 0xDF860E, 0xAF2409, 0x85211C]
    similarity := CalculateSimilarity(RGB_list, 275, 820, 290, 845, 8)
    ; log.info("similarity",similarity)
    if (similarity >= 80) {
        move_and_click(290, 827, 500)
        move_and_click(290, 827, 500)
        sleep(500)
    }
}

buy_shanshanming_chuanshuo() {
    RGB_list := [0x605251, 0x80D198, 0x5F556B, 0xE6864B, 0x5A1F0D, 0x910104, 0x5C0000, 0xDB3A3E]
    similarity := CalculateSimilarity(RGB_list, 275, 820, 290, 845, 8)
    ; log.info("similarity",similarity)
    if (similarity >= 80) {
        move_and_click(290, 827, 500)
        move_and_click(290, 827, 500)
        sleep(500)
    }
}

abyss_pick() {

    cycle_times := 0
    count := 8
    while (count > 0) {
        count := count - 1
        if (can_back_city()) {
            sleep(1000)
            skill("numpaddiv", 2000)
            skill_many("x", 200, 4)
            buy_panibo()
            buy_panibo2()
            buy_ss_guan()
            buy_shanshanming_chuanshuo()
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
                global enable_abyss_pick_check_cycle := read_config("option", "enable_abyss_pick_check_cycle")
                if (enable_abyss_pick_check_cycle) {
                    count := 8
                } else {
                    count := 8
                    cycle_times := cycle_times + 1
                    if (cycle_times >= 5) {
                        break
                    }
                }
            }
        }
    }
    move_and_click(929, 725, 500)
}

start(index) {
    global have_send := false
    deleteLastHeartbeat()
    SetTimer, CheckHeartbeat, 60000
    abyss_times_total := 0

    global ch_count := read_config("abyss", "ch_count") + 0
    global abyss_list := stringToArray(read_config("abyss", "abyss_list"))
    global islands_list := stringToArray(read_config("abyss", "islands_list"))
    global pl_0_list := stringToArray(read_config("abyss", "pl_0_list"))
    global pl_17_list := stringToArray(read_config("abyss", "pl_17_list"))
    global pl_30_list := stringToArray(read_config("abyss", "pl_30_list"))
    global pl_60_list := stringToArray(read_config("abyss", "pl_60_list"))
    global pl_77_list := stringToArray(read_config("abyss", "pl_77_list"))
    global pl_90_list := stringToArray(read_config("abyss", "pl_90_list"))
    global pl_107_list := stringToArray(read_config("abyss", "pl_107_list"))
    ; skip_list :=[ 41, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]
    skip_list := []
    skip_list := stringToArray(read_config("abyss", "islands_list"))


    ; pl_0_list := [29, 31, 32, 33, 37, 39, 41, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]
    ; pl_17_list := []
    ; pl_30_list := [40, 42]
    ; pl_60_list := [22, 28, 35]
    ; pl_90_list := [20, 21, 23, 24, 25, 26, 27, 30, 36, 38, 54, 55]
    ; pl_107_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 34]


    ; pl_0_list := [25, 29, 36, 37, 38, 39, 41, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55]
    ; pl_17_list := []
    ; pl_30_list := [31, 32, 33, 42]
    ; pl_60_list := [22, 28, 35, 40]
    ; pl_90_list := [20, 21, 23, 24, 26, 27, 30]
    ; pl_107_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 34]

    ; if (is_sunday()) {
    ;     abyss_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 54, 55]
    ;     islands_list := [41, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]
    ;     pl_0_list := [20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55]
    ;     pl_17_list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 34]
    ;     pl_30_list := []
    ;     pl_60_list := []
    ;     pl_90_list := []
    ;     pl_107_list := []
    ; }

    if (is_thursday()) {
        global ch_count := read_config("abyss_4", "ch_count") + 0
        global abyss_list := stringToArray(read_config("abyss_4", "abyss_list"))
        global islands_list := stringToArray(read_config("abyss_4", "islands_list"))
        global pl_0_list := stringToArray(read_config("abyss_4", "pl_0_list"))
        global pl_17_list := stringToArray(read_config("abyss_4", "pl_17_list"))
        global pl_30_list := stringToArray(read_config("abyss_4", "pl_30_list"))
        global pl_60_list := stringToArray(read_config("abyss_4", "pl_60_list"))
        global pl_77_list := stringToArray(read_config("abyss_4", "pl_77_list"))
        global pl_90_list := stringToArray(read_config("abyss_4", "pl_90_list"))
        global pl_107_list := stringToArray(read_config("abyss_4", "pl_107_list"))
    }

    ; if (is_saturday()) {
    ;     global ch_count := read_config("abyss_6", "ch_count") + 0
    ;     global abyss_list := stringToArray(read_config("abyss_6", "abyss_list"))
    ;     global islands_list := stringToArray(read_config("abyss_6", "islands_list"))
    ;     global pl_0_list := stringToArray(read_config("abyss_6", "pl_0_list"))
    ;     global pl_17_list := stringToArray(read_config("abyss_6", "pl_17_list"))
    ;     global pl_30_list := stringToArray(read_config("abyss_6", "pl_30_list"))
    ;     global pl_60_list := stringToArray(read_config("abyss_6", "pl_60_list"))
    ;     global pl_77_list := stringToArray(read_config("abyss_6", "pl_77_list"))
    ;     global pl_90_list := stringToArray(read_config("abyss_6", "pl_90_list"))
    ;     global pl_107_list := stringToArray(read_config("abyss_6", "pl_107_list"))
    ; }


    log.info("设置当前角色id:", index, ",设置深渊次数:", abyss_times_total)
    while (index <= ch_count) {
        init_character_config(index)
        updateHeartbeat()
        end_hour := A_Hour

        if (end_hour == 6 and index >= 28) {
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
                    if (list_contains_key(pl_77_list, index)) {
                        abyss_times_total := 6
                    }
                    if (list_contains_key(pl_107_list, index)) {
                        abyss_times_total := 5
                    }
                }
                global is_debug := read_config("option", "is_debug")
                log.info("is_debug", is_debug)
                global ch_count := read_config("abyss", "ch_count") + 0
                log.info("ch_count", ch_count)

                if (is_debug) {
                    abyss_times_total := 1
                }
                log.info("设置深渊次数：", abyss_times_total)

                if (list_contains_key(abyss_list, index)) {
                    go_abyss_115_door()
                    start_abyss(index, abyss_times_total)
                } else if (list_contains_key(islands_list, index)) {
                    go_islands_door()
                    start_qundao(index, abyss_times_total)
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
    global have_send := true
    global enbale_finish_msg := read_config("option", "enbale_finish_msg")
    if (enbale_finish_msg) {
        send_msg("深渊已刷完")
    }
    global enbale_auto_resume := read_config("option", "enbale_auto_resume")
    if (enbale_auto_resume) {
        auto_resume(ch_count)
    }
    return
}

not_enter_abyss() {
    RGB_list := [0x49515A, 0x485058, 0x484F57, 0x484E56, 0x484D55, 0x6D6558, 0xAD8C5F, 0x9D825B]
    similarity := CalculateSimilarity(RGB_list, 1792, 995, 1870, 1002, 8)
    ; log.info("similarity",similarity)
    return similarity >= 80
}

start_abyss(index, abyss_times_total) {
    skill("space", 4000)
    sleep(1000)
    if (not_enter_abyss()) {
        log.info("深渊票不足,进入深渊失败")
        sleep(1000)
        return
    }
    init_character_config(index)
    count := abyss_times_total
    buff_right_right(2000)
    while (count > 0)
    {
        updateHeartbeat()

        count := count - 1
        abyss_times_one_with_config()
        if (count == 0) {
            run_left(500)
        }
        abyss_pick()
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
    global is_debug := read_config("option", "is_debug")
    if (!is_debug) {
        skill_many("x", 500, 15)
    }
    log.info("当前角色深渊已刷完,实际循环次数:", abyss_times_total - count)
}
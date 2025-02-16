map3_start(index) {
    loc := 1

    while (loc < 8) {
        loc := get_map3_ch_location()
        log.info("current loc :", loc)

        if (loc == 1) {
            map3_loc1_action()
        }

        if (loc == 2) {
            map3_loc2_action()
        }

        if (loc == 3) {
            map3_loc3_action()
        }

        if (loc == 4) {
            map3_loc4_action(index)
        }

        if (loc == 5) {
            map3_loc5_action()
        }

        if (loc == 6) {
            map3_loc6_action()
        }

        if (loc == 7) {
            map3_loc7_action()
        }

        if (loc == 8) {
            sleep(2000)
            loc := get_map3_ch_location()
            if (loc == 8) {
                map3_loc8_action(index)
            }
        }
    }

}

map3_loc1_action() {
    run_left(1700)
    down("left")
    action_index := 1
    while (is_map3_loc1() >= 80) {
        go_left(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
        }
    }
    up("left")
}

map3_loc2_action() {
    run_left(500)
    skill("a", 1000)
    run_left(1000)
    down("left")
    action_index := 1
    while (is_map3_loc2() >= 80) {
        go_left(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
        }
    }
    up("left")
}

map3_loc3_action() {
    run_left(500)
    skill("a", 1000)
    run_left(1000)
    down("left")
    action_index := 1
    while (is_map3_loc3() >= 80) {
        go_left(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
            jump_back()
        }
    }
    up("left")
}

jump_back() {
    down("down")
    sleep(300)
    skill("c", 500)
    up("down")
    sleep(300)
}

map3_loc4_action(index) {
    run_left(500)
    skill("a", 1000)
    run_left(500)
    down("down")
    action_index := 1
    while (is_map3_loc4() >= 80) {
        go_down(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
            run_left(200)
        }
    }
    up("down")
}

map3_loc5_action() {
    action_index := 1
    down("right")
    while (is_map3_loc5() >= 80) {
        go_right(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
            jump_back()
        }
    }
    up("right")
}

map3_loc6_action() {
    run(500)
    skill("a", 1000)
    down("right")
    action_index := 1
    while (is_map3_loc6() >= 80) {
        go_right(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
            jump_back()
        }
    }
    up("right")
}

map3_loc7_action() {
    run(500)
    skill("a", 1000)
    down("down")
    sleep(1000)
    action_index := 1
    while (is_map3_loc7() >= 80) {
        go_down(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
            down("up")
            sleep(500)
            up("up")
        }
    }
    up("down")
}

map3_loc8_action(index) {
    down_up("down", 500)
    islands_pick(index)
}

get_map3_ch_location() {
    similarity_list := [is_map3_loc1(), is_map3_loc2(), is_map3_loc3(), is_map3_loc4(), is_map3_loc5(), is_map3_loc6(), is_map3_loc7(), is_map3_loc8()]
    log.info("loc score:", similarity_list)
    return FindMaxIndex(similarity_list)
}

is_map3_loc1() {
    ; 第1行第4列
    RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    similarity := CalculateSimilarity(RGB_list, 1884, 105, 1886, 117, 4)
    return similarity
}

is_map3_loc2() {
    ; 第1行第3列
    RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    similarity := CalculateSimilarity(RGB_list, 1851, 105, 1853, 117, 4)
    return similarity
}

is_map3_loc3() {
    ; 第1行第2列
    RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    similarity := CalculateSimilarity(RGB_list, 1818, 105, 1820, 117, 4)
    return similarity
}

is_map3_loc4() {
    ; 第1行第1列
    RGB_list := [0x0556AB, 0x0F1D4C, 0x0CC5DE, 0x1957C9]
    similarity := CalculateSimilarity(RGB_list, 1785, 105, 1787, 117, 4)
    return similarity
}

is_map3_loc5() {
    ; 第2行第1列
    RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    similarity := CalculateSimilarity(RGB_list, 1785, 138, 1787, 150, 4)
    return similarity
}

is_map3_loc6() {
    ; 第2行第2列
    RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    similarity := CalculateSimilarity(RGB_list, 1818, 138, 1820, 150, 4)
    return similarity
}

is_map3_loc7() {
    ; 第2行第3列
    RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    similarity := CalculateSimilarity(RGB_list, 1851, 138, 1853, 150, 4)
    return similarity
}

is_map3_loc8() {
    ; 第3行第3列 todo
    ; RGB_list := [0xC91500,0xCC3E00,0x833D00,0x0B0F01]
    ; similarity := CalculateSimilarity(RGB_list, 1846, 170, 1861, 182, 4)
    ; return similarity-20
    return 50
}
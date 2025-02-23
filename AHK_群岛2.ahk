map2_start(index) {
    loc := 1

    while (loc < 8) {
        loc := get_map2_ch_location()
        ; log.info("current loc :", loc)

        if (loc == 1) {
            map2_loc1_action()
        }

        if (loc == 2) {
            map2_loc2_action()
        }

        if (loc == 3) {
            map2_loc3_action()
        }

        if (loc == 4) {
            map2_loc4_action()
        }

        if (loc == 5) {
            map2_loc5_action()
        }

        if (loc == 6) {
            map2_loc6_action()
        }

        if (loc == 7) {
            map2_loc7_action()
        }

        if (loc == 8) {
            sleep(2000)
            loc := get_map2_ch_location()
            if (loc == 8) {
                map2_loc8_action(index)
            }
        }
    }

}

map2_loc1_action() {
    run(1800)
    down("right")
    action_index := 1
    while (is_map2_loc1() >= 80) {
        go_right(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
        }
    }
    up("right")
}

map2_loc2_action() {
    run(500)
    skill("a", 1000)
    ; run(1000)
    down("up")
    action_index := 1
    while (is_map2_loc2() >= 80) {
        go_up(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
        }
    }
    up("up")
}

map2_loc3_action() {
    run(500)
    run_left(200)
    skill("a", 1000)
    down_up("up",500)
    down("right")
    action_index := 1
    while (is_map2_loc3() >= 80) {
        go_right(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
        }
    }
    up("right")
}

map2_loc4_action() {
    run(500)
    skill("a", 1000)
    run(1000)
    down("right")
    action_index := 1
    while (is_map2_loc4() >= 80) {
        go_right(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
        }
    }
    up("right")
}

map2_loc5_action() {
    run(300)
    skill("a", 1000)
    action_index := 1
    down("down")
    while (is_map2_loc5() >= 80) {
        go_down(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
        }
    }
    up("down")
}

map2_loc6_action() {
    run(800)
    run_left(300)
    skill("a", 1000)
    ; run(500)
    down("right")
    action_index := 1
    while (is_map2_loc6() >= 80) {
        go_right(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
        }
    }
    up("right")
}

map2_loc7_action() {
    run(500)
    skill("a", 1000)
    run(1000)
    down("down")
    sleep(500)
    up("down")
    sleep(500)
    down("right")
    sleep(500)
    action_index := 1
    while (is_map2_loc7() >= 80) {
        go_right(action_index)
        action_index := action_index + 1
        if (action_index > 5) {
            action_index := 0
        }
    }
    up("right")
}

map2_loc8_action(index) {
    run(500)
    islands_pick(index)
}


get_map2_ch_location() {
    similarity_list := [is_map2_loc1(), is_map2_loc2(), is_map2_loc3(), is_map2_loc4(), is_map2_loc5(), is_map2_loc6(), is_map2_loc7(), is_map2_loc8()]
    ; log.info("loc score:", similarity_list)
    return FindMaxIndex(similarity_list)
}

is_map2_loc1() {
    ; 第2行第1列
    RGB_list := [0x0556AB, 0x0F1D4C, 0x0CC5DE, 0x1957C9]
    similarity := CalculateSimilarity(RGB_list, 1719, 138, 1721, 150, 4)
    return similarity
}

is_map2_loc2() {
    ; 第2行第2列
    RGB_list := [0x0556AB, 0x0F1D4C, 0x0CC5DE, 0x1957C9]
    similarity := CalculateSimilarity(RGB_list, 1752, 138, 1754, 150, 4)
    return similarity
}

is_map2_loc3() {
    ; 第1行第2列
    RGB_list := [0x0556AB, 0x0F1D4C, 0x0CC5DE, 0x1957C9]
    similarity := CalculateSimilarity(RGB_list, 1752, 105, 1754, 117, 4)
    return similarity
}

is_map2_loc4() {
    ; 第1行第3列
    RGB_list := [0x0556AB, 0x0F1D4C, 0x0CC5DE, 0x1957C9]
    similarity := CalculateSimilarity(RGB_list, 1785, 105, 1787, 117, 4)
    return similarity
}

is_map2_loc5() {
    ; 第1行第4列
    RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    similarity := CalculateSimilarity(RGB_list, 1818, 105, 1820, 117, 4)
    return similarity
}

is_map2_loc6() {
    ; 第2行第4列
    RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    similarity := CalculateSimilarity(RGB_list, 1818, 138, 1820, 150, 4)
    return similarity
}

is_map2_loc7() {
    ; 第2行第5列
    RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    similarity := CalculateSimilarity(RGB_list, 1851, 138, 1853, 150, 4)
    return similarity
}

is_map2_loc8() {
    ; 第2行第6列 todo
    ; RGB_list := [0x13A1DC, 0x142759, 0x0BABD5, 0x1995E5]
    ; similarity := CalculateSimilarity(RGB_list, 1884, 138, 1886, 150, 4)
    ; return similarity
    return 50
}
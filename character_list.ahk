gbl() {
    sleep(200)
    send_key("up")
    sleep(10)
    send_key("up")
    sleep(10)
    send_key("z")
    sleep(1000)
}

islands(index) {
    if (index == 1 or index == 4 or index == 8) {
        buff_right_right(1500)
        gbl()
    }

    if (index == 2) {
        ; abyss_times_new_douluo()
    }

    if (index == 3) {
        gbl()
    }
    if (index == 5) {
        gbl()
    }

    if (index == 6) {
        buff_right_right(1500)
        buff_left_up_right(2000)
    }

    if (index == 7) {
        gbl()
    }

    if (index == 9) {
        ; abyss_times_new_naiba()
    }

    if (index == 10) {
        ; abyss_times_new_naima()
    }

    if (index == 11) {
        ; abyss_times_new_renying()
    }

    if (index == 12) {
        ; abyss_times_new_jianhun()
    }

    if (index == 13) {
        ; abyss_times_new_miusi()
    }

    if (index == 14) {
        ; abyss_times_new_lvren()
    }

    if (index == 15) {
        ; abyss_times_new_wunv()
    }

    if (index == 16) {
        ; abyss_times_new_hongyan()
    }

    if (index == 17) {
        ; abyss_times_new_feizong()
    }

    if (index == 18) {
        ; abyss_times_new_huahua()
    }

    if (index == 19) {
        buff_right_right(1500)
        skill("Numpad0", 1000)
    }

    if (index == 20) {
        ; buff_up_down(1500)
    }

    if (index == 21) {
        ; abyss_times_new_hejin()
        skill("f", 800)
    }

    if (index == 22) {
        ; abyss_times_new_xuefa()
    }

    if (index == 23) {
        ; abyss_times_new_papa()
    }

    if (index == 24) {
        ; abyss_times_new_niangman()
    }

    if (index == 25) {
        gbl()
    }

    if (index == 26) {
        ; abyss_times_new_ningmao()
    }

    if (index == 27) {
        ; abyss_times_new_zhiying()
    }

    if (index == 28) {
        ; abyss_times_new_andi()
    }

    if (index == 29) {
        ; abyss_times_new_hongyan()
    }

    if (index == 30) {
        ; abyss_times_new_tuanzhang()
        skill("space", 1000)
    }

    if (index == 31) {
        ; abyss_times_new_longshen()
    }

    if (index == 32) {
        ; abyss_times_new_manyou()
    }

    if (index == 33) {
        ; abyss_times_new_baobao()
    }

    if (index == 34) {
        ; abyss_times_new_baobao()
    }

    if (index == 35) {
        skill("RCtrl", 1500)
    }

    if (index == 36) {
        ; abyss_times_new_baobao()
    }

    if (index == 37) {
        skill("v", 700)
    }

    if (index == 38) {
        skill("RCtrl", 1000)
        skill("w", 500)
    }

    if (index == 39) {
        buff_right_right(1000)
    }

    if (index == 40) {
        skill("RCtrl", 1000)
    }

    if (index == 49) {
        skill("r", 1000)
    }

    if (index == 50) {
        skill("r", 1000)
    }
}

islands_skill(index) {
    if (index == 1 or index == 4 or index == 8) {
        skill("a", 500)
    }

    if (index == 2) {
        skill("a", 500)
    }

    if (index == 3) {
        skill("a", 500)
    }
    if (index == 5) {
        skill("a", 500)
    }

    if (index == 6) {
        skill("a", 500)
    }

    if (index == 7) {
        skill("a", 500)
    }

    if (index == 9) {
        skill("a", 500)
    }

    if (index == 10) {
        skill("a", 500)
    }

    if (index == 11) {
        skill("a", 500)
    }

    if (index == 12) {
        skill("a", 500)
    }

    if (index == 13) {
        skill("a", 500)
    }

    if (index == 14) {
        skill("a", 500)
    }

    if (index == 15) {
        skill("a", 500)
    }

    if (index == 16) {
        skill("a", 500)
    }

    if (index == 17) {
        skill("a", 500)
    }

    if (index == 18) {
        skill("a", 500)
    }

    if (index == 19) {
        skill("a", 500)
    }

    if (index == 20) {
        skill("s", 200)
        skill("a", 500)
    }

    if (index == 21) {
        skill("a", 500)
    }

    if (index == 22) {
        skill("q", 500)
    }

    if (index == 23) {
        skill("a", 500)
    }

    if (index == 24) {
        skill("a", 500)
    }

    if (index == 25) {
        skill("a", 500)
    }

    if (index == 26) {
        skill("a", 50)
        skill("s", 500)
    }

    if (index == 27) {
        skill("a", 50)
        skill("w", 500)
    }

    if (index == 28) {
        skill("RCtrl", 50)
        skill("a", 500)
    }

    if (index == 29) {
        skill("a", 500)
    }

    if (index == 30) {
        skill("a", 500)
        ; 生成 1-10 的随机数
        Random, randNum, 1, 10

        ; 判断随机数是否满足条件
        if (randNum Mod 4 == 0) {
            ; 调用 skill 函数
            skill("space", 1000)
        }
    }

    if (index == 31) {
        skill("a", 50)
        skill("v", 500)
    }

    if (index == 32) {
        skill("s", 100)
        skill("a", 500)
    }

    if (index == 33) {
        skill("a", 50)
        skill("f", 500)
    }

    if (index == 34) {
        skill("a", 500)
    }

    if (index == 35) {
        skill("a", 500)
    }

    if (index == 36) {
        skill("a", 500)
    }

    if (index == 37) {
        skill("a", 500)
    }

    if (index == 38) {
        skill("a", 500)
    }

    if (index == 39) {
        skill("a", 500)
    }

    if (index == 40) {
        skill("a", 500)
    }

    if (index == 41) {
        skill("a", 500)
    }

    if (index == 42) {
        skill("a", 500)
    }

    if (index == 43) {
        skill("a", 500)
    }

    if (index == 44) {
        skill("a", 500)
    }

    if (index == 45) {
        skill("a", 500)
    }

    if (index == 46) {
        skill("a", 500)
    }

    if (index == 47) {
        skill("a", 50)
        skill("q", 500)
    }

    if (index == 48) {
        skill("a", 50)
        skill("f", 500)
    }

    if (index == 49) {
        skill("a", 50)
        skill("f", 500)
    }


    if (index == 50) {
        skill("a", 50)
        skill("f", 500)
    }

    if (index == 51) {
        skill("a", 500)
    }

    if (index == 52) {
        skill("a", 500)
    }

    if (index == 53) {
        skill("a", 500)
    }
}

islands_skill_loc8(index) {
    if (index == 1 or index == 4 or index == 8) {
        skill("Numpad4", 7000)
    }

    if (index == 2) {
        skill("Numpad4", 7000)
    }

    if (index == 3) {
        skill("Numpad4", 7000)
    }
    if (index == 5) {
        skill("Numpad4", 7000)
    }

    if (index == 6) {
        skill("Numpad4", 7000)
    }

    if (index == 7) {
        skill("Numpad4", 7000)
    }

    if (index == 9) {
        skill("Numpad4", 7000)
    }

    if (index == 10) {
        skill("Numpad4", 7000)
    }

    if (index == 11) {
        skill("Numpad4", 7000)
    }

    if (index == 12) {
        skill("Numpad4", 7000)
    }

    if (index == 13) {
        skill("Numpad4", 7000)
    }

    if (index == 14) {
        skill("Numpad4", 7000)
    }

    if (index == 15) {
        skill("Numpad4", 7000)
    }

    if (index == 16) {
        skill("Numpad4", 7000)
    }

    if (index == 17) {
        skill("Numpad4", 7000)
    }

    if (index == 18) {
        skill("Numpad4", 7000)
    }

    if (index == 19) {
        skill("Numpad4", 7000)
    }

    if (index == 20) {
        skill("Numpad4", 7000)
    }

    if (index == 21) {
        skill("Numpad4", 7000)
    }

    if (index == 22) {
        skill("Numpad4", 7000)
    }

    if (index == 23) {
        skill("Numpad4", 7000)
    }

    if (index == 24) {
        skill("Numpad4", 7000)
    }

    if (index == 25) {
        skill("Numpad4", 7000)
    }

    if (index == 26) {
        skill("Numpad4", 7000)
    }

    if (index == 27) {
        skill("Numpad4", 7000)
    }

    if (index == 28) {
        skill("Numpad4", 7000)
    }

    if (index == 29) {
        skill("Numpad4", 7000)
    }

    if (index == 30) {
        skill("Numpad4", 7000)
    }

    if (index == 31) {
        skill("Numpad4", 7000)
    }

    if (index == 32) {
        skill("Numpad4", 7000)
    }

    if (index == 33) {
        skill("Numpad4", 7000)
    }

    if (index == 34) {
        skill("Numpad4", 7000)
    }

    if (index == 35) {
        skill("Numpad4", 7000)
    }

    if (index == 36) {
        skill("Numpad4", 7000)
    }

    if (index == 37) {
        skill("Numpad4", 7000)
    }

    if (index == 38) {
        skill("Numpad4", 7000)
    }

    if (index == 39) {
        skill("Numpad4", 7000)
    }

    if (index == 40) {
        skill("Numpad4", 7000)
    }

    if (index == 41) {
        skill("Numpad4", 7000)
    }

    if (index == 42) {
        skill("Numpad4", 7000)
    }

    if (index == 43) {
        skill("Numpad4", 7000)
    }

    if (index == 44) {
        skill("Numpad4", 7000)
    }

    if (index == 45) {
        skill("Numpad4", 7000)
    }

    if (index == 46) {
        skill("Numpad4", 7000)
    }

    if (index == 47) {
        skill("Numpad4", 7000)
    }

    if (index == 48) {
        skill("Numpad4", 7000)
    }

    if (index == 49) {
        skill("Numpad4", 7000)
    }

    if (index == 50) {
        skill("Numpad4", 7000)
    }

    if (index == 51) {
        skill("Numpad4", 7000)
    }

    if (index == 52) {
        skill("Numpad0", 6000)
    }

    if (index == 53) {
        skill("Numpad4", 7000)
    }
}
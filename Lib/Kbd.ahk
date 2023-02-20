; ==================== 说明开始 ====================

; 键盘库

; ==================== 说明结束 ====================

Kbd_GetSpecialKeycode(key) {
    ; 返回对应于 key 的只被游戏识别但不影响打字的 keycode
    base := "vkFDsc"
    sc := GetKeySC(key)
    keycode := Format("{1}{2:X}", base, sc)
    return keycode
}

Kbd_RobustSend(key) {
    SendEvent "{Blind}{" key " down}"
    SendEvent "{Blind}{" key " up}"
}

; ==================== 说明开始 ====================

; presets: 方案 (用逗号或分号隔开的都是无冲)
; defaultPreset: 默认开启的方案

; 由于 https://www.autohotkey.com/docs/v1/Functions.htm#lib 的缘故，此脚本必须放在这里

; ==================== 说明结束 ====================


; ==================== 配置开始 ====================

SetKeyDelay(5, -1)

global presets := Map("F6", ["无", ""],
                      "F7", ["剑魂无冲", "X;Z;A;G;Q;D;V;E;T;TAB"],
                    ;   "F7", ["剑魂有冲", "X,A,G,Q,Z"],
                    ;   "F7", ["剑魂", "X,Z,A;D,F,G,V,Q"],
                      "F8", ["DK", "X;Z;Q;A,S,D,F,G,V;R,T;TAB"])

global defaultPreset := "F6"

; ==================== 配置结束 ====================


#Include <Color>
#Include <Const>
#Include <Kbd>
#Include <UI>

; 加载 Config
#Include Config.ahk

; 连发进程不需要 TrayIcon 和 Log
#NoTrayIcon
KeyHistory 0
ListLines 0
InstallKeybdHook

; key -> keycode
global autoFireKeys := Map()

fnAutoFireTick := AutoFireTick.Bind()
SetTimer fnAutoFireTick, 1, -1

AutoFireTick() {
    If WinActive("ahk_exe DNF.exe") {
        For key, keycode in autoFireKeys {
            If (GetKeyState(key)) {
                Kbd_RobustSend(keycode)
            }
        }
    }
}

; 应用 preset
ApplyPreset(toggleKey) {
    if presets.Has(toggleKey) {
        ; 清空 autoFireKeys
        autoFireKeys.Clear()
        ; 设置 autoFireKeys
        val := presets[toggleKey]
        for _, key in StrSplit(val[2], [",", ";"]) {
            autoFireKeys[key] := Kbd_GetSpecialKeycode(key)
        }
        UI_ToolTip1s("连发方案: " . val[1])
    }
}

; 注册切换 preset 的 hotkey
for k, v in presets {
    fn := ApplyPreset.Bind()
    Hotkey k, fn
}

ApplyPreset(defaultPreset)

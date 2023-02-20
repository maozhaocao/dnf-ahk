; ==================== 说明开始 ====================

; 无冲、不影响打字的连发
; 按触发键开启对应的组合

; presets: 方案 (用逗号隔开的是不能无冲的, 用分号隔开的是无冲的)
;          举例说明 "x,a,q" 是有冲突的, 同时按 xaq 不能同时连发; "x,q;a;s" xq 有冲突但 xas 或 qas 都是无冲连发
; defaultPreset: 默认开启的方案

; ==================== 说明结束 ====================

; ==================== 配置开始 ====================

global presets := Map("F6", ["无", ""],
                      "F7", ["剑魂无冲", "X;Z;A;G;Q;D;V;E;T;TAB"],
                    ;   "F7", ["剑魂有冲", "X,A,G,Q,Z"],
                    ;   "F7", ["剑魂", "X,Z,A;D,F,G,V,Q"],
                      "F8", ["DK", "X;Z;Q;A,S,D,F,G,V;R,T;TAB"])

global defaultPreset := "F6"

; ==================== 配置结束 ====================


global processes := Map()

; Main

for k, _ in presets {
    processes[k] := []
    fn := ApplyPreset.Bind(, k)
    Hotkey k, fn
}

ApplyPreset("", defaultPreset)

ApplyPreset(_, toggleKey) {
    for k, v in presets {
        if (k != toggleKey) {
            processes[k] := []
        }
        else {
            if (processes[k].Length == 0) {
                for _, keys in StrSplit(v[2], ";") {
                    processes[k].push(AHKProcess("AutoFireMPWorker.ahk", keys))
                }
                UI_ToolTip1s("连发方案: " . v[1])
            }
        }
    }
}

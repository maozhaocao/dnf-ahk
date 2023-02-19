Color_RGB2Gray(RGB) {    
    R := RGB         & 0xFF
    G := (RGB >>  8) & 0xFF
    B := (RGB >> 16) & 0xFF
    return (R + G + B) / 3 / 0xFF
}

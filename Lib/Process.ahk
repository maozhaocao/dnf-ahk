class AHKProcess {
    __New(targetScriptPath, arg) {
        Run '*RunAs "' A_AhkPath '" /force "' targetScriptPath '" "' arg '"', , , &pid
        this.pid := pid
    }

    __Delete() {
        ProcessClose this.pid
    }
}

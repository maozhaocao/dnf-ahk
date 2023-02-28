class AHKProcess {
    __New(targetScriptPath, arg) {
        try
        {
            if SubStr(targetScriptPath, -4) == '.exe'
                Run '*RunAs "' targetScriptPath '" /force "' arg '"', , , &pid
            else
                Run '*RunAs "' A_AhkPath '" /force "' targetScriptPath '" "' arg '"', , , &pid
        }
        ; Run '*RunAs "' A_AhkPath '" /force "' targetScriptPath '" "' arg '"', , , &pid
        this.pid := pid
    }

    __Delete() {
        ProcessClose this.pid
    }
}

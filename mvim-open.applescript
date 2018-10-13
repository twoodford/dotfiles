on run argv
	set fname to item 2 of argv
	set fpath to item 1 of argv
	tell application "MacVim"
		set procName to name
		set windowz to windows
		set located to false
		repeat with wind in windowz
			set wnm to name of wind
			if wnm begins with fname then
				activate
				set index of wind to 1
				set located to true
			end if
		end repeat
	end tell
	if not located then
		do shell script "/opt/local/bin/mvim " & fpath
	end if
end run
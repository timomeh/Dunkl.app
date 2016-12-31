on run
	checkTime()
end run

on idle
	checkTime()
	return 60 * 5
end idle

on quit
	setDark(false)
	continue quit
end quit


to checkTime()
	set isItDarkScript to POSIX path of (path to resource "./is-it-dark")
	try
		do shell script isItDarkScript
		setDark(true)
	on error
		setDark(false)
	end try
end checkTime

to setDark(mode)
	if mode is not equal to getDark() then
		tell application "System Events"
			tell appearance preferences
				set dark mode to mode
			end tell
		end tell
	end if
end setDark

to getDark()
	tell application "System Events"
		tell appearance preferences
			get dark mode
		end tell
	end tell
end getDark

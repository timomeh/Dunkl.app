on run
	checkTime()
end run

on idle
	checkTime()
	return 60 * 15
end idle

on quit
	setDark(false)
	continue quit
end quit


to checkTime()
	set solunarCallPath to POSIX path of (path to resource "./callsolunar")
	set solunar to do shell script solunarCallPath
	if (current date) is greater than date getSunrise(solunar) and (current date) is less than date getSunset(solunar) then
		setDark(false)
	else
		setDark(true)
	end if
end checkTime

to getSunrise(solunar)
	set sunrise to extractBetween(solunar, "Sunrise: ", return)
	return sunrise
end getSunrise

to getSunset(solunar)
	set sunset to extractBetween(solunar, "Sunset: ", return)
	return sunset
end getSunset

to extractBetween(SearchText, startText, endText)
	set tid to AppleScript's text item delimiters -- save them for later.
	set AppleScript's text item delimiters to startText -- find the first one.
	set endItems to text of text item -1 of SearchText -- everything after the first.
	set AppleScript's text item delimiters to endText -- find the end one.
	set beginningToEnd to text of text item 1 of endItems -- get the first part.
	set AppleScript's text item delimiters to tid -- back to original values.
	return beginningToEnd -- pass back the piece.
end extractBetween

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

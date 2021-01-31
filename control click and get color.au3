#RequireAdmin

Global $handle = WinGetHandle("[CLASS:Qt5QWindowIcon]")

Opt("PixelCoordMode", 2)
Opt("MouseCoordMode", 2)

;~ ControlSend($handle,"","", "a")

;~ ControlClick($handle,"","","left",1,189, 281)

HotKeySet("{F2}","_Start")
HotKeySet("{F3}","_Exit")

While 1
	Sleep(100)
WEnd

Func _Start()

	While 1

	$Color1 = PixelGetColor(429, 102, $handle)
	$color2 = PixelGetColor(420, 100, $handle)
	If $Color1 = 0xFEF8F6 Then
		ControlClick($handle,"","","left",1,429, 102)
		Sleep(100)
	EndIf
	If $Color2 = 0xF04540 Then
		ControlClick($handle,"","","left",1,420, 100)
		Sleep(100)
	EndIf
	WEnd

EndFunc

Func _Exit()
	Exit
EndFunc
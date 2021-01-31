#RequireAdmin

Global $handle = WinGetHandle("[CLASS:Qt5QWindowIcon]")

Opt("PixelCoordMode", 2)
Opt("MouseCoordMode", 2)

HotKeySet("{F2}","_Start")
HotKeySet("{F3}","_Exit")

while 1
	sleep(100)
WEnd

Func _Start()
	while 1
	$cood = PixelSearch(6, 481,500, 694,0x000000,0,1,$handle)
	If IsArray($cood) Then
		ControlClick($handle,"","","left",1,$cood[0], $cood[1])
		Sleep(50)
	EndIf
	WEnd
EndFunc

Func _Exit()
	Exit
EndFunc
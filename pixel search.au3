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
	WinMove($handle,"",0,0,582, 1060)
	sleep(500)
	WinSetState($handle,"",@SW_MINIMIZE)
	Sleep(1000)
	WinSetState($handle,"",@SW_RESTORE)
	while 1
	$cood = PixelSearch(10, 557,571, 794,0x000000,0,1,$handle)
	If IsArray($cood) Then
		ControlClick($handle,"","","left",1,$cood[0], $cood[1])
		Sleep(50)
	EndIf
	WEnd
EndFunc

Func _Exit()
	Exit
EndFunc

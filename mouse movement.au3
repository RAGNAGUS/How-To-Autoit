#RequireAdmin
Global $handle = WinGetHandle("[CLASS:Qt5QWindowIcon]")

Opt("PixelCoordMode", 2)
Opt("MouseCoordMode", 2)

WinActivate($handle)

While 1
	_MouseClick("left",262,301,1)
	Sleep(500)
WEnd

Func _MouseClick($button,$x, $y, $click)
	If WinActive($handle) Then MouseClick($button,$x, $y, $click)
EndFunc

; more mouse function
MouseClickDrag("left",53, 151,379, 490,100)
MouseDown("Left")
MouseUp("left")
MouseMove(379, 490,100)
#RequireAdmin

Global $handle = WinGetHandle("[CLASS:Qt5QWindowIcon]")

WinActivate($handle)

HotKeySet("{F2}","Testbot")
HotKeySet("{F3}","_Exit")

While 1
	Sleep(300)
WEnd

Func Testbot()
	While 1
		_CheckActive("A")
		sleep(300)
	WEnd
EndFunc

Func _CheckActive($key)
	If WinActive($handle) Then Send($key)
EndFunc


Func _Exit()
	Exit
EndFunc
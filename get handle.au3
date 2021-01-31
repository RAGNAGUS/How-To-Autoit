#RequireAdmin

Global $handle = WinGetHandle("[CLASS:Qt5QWindowIcon]")

HotKeySet("e","_Exit")

 While 1
  $check = WinActive($handle)
	If $check Then
		MsgBox(0,"","Active")
	Else
		MsgBox(0,"","Not Active")
	EndIf
	Sleep(300)
 WEnd

 Func _Exit()
	Exit
 EndFunc
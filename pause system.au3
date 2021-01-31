HotKeySet("{F3}","_Pause")

Global $apause = False

While 1

	If Not $apause Then
		ConsoleWrite("Working!"&@CRLF)
		Sleep(300)
	Else
		ConsoleWrite("Stop Working!"&@CRLF)
		Sleep(300)
	EndIf

WEnd

Func _Pause()
	$apause = Not $apause
EndFunc
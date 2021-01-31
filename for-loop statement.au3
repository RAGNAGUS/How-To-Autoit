For $i = 1 To 5
	ConsoleWrite($i&@CRLF)
	Sleep(1000)
Next

For $i = 1 To 5 Step +2
	ConsoleWrite($i&@CRLF)
	Sleep(1000)
Next

For $i = 1 To 5
	ConsoleWrite($i&@CRLF)
	Sleep(1000)
	If $i = 3 Then ExitLoop
Next

For $i = 1 To 5
	ConsoleWrite($i&@CRLF)
	Sleep(1000)
	If $i = 3 Then ContinueLoop
Next

Local $localArray[] = ["A","B","C","D","E","F"]

For $i = 0 To 6
	ConsoleWrite($localArray[$i]&@CRLF)
	Sleep(1000)
Next
Local $i = 1
While $i <= 5
	ConsoleWrite($i&@CRLF)
	Sleep(500)
	$i = $i + 1
WEnd

Local $i = 1
Do
	ConsoleWrite($i&@CRLF)
	Sleep(500)
	$i = $i + 1
Until $i = 5

While 1
	ConsoleWrite("Inf Loop"&@CRLF)
	Sleep(500)
WEnd
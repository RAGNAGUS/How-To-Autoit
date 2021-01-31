#include<multiplication.au3>

HotKeySet("1","_Start")
HotKeySet("2","_Exit")

While 1
	Sleep(100)
WEnd

Func _Start()
	Local $ans = Multiple(2)
	MsgBox(0,"",$ans[0]&@CRLF& _
				$ans[1]&@CRLF& _
				$ans[2]&@CRLF& _
				$ans[3]&@CRLF& _
				$ans[4]&@CRLF& _
				$ans[5]&@CRLF& _
				$ans[6]&@CRLF& _
				$ans[7]&@CRLF& _
				$ans[8]&@CRLF& _
				$ans[9]&@CRLF& _
				$ans[10]&@CRLF& _
				$ans[11])
EndFunc

Func _Exit()
	Exit
EndFunc
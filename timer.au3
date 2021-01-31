Local $hTimer = TimerInit();

sleep(999)

Local $fDiff = TimerDiff($hTimer)

If $fDiff >= 1000 Then
	MsgBox(0,"","Time")
Else
	MsgBox(0,"","Time Out")
EndIf


MsgBox(0,"",$fDiff)
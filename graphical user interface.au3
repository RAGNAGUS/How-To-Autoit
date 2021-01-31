#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
Global $sw = 0
Global $aPause = False

Opt("GUIOnEventMode", 1)
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 277, 182, 192, 124)
GUISetOnEvent($GUI_EVENT_CLOSE, "Form1Close")
GUISetOnEvent($GUI_EVENT_MINIMIZE, "Form1Minimize")
GUISetOnEvent($GUI_EVENT_MAXIMIZE, "Form1Maximize")
GUISetOnEvent($GUI_EVENT_RESTORE, "Form1Restore")
$Button1 = GUICtrlCreateButton("Button1", 101, 40, 75, 25)
GUICtrlSetOnEvent(-1, "Button1Click")
$Button2 = GUICtrlCreateButton("Button2", 101, 96, 75, 25)
GUICtrlSetOnEvent(-1, "Button2Click")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	Sleep(100)
	Select
		Case $sw = 1
			_start()
			$sw = 0
	EndSelect
WEnd

Func _start()
	While 1
	if Not $aPause Then
		MsgBox(0,"","Hi")
	EndIf
	WEnd
EndFunc

Func aPause()
	$aPause = Not $aPause
EndFunc

Func Button1Click()
	$sw = 1
EndFunc
Func Button2Click()
	aPause()
EndFunc
Func Form1Close()
	Exit
EndFunc
Func Form1Maximize()

EndFunc
Func Form1Minimize()

EndFunc
Func Form1Restore()

EndFunc

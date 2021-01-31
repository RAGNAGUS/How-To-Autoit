#include <Array.au3>
#include <Constants.au3>
#include <GUIConstantsEx.au3>
#include <GDIPlus.au3>
#include <WinAPI.au3>
#include <Color.au3>

Func Searchcolor($GetTitle, $X, $Y, $X1, $Y1, $color, $shade = 4)
	$rectW = $X1 - $X
	$rectH = $Y1 - $Y
	$F_RGB = _ColorGetRGB($Color)
	_GDIPlus_Startup()
	$handle = WinGetHandle($GetTitle)
	$hDCSrc = _WinAPI_GetDC($handle)
	$hDC = _WinAPI_CreateCompatibleDC($hDCSrc)
    $hBitmap = _WinAPI_CreateCompatibleBitmap($hDCSrc,$rectW,$rectH)
	$hold = _WinAPI_SelectObject($hDC,$hBitmap)
	_WinAPI_BitBlt($hDC,0,0,$rectW,$rectH,$hDCSrc,$X,$Y,0x00CC0020)
	_WinAPI_SelectObject($hDC,$hold)
	$bmp = _GDIPlus_BitmapCreateFromHBITMAP($hBitmap)
    $BitmapData = _GDIPlus_BitmapLockBits($bmp, 0, 0, $rectW, $rectH, $GDIP_ILMREAD,$GDIP_PXF24RGB)
	$Stride = DllStructGetData($BitmapData, "Stride")
	$Scan0 = DllStructGetData($BitmapData, "Scan0")
	For $row = 0 * 2 To $rectH
		Local $tPixel = DllStructCreate("byte[" & $Stride * $row + 1 & "];",$Scan0 + $row * $Stride)
		For $col = 0 * 2 To $rectW
			ConsoleWrite('$row = ' & $row & '$col = ' & $col & @CRLF)
			If DllStructGetData($tPixel,1,$col*3 + 1) >= $F_RGB[2] - $shade And DllStructGetData($tPixel,1,$col*3 + 1) <= $F_RGB[2] + $shade Then
				If DllStructGetData($tPixel,1,$col*3 + 2) >= $F_RGB[1] - $shade And DllStructGetData($tPixel,1,$col*3 + 2) <= $F_RGB[1] + $shade Then
					If DllStructGetData($tPixel,1,$col*3 + 3) >= $F_RGB[0] - $shade And DllStructGetData($tPixel,1,$col*3 + 3) <= $F_RGB[0] + $shade Then
						Return StringSplit($col + $X & "/" & $row + $Y, "/", 6)
					EndIf
				EndIf
			EndIf
		Next
	Next
	Return StringSplit("0" & "/" & "0", "/", 6)
    _GDIPlus_BitmapUnlockBits($bmp, $BitmapData)
	_WinAPI_ReleaseDC($handle, $hDC)
	_WinAPI_DeleteObject($hold)
    _GDIPlus_BitmapDispose($bmp)
    _GDIPlus_Shutdown()
	EndFunc   ;==>Searchcolor

;ตัวอย่าง
Local $test = Searchcolor("A2", 1, 1, 1800,900,0x94D6D3,4)
ConsoleWrite('X = ' & $test[0] & 'Y = ' & $test[1] & @CRLF)
Global $check = 3550

Func Multiple($num)
	Local $ans[30]
	For $i = 1 To 12 Step +1
		$ans[$i-1] = $i * $num
	Next
	Return $ans
EndFunc
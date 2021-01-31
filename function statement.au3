SayHi()
MsgBox(0,"",Plus(2,3))

Func SayHi()

	MsgBox(0,"","Hi")

EndFunc

Func Plus($x, $y)
	$sum = $x + $y
	Return $sum
EndFunc
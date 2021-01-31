; we can use Local variables only in function
Local $localArray[] = ["A","B","C","D","E","F"]

; we can use Global variables every where
Global $globalArray[] = ["A","B","C","D","E","F"]

MsgBox(0,"",$localArray[0])

; 2 dimension array
Local $twoDimensionArray[][] = [["A","B"],["C","D"]]

MsgBox(0,"",$twoDimensionArray[0][0])

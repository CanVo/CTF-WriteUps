Dim msg

Function flagDecode(Byval String, Byval Num)
	Dim stringCheck: stringCheck = "Red"
	Dim stringCheck2: stringCheck2 = "red"
	Dim calc: calc = Num MOD 10
	msg = "Wrong secret word, sorry!"

	If String = stringCheck Or String = stringCheck2 Then
		If calc = 1 Then
   			flagSpawn calc
		ElseIf calc = 2 Then
			flagSpawn calc 
		ElseIf calc = 3 Then
			flagSpawn calc
		ElseIf calc = 4 Then
			flagSpawn calc
		ElseIf calc = 5 Then
			flagSpawn calc
		ElseIf calc = 6 Then
			flagSpawn calc
		ElseIf calc = 7 Then
			flagSpawn calc
		ElseIf calc = 8 Then
			flagSpawn calc
		ElseIf calc = 9 Then
			flagSpawn calc
		Else
			flagSpawn calc
		END If
	Else
		msgbox msg, VBCritical, "Better luck next time!"
	End If
End Function







Function flagSpawn(ByVal switch)
	msg = "Choose a different number, please."

	if switch >= 5 Then
		flagDecision
	ElseIf switch < 5 Then
		msgbox msg, VBCritical, "Nope, sorry!"	
	End If
End Function







Function flagDecision()
	msg = "Okay, bye"
	result = MsgBox ("Do you want the flag?", vbYesNo, "Wow, you got this far?")

	Select Case result
	Case vbYes
    		final
	Case vbNo
    		msgbox msg, VBCritical, "Wow, interesting�"
	End Select
End Function







Function final()
	Dim num: num = 10
	Dim msg: msg = " "

	Do Until num = 0
		if num = 9 Then
			msg = msg & " letter"
		ElseIf num = 3 Then
			msg = msg & " string"
		ElseIf num = 6 Then
			msg = msg & " word"
		ElseIf num = 7 Then
			msg = msg & " each"
		ElseIf num = 5 Then
			msg = msg & " in"
		ElseIf num = 1 Then
			msg = msg & " main"
		ElseIf num = 2 Then
			msg = msg & " in"
		ElseIf num = 4 Then
			msg = msg & " super"
		ElseIf num = 8 Then
			msg = msg & " of"
		Else
			msg = msg & " Second"
		End If
		num = num - 1
	Loop
	
	msgbox msg, VBExclamation, "This was fun."
	
End Function







Function main()
	Dim magicNumber: magicNumber = 99 + 603 + 951 + 3120 + 1337 + 1234 + 999
	Dim superStrings: superString = "After, Board, Hug, Snail, Adventure, Empress, Red" 	

	strInputString = InputBox("Enter the secret word, please:", "Can's Secret Flag Generator v0.97")
	strInputNum = InputBox("Enter the secret number, please:", "Can's Secret Flag Generator v0.97")

	flagDecode strInputString, strInputNum
End Function

main()


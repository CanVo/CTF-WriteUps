
## Samuel's Code

**Category:** Reverse

**Points:** 175

**Description:** I got hired at this startup and they told me to look at this program their old employee made. They told me he left a message in it, but I don't know how to get it.

**Hint:** None.

### VirtualBoy.vbs
``` vbs
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
    		msgbox msg, VBCritical, "Wow, interestingÖ"
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

```

## Write Up

We are given a VBScript file. When ran on a Windows host, it prompts us for a secret word and secret number. Based in the flagDecode function, it checks and needs the word "Red" inorder to continue the run. Not providing it will end the program and alert us that we need to choose another word. It also runs through an if check to send the remainder of the inputted value after being mod'd by 10 to flagSpawn.
``` vbs
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
```

After passing through flagDecode, it calls flagSpawn where it checks if the number entered has a remainder greater than 5 after being mod'd by 10. Not doing so will alert us that we need to choose another number and end the program. 
``` vbs
Function flagSpawn(ByVal switch)
	msg = "Choose a different number, please."

	if switch >= 5 Then
		flagDecision
	ElseIf switch < 5 Then
		msgbox msg, VBCritical, "Nope, sorry!"	
	End If
End Function
```

After passing through flagSpawn, it calls flagDecision where it prompts a text box asking if we want the flag.

``` vbs
Function flagDecision()
	msg = "Okay, bye"
	result = MsgBox ("Do you want the flag?", vbYesNo, "Wow, you got this far?")

	Select Case result
	Case vbYes
    		final
	Case vbNo
    		msgbox msg, VBCritical, "Wow, interestingÖ"
	End Select
End Function
```

Choosing "yes" will call the last method final.

``` vbs
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
```


It then prompts us that the flag is generated from every second letter in each word in superStrings in main method. 

``` vbs
Function main()
	Dim magicNumber: magicNumber = 99 + 603 + 951 + 3120 + 1337 + 1234 + 999
	Dim superStrings: superString = "After, Board, Hug, Snail, Adventure, Empress, Red" 	

	strInputString = InputBox("Enter the secret word, please:", "Can's Secret Flag Generator v0.97")
	strInputNum = InputBox("Enter the secret number, please:", "Can's Secret Flag Generator v0.97")

	flagDecode strInputString, strInputNum
End Function
```

Concatatenating the letters results in "foundme"

The flag is: AHCTF{foundme}

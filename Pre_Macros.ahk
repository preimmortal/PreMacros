#SingleInstance force

#IfWinActive Guild Wars 2

;DEBUG MOUSE POSITION
F8::
	MouseGetPos, X, Y
	MsgBox, X=%X% Y=%Y%
	Clipboard = [%X%,%Y%]
Return

F7::preAutoSubmit()

preAutoSubmit(Speed=10)
{
	static Toggle
	Toggle := !Toggle
	Period := Toggle ? Speed : "off"
	
	SetTimer, SubmitClick, %Period%
	Return
	
	SubmitClick:
	MouseGetPos, X, Y
	Click
	Click
	Sleep 300
	MouseMove, 966,648
	Click
	Sleep 200
	MouseMove, %X%, %Y%
	Return
}

;OPTIONS CONFIG FOR 1920x1200
F10::
	AcceptX := 1033
	AcceptY := 645
	
	;Open Options Menu
	Send, {F11}
	Sleep 100
	
	;Set back to defaults
	MouseMove, 716, 472
	Click
	Sleep 100
	MouseMove, 794, 889
	Click
	Sleep 100
	MouseMove, 794, 889
	Click
	Sleep 100
	MouseMove, 972, 646
	Click
	Sleep 500
	
	;Set Dodge
	MouseMove, 982, 463
	Click 2
	Sleep 100
	Send, {Shift}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500
	
	;Set Heal
	MouseMove, 982, 731
	Click 2
	Sleep 100
	Send, {v}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500
	
	;Set Util1
	MouseMove, 982, 747
	Click 2
	Sleep 100
	Send, {XButton2}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500

	;Set Util2
	MouseMove, 982, 766
	Click 2
	Sleep 100
	Send, {XButton1}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500
	
	;Set Util3
	MouseMove, 982, 785
	Click 2
	Sleep 100
	Send, {c}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500
	
	;Set Elite Skill
	MouseMove, 982, 802
	Click 2
	Sleep 100
	Send, {x}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500
	
	Click, WheelDown
	Sleep, 500
	
	;Set Elite Skill
	MouseMove, 982, 847
	Click 2
	Sleep 100
	Send, {t}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500
	
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	Click, WheelDown
	Sleep, 200
	
	;Set ActionCamera
	MouseMove, 982, 845
	Click 2
	Sleep 100
	Send, {Tab}
	MouseMove, AcceptX, AcceptY
	Click
	
Return

; Primary AboutFace Master Function
F9::
	p := "ele"

	if(p = "ele"){
		AboutFaceFunction("4")
	}else if(p = "eleu"){
		AboutFaceFunction("5")
	}else if (p = "mes"){
		AboutFaceFunctionMes("2")
		Send, {-}
	}else if (p = "rev"){
		AboutFaceFunction("XButton2")
	}else{ 
		; default action (thief)
		AboutFaceFunction("v")
	}
Return

AboutFaceFunctionMes(Kee)
{
	Sleep, 10
	Click, Left
	Sleep 50
	Send {-}
	Sleep 5
	Click, {Right Down}
	Sleep, 5
	SendInput, %Kee%
	Sleep, 300
	Send, {Right Up}
	Sleep, 25
	Click, Left
	Click, Right
	Return
}

AboutFaceFunction(Kee)
{
	Sleep, 10
	Click, Left
	Sleep 50
	Send {-}
	Sleep 15
	Click, {Right Down}
	Sleep, 10
	SendInput, %Kee%
	Sleep, 500
	Send, {Right Up}
	Sleep, 25
	Click, Left
	Click, Right
	Return
}

auto_state := 0

NumpadEnter::preAutoClick()

preAutoClick(Speed=10)
{
	static Toggle
	Toggle := !Toggle
	Period := Toggle ? Speed : "off"
	
	SetTimer, ClickClick, %Period%
	Return
	
	ClickClick:
	Click
	Return
}





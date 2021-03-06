#SingleInstance force

#IfWinActive Guild Wars 2

;DEBUG MOUSE POSITION
F8::
	MouseGetPos, X, Y
	MsgBox, X=%X% Y=%Y%
	Clipboard = [%X%,%Y%]
Return



F7::preAutoForge()

preAutoForge(Speed=10)
{
	static Toggle
	Toggle := !Toggle
	Period := Toggle ? Speed : "off"
	
	SetTimer, SubmitClick, %Period%
	Return
	
	SubmitClick:
	MouseMove, 544,323
	Click
	Click
	Sleep 50
	MouseMove, 604,323
	Click
	Click
	Sleep 50
	MouseMove, 664,323
	Click
	Click
	Sleep 50
	MouseMove, 720,323
	Click
	Click
	Sleep 50
	MouseMove, 1100,768
	Click
	Click
	Sleep 50
	MouseMove, 1100,768
	Click
	Click
	Send, f
	Sleep 1500
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
	Sleep 500

	Click, WheelDown
	Sleep, 300
	Click, WheelDown
	Sleep, 300
	Click, WheelDown
	Sleep, 300
	Click, WheelDown
	Sleep, 300
	Click, WheelDown
	Sleep, 300
	Click, WheelDown
	Sleep, 300
	Click, WheelDown
	Sleep, 300
	Click, WheelDown
	Sleep, 300
	Click, WheelDown
	Sleep, 300

    ;Set Dive
	MouseMove, 1126, 572
	Click 2
	Sleep 100
	Send, {Shift}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500

    ;Set Mounts
	MouseMove, 982, 607
	Click 2
	Sleep 100
	Send, {Ctrl Down}
    Send, {1}
    Send, {Ctrl Up}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500

	MouseMove, 982, 622
	Click 2
	Sleep 100
	Send, {Ctrl Down}
    Send, {2}
    Send, {Ctrl Up}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500

	MouseMove, 982, 639
	Click 2
	Sleep 100
	Send, {Ctrl Down}
    Send, {3}
    Send, {Ctrl Up}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500
	
	MouseMove, 982, 660
	Click 2
	Sleep 100
	Send, {Ctrl Down}
    Send, {4}
    Send, {Ctrl Up}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500

	MouseMove, 982, 676
	Click 2
	Sleep 100
	Send, {Ctrl Down}
    Send, {5}
    Send, {Ctrl Up}
	MouseMove, AcceptX, AcceptY
	Click
	Sleep 500

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





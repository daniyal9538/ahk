
; for showing taskview
~MButton::
 KeyWait, MButton			; wait for z to be released
    KeyWait, MButton, D T0.2		; and pressed again within 0.2 seconds
    if ErrorLevel 			; timed-out (only a single press)
        Send, ^
    Else
        Send, #{Tab}
		
	
Return

; for showing desktop
~RButton::
 KeyWait, RButton			; wait for z to be released
    KeyWait, RButton, D T0.2		; and pressed again within 0.2 seconds
    
	if ErrorLevel 			; timed-out (only a single press)
       Send, ^
    Else
         Send, #d
	
Return

RButton & WheelUp::
Send {Volume_Up}
Return

RButton & WheelDown::
Send {Volume_Down}
Return

RButton & MButton::
Send {Volume_Mute}
Return



; script for putting laptop to sleep by quickly double pressing f8
~F8::
 KeyWait, F8			; wait for z to be released
    KeyWait, F8, D T0.2		; and pressed again within 0.2 seconds
    
	if ErrorLevel 			; timed-out (only a single press)
       Send, ^
    Else
         DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0)
	
Return


; suspend hotkeys ctrl+alt+s
^!s::Suspend  ; Ctrl+Alt+S
Return


RButton & XButton2::
SendEvent {LWin down}{LCtrl down}{Right down}{LWin up}{LCtrl up}{Right up}  
Return

RButton & XButton1::
SendEvent {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}  
Return

; script for horizontal script
+WheelDown::WheelRight
Return

+WheelUp::WheelLeft
Return
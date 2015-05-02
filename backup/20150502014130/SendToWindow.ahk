SendToWindow(control,string,title)
{
;MsgBox, Send %STRING% ?
WinActivate, %title%
WinWaitActive, %title%
ControlSetText, %control%, %string%, %title%
;msgbox, "about to hit return"

controlSend, %control%, {alt down}{numpad1}{numpad5}{numpad5}{alt up}{enter}, %title%
   
return
}
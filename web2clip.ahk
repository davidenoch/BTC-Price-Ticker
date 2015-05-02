Web2Clip(URL)                ;Copy contents of web page to clipboard
{ 
  clipboard := ""
  Run % "chrome.exe  --new-window " URL
  Sleep 200
 
  winwait, %URL%
  WinActivate, %URL%
  WinWaitActive, %URL% 
  send ^a^c
  ;controlSend, Chrome_RenderWidgetHostHWND1, {control up}a{control down}{control up} c{control down}, %URL%
  ClipWait, 1,1
  send ^w
  Return %Clipboard%
                     
}
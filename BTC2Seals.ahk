BTC2Seals()
{

SEALTITLE := "SwC Room Chat"
CONTROL:= "Edit1"
PRICE := GetBTC()
winactivate, %SEALTITLE%
WinGetActiveTitle, title

STRING := "MO BTC update: Ave price: "  . PRICE

sendplay, %string%
send, {enter}
sleep 500
winactivate, %SEALTITLE%
winwaitactive, %sealtitle%
STRING:= "One dollar ~ " Round(1000/Price,2) . " chip"
STRING .= " 1 chip ~ " . Round(PRICE/10) 
sendplay, %string%
send, {alt down}{numpad1}{numpad5}{numpad5}{alt up}{enter}
;msgbox, %string%
/*
 STRING:= "One dollar ~ " Round(1000/Price,2) . " chip"
send, {enter}
STRING := "  /   $1 ~ " . Round(1000/Price,2) . " chip / "
STRING:="One dollar ~ " Round(1000/Price,2) . " chip"

winactivate, %SEALTITLE%
send, " 1 chip ~ " . Round(PRICE/10) 
send, {alt down}{numpad1}{numpad5}{numpad5}{alt up}{enter} 

STRING2 := " Average BTC price: " . PRICE 
STRING3 := "One chip ~ " . Round(PRICE/10) . "cents"
STRING4 := "One dollar ~ " Round(1000/Price,2) . " chip"
Loop, 4
{
STRING := STRING%A_Index%
SendToWindow(CONTROL,STRING,SEALTITLE)
}
*/
return
}
#include SendToWindow.ahk
#include GetBTC.txt

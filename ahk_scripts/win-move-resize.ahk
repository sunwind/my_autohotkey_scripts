#SingleInstance force
#NoTrayIcon
;WinGetPos ,,,deskWidth,deskHeight ,ahk_class Progman

#j::
wid:=WinActive("A") ;;get activate window id 
WinGetPos ,x,y,,,ahk_id %wid%
WinMove  ,ahk_id %wid%,, x,y+40
return

#k::
wid:=WinActive("A")
WinGetPos ,x,y,,,ahk_id %wid%
WinMove  ,ahk_id %wid%,, x,y-40
return

#h::
wid:=WinActive("A")
WinGetPos ,x,y,,,ahk_id %wid%
WinMove  ,ahk_id %wid%,, x-50,y
return

#l::
wid:=WinActive("A")
WinGetPos ,x,y,,,ahk_id %wid%
WinMove  ,ahk_id %wid%,, x+50,y
return

^#j::
wid:=WinActive("A")
WinGetPos ,x,y,w,h,ahk_id %wid%
WinMove  ,ahk_id %wid%,,x+w*0.1,y+h*0.1,w*0.8,h*0.8
return

^#k::
wid:=WinActive("A")
WinGetPos ,x,y,w,h,ahk_id %wid%
WinMove  ,ahk_id %wid%,,x-w*0.05,y-h*0.05,w*1.1,h*1.1
return



send2Pos1(wid=0){
if wid=0
wid:=WinActive("A")
WinGetPos ,deskX,deskY,deskWidth,deskHeight ,ahk_class Progman
WinMove ,ahk_id %wid%,,%deskX%,%deskY%,deskWidth/2,%deskHeight%
}
send2Pos2(wid=0){
if wid=0
wid:=WinActive("A")
WinGetPos ,deskX,deskY,deskWidth,deskHeight ,ahk_class Progman
WinMove ,ahk_id %wid%,,deskWidth/2,%deskY%,deskWidth/2,%deskHeight%
}
send2Pos3(wid=0){
if wid=0
wid:=WinActive("A")
WinGetPos ,deskX,deskY,deskWidth,deskHeight ,ahk_class Progman
WinMove ,ahk_id %wid%,,%deskX%,%deskY%,%deskWidth%,deskHeight/2
}
send2Pos4(wid=0){
if wid=0
wid:=WinActive("A")
WinGetPos ,deskX,deskY,deskWidth,deskHeight ,ahk_class Progman
WinMove ,ahk_id %wid%,,%deskX%,deskHeight/2,%deskWidth%,deskHeight/2
}
send2PosCenter(wid=0){
if wid=0
wid:=WinActive("A")
WinGetPos ,deskX,deskY,deskWidth,deskHeight ,ahk_class Progman
WinMove ,ahk_id %wid%,,deskWidth*0.1,deskHeight*0.1,deskWidth*0.8,deskHeight*0.8
}

#f1::Send2Pos1( )
#f2::Send2Pos2( )
#f3::Send2Pos3( )
#f4::Send2Pos4( )
#f5::Send2PosCenter( )
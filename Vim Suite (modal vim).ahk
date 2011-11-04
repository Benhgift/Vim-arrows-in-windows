; Modal_Vim.ahk
; Initial Build: Rich Alesi
; Friday, May 29, 2009

#Persistent
#SingleInstance, Force
SetKeyDelay, -1
CoordMode, Tooltip, Screen
modal =
context =
num =

SetTimer, vim, 100

; Disable CAPSLOCK
$CAPSLOCK::
return

$+CAPSLOCK::
return


vim:
While GetKeyState("CAPSLOCK", "P")
{
    vimize()
    if modal !=
      Tooltip, %context%: %num%, 60, 10
    else if num !=
      Tooltip, %num%, 60, 10
    else
      Tooltip
    SetTimer, vim, off
} 
modal =
num =
unvimize()
SetTimer, vim, on
Tooltip
Return

vimize()
{
  Gui 11:Show, Minimize, vimOn ; Hide,
}

unvimize()
{
  Gui 11:Destroy
}	

#IFWinExist vimOn

; Multiples
1:: num = %num%1
2:: num = %num%2
3:: num = %num%3
4:: num = %num%4
5:: num = %num%5
6:: num = %num%6
7:: num = %num%7
8:: num = %num%8
9:: num = %num%9
0:: num = %num%0

; ~ toggle case

; Navigation

a::
if modal =
   send, {Home}
else
   Send, +{Home}
   GoSub, Run_Mode
return

e::
if modal =
   send, {end}
else
   Send, +{End}
   GoSub, Run_Mode
return

h::Send, {Left}
j::Send, {Down}
k::Send, {Up}
l::Send, {Right}
+h:: Send, ^{Shift Down}{Left}{Shift Up}
+j:: Send, {Shift Down}{Down}{Shift Up}
+k:: Send, {Shift Down}{Up}{Shift Up}
+l:: Send, {Shift Down}{Right}{Shift Up}
+w:: Send, {Control Down}{Shift Down}{Right}{Shift Up}{Control Up}
+b:: Send, {Control Down}{Shift Down}{Left}{Shift Up}{Control Up}

space::
Loop,8
{
     Send {down}
} 
return

+space::
Loop,8
{
     Send {up}
} 
return

w::
if modal =
   send, ^{RIGHT %num%}
else 
   Send, +^{RIGHT %num%}
   GoSub, Run_Mode
return

b::
if modal =
   Send, ^{LEFT %num%}
else
   Send, +^{LEFT %num%}
   GoSub, Run_Mode
return
      
; Searching   

/::
  send, ^f ;; search
  unvimize()
  return
^/::
  send, ^h ;; search
  unvimize()
  return
n::Send {F3}

; Pasting

p::
IfInString, clipboard, `n
{
   Send, {END}{ENTER}^v{DEL}
}
Else
{
   Send, ^v
}
return

+p::
IfInString, clipboard, `n
{
   Send, {Home}^v
}
Else
{
   Send, ^v
}
return

; Indent and Undo
+,::Send, {Home}{HOME}{Del}
+.::Send, {Home}`t
u::Send, ^z
+u:: Send, ^y


; Modal
d::
if modal =
{
   context = Delete Mode
   modal = x
   ;GoSub, Modal_Input
}
else if modal = x
{
   GoSub, GetLineSelection
   GoSub, Run_Mode
}
return

y::
if modal =
{
   context = Yank Mode
   modal = c
   ;GoSub, Modal_Input
}
else if modal = c
{
   GoSub, GetLineSelection
   GoSub, Run_Mode
}
return

r::Reload

#IfWinExist

; ===== SubRoutines =====

GetLineSelection:
   Send, {Home}{Shift Down}{End}{DOWN %num%}{Home}{Shift Up}
Return

Run_Mode:
   Send, ^%modal%
   Send {Left}{RIGHT}
   num =
   modal =
return

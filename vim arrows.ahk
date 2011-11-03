#Persistent
#SingleInstance, Force
SetKeyDelay, -1
CoordMode, Tooltip, Screen

$#::
return

#h::
Send {left down}
return

#l::
Send {right down}
return

#j::
Send {down down}
return

#k::
Send {up down}
return

;////////////////basic VIM movement

#space::
Loop,6
{
     Send {down}
} 
return

#+space::
Loop,6
{
     Send {up}
} 
return

; //////////////////////move up or down 6 times

#+h::
Send {shift down}{left}
return

+#l::
Send {shift down}{right}
return

+#j:: 
Send {shift down}{down}
return

#+k::
Send {shift down}{up}
return

; ////////////////////// highlight words

^#h::
Send {control down}{left}
return

^#l::
Send {control down}{right}
return

^#j:: 
Send {control down}{down}
return

^#k::
Send {control down}{up}
return

; //////////////////////////move quickly by skipping words

^+#h::
Send {shift down}{control down}{left}
return

^+#l::
Send {shift down}{control down}{right}
return

^+#j:: 
Send {shift down}{control down}{down}
return

^+#k::
Send {shift down}{control down}{up}
return

;////////////////////////highlight quickly by skipping words

/*RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 0

RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1

///////////////////////// Put those scripts into a blank .atk file,
one at a time, to enable and disable the win + L == lockscreen effect, respectively
*/
#h::
Send {left}
return

#l::
Send {right}
return

#j::
Send {down}
return

#k::
Send {up}
return

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

/*RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 0

RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1

^^^ Put those scripts into a blank .atk file, one at a time, to enable and disable the win + L == lockscreen effect, respectively
*/
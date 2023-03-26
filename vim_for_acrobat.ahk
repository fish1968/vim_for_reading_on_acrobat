#If WinActive("ahk_class AcrobatSDIWindow")
h::
    if (inAcrobatSearchMode)
        Send h
    else
        Send {Left}
return

j::
    if (inAcrobatSearchMode)
        Send j
    else
        sendinput {wheeldown 4}
return

d::
    if (inAcrobatSearchMode)
        Send d
    else
        Send {wheeldown 20}
return

k::
    if (inAcrobatSearchMode)
        Send k
    else
;        Send {Up 4}
        sendinput {wheelup 4}
return

u::
    if (inAcrobatSearchMode)
        Send u
    else
;        Send {Up 50}
        sendinput {wheelup 20}
return

l::
    if (inAcrobatSearchMode)
        Send l
    else
        Send {Right}
return

n::
    if (inAcrobatSearchMode)
        Send n
    else
        Send {F3}{Esc}
return

+n::
    if (inAcrobatSearchMode)
        Send N
    else
        Send +{F3}{Esc}
return

+g::
    if (inAcrobatSearchMode)
        Send G
    else
        Send {End}
return

g::
    if (inAcrobatSearchMode) {
        Send g
        return
    }

    if (A_PriorHotkey <> "g" or A_TimeSincePriorHotkey > 400) {
        ; Too much time between presses, so this isn't a double-press.
        KeyWait, g
        return
    }

    Send {Home}
return

/::
    if (inAcrobatSearchMode) {
        Send /
        return
    }

    inAcrobatSearchMode := true
    Send ^f
return

Esc::
    inAcrobatSearchMode := false
    Send {Esc}
    Sleep, 100
    Send {Esc}
return

^[::
    inAcrobatSearchMode := false
    Send {Esc}
return


;go back into normal mode after scrolling with any control command

^e::
    inAcrobatSearchMode := false
;    Send {Esc}{Down}
    Send {ESC}
    sendinput {wheeldown 4}
return

^y::
    inAcrobatSearchMode := false
;    Send {Esc}{Up}
    Send {ESC}
    sendinput {wheelup 4}
return

^f::
    Send ^f
    inAcrobatSearchMode := true
return

^b::
    inAcrobatSearchMode := false
    Send {Esc}{PgUp}
return

i::
    if (inAcrobatSearchMode) {
        Send i
    } else {
        inAcrobatSearchMode := true
        ; Usually it would open the right menu for starting editing
        Click, Right
        Send x
        sleep, 100
        Click, Left
    }
return
#IfWinActive

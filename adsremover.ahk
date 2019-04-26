#singleinstance force
SetTitleMatchMode, 2
; F1::
;     kakaoId := WinExist("ahk_class EVA_Window_Dblclk")
;     Control, hide , , EVA_Window4, ahk_id %kakaoId%

;     WinGetPos, X, Y, kakaoWidth, kakaoHeight, ahk_id %kakaoId%

;     realHeight := kakaoHeight - 101
;     WinSet, Region, 0-0 W%kakaoWidth% H%realHeight%, ahk_id %kakaoId%
;     WinSet, Redraw,, ahk_id %kakaoId%
;     return

Loop
{
    kakaoId := WinExist("ahk_class EVA_Window_Dblclk")
    IfNotEqual, %kakaoId%, 0x0 
    {
            WinGetPos, X, Y, kakaoWidth, kakaoHeight, ahk_id %kakaoId%
            realHeight := kakaoHeight - 101
            realWidth := kakaoWidth - 2
            WinSet, Region, 0-0 W%kakaoWidth% H%realHeight%, ahk_id %kakaoId%
            WinSet, Redraw,, ahk_id %kakaoId%
            Control, hide , , EVA_Window4, ahk_id %kakaoId%
    }
    Sleep, 250
}

#q::ExitApp
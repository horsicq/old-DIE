;@goto exit

; #########################################################################

    ; --------------------------------------
    ; This plugin was written by UsAr
    ;  thanx =TS= for some sources :)
    ; --------------------------------------

; #########################################################################

    .386
    .model flat,stdcall
    option casemap:none

; #########################################################################

    include     windows.inc
    include     Strings.mac
    include     TEB.inc
    include     Macros.mac
    include     my.mac
    include_    kernel32
    include_    user32
    include_    comdlg32
    include_    \usasm\usr\PE_Tools\yzPELib\lib\yzpelib

    WndProc     PROTO :DWORD,:DWORD,:DWORD,:DWORD

; #########################################################################

.data
    PlugName    db "PackersKit 0.1",0
    infostr     db "PackersKit 0.1 by UsAr",0

; #########################################################################

.data?
    hInstance       dd ?
    info            dd ?
    work            dd ?
    fsize           dd ?
    offs            dd ?
    pt              dd ?
    hwnd            dd ?
    hDie            dd ?
    hInfo           dd ?
    hStatus         dd ?
    hPlugin         dd ?
    hCaption        dd ?
    hList           dd ?
    lpFileName      dd ?
    szProgramPath   db 1024 dup (?)
    szBuffer        db 1024 dup (?)
    PlugsArray      dd 256 dup (?)
    bClear          db ?

; #########################################################################

.code
DllEntry proc instance:DWORD,reason:DWORD,unused:DWORD

    .if reason == DLL_PROCESS_ATTACH
        m2m     hInstance,instance
    .endif
    return  TRUE

DllEntry endp

; #########################################################################

DiePlugName proc
    lea     eax,[PlugName]
    ret
DiePlugName endp

; #########################################################################

DiePlugProc proc die_hwnd,file_name,die_name
    m2m     lpFileName,file_name
    m2m     hDie,die_hwnd
    invoke  SetWindowText,hInfo,addr infostr
    .if $invoke(lstrlen,file_name)
        invoke  DialogBoxParam,hInstance,1000,die_hwnd,addr WndProc,0
    .endif
    return  TRUE
DiePlugProc endp

; #########################################################################

DiePlugHwnd proc inf,wrk
    m2m     hInfo,inf
    m2m     hStatus,wrk
    return  TRUE
DiePlugHwnd endp

; #########################################################################

DiePlugPe proc file_ptr,file_size,file_offset
    m2m     pt,file_ptr
    m2m     fsize,file_size
    m2m     offs,file_offset
    return  TRUE
DiePlugPe endp

; #########################################################################

DiePlugHwndEx proc die_panel,die_plugst
    m2m     hCaption,die_plugst
    m2m     hPlugin,die_panel
    return  TRUE
DiePlugHwndEx endp

; #########################################################################

WndProc proc hWin,uMsg,wParam,lParam
local hff:DWORD,fdPreset:WIN32_FIND_DATA,hPlug:DWORD

    pusha
    mov     eax,uMsg
    switch  eax
    case WM_INITDIALOG
        invoke  SetParent,hWin,hPlugin
        invoke  EnableWindow,hDie,TRUE
        mov     hList,$invoke(GetDlgItem,hWin,1004)

        invoke  GetModuleFileName,hInstance,offset szProgramPath,sizeof szProgramPath
        or      ecx,-1
        std
        mov     edi,offset szProgramPath + sizeof szProgramPath
        mov     al,'\'
        repne   scasb
        mov     byte ptr [edi+2],0
        cld
        invoke  lstrcpy,offset szBuffer,offset szProgramPath
        invoke  lstrcat,offset szBuffer,$CT0("engines\\")
        invoke  SetCurrentDirectory,offset szBuffer
        invoke  FindFirstFile,$CT0("*.dll"),addr fdPreset
        cmp     eax,INVALID_HANDLE_VALUE
        jz      @stopplugsearch
        mov     hff,eax
        lea     edi,PlugsArray
        .while eax
            mov     eax,fdPreset.dwFileAttributes
            and     eax,FILE_ATTRIBUTE_DIRECTORY
            .if !eax
                invoke  LoadLibrary,addr fdPreset.cFileName
                mov     hPlug,eax
                invoke  GetProcAddress,eax,$CT0("PlugInit")
                .if eax
                    push    lpFileName
                    push    hStatus
                    push    hInfo
                    call    eax
                    .if eax
                        invoke  SendMessage,hList,LB_ADDSTRING,0,eax
                        mov     eax,hPlug
                        stosd
                    .else
                        invoke  FreeLibrary,hPlug
                    .endif
                .endif
             .endif
            invoke  FindNextFile,hff,addr fdPreset
        .endw
        @stopplugsearch:

        lea     eax,PlugsArray
        .if eax == edi
            invoke  SetWindowText,hStatus,$CT0("Nothing found")
        .else
            mov     ecx,edi
            sub     ecx,eax
            shr     ecx,2
            invoke  wsprintf,addr szBuffer,$CT0("Found %lu plugins"),ecx
            invoke  SetWindowText,hStatus,addr szBuffer
        .endif
        popad
        return  TRUE

    case WM_CLOSE
        lea     esi,PlugsArray
    @@: lodsd
        test    eax,eax
        jz      @F
        invoke  FreeLibrary,eax
        jmp     @B
        @@:

        invoke  RtlZeroMemory,addr PlugsArray,sizeof PlugsArray
        invoke  SetWindowText,hStatus,addr bClear
        invoke  SetWindowText,hInfo,addr bClear
        invoke  EndDialog,hWin,0
        popad
        return  0

    case WM_COMMAND
        mov     eax,wParam
        and     eax,0FFFFh
        switch  eax
        case 1003
            invoke  EndDialog,hWin,0

        case 1002
            invoke  SendMessage,hList,LB_GETCURSEL,0,0
            mov     eax,[eax*4 + offset PlugsArray]
            invoke  GetProcAddress,eax,$CT0("PlugProc")
            push    lpFileName
            push    hDie
            call    eax

        case 1004
            mov     eax,wParam
            shr     eax,16
            .if eax == LBN_SELCHANGE
                mov     eax,lParam
                .if eax == hList
                    invoke  SendMessage,hList,LB_GETCURSEL,0,0
                    mov     eax,[eax*4 + offset PlugsArray]
                    invoke  GetProcAddress,eax,$CT0("PlugInit")
                    push    lParam
                    push    hStatus
                    push    hInfo
                    call    eax
                .endif
            .endif
        endsw

    endsw
    popad
    return  0
WndProc endp

end DllEntry

; #########################################################################

; :exit
; @echo off
; set cmpl=\usasm
; set proj=%~n0
; set rsrc=rsrc
; %cmpl%\bin\ml /nologo /c /coff /Cp /I%cmpl%\include\ %proj%.bat
; %cmpl%\bin\rc rsrc.rc
; %cmpl%\bin\link /SUBSYSTEM:WINDOWS /LIBPATH:%cmpl%\lib /DLL /RELEASE /SECTION:.text,RWE /DEF:%proj%.def %proj%.obj rsrc.res
; del %proj%.obj
; del %proj%.exp
; del %proj%.lib
; del rsrc.res
; move %proj%.dll ..\%proj%.dll

; rem ######################################################################


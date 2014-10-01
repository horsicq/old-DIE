;@goto exit

; #########################################################################
;
;                           Crazy DLL by UsAr :)
;
; #########################################################################

    .586
    .model flat, stdcall
    option casemap :none   ; case sensitive

; #########################################################################

    include     windows.inc
    include     my.mac
    include_    user32
;   include_    kernel32
;   include_    shell32
    include_    comdlg32
    include_    ..\yzpelib\yzpelib

    AnalyzeFile     PROTO :DWORD
    UnpackFile      PROTO :DWORD

    VER_16D         equ 1
    VER_16C         equ 2
    VER_15          equ 3

; #########################################################################
.data?
    hInstance   dd ?
    dwVersion   dd ?
    bFirstStart db ?
    lpResult    dd ?
    szBuffer    db 1024 dup (?)
    ofn         OPENFILENAME <?>

.data
    szFilter    db "EXE Files (*.exe)",0
    szDefExt    db "*.exe",0
                db "All Files (*.*)",0,"*.*",0,0,0

    Sign1       db 060h,090h,061h,061h,080h,07Fh,0F0h,045h,090h,060h,00Fh,085h
    Sign2       db 08Bh,0C7h,003h,004h,024h,02Bh,0C7h,080h,038h,050h,00Fh,085h
    Sign3       db 0FFh,054h,024h,004h,083h,044h,024h,004h,04Fh,0B8h

.code
; ##########################################################################

LibMain proc uses ebx esi edi hInstDLL,reason,unused
    .if reason == DLL_PROCESS_ATTACH
        m2m     hInstance,hInstDLL
    .endif
    return  TRUE
LibMain endp

; ##########################################################################

PlugInit proc uses esi edi ebx inf,wrk,file_name
local mf:MAP_FILE

    .if lpResult
        invoke  SetWindowText,inf,$CT0("deRCryptor 0.1 by UsAr")
        invoke  SetWindowText,wrk,lpResult
        jmp     @RetPlugName
    .endif

    m2m     mf.lpFileName,file_name
    mov     mf.dwFlags,MAP_READ or MAP_PEFILE
    invoke  MapFile,addr mf
    invoke  CorrectSections,mf.pMapping,SEC_VA2RO
    mov     lpResult,$invoke(AnalyzeFile,mf.pMapping)
    invoke  UnmapFile,addr mf

    .if lpResult
        @RetPlugName:
        mov     eax,$CT0("deRCryptor 0.1")
        return
    .else
        return  0
    .endif

PlugInit endp

; ##########################################################################

PlugProc proc uses esi edi ebx hWin,file_name
local mf:MAP_FILE

    m2m     mf.lpFileName,file_name
    mov     mf.dwFlags,MAP_READ or MAP_PEFILE
    invoke  MapFile,addr mf
    .if !eax
        return  FALSE
    .endif
    invoke  CorrectSections,mf.pMapping,SEC_VA2RO
    .if $invoke(UnpackFile,mf.pMapping)
        mov     ofn.lStructSize,sizeof OPENFILENAME
        mov     ofn.lpstrFilter,offset szFilter
        m2m     ofn.hwndOwner,hWin
        mov     ofn.lpstrFile,offset szBuffer
        mov     ofn.nMaxFile,sizeof szBuffer
        mov     ofn.lpstrTitle,$CT0("Please Choose the Output File")
        mov     ofn.lpstrDefExt,offset szDefExt
        mov     ofn.Flags,OFN_OVERWRITEPROMPT or OFN_HIDEREADONLY or OFN_EXPLORER or OFN_LONGNAMES
        invoke  GetSaveFileName,addr ofn
        .if byte ptr ds:[szBuffer]
            invoke  SaveMemAsFile,mf.pMapping,mf.ImageSize,addr szBuffer
            invoke  PERealign,addr szBuffer,0,0,STUB_HARDCORE or ALIGN_FILE
        .endif
    .endif
    invoke  UnmapFile,addr mf
    return  TRUE

PlugProc endp

; ##########################################################################

AnalyzeFile proc pMapping
local epbytes:DWORD

    mov     esi,pMapping
    add     esi,[esi+3Ch]
    mov     esi,[esi].IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint
    add     esi,pMapping
    mov     epbytes,esi

    ; VER_16D
    mov     edi,offset Sign1
    mov     ecx,sizeof Sign1
    repe    cmpsb
    .if !ecx
        mov     dwVersion,VER_16D
        mov     eax,$CT0("RCryptor 1.6d")
        return
    .endif

    ; VER_16C
    mov     esi,epbytes
    mov     edi,offset Sign2
    mov     ecx,sizeof Sign2
    repe    cmpsb
    .if !ecx
        mov     dwVersion,VER_16C
        mov     eax,$CT0("RCryptor 1.6b - 1.6c")
        return
    .endif

    ; VER_15
    mov     esi,epbytes
    .if dword ptr [esi] == 4F242C83h
        add     esi,9
        mov     edi,offset Sign3
        mov     ecx,sizeof Sign3
        repe    cmpsb
        .if !ecx
            mov     dwVersion,VER_15
            mov     eax,$CT0("RCryptor 1.5")
            return
        .endif
    .endif

    return  0
AnalyzeFile endp

; ##########################################################################

UnpackFile proc pMapping
local ImageBase:DWORD,DeltaBase:DWORD
local arg1,arg2:DWORD

    mov     esi,pMapping
    add     esi,[esi+3Ch]
    mov     edi,[esi].IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint
    add     edi,pMapping
    mov     eax,[esi].IMAGE_NT_HEADERS.OptionalHeader.ImageBase
    mov     ImageBase,eax
    sub     eax,pMapping
    mov     DeltaBase,eax

    .if dwVersion == VER_16D
        mov     eax,dword ptr [edi+11h]
        sub     eax,ImageBase
        mov     [esi].IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint,eax
        add     edi,15h

        .while byte ptr [edi] != 0C3h

            mov     eax,dword ptr [edi+1]
            sub     eax,DeltaBase
            mov     arg1,eax
            mov     eax,dword ptr [edi+7]
            sub     eax,DeltaBase
            mov     arg2,eax
            mov     dl,byte ptr [edi+15]

            mov     eax,arg1
        @@: cmp     eax,arg2
            je      @F
            xor     byte ptr ds:[eax],dl
            inc     eax
            jmp     @B
        @@:
            add     edi,19
        .endw

    .elseif dwVersion == VER_16C
        mov     eax,dword ptr [edi+11h]
        sub     eax,ImageBase
        mov     [esi].IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint,eax
        add     edi,15h

        .while byte ptr [edi] != 0C3h

            mov     eax,dword ptr [edi+1]
            sub     eax,DeltaBase
            mov     arg1,eax
            mov     eax,dword ptr [edi+6]
            sub     eax,DeltaBase
            mov     arg2,eax
            mov     dl,byte ptr [edi+14]

            mov     eax,arg1
        @@: cmp     eax,arg2
            je      @F
            xor     byte ptr ds:[eax],dl
            inc     eax
            jmp     @B
        @@:
            add     edi,18
        .endw

    .elseif dwVersion == VER_15
        mov     eax,dword ptr [edi+5]
        sub     eax,ImageBase
        mov     [esi].IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint,eax
        add     edi,12h

        .while byte ptr [edi] != 0E8h

            mov     eax,dword ptr [edi+1]
            sub     eax,DeltaBase
            mov     arg1,eax
            mov     eax,dword ptr [edi+6]
            sub     eax,DeltaBase
            mov     arg2,eax
            mov     dl,byte ptr [edi+14]

            mov     eax,arg1
        @@: cmp     eax,arg2
            je      @F
            xor     byte ptr ds:[eax],dl
            inc     eax
            jmp     @B
        @@:
            add     edi,18
        .endw

    .endif

    invoke  KillSection,pMapping,-1

    return  TRUE
UnpackFile endp

; ##########################################################################

End LibMain

; ##########################################################################

; :exit
; @echo off
; set cmpl=\usasm
; set proj=%~n0
; %cmpl%\bin\ml /nologo /c /coff /Cp /I%cmpl%\include\ %proj%.bat
; rem %cmpl%\bin\link /SUBSYSTEM:WINDOWS /LIBPATH:%cmpl%\lib /DLL /RELEASE /align:16 /IGNORE:4078,4060,4108 /STUB:%cmpl%\bin\stub.exe /OPTidata /DEF:%proj%.def %proj%.obj
; %cmpl%\bin\link /SUBSYSTEM:WINDOWS /LIBPATH:%cmpl%\lib /DLL /RELEASE /DEF:%proj%.def %proj%.obj
; rem %cmpl%\bin\elink /MAP:%proj%.map /BASE:0x0400000 /DLL /FIXED:NO /SUBSYSTEM:WINDOWS /LIBPATH:%cmpl%\lib /DEF:%proj%.def %proj%.obj
; del *.obj
; del *.exp
; del *.lib
; move %proj%.dll ..\..\%proj%.dll

; rem ######################################################################

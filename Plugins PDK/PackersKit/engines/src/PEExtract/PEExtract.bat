;@goto exit

; #########################################################################

    ; --------------------------------------
    ; This plugin was written by UsAr
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

    PEExtract       PROTO :DWORD,:DWORD
    AnalyzeFile     PROTO :DWORD

; #########################################################################

.data
    PlugName    db "PE Extract 0.2",0
    infostr     db "PE Extract 0.2 by UsAr",0

; #########################################################################

.data?
    hInstance   dd ?
    info        dd ?
    work        dd ?
    fsize       dd ?
    offs        dd ?
    pt          dd ?
    resbuf      db ?
    hwnd        dd ?
    bFirstStart db ?
    lpResult    dd ?
    szBuffer    db 1024 dup (?)

; #########################################################################

.code
DllEntry proc instance:DWORD,reason:DWORD,unused:DWORD

    .if reason == DLL_PROCESS_ATTACH
        m2m     hInstance,instance
    .endif
    return  TRUE

DllEntry endp

; #########################################################################

PlugInit proc uses esi edi ebx inf,wrk,file_name

    .if lpResult
        invoke  SetWindowText,inf,$CT0("PEExtract 0.2 by UsAr")
        invoke  SetWindowText,wrk,lpResult
        jmp     @RetPlugName
    .endif
    mov     lpResult,$invoke(PEExtract,file_name,0)
    .if lpResult
        @RetPlugName:
        invoke  wsprintf,addr szBuffer,$CT0("Found %lu PE file(s)"),eax
        lea     eax,szBuffer
        mov     lpResult,eax
        mov     eax,offset PlugName
        return
    .else
        return  0
    .endif

PlugInit endp

; #########################################################################

PlugProc proc uses esi edi ebx hWin,file_name
local lpStatus:DWORD
    mov     lpStatus,alloc(1000h)
    invoke  PEExtract,file_name,1
    invoke  wsprintf,lpStatus,$CT0("Extracted %lu PE file(s)"),eax
    invoke  MessageBox,hWin,lpStatus,$CT0("PEExtract 0.1"),MB_OK
    free    lpStatus
    return  TRUE
PlugProc endp

; #########################################################################

PEExtract proc lpFileName1:DWORD,lParam:DWORD
local pMem,hMap,dwFileSize,hFile,NewPE,dwFiles,pName,lpszDir,lpszFileName:DWORD

    xor     eax,eax
    mov     dwFiles,eax
    mov     hFile,$invoke(CreateFile,lpFileName1,GENERIC_READ,FILE_SHARE_READ,0,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL,0)

    mov     lpszDir,alloc(1000h)
    mov     esi,eax
    invoke  lstrcat,esi,lpFileName1
    xor     ecx,ecx
    mov     edx,esi
    .while TRUE
        .if byte ptr [esi+ecx] == '.'
            lea     edx,[esi+ecx]
        .elseif byte ptr [esi+ecx] == 0
            mov     word ptr [edx],'\'
            .break
        .endif
        inc     ecx
    .endw
    invoke  CreateDirectory,esi,0
    mov     lpszFileName,alloc(1000h)
    invoke  GetFileTitle,lpFileName1,lpszFileName,1000h
    mov     esi,lpszFileName
    xor     ecx,ecx
    mov     edx,esi
    .while TRUE
        .if byte ptr [esi+ecx] == '.'
            lea     edx,[esi+ecx]
        .elseif byte ptr [esi+ecx] == 0
            mov     byte ptr [edx],0
            .break
        .endif
        inc     ecx
    .endw

    mov     dwFileSize,$invoke(GetFileSize,hFile,0)
    mov     hMap,$invoke(CreateFileMapping,hFile,0,PAGE_READONLY,0,0,0)
    mov     pMem,$invoke(MapViewOfFile,hMap,FILE_MAP_READ,0,0,0)
    mov     pName,alloc(1000h)

    mov     edi,dwFileSize
    sub     edi,2
    mov     esi,pMem
    inc     esi ; skip main file

    .repeat
        .if word ptr [esi] == "ZM"
            mov     NewPE,esi
            add     esi,[esi+3Ch]
            invoke  IfInRange,esi,NewPE,dwFileSize
            .if eax
                .if word ptr [esi] == "EP"
                    .if lParam
                        .if [esi].IMAGE_NT_HEADERS.OptionalHeader.Subsystem == 1
                            invoke  wsprintf,pName,$CT0("%s%s.%s.%d"),lpszDir,lpszFileName,$CT0("sys"),dwFiles
                        .elseif [esi].IMAGE_NT_HEADERS.FileHeader.Characteristics & IMAGE_FILE_DLL
                            invoke  wsprintf,pName,$CT0("%s%s.%s.%d"),lpszDir,lpszFileName,$CT0("dll"),dwFiles
                        .else
                            invoke  wsprintf,pName,$CT0("%s%s.%s.%d"),lpszDir,lpszFileName,$CT0("exe"),dwFiles
                        .endif
                        invoke  GetSection,NewPE,0,SEC_LASTPHISICAL
                        mov     ecx,[eax].IMAGE_SECTION_HEADER.PointerToRawData
                        add     ecx,[eax].IMAGE_SECTION_HEADER.SizeOfRawData
                        invoke  SaveMemAsFile,NewPE,ecx,pName
                    .endif
                    inc     dwFiles
                .endif
            .endif
            mov     esi,NewPE
        .endif
        inc     esi
        dec     edi
    .until ZERO?

@ExitProc:
    .if !dwFiles
    invoke  RemoveDirectory,lpszDir
    .endif
    free    lpszFileName
    free    lpszDir
    free    pName
    return  dwFiles
PEExtract endp

end DllEntry

; #########################################################################

; :exit
; @echo off
; set cmpl=\usasm
; set proj=%~n0
; set rsrc=rsrc
; %cmpl%\bin\ml /nologo /c /coff /Cp /I%cmpl%\include\ %proj%.bat
; %cmpl%\bin\link /SUBSYSTEM:WINDOWS /LIBPATH:%cmpl%\lib /DLL /RELEASE /SECTION:.text,RWE /DEF:%proj%.def %proj%.obj
; del %proj%.obj
; del %proj%.exp
; del %proj%.lib
; move %proj%.dll ..\..\%proj%.dll

; rem ######################################################################


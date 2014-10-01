; Creating PligIns for DiE MASM by kosfiz

.386
.model flat,stdcall
option casemap:none

include ..\include\windows.inc
include ..\include\kernel32.inc
include ..\include\user32.inc
includelib ..\lib\kernel32.lib
includelib ..\lib\user32.lib

.data
PlugName	db	"Example Plugin(Masm)",0
infostr		db	"Example Plugin For DiE (PDK Masm)",0
workstr		db	"Only example!",0
Caption		db	"DiE Example Plugin",0
empty		db	"empty!",0
fmts		db	"%.8X | %.8X",0

.data?
hInstance	dd	?
info		dd	?
work		dd	?
fsize		dd	?
offs		dd	?
pt		dd	?
resbuf		db	?

.code

DllEntry proc instance:DWORD,reason:DWORD,unused:DWORD 

    .if reason == DLL_PROCESS_ATTACH
      push instance
      pop hInstance
      mov eax, TRUE

    .elseif reason == DLL_PROCESS_DETACH

    .elseif reason == DLL_THREAD_ATTACH

    .elseif reason == DLL_THREAD_DETACH

    .endif

    ret
DllEntry endp

DiePlugName proc 
lea eax,[PlugName]
ret
DiePlugName endp

DiePlugProc proc die_hwnd:DWORD,file_name:DWORD,die_name:DWORD
invoke SetWindowText,info,addr infostr
invoke SetWindowText,work,addr workstr
invoke lstrlen,file_name
.if eax==0
	lea eax,empty
	mov file_name,eax
.endif
invoke MessageBox,die_hwnd,file_name,addr Caption,0
invoke wsprintf,addr resbuf,addr fmts,pt,fsize
invoke MessageBox,die_hwnd,addr resbuf,addr Caption,0
invoke MessageBox,die_hwnd,die_name,addr Caption,0
mov eax,TRUE
ret
DiePlugProc endp

DiePlugHwnd proc inf:DWORD,wrk:DWORD
mov eax,inf
mov info,eax
mov eax,wrk
mov work,eax
mov eax,TRUE
ret
DiePlugHwnd endp

DiePlugPe proc file_ptr:DWORD,file_size:DWORD,file_offset:DWORD
mov eax,file_ptr
mov pt,eax
mov eax,file_size
mov fsize,eax
mov eax,file_offset
mov offs,eax
mov eax,TRUE
ret
DiePlugPe endp

end DllEntry
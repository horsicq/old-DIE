;
; Create plugins for DiE FASM by YoriCH
;

format PE GUI 4.0 DLL
entry DllEntryPoint

include 'win32a.inc'

section '.code' code readable executable

proc DllEntryPoint hinstDLL,fdwReason,lpvReserved
	mov	eax,TRUE
	ret
endp

proc DiePlugName
	lea eax,[PlugName_]
	ret
endp

proc DiePlugProc die_hwnd, file_name, die_name
	 invoke SetWindowText, [info], infoText_
	 invoke SetWindowText, [work], workTextBegin_
	 xor eax,eax
	 mov edx, [file_name]
	 cmp byte[edx],0
	 jnz next
	 mov edx, empty_
next:	 invoke MessageBox, [die_hwnd], edx, smile_, 0
	 invoke SetWindowText, [work], workText_2
	 stdcall CalculHex_
	 invoke MessageBox, [die_hwnd], sizehex_, smile_, 0
	 invoke SetWindowText, [work], workText_3
	 invoke MessageBox, [die_hwnd], [die_name], smile_, 0
	 invoke SetWindowText, [work], workTextEnd_
	 ret
endp

proc DiePlugHwnd _info, _work
	 mov eax, [_info]
	 mov [info], eax
	 mov eax, [_work]
	 mov [work],eax
	 mov eax, TRUE
	 ret
endp

proc DiePlugPe file_ptr, file_size, file_offset
	 mov eax, [file_ptr]
	 mov [ptr_], eax
	 mov eax, [file_size]
	 mov [size], eax
	 mov eax, [file_offset]
	 mov [offs], eax
	 mov eax, TRUE
	 ret
endp
proc CalculHex_
	 mov edi, sizehex_
	 mov ecx, LenSizen_
	 mov esi, Sizen_
	 rep movsb
	 dec edi
	 mov eax, [size]
	 mov ebx,10h
	 call IntToStr
	 dec edi
	 mov ecx, LenTab_
	 mov esi, Tab_
	 rep movsb
	 dec edi
	 mov ecx, LenPtrn_
	 mov esi, Ptrn_
	 rep movsb
	 dec edi
	 mov eax, [ptr_]
	 call IntToStr
	 ret
endp

IntToStr:
	push	ecx edx
	xor	ecx,ecx
.new:
	xor	edx,edx
	div	ebx
	push	edx
	inc	ecx
	test	eax,eax
	jnz	.new
.loop:
	pop	eax
	add	al,30h
	cmp	al,'9'
	jng	.ok
	add	al,7
.ok:
	stosb
	loop	.loop
	mov	al,0
	stosb
	pop	edx ecx
	ret


section '.data' data readable writeable

info dd ?
work dd ?
ptr_ dd ?
size dd ?
offs dd ?
sizehex_ rb 100h
PlugName_ db 'Example plugin (FASM)',0
empty_	  db 'empty!',0
infoText_ db 'Example plugin for DiE (PDK FASM) by YoriCH',0
workTextBegin_ db 'Begin...File Name',0
workText_2 db 'Begin...Info file',0
workText_3 db 'Begin...Die',0
workTextEnd_ db 'End',0
smile_ db 'Plug for DiE :)',0
Tab_ db 0Ah,0Dh,0
LenTab_ = $-Tab_
Sizen_ db 'Size: ',0
LenSizen_ = $-Sizen_
Ptrn_ db 'ptr:  ',0
LenPtrn_ = $-Ptrn_



section '.idata' import data readable writeable

  library user,'USER32.DLL'


  import user,\
	 MessageBox,'MessageBoxA',\
	 SetWindowText,'SetWindowTextA'

section '.edata' export data readable

  export 'EXAMPLE_FASM.DLL',\
	 DiePlugName,'DiePlugName',\
	 DiePlugProc,'DiePlugProc',\
	 DiePlugHwnd,'DiePlugHwnd',\
	 DiePlugPe,'DiePlugPe'

section '.reloc' fixups data discardable

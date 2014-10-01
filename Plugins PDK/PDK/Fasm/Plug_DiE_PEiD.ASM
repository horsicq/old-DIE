;##########################################################
;
; Create plugins for DiE&PEiD by YoriCH <YoriCH@Pisem.net>
;
;##########################################################

format PE GUI 4.0 DLL
entry DllEntryPoint

include 'win32a.inc'

;##########################################################

ebOutput =  3E9h

section '.DiE' code readable executable writeable

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
	 mov edx, [file_name]
	 cmp byte[edx],0
	 jnz .next
	 mov edx, empty_
.next:	 invoke MessageBox, [die_hwnd], edx, smile_, 0
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

proc DoMyJob hMainDlg, szFname, lpReserved, lpParam
	 mov edx, [szFname]
	 cmp byte[edx],0
	 jnz .next
	 mov edx, empty_
.next:	 mov [temp1],edx
	 invoke SetDlgItemText,[hMainDlg],ebOutput,infoText_
	 invoke MessageBox, [hMainDlg], [temp1], szDlgTitle, 0
	 invoke SetDlgItemText,[hMainDlg],ebOutput,[temp1]
	 mov eax,TRUE
	 pop ebp
	 retn
endp

;##########################################################
;section '.data' data readable writeable

info dd ?
work dd ?
ptr_ dd ?
size dd ?
offs dd ?
temp1 dd ?
PlugName_ db 'Example plugin for DiE (PDK FASM)',0
empty_	  db 'empty!',0
infoText_ db 'Example plugin for DiE and PEiD (PDK FASM) by YoriCH',0
workTextBegin_ db 'Begin...File Name',0
workTextEnd_ db 'End',0
smile_ db 'Plug for DiE :)',0
szDlgTitle    db 'PlugIn for PEiD (PDK FASM) by YoriCH', 0

;##########################################################

;section '.idata' import data readable writeable
data import

  library user,'USER32.DLL'


  import user,\
	 MessageBox,'MessageBoxA',\
	 SetDlgItemText,'SetDlgItemTextA',\
	 SetWindowText,'SetWindowTextA'
end data
;##########################################################

;section '.edata' export data readable
data export

  export 'Plug_DiE_PEiD.DLL',\
	 DiePlugName,'DiePlugName',\
	 DiePlugProc,'DiePlugProc',\
	 DiePlugHwnd,'DiePlugHwnd',\
	 DiePlugPe,'DiePlugPe',\
	 DoMyJob,'DoMyJob',\
	 DiePlugName,'LoadDll'
end data
;##########################################################
;section '.reloc' fixups data discardable
data	    fixups
;           dd 0,8
end	    data
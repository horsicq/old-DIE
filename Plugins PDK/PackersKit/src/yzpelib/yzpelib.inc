;--------------------------------------------------------------------------
GetSection PROTO STDCALL :dword,:DWORD,:DWORD
;   GetSection(lpImage,lParam,dwType)
;   return ptr to IMAGE_SECTION_HEADER
;   if fails return 0
;   types
    SEC_FIRSTPHISICAL   equ 1
    SEC_LASTPHISICAL    equ 2
    SEC_FIRSTVIRTUAL    equ 3
    SEC_LASTVIRTUAL     equ 4
    SEC_BYRO_FIRST      equ 5
    SEC_BYRO_LAST       equ 6
    SEC_BYVA_FIRST      equ 7
    SEC_BYVA_LAST       equ 8
    SEC_FIRST           equ 9
    SEC_LAST            equ 10
    SEC_BYNUM           equ 11
;--------------------------------------------------------------------------
IfInRange PROTO STDCALL :DWORD,:DWORD,:DWORD
;   IfInRange(dwOffset,dwStart,dwSize)
;   check if (dwStart <= dwOffset < dwStart+dwSize)
;   return 1 if TRUE, 0 if FALSE
;--------------------------------------------------------------------------
MapFile PROTO STDCALL :DWORD
;   MapFile(lpMAP_FILE)
;   return pMapping, 0 if ERROR
    MAP_FILE struc
        lpFileName  dd ?
        hFile       dd ?
        hMapping    dd ?
        pMapping    dd ?
        ImageSize   dd ?
        dwFlags     dd ?
    MAP_FILE ends
;   dwFlags
    MAP_READ equ 1
    MAP_WRITE equ 2
    MAP_PEFILE equ 4
;--------------------------------------------------------------------------
UnmapFile PROTO STDCALL :DWORD
;   UnmapFile(lpMAP_FILE)
;--------------------------------------------------------------------------
AlignUp PROTO STDCALL :DWORD,:DWORD
;   AlignUp(dwValue,dwAlignment)
;--------------------------------------------------------------------------
AlignDown PROTO STDCALL :DWORD,:DWORD
;   AlignDown(dwValue,dwAlignment)
;--------------------------------------------------------------------------
EnumSections PROTO STDCALL :DWORD,:DWORD,:DWORD
;   EnumSections(lpImage,lpProc,lParam)
;   lpProc must save esi & edi, and return eax = 0, if eax != 0 SectionsWorks stops
;   lpProc(lpImage,lpSection,lParam)
;--------------------------------------------------------------------------
SaveMemAsFile PROTO STDCALL :DWORD,:DWORD,:DWORD
;   SaveMemAsFile(lpMem,dwFileSize,lpFileName)
;--------------------------------------------------------------------------
VA2RO PROTO STDCALL :DWORD,:DWORD
;   VA2RO(lpMem,dwVA)
;--------------------------------------------------------------------------
VA2VA PROTO STDCALL :DWORD,:DWORD
;   VA2VA(lpMem,dwVA)
;   It's not a joke :)
;   This Function calculates the last possible VA pointed to the
;   same code as VA passed to this func
;--------------------------------------------------------------------------
RO2VA PROTO STDCALL :DWORD,:DWORD
;   RO2VA(lpMem,dwRO)
;--------------------------------------------------------------------------
CorrectSections PROTO STDCALL :DWORD,:DWORD
;   CorrectSections(lpMem,dwFlags)
;   dwFlags
    SEC_REALIGN equ 1
    SEC_VA2RO equ 2
;--------------------------------------------------------------------------
ProcessImports PROTO :DWORD
;   ProcessImports(dwImageBase)
;--------------------------------------------------------------------------
AddDataToPEFile PROTO :DWORD
;   AddDataToPEFile(lpADDDATA)
;   return VA of new code
    ADDDATA struc
        lpFileName  dd ?
        lpData      dd ?
        dwDataSize  dd ?
        Name1       db 8 dup (?)
        Char        dd ?
        dwFlags     dd ?
    ADDDATA ends
;   dwFlags
    ADD_NEW_SECTION     equ 1
    ADD_TOLASTSECTION   equ 2
    ALIGN_FILE          equ 4
    EP_TO_NEWCODE       equ 8
;--------------------------------------------------------------------------
ExtractOverley PROTO :DWORD,:DWORD,:DWORD
;   ExtractOverley(lpFileName,lpOverleyName,dwFlags)
;   Extract overley from PE File to new file
;   dwFlags
    OVERLEY_REMOVE  equ 1 ;remove overley from original file
;--------------------------------------------------------------------------
PERealign PROTO STDCALL :DWORD,:DWORD,:DWORD,:DWORD
;   PERealign(FileName,pStub,dwStubSize,dwFlags)
;   flags
    STUB_DEFAULT    equ 0   ; вставляет дефолтовый стаб
    STUB_OWN        equ 1   ; стаб задается параметрами pStub,dwStubSize
    STUB_HARDCORE   equ 2   ; стаб размером в 0Ch байт
    STUB_DONTCHANGE equ 3   ; не меняет стаб
;   ALIGN_FILE      equ 4   ; выравнивает сам файл (уже определено)
;--------------------------------------------------------------------------
PERebuild PROTO STDCALL :DWORD
;   PERebuild(FileName)
;--------------------------------------------------------------------------
KillSection PROTO STDCALL :DWORD,:DWORD
;   KillSection(lpImage,dwSecNum)
;   if dwSecNum == -1 ; remove last physical section
;--------------------------------------------------------------------------
ResRebuild PROTO STDCALL :DWORD,:DWORD,:DWORD
;   ResRebuild(lpImage,pSizeRW,dwFlags)
;   Если функция не может заменить старые ресурсы, то она возвращяет в
;   eax указатель на память выделенную с помощью VirtualAlloc и в
;   ecx размер выделенной памяти
    RES_CLEAROLD        equ 1
    RES_CLEARSEC        equ 2
    RES_FORCEREPLACE    equ 4
    RES_NOREPLACE       equ 8
;--------------------------------------------------------------------------
AddResToPEFile PROTO STDCALL :DWORD,:DWORD,:DWORD
;   AddResToPEFile(lpFileName,pMem,dwSize)
;   Если ResRebuild() возвращает указатель на память с ресурсами, то надо
;   добавлять новую секцию в файл с помощью AddResToPEFile
;--------------------------------------------------------------------------
CalcResSize PROTO STDCALL :DWORD
;   CalcResSize(lpImage)
;   calculate real size of res dir
;--------------------------------------------------------------------------
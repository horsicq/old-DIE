(*

Guru.eXe^tMX presents...
 - Модуль "myPEFile"

< Модуль для работы с PE файлами >
{ This procedures used in SCANiT! }

Примечание:
  чтобы исключить какие-либо ошибки при чтении информации
  из PE заголовка файла, перед необходимой процедурой
  поставьте проверку на валидность PE файла.

  Пример:
  if CheckPEfile('myfile.exe') then
  mytext.caption:= GetImageBase('myfile.exe');

Copyright [c] 2005-2006 by Guru.eXe
(e-mail: DarkGuru@pisem.net)

*)


unit myPEFile;

interface
uses Windows, SysUtils, Classes, Messages;

 type
  TSection = packed record
   Name: array[0..7] of Char;
   VirtualSize: DWORD;
   VirtualAddress: DWORD;
   PhysicalSize: DWORD;
   PhysicalOffset: DWORD;
   PointerToRelocations: DWORD;
   PointerToLinenumbers: DWORD;
   NumberOfRelocations: WORD;
   NumberOfLinenumbers: WORD;
   Characteristics: DWORD;
 end;

 type
  TOpenPEFileName = packed record
    lStructSize: DWORD;
    hWndOwner: HWND;
    hInstance: HINST;
    lpstrFilter: PAnsiChar;
    lpstrCustomFilter: PAnsiChar;
    nMaxCustFilter: DWORD;
    nFilterIndex: DWORD;
    lpstrFile: PAnsiChar;
    nMaxFile: DWORD;
    lpstrFileTitle: PAnsiChar;
    nMaxFileTitle: DWORD;
    lpstrInitialDir: PAnsiChar;
    lpstrTitle: PAnsiChar;
    Flags: DWORD;
    nFileOffset: Word;
    nFileExtension: Word;
    lpstrDefExt: PAnsiChar;
    lCustData: LPARAM;
    lpfnHook: function(Wnd: HWND; Msg: UINT; wParam: WPARAM;
    lParam: LPARAM): UINT stdcall;
    lpTemplateName: PAnsiChar;
  end;

var
 f: file;
 Section: TSection;
 FHandle: THandle;
 OFS: OFSTRUCT;
 ChePESig: DWORD;
 BytesRead: DWORD;
 PEHeaderOffset: DWORD;   { $3C }
 ImageBase: DWORD;        { $34 }
 EntryPointRVA: DWORD;    { $28 }
 NumOfSections: WORD;     { $06 }
 Link_Major: BYTE;        { $1A }
 Link_Minor: BYTE;        { $1B }
 SubSystem: DWORD;        { $5C }
 EntryPointOffset: DWORD; { $F8 }
 SizeOfImage: DWORD;      { $50 }
 Sect_Align: DWORD;       { $38 }
 Inst, hWnd: Integer;
 FileName: array[0..4095] of Char;


 //Check for valid PE file
 function CheckPEfile(FilName: string): boolean;
 //"GET" functions
 function GetImageBase(FilName: string): string;
 function GetEPrva(Filname: string): string;
 function GetSecNumb(filname: string): string;
 function GetLinkerVer(filname: string): string;
 function GetSubSysByte(filname: string): string;
 function GetSubSysPEiD(filname: string): string;
 function GetOEP(filname: string): string;
 function GetEPoffset(filname: string): string;
 function GetSecName(filname: string; SectionNum: integer): string;
 function GetSecVSize(filname: string; SectionNum: integer): string;
 function GetSecVOffs(filname: string; SectionNum: integer): string;
 function GetSecPSize(filname: string; SectionNum: integer): string;
 function GetSecPOffs(filname: string; SectionNum: integer): string;
 function GetSecCharact(filname: string; SectionNum: integer): string;

implementation

function OpenPE(FName: string): boolean;
begin
 result:=false;
  AssignFile(f, Fname);
  if not FileExists(FName) then exit;
  //FHandle:= OpenFile(PChar(FName), OFS, OF_READWRITE);
  FHandle:= createfile(pchar(fName),GENERIC_read,FILE_SHARE_READ,nil,OPEN_EXISTING,0,0);
  SetFilePointer(FHandle, $3C, nil, 0);
  ReadFile(FHandle, PEHeaderOffset, SizeOf(PEHeaderOffset), BytesRead, nil);
 result:=true;
end;

function CheckPEFile(Filname: string): boolean;
begin
 result:=false;
  if not openpe(filname) then exit;
  if PEHeaderOffset = 0 then Exit;
  SetFilePointer(FHandle, PEHeaderOffset, nil, 0);
  ReadFile(FHandle, ChePESig, SizeOf(ChePESig), BytesRead, nil);
  if ChePESig <> $00004550 then Exit;
  CloseHandle(FHandle);
 result:=true;
end;

function GetImageBase(FilName: string): string;
var output: string;
begin
  if not openpe(filname) then exit;
  SetFilePointer(FHandle, PEHeaderOffset + $34, nil, 0);
  ReadFile(FHandle, ImageBase, SizeOf(ImageBase), BytesRead, nil);
  output:=IntToHex(ImageBase,8);
  CloseHandle(FHandle);
 result:=output;
end;

function GetEPrva(Filname: string): string;
var output: string;
begin
  if not openpe(filname) then exit;
  SetFilePointer(FHandle, PEHeaderOffset + $28, nil, 0);
  ReadFile(FHandle, EntryPointRVA, SizeOf(EntryPointRVA), BytesRead, nil);
  output:=IntToHex(EntryPointRVA,8);
  CloseHandle(FHandle);
 result:=output;
end;

function GetSecNumb(filname: string): string;
begin
  if not openpe(filname) then exit;
  SetFilePointer(FHandle, PEHeaderOffset + $06, nil, 0);
  ReadFile(FHandle, NumOfSections, SizeOf(NumOfSections), BytesRead, nil);
  CloseHandle(FHandle);
 result:=IntToStr(NumOfSections);
end;

function GetLinkerVer(filname: string): string;
var Linker_Version: string;
begin
  if not openpe(filname) then exit;
   SetFilePointer(FHandle, PEHeaderOffset + $1A, nil, 0);
   ReadFile(FHandle, Link_Major, SizeOf(Link_Major), BytesRead, nil);
   SetFilePointer(FHandle, PEHeaderOffset + $1B, nil, 0);
   ReadFile(FHandle, Link_Minor, SizeOf(Link_Minor), BytesRead, nil);
   Linker_Version:=IntToStr(Link_Major)+'.'+IntToStr(Link_Minor);
  CloseHandle(FHandle);
 result:=linker_Version;
end;

function GetSubSysByte(filname: string): string;
begin
  if not openpe(filname) then exit;
  SetFilePointer(FHandle, PEHeaderOffset + $5C, nil, 0);
  ReadFile(FHandle, subsystem, SizeOf(subsystem), BytesRead, nil);
  CloseHandle(FHandle);
 result:=IntToHex(subsystem,2);
end;

function GetSubSysPEiD(filname: string): string;
var output: string;
begin
  if GetSubSysByte(filname) = '01' then
   output:='No subsystem'  else
  if GetSubSysByte(filname) = '05' then
   output:='OS/2 console'  else
  if GetSubSysByte(filname) = '07' then
   output:='Posix console' else
  if GetSubSysByte(filname) = '03' then
   output:='Win32 concole' else
  if GetSubSysByte(filname) = '02' then
   output:='Win32 GUI'     else
   output:='Unknown subsystem';
 result:=output;
end;

function GetOEP(filname: string): string;
var
output:DWORD;
begin
  if not openpe(filname) then exit;
  SetFilePointer(FHandle, PEHeaderOffset + $28, nil, 0);
  ReadFile(FHandle, EntryPointRVA, SizeOf(EntryPointRVA), BytesRead, nil);
  SetFilePointer(FHandle, PEHeaderOffset + $34, nil, 0);
  ReadFile(FHandle, ImageBase, SizeOf(ImageBase), BytesRead, nil);
  CloseHandle(FHandle);
  output:=ImageBase+EntryPointRVA;
  result:=IntToHex(output,8);
end;

function GetEPoffset(filname: string): string;
var I: DWORD;
begin
  if not openpe(filname) then exit;

  SetFilePointer(FHandle, PEHeaderOffset + $28, nil, 0);
  ReadFile(FHandle, EntryPointRVA, SizeOf(EntryPointRVA), BytesRead, nil);

  SetFilePointer(FHandle, PEHeaderOffset + $F8, nil, 0);
  for I:= 1 to NumOfSections do
  begin
    ReadFile(FHandle, Section, SizeOf(Section), BytesRead, nil);
    if (EntryPointRVA >= Section.VirtualAddress)
      and (EntryPointRVA < Section.VirtualAddress + Section.VirtualSize) then Break;
  end;
  EntryPointOffset:= EntryPointRVA - Section.VirtualAddress + Section.PhysicalOffset;
  CloseHandle(FHandle);
  result:=IntToHex(EntryPointOffset,8);
end;

function GetSecName(filname: string; SectionNum:integer): string;
var n:integer;
  max:integer;
begin
if not openpe(filname) then exit;

SetFilePointer(FHandle, PEHeaderOffset + $06, nil, 0);
ReadFile(FHandle, NumOfSections, SizeOf(NumOfSections), BytesRead, nil);
max:=NumOfSections;

if SectionNum <= max then
begin
 SetFilePointer(FHandle, PEHeaderOffset + $F8, nil, 0);
 for n:= 1 to SectionNum do
  begin
   ReadFile(FHandle, Section, SizeOf(Section), BytesRead, nil);
  end;
 CloseHandle(FHandle);
 result:=section.Name;
end;
end;

function GetSecVSize(filname: string; SectionNum:integer): string;
var n:integer;
  max:integer;
begin
if not openpe(filname) then exit;

SetFilePointer(FHandle, PEHeaderOffset + $06, nil, 0);
ReadFile(FHandle, NumOfSections, SizeOf(NumOfSections), BytesRead, nil);
max:=NumOfSections;

if SectionNum <= max then
begin
SetFilePointer(FHandle, PEHeaderOffset + $F8, nil, 0);
for n:= 1 to SectionNum do
begin
ReadFile(FHandle, Section, SizeOf(Section), BytesRead, nil);
end;
CloseHandle(FHandle);
result:=IntToHex(section.VirtualSize,8);
end;
end;

function GetSecVOffs(filname: string; SectionNum:integer): string;
var n:integer;
  max:integer;
begin
if not openpe(filname) then exit;

SetFilePointer(FHandle, PEHeaderOffset + $06, nil, 0);
ReadFile(FHandle, NumOfSections, SizeOf(NumOfSections), BytesRead, nil);
max:=NumOfSections;

if SectionNum <= max then
begin
SetFilePointer(FHandle, PEHeaderOffset + $F8, nil, 0);
for n:= 1 to SectionNum do
begin
ReadFile(FHandle, Section, SizeOf(Section), BytesRead, nil);
end;
CloseHandle(FHandle);
result:=IntToHex(section.VirtualAddress,8);
end;
end;

function GetSecPSize(filname: string; SectionNum:integer): string;
var n:integer;
  max:integer;
begin
if not openpe(filname) then exit;
SetFilePointer(FHandle, PEHeaderOffset + $06, nil, 0);
ReadFile(FHandle, NumOfSections, SizeOf(NumOfSections), BytesRead, nil);
max:=NumOfSections;

if SectionNum <= max then
begin
SetFilePointer(FHandle, PEHeaderOffset + $F8, nil, 0);
for n:= 1 to SectionNum do
begin
ReadFile(FHandle, Section, SizeOf(Section), BytesRead, nil);
end;
CloseHandle(FHandle);
result:=IntToHex(section.PhysicalSize,8);
end;
end;

function GetSecPOffs(filname: string; SectionNum:integer): string;
var n:integer;
  max:integer;
begin
if not openpe(filname) then exit;
SetFilePointer(FHandle, PEHeaderOffset + $06, nil, 0);
ReadFile(FHandle, NumOfSections, SizeOf(NumOfSections), BytesRead, nil);
max:=NumOfSections;

if SectionNum <= max then
begin
SetFilePointer(FHandle, PEHeaderOffset + $F8, nil, 0);
for n:= 1 to SectionNum do
begin
ReadFile(FHandle, Section, SizeOf(Section), BytesRead, nil);
end;
CloseHandle(FHandle);
result:=IntToHex(section.PhysicalOffset,8);
end;
end;

function GetSecCharact(filname: string; SectionNum:integer): string;
var n:integer;
  max:integer;
begin
 if not openpe(filname) then exit;
 SetFilePointer(FHandle, PEHeaderOffset + $06, nil, 0);
 ReadFile(FHandle, NumOfSections, SizeOf(NumOfSections), BytesRead, nil);
 max:=NumOfSections;
 if SectionNum <= max then
  begin
   SetFilePointer(FHandle, PEHeaderOffset + $F8, nil, 0);
  for n:= 1 to SectionNum do
   begin
    ReadFile(FHandle, Section, SizeOf(Section), BytesRead, nil);
   end;
  CloseHandle(FHandle);
  result:=IntToHex(section.Characteristics,8);
 end;
end;

end.







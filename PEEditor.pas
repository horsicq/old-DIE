unit PEEditor;

interface

uses
Windows, Messages, SysUtils, Classes, Controls;

type
  EPEEditorError = class(Exception);

type TDirectory = packed record
  RVA             :DWORD;
  Size            :DWORD;
end;

type PDirectory=^TDirectory;

Type TSection = packed record
  name	        :array[0..7] of char;
  virtual_size  :DWORD;
  rva           :DWORD;
  physical_size	:DWORD;
  physical_offs	:DWORD;
  reserved	    :array[0..11] of char;
  flags	      	:DWORD;
end;

type PSection=^TSection;

type TExportTable=packed record
  Flags:Dword;
  TDS:Dword;
  MV:word;
  MinV:word;
  Name_RVA:Dword;
  Ordinal_Base:dword;
  Num_of_Functions:dword;                                                        
  Num_of_Name_Pointers:dword;
  Address_Table_RVA:dword;
  Name_Pointers_RVA:dword;
  Ordinal_Table_RVA:dword;
end;

type TExportedFunction=record
  Name:string;
  Ordinal:word;
end;

type PExportedFunction=^TExportedFunction;

type TImportDirElement = packed record
  id_ilt_rva      :DWORD;
  id_timedate     :DWORD;
  id_ifc_rva      :DWORD;
  id_name_rva     :DWORD;
  id_iat_rva      :DWORD;
end;

type TPEEditor=class (TComponent)

//-------------------Privates------------------------
private
//-------------------Privates------------------------
  PE:Dword;
  IS_MEM_ALLOCATED,IS_TLIST_CREATE:BOOLEAN;
  Section,Section1:PSection;
  Sect_Cnt:Word;
  F_PEFilePath:string;
  buff1 : array of byte;

  Procedure SetImageSize(a:dword);
  Procedure SetImageBase(a:dword);
  Procedure SetEntryPoint(a:dword);
  Function GetImageSize:dword;
  Function GetImageBase:dword;
  Function GetEntryPoint:dword;
  Function LoadPE:boolean;
  Function SignCmp(const _sign,_file:string):integer;
  Function GetName(const n:integer):string;
  procedure LoadPEFromMEM;
  procedure OpenPe(pat:string);
//-------------------Published------------------------
published
//-------------------Published------------------------
  property EntryPoint:dword read GetEntryPoint write SetEntryPoint;
  property ImageBase:dword read GetImageBase write SetImageBase;
  property ImageSize:dword read GetImageSize write SetImageSize;
  property PEFilePath:string read F_PEFilePath write OpenPe;

//-------------------Publics------------------------
public
//-------------------Publics------------------------
  PE_HEADEROFFSET:Dword;
  PE_NT_HEADERSIZE:WORD;
  FM : thandle;
  MEMPTR:Pointer;
  MEMSZ:DWORD;
  dos : PImageDosHeader;
  nt  : PImageNtHeaders;
  EpBytes : array [1..5] of byte;
  SectionList:TList;
  ImportedList:Tlist;
  ExportedList:Tlist;
  DirectoryList:TList;
  procedure GetRVAsectPE(dRVA:dword;var dMinSecRVA,dSectNo:dword);
  Function RvaToFileOffset(rva:dword):dword;
  Function FileOffsetToRva(foffset:dword):dword;
  Function RvaToFileName(rva:dword):string;
  Function RvaToSecNum(rva:dword):integer;
  Function GetDelphiVer:string;
  Function GetSign(const n:integer;const bb:array of byte):integer;
  Function Sign_Cmp(const bb1,bb2:array of byte):integer;
  Function rs_dword(add:dword):string;
  Function EpCheckVC:string;
  Function EpCheckMasm:integer;
  procedure RefreshPE;
  procedure AddSection(SecName:string;R_Size,V_Size:dword);
  procedure SavePE(pat:string);
  procedure ClosePE;
  constructor Create(aowner:TComponent);override;
  destructor Destroy;override;
end;

procedure Register;

implementation

uses SignBase;

procedure Register;
begin
  RegisterComponents('Hellspawn',[TPEEditor]);
end;

Destructor TPEEditor.Destroy;
begin
  dos:=nil;
  nt:=nil;
  If IS_TLIST_CREATE then SectionList.Free;
  if IS_MEM_ALLOCATED then
  begin
    UnmapViewOfFile(MEMPTR);
    CloseHandle(FM);
    CloseHandle(PE);
  end;
  inherited;
end;

constructor TPEEditor.Create(aOwner:TComponent);
begin
  inherited;
  IS_MEM_ALLOCATED:=False;
  SectionList:=Tlist.Create;
  IS_TLIST_CREATE :=True;
end;

function TPEEditor.rs_dword(add:dword):string;
var
  i:integer;
  s1,s2:string[8];
  tt:string[2];
begin
  s1:=inttohex(add,8);
  s2:='';
  For i:=1 to 4 do
  begin
    tt:=copy(s1,2*i-1,2);
    s2:=tt + s2;
  end;
  result:=s2;
end;

Function TPEEditor.GetName(const n:integer):string;
begin
  case n of
    1: result:=' [ver: 7.0]';
    2: result:=' [ver: 6.0]';
    3: result:=' [ver: 5.0]';
    4: result:=' [ver: 8.0]';
    5: result:=' [ver: 6.0]';
    6: result:=' [ver: 6.0]';
    7: result:=' [ver: 6.0]';
    8: result:=' [ver: 7.0]';
    9: result:=' [ver: 7.0]';
   10: result:=' [ver: 7.0]';
   11: result:=' [ver: 5.0]';
   12: result:=' [ver: 4.0]';
   13: result:=' LCC Win32 1.x';
   14: result:=' WATCOM C/C++ 32';
   15: result:=' [ver: 7.1]';
   16: result:=' [ver: 6.0 DLL]';
   17: result:=' FreeBasic 0.14';
   18: result:=' [ver: 8.0]';
  end;
end;

Function TPEEditor.GetSign(const n:integer;const bb:array of byte):integer;
var
  p:integer;
begin
  p:=0;
  case n of
    1: p:=Sign_Cmp(VC70,bb);
    2: p:=Sign_Cmp(VC60,bb);
    3: p:=Sign_Cmp(VC50,bb);
    4: p:=Sign_Cmp(VC80,bb);
    5: p:=Sign_Cmp(VC60_2,bb);
    6: p:=Sign_Cmp(VC60_3,bb);
    7: p:=Sign_Cmp(VC60_4,bb);
    8: p:=Sign_Cmp(VC70_2,bb);
    9: p:=Sign_Cmp(VC70_3,bb);
   10: p:=Sign_Cmp(VC70_4,bb);
   11: p:=Sign_Cmp(VC50_1,bb);
   12: p:=Sign_Cmp(VC4x,bb);
   13: p:=Sign_Cmp(LCCWin32_1x,bb);
   14: p:=Sign_Cmp(WATCOM32,bb);
   15: p:=Sign_Cmp(VC71,bb);
   16: p:=Sign_Cmp(VC60_DLL,bb);
   17: p:=Sign_Cmp(FreeBasic014,bb);
   18: p:=Sign_Cmp(VC80_1,bb);
  end;
  result:=p;
end;

Function TPEEditor.EpCheckMasm:integer;
var
  i:integer;
  buff : array [1..11] of byte;
  dd:dword;
  s1,s2:string;
begin
  result:=0;
  dd:=RvaToFileOffset(nt.OptionalHeader.AddressOfEntryPoint);
  If (dd=0) then exit;
  If (dd > MEMSZ-11) then exit;
  s1:='';
  s2:='';
  move(pointer(dword(MEMPTR)+dd)^,buff,sizeof(buff));
  For i:=1 to sizeof(buff) do s1:=s1+inttohex(buff[i],2);
  s2:='6A00E8::::0000';
  i:=SignCmp(s2,s1);
  If i=0 then
  begin
    s2:='6A00E8::::::A3::::4000';
    i:=SignCmp(s2,s1);
  end;
  If i=0 then
  begin
    s2:='6A::E8::::0000';
    i:=SignCmp(s2,s1);
  end;
  result:=i;
end;

Function TPEEditor.EpCheckVC:string;
var
  i:integer;
  buff : array [1..250] of byte;
  dd:dword;
  s1,s2:string;
begin
  result:='';
  dd:=RvaToFileOffset(nt.OptionalHeader.AddressOfEntryPoint);
  If (dd=0) then exit;
  If (dd > MEMSZ-250) then exit;
  s1:='';
  s2:='';
  Zeromemory(@buff,250);
  move(pointer(dword(MEMPTR)+dd)^,buff,250);
  For i:=1 to 18 do
  begin
    If GetSign(i,buff) = 1 then
    begin
      result:=GetName(i);
      exit;
    end;
  end;
  result:=' [ver: x.x]';
end;

Function TPEEditor.GetDelphiVer;
var
  PP: Pointer;
  sec : Psection;
  dw1,dw2,dw3:dword;
  pos,max:dword;
  rr : array [1..4] of byte;
  function InCode(DW:DWORD) : boolean;
  begin
    result:=(dw > nt.OptionalHeader.ImageBase+(sec.rva)) and (dw < nt.OptionalHeader.ImageBase+(sec.rva)+sec.physical_size);
  end;
begin
  result:=' [ver: x]';
  PP:=pointer(MEMPTR);
  sec:=PSection(SectionList[0]);

  pos:=sec.physical_offs;
  max:=sec.physical_offs+sec.physical_size;
  If (sec.physical_offs > MEMSZ) or (sec.physical_size > MEMSZ) or (max > MEMSZ) then exit;
  repeat
    MOVE(Pointer(dword(PP)+pos)^,rr,4);
    pos:=pos+4;
    if (rr[1]=$7) and (rr[2]=$8) and (rr[3]=$54) and (rr[4]=$43) then
    begin
      MOVE(Pointer(dword(PP)+pos)^,rr,4);
      pos:=pos+4;
      if (rr[1]=$6F) and (rr[2]=$6E) and (rr[3]=$74) and (rr[4]=$72) then
      begin
        pos:=pos+2;
        MOVE(Pointer(dword(PP)+pos)^,dw1,4);
        If InCode(dw1) then
        begin
          dw2:=dw1-nt.OptionalHeader.ImageBase-(sec.rva)+sec.physical_offs;
          pos:=dw2-40;
          MOVE(Pointer(dword(PP)+pos)^,dw1,4);
          pos:=pos-44;
          MOVE(Pointer(dword(PP)+pos)^,dw3,4);
          If (dw1=0) and (dw3=$4F540774) then result:=' [ver: 2]';
          If (dw1=0) and (dw3=$746E4907) then result:=' [ver: 3]';
          If (dw1=$B4) or (dw1=$114) then result:=' [ver: 4]';
          If (dw1=$120) then result:=' [ver: 5]';
          If (dw1=$128) then result:=' [ver: 6 CLX]';
          If (dw1=$164) then result:=' [ver: 2005]';
          If (dw1=$190) then result:=' [ver: 2006]';
          If ((dw1=$15C) or (dw1=$160)) then
            If ((dw3=$40100000) or (dw3=$100000)) then result:=' [ver: 7]' else result:=' [ver: 6]';
          exit;
        end;
      end;
    end;
  until (pos >= max);
end;

function TPEEditor.sign_cmp(const bb1:array of byte; const bb2:array of byte):integer;
var
  nn,i:integer;
begin;
  result:=0;
  nn:=length(bb1);
  for i:=0 to nn-1 do
    if (bb1[i] <> bb2[i]) and (bb1[i] <> $3F) then exit;
  result:=1;
end;

function TPEEditor.SignCmp(const _sign,_file:string):integer;
var
  n1,n2,pp:integer;
  s1,s2:string;
begin;
  s1:=_sign;
  s2:=_file;
  n1:=length(s1);
  n2:=length(s2);
  delete(s2,n1+1,n2);
  pp:=0;
  for n2:=1 to n1 do
  begin
    if ((s1[n2] = s2 [n2]) or (s1[n2] = ':')) then inc(pp);
  end;
  result:=0;
  If pp = n1 then result:=1;
end;

procedure TPEEditor.ClosePE;
begin
  If IS_TLIST_CREATE then
  begin
    IS_TLIST_CREATE:=false;
    SectionList.Free;
  end;
  If IS_MEM_ALLOCATED then
  begin
    UnmapViewOfFile(MEMPTR);
    CloseHandle(FM);
    CloseHandle(PE);
  end;
end;

procedure TPEEditor.OpenPE(pat:string);
var
  c:dword;
begin
  if F_PEFilePath <> '' then
  begin
    If IS_MEM_ALLOCATED then
    begin
      UnmapViewOfFile(MEMPTR);
      CloseHandle(FM);
      CloseHandle(PE);
      IS_MEM_ALLOCATED:=False;
    end;
  end;
  F_PEFilePath:='';
  IF not FileExists(pat) then exit;
  F_PEFilePath:=pat;
  //PE:=FileOpen(PAnsiChar(F_PEFilePath),fmShareDenyNone);
  PE:=CreateFile(PChar(F_PEFilePath),GENERIC_READ,FILE_SHARE_READ or FILE_SHARE_WRITE,nil,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL,0);
  IF (PE = INVALID_HANDLE_VALUE) then
  begin
    F_PEFilePath:='1';
    exit;
  end;
  MEMSZ:=GetFileSize(PE,nil);
  FM:=CreateFileMapping(PE, nil,PAGE_READONLY, 0, MEMSZ, nil);
  IF (FM = INVALID_HANDLE_VALUE) then
  begin
    F_PEFilePath:='1';
    CloseHandle(PE);
    exit;
  end;
  MEMPTR:=MapViewOfFile(FM,FILE_MAP_READ, 0, 0, MEMSZ);
  IF (MEMPTR = nil) then
  begin
    F_PEFilePath:='1';
    CloseHandle(FM);
    CloseHandle(PE);
    exit;
  end;
  IS_MEM_ALLOCATED:=TRUE;
  if (not LoadPE) then
  begin
    F_PEFilePath:='2';
    UnmapViewOfFile(MEMPTR);
    CloseHandle(FM);
    CloseHandle(PE);
    IS_MEM_ALLOCATED:=FALSE;
    exit;
  end;
  F_PEFilePath:=pat;

  dos:=PImageDosHeader(dword(MEMPTR));
  nt:=PImageNtHeaders(Pointer(Dword(dos)+Dword(dos._lfanew)));
  c:=RvaToFileOffset(NT.OptionalHeader.AddressOfEntryPoint);


  if ((nt.FileHeader.Characteristics and IMAGE_FILE_EXECUTABLE_IMAGE) = 0)
    or (nt.FileHeader.Machine <> IMAGE_FILE_MACHINE_I386) {or (c = $FFFFFFFF)} {or (c >= MEMSZ)}
  then
  begin
    F_PEFilePath:='2';
    UnmapViewOfFile(MEMPTR);
    CloseHandle(FM);
    CloseHandle(PE);
    IS_MEM_ALLOCATED:=FALSE;
    exit;
  end;

  c:=RvaToFileOffset(nt.OptionalHeader.AddressOfEntryPoint);
  If (c <> $FFFFFFFF) and (c < MEMSZ-5) then
    MOVE(pointer(dword(MEMPTR)+c)^,EpBytes,5)
  else ZeroMemory(@EpBytes,5);
end;

Procedure TPEEditor.AddSection(SecName:string;R_Size,V_Size:dword);
const
  Ziro: Byte = $00;
var
  VirAddr,PhyAddr,Sect_Align,SzofImg: DWORD;
  i:integer;
  Sec1,Sec2:Psection;
  Secnum : word;
begin
  if (length(SecName)>8) or (R_Size=0) or (V_Size=0) then exit;
  Secnum:=nt.FileHeader.NumberOfSections;
  Sect_Align:=nt.OptionalHeader.SectionAlignment;
  Sec2:=PSection(SectionList[Secnum-1]);
  PhyAddr:=sec2.physical_size+sec2.physical_offs;
  VirAddr:=((Sec2.rva+Sec2.virtual_size+Sect_Align-1) div Sect_Align) * Sect_Align;
  new(Sec1);
  with Sec1^ do
  begin
    rva:=VirAddr;
    virtual_size:=V_Size;
    physical_size:=R_Size;
    physical_offs:=PhyAddr;
    StrPCopy(name,SecName);
    flags:=$E00000E0;
  end;
  SzofImg:=nt.OptionalHeader.SizeOfImage;
  nt.OptionalHeader.SizeOfImage:=SzofImg+sec2.virtual_size;
  Move(Sec1^,Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$18+PE_NT_HEADERSIZE+(Secnum*40))^,40);
  nt.FileHeader.NumberOfSections:=Secnum+1;
  SetFilePointer(PE,Sec1.physical_offs+Sec1.physical_size-R_Size, nil, 0);
  for i:=1 to R_Size do WriteFile(PE, Ziro, SizeOf(Ziro), SzofImg, nil);
end;

procedure TPEEditor.LoadPEFromMEM;
var
  i:integer;
  Section:Psection;
begin
  If (IS_TLIST_CREATE = false) then
  begin
    SectionList:=Tlist.Create;
    IS_TLIST_CREATE :=True;
  end;
  SectionList.Clear;
//  ImportedList.Clear;
//  ExportedList.Clear;
//  DirectoryList.Clear;
//  SectionList.clear;
  {For i:=0 to Dirs_Cnt-1 do
  begin
    New(Dir);
    move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$78+(i*8))^,Dir^,8);
    DirectoryList.Add(Dir);
  end; }
  For i:=0 to Sect_Cnt-1 do
  begin
    New(Section);
    Move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$18+PE_NT_HEADERSIZE+(i*40))^,Section^,40);
    SectionList.Add(Section);
  end;
//LoadImportDir;
//LoadImportedFunctions;
//LoadExportedFunctions;
end;

Function TPEEditor.LoadPE():boolean;
var
  CmpMZ:array[0..1] of char;
  CmpPE:array[0..3] of char;
  d1:DWORD;
  tmp:dword;
begin
  Result:=FALSE;
  try
    Move(MEMPTR^,CmpMZ,2);
    if (CmpMZ[0]<>'M') or (CmpMZ[1]<>'Z') then Exit;
    if (MEMSZ<=$40) then exit;
    Move(Pointer(Dword(MEMPTR)+$3C)^,PE_HEADEROFFSET,4);
    Move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET)^,CmpPE,4);
    if (CmpPE[0]<>'P') or (CmpPE[1]<>'E') or (CmpPE[2]<>#0) or (CmpPE[3]<>#0) then exit;
    Move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$14)^,PE_NT_HEADERSIZE,2);
    if (PE_NT_HEADERSIZE = 0) then exit;
    Move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$06)^,Sect_Cnt,2);
    //Move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$74)^,Dirs_cnt,4);

    Move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$38)^,d1,4);
    LoadPEFromMEM();
  except
    exit;
  end;
  If (SectionList.Count = 0) then exit;
  Section:=Psection(SectionList.Items[0]);

  tmp:= (Section.rva * d1) div d1;
  if (Section.rva <> tmp) then exit;
  //if (Section.physical_size > MEMSZ) then  exit;
  Result:=TRUE;
end;

Function TPEEditor.FileOffsetToRva(foffset:dword):dword;
var
  i:integer;
  z:dword;
begin
  result:=0;
  for i:=0 to Sectionlist.count-1 do
  begin
    Section:=PSection(SectionList[i]);

    If Section1.physical_offs = 0 then Continue;

    if ((foffset>=Section.physical_offs) and (foffset < Section.physical_offs+Section.physical_size)) then
    begin
      z:=Section.rva+foffset-Section.physical_offs;
      result:=z;
      exit;
    end;
    if (foffset<Section.physical_offs) then
    begin
      z:=foffset;
      result:=z;
      exit;
    end;
  end;
end;

Procedure TPEEditor.GetRVAsectPE(dRVA:dword;var dMinSecRVA,dSectNo:dword);
var
  iValue,iSecSize:dword;
  i:integer;
begin
  dMinSecRVA:= 0;
  dSectNo:= $FFFFFFFF;
  For i:=0 To Sectionlist.count-1 Do
  begin
    Section1:=PSection(SectionList[i]);

    If (Section1.physical_offs = 0) then Continue;

    Section:=PSection(SectionList[dMinSecRVA]);
    If (Section.rva > Section1.rva) then dMinSecRVA:=i;
    
    If Section1.virtual_size > Section.physical_size
      then iSecSize:=Section1.virtual_size else iSecSize:=Section1.physical_size;

    iValue:= dRVA - Section1.rva;
    If ((iValue >= 0) and (iValue < iSecSize)) then
    begin
      dSectNo:= i;
      break;
    end;
  end;
end;

Function TPEEditor.RvaToFileOffset(RVA:dword):dword;
var
  FileAlign, Offset: dword;
  dMinSecRVA,dSectNo: dword;
begin
  Offset:=$FFFFFFFF;
  If nt.OptionalHeader.FileAlignment = nt.OptionalHeader.SectionAlignment
    then FileAlign:=1 else FileAlign:=nt.OptionalHeader.FileAlignment;
  GetRVAsectPE(RVA,dMinSecRVA,dSectNo);
  If (dSectNo<>$FFFFFFFF) then
  begin
    Section:=PSection(SectionList[dSectNo]);
    Offset :=(Section.physical_offs div FileAlign)*FileAlign+(RVA-Section.rva);
  end else
  begin
    Section:=PSection(SectionList[dMinSecRVA]);
    If (RVA <= Section.rva) then Offset:= RVA;
  end;
  Result:=Offset;
end;

Function TPEEditor.RvaToSecNum(RVA:dword):integer;
var
  i:integer;
  SecSize, Tmp : dword;
begin
  Result:=-1;
  for i:=0 to Sectionlist.count-1 do
  begin
    Section:=PSection(SectionList[i]);

    If (Section.physical_offs = 0) then Continue;

    If Section.virtual_size > Section.physical_size
      then SecSize:=Section.virtual_size else SecSize:=Section.physical_size;
    Tmp:= RVA - Section.rva;
    if ((Tmp >= 0) and (Tmp < SecSize)) then
    begin
      result:=i;
      exit;
    end;
    If ((Rva < Section.rva) and (i=0)) then
    begin
      result:=i;
      exit;
    end;
  end;
end;

Function TPEEditor.RvaToFileName(rva:dword):string;
var
  i:integer;
  FileAlign, SecSize, Offset, Tmp : dword;
begin
  Result:='';
  FileAlign:=nt.OptionalHeader.FileAlignment;
  for i:=0 to Sectionlist.count-1 do
  begin
    Section:=PSection(SectionList[i]);

    If Section1.physical_offs = 0 then Continue;

    If Section.virtual_size > Section.physical_size
      then SecSize:=Section.virtual_size else SecSize:=Section.physical_size;
    Tmp:= RVA - Section.rva;
    if ((Tmp >= 0) and (Tmp < SecSize)) then
    begin
      result:=Section.name;
      exit;
    end;
    If ((Rva < Section.rva) and (i=0)) then
    begin
      result:=Section.name;
      exit;
    end;
  end;
end;

Function TPEEditor.GetEntryPoint:dword;
begin
Result:=0;
if not IS_MEM_ALLOCATED then exit;
Move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$28)^,Result,4);
end;

Function TPEEditor.GetImageSize:dword;
begin
Result:=0;
if not IS_MEM_ALLOCATED then exit;
Move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$50)^,Result,4);
end;

Function TPEEditor.GetImageBase:dword;
begin
Result:=0;
if not IS_MEM_ALLOCATED then exit;
Move(Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$34)^,Result,4);
end;

Procedure TPEEditor.SetEntryPoint(a:dword);
begin
if not IS_MEM_ALLOCATED then exit;
Move(a,Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$28)^,4);
end;

Procedure TPEEditor.SetImageSize(a:dword);
begin
if not IS_MEM_ALLOCATED then exit;
Move(a,Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$50)^,4);
end;

Procedure TPEEditor.SetImageBase(a:dword);
begin
if not IS_MEM_ALLOCATED then exit;
Move(a,Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$34)^,4);
end;

procedure TPEEditor.RefreshPE;
var
i:integer;
begin
//for i:=0 to DirectoryList.Count-1 do
//move(PDirectory(DirectoryList[i])^,Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$78+(i*8))^,8);
for i:=0 to SectionList.Count-1 do
Move(PSection(SectionList[i])^,Pointer(Dword(MEMPTR)+PE_HEADEROFFSET+$18+PE_NT_HEADERSIZE+(i*40))^,40);
LoadPEFromMEM;
end;

procedure TPEEditor.SavePE(pat:string);
var
TOPE:dword;
begin
TOPE:=_lcreat(pchaR(pat),0);
if TOPE=dword(-1) then raise EPEEditorError.Create('ERROR: Cant save to this path.');
RefreshPE;
_lwrite(TOPE,MEMPTR,MEMSZ);
_lclose(TOPE);
end;


end.

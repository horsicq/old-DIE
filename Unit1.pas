unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Math, Buttons,Registry,inifiles,
  PEEditor, jpeg, PJDropFiles, Clipbrd, AdvListV,Menus,
  CoolTrayIcon ,ShellAPI, HCMngr, Classes, Grids, MPHexEditor;

type
  TDiEfrm = class(TForm)
    OpenDialog1: TOpenDialog;
    Bevel5: TBevel;
    Label2: TLabel;
    Label11: TLabel;
    Bevel13: TBevel;
    PE: TPEEditor;
    Label13: TLabel;
    Bevel16: TBevel;
    Bevel24: TBevel;
    Label17: TLabel;
    Bevel28: TBevel;
    Label21: TLabel;
    PopupMenu1: TPopupMenu;
    menu1: TMenuItem;
    menu2: TMenuItem;
    N1: TMenuItem;
    Label24: TLabel;
    Bevel32: TBevel;
    PopupMenu3: TPopupMenu;
    Copy1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PopupMenu2: TPopupMenu;
    CopyAll1: TMenuItem;
    HideDiE1: TMenuItem;
    N561: TMenuItem;
    HashManager1: THashManager;
    PJExtFileFilter1: TPJExtFileFilter;
    PJFormDropFiles1: TPJFormDropFiles;
    CoolTrayIcon1: TCoolTrayIcon;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel4: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    file_info: TLabel;
    file_name: TLabel;
    file_size: TLabel;
    Bevel6: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    Image2: TImage;
    Button1: TButton;
    _Name: TStaticText;
    _Size: TStaticText;
    _Info: TStaticText;
    GroupBox1: TGroupBox;
    _EntryPoint: TStaticText;
    _ImageBase: TStaticText;
    _ImageSize: TStaticText;
    _FileOffset: TStaticText;
    _FirstBytes: TStaticText;
    Button5: TButton;
    _EPsection: TStaticText;
    _Subsystem: TStaticText;
    _Linker: TStaticText;
    _Compiler: TStaticText;
    _Packer: TStaticText;
    StaticText1: TStaticText;
    button_plug: TButton;
    _Type: TStaticText;
    btn2: TButton;
    TabSheet2: TTabSheet;
    Bevel10: TBevel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Bevel7: TBevel;
    Bevel9: TBevel;
    Bevel8: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    _Entrobits: TStaticText;
    _Bits: TStaticText;
    _Bytes: TStaticText;
    _Entropy_Index: TStaticText;
    _info2: TStaticText;
    _entro_but: TButton;
    GroupBox5: TGroupBox;
    Bevel17: TBevel;
    Bevel14: TBevel;
    Label12: TLabel;
    Label14: TLabel;
    Bevel26: TBevel;
    Label19: TLabel;
    Bevel27: TBevel;
    Label20: TLabel;
    Bevel29: TBevel;
    Label22: TLabel;
    _Detected: TStaticText;
    _Entro: TStaticText;
    _Crc32_16: TStaticText;
    _Crc32_64: TStaticText;
    Button6: TButton;
    GroupBox4: TGroupBox;
    Bevel22: TBevel;
    Label15: TLabel;
    Bevel23: TBevel;
    Label16: TLabel;
    Bevel25: TBevel;
    Label18: TLabel;
    Bevel31: TBevel;
    _Md5_64: TStaticText;
    Button4: TButton;
    ProgressBar1: TProgressBar;
    _Md5_16: TStaticText;
    Button7: TButton;
    TabSheet8: TTabSheet;
    _plugins: TGroupBox;
    Bevel30: TBevel;
    Label23: TLabel;
    Bevel33: TBevel;
    Label25: TLabel;
    _plug_info: TStaticText;
    _plug_work: TStaticText;
    Panel1: TPanel;
    Bevel38: TBevel;
    Image3: TImage;
    TabSheet6: TTabSheet;
    ListView1: TListView;
    info_scan: TStaticText;
    Check_sec: TButton;
    TabSheet7: TTabSheet;
    ListView2: TListView;
    AdvListView1: TAdvListView;
    TabSheet5: TTabSheet;
    _AsmList: TListView;
    _goto_dis: TButton;
    Edit1: TEdit;
    info_dis: TStaticText;
    TabSheet9: TTabSheet;
    info_hex: TStaticText;
    _goto_hex: TEdit;
    Button8: TButton;
    MPHexEditor1: TMPHexEditor;
    TabSheet4: TTabSheet;
    Bevel15: TBevel;
    GroupBox3: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Button3: TButton;
    TabSheet3: TTabSheet;
    Bevel34: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Image1: TImage;
    Bevel18: TBevel;
    Bevel19: TBevel;
    Bevel35: TBevel;
    Label26: TLabel;
    Bevel37: TBevel;
    Bevel36: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    CheckBox9: TCheckBox;
    PopupMenu4: TPopupMenu;
    Copyoffset1: TMenuItem;
    Copyselsize1: TMenuItem;
    Copyselstart1: TMenuItem;
    N2: TMenuItem;
    Copyall2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure ListView2SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure AdvListView1Data(Sender: TObject; Item: TListItem);
    procedure CheckBox5Click(Sender: TObject);
    procedure HashManager1Progress(Sender: TObject; Current,
      Maximal: Integer);
    procedure Button6Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CoolTrayIcon1DblClick(Sender: TObject);
    procedure menu2Click(Sender: TObject);
    procedure menu1Click(Sender: TObject);
    procedure button_plugClick(Sender: TObject);
    procedure copy_to_clipboar(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure Copy1Click(Sender: TObject);
    procedure MPHexEditor1SelectionChanged(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure _goto_hexKeyPress(Sender: TObject; var Key: Char);
    procedure Button8Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure _entro_butClick(Sender: TObject);
    procedure _AsmListDblClick(Sender: TObject);
    procedure _goto_disClick(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure CopyAll1Click(Sender: TObject);
    procedure HideDiE1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure ListView1KeyPress(Sender: TObject; var Key: Char);
    procedure Check_secClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure N561Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox8Click(Sender: TObject);
    procedure PJFormDropFiles1FileFilter(Sender: TObject;
      const FileName: String; const IsFolder: Boolean;
      var Accept: Boolean);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure Copyall2Click(Sender: TObject);
    procedure Copyoffset1Click(Sender: TObject);
    procedure Copyselsize1Click(Sender: TObject);
    procedure Copyselstart1Click(Sender: TObject);
  private
   // procedure LoadPlugins(Sender:TObject);
    procedure scan_file();
    procedure clear_all();
    procedure FillMenu(Sender:TObject);
    procedure MenuClick(Sender:TObject);
  public
  end;

var
  DiEfrm: TDiEfrm;

implementation

{$R *.dfm}

uses SignBase, cadt, DECUtil;

type TDisasmOptions = packed record
  Command : TDisCommand;
  Instr   : TInstruction;
  Len     : DWORD;
  Mnem    : string;
end;

type
  _IMAGE_IMPORT_DESCRIPTOR = packed record
  case Integer of
  0:(Characteristics: DWORD);
  1:(OriginalFirstThunk:DWORD;
  TimeDateStamp:DWORD;
  ForwarderChain: DWORD;
  Name: DWORD;
  FirstThunk: DWORD);
end;

IMAGE_IMPORT_DESCRIPTOR=_IMAGE_IMPORT_DESCRIPTOR;
PIMAGE_IMPORT_DESCRIPTOR=^IMAGE_IMPORT_DESCRIPTOR;

type TImportedFunction = packed record
  ApiName:string;
  Hint:word;
  Rva:dword;
end;

type TimportedLibrary = packed record
  DllName:string;
  Rva:dword;
  First:dword;
  FunctionList:TList;
end;     

type PImportedFunction = ^TImportedFunction;
type PImportedLibrary  = ^TImportedLibrary;

type
  TDiePlugProc   = function(die_hwnd:HWND; file_name:PCHAR; die_name:PCHAR):boolean stdcall;
  TDiePlugHwnd   = function(die_info:HWND; die_work:HWND):boolean stdcall;
  TDiePlugHwndEx = function(die_panel:HWND; die_plstates:HWND):boolean stdcall;
  TDiePlugPe     = function(file_ptr:pointer;file_size:dword;file_offset:dword):boolean stdcall;
  TDiePlugName   = function:PCHAR stdcall;
  TDiePlugExit   = function:boolean stdcall;
  TDiePlugStatus = function(file_name:PCHAR;plug_status:pointer):integer stdcall;

TPlugin = packed record
  Name     : shortstring;
  Handle   : HWND;
  DiePe    : pointer;
  DieProc  : pointer;
  DieHwnd  : pointer;
  DieHwndEx: pointer;
  DieExit  : pointer;
  DieStatus: pointer;
end;

resourcestring
  NoFileLoaded = ' No file loaded';

const
  INVALID_VALUE = $FFFFFFFF;

var
  path   : string;
  AllPlug : array [0..25] of TPlugin;
  custom_open,rets,deep,hexview,loaded_hex,save_op: boolean;
  get_delphi:boolean;
  bAutoScan:boolean;
  bEmul:boolean;
  bPlugNeedExit:Boolean;
  bPluginsLoaded:Boolean;
  ImpList, FuncList : TList;
  basic,iPlugCnt    : integer;
  imp_kernel :integer;
  iDirLevel,iSignPlug : integer;
  iCurTab,iCurPlug : integer;
  iLoaded: integer;

procedure clear_hex;
var
  bb:Tmemorystream;
begin
  bb:= Tmemorystream.Create;
  DiEfrm.MPHexEditor1.LoadFromStream(bb);
  bb.Free;
  loaded_hex:=false;
end;

procedure TDiEfrm.clear_all;
begin
  Application.ProcessMessages;
  _plug_info.Caption:='';
  _plug_work.Caption:='';
  _packer.Caption:='';
  _compiler.Caption:='';
  _name.Caption:='';
  _size.Caption:='';
  _EntryPoint.Caption:=' EntryPoint:';                            
  _ImageBase.Caption:=' ImageBase:';
  _ImageSize.Caption:=' ImageSize:';
  _info.Caption:=' Select file';
  _info2.Caption:='';
  _Entropy_Index.Caption:=' Entropy Index:';
  _FirstBytes.Caption:=' EpBytes:  ';
  _EPsection.Caption:=' EpSection: ';
  _FileOffset.Caption:=' FileOffset:  ';
  _Subsystem.Caption:=' SubSystem: ';
  _Linker.Caption:=' LinkerInfo:';
  _Type.Caption:='';
  _bytes.Caption:='';
  _bits.Caption:='';
  _entrobits.Caption:='';
  _entro.Caption:='';
  _Detected.Caption:='';
  ListView1.Items.Clear;
  ListView2.Items.Clear;
  AdvListView1.Items.Clear;
  ListView2.Enabled:=true;
  ProgressBar1.Position:=0;
  _md5_64.Caption:='';
  _md5_16.Caption:='';
  _crc32_64.Caption:='';
  _crc32_16.Caption:='';
  info_scan.Caption:='';
  info_dis.Caption:='';
  _AsmList.Items.BeginUpdate;
  _AsmList.Items.Clear;
  _AsmList.Items.EndUpdate;
  clear_hex;
end;

procedure LoadPlugin(const _plname:string);
var
  lib:DWORD;
  tproc:TDiePlugProc;
  tname:TDiePlugName;
  s1:shortstring;
  i:integer;
begin
  try
    lib:=LoadLibrary(PChar(_plname));
  except
    exit;
  end;
  if (lib<>0) then
  begin
    @tname:=GetProcAddress(lib,'DiePlugName');
    @tproc:=GetProcAddress(lib,'DiePlugProc');
    if (@tname=nil) or (@tproc=nil) then
    begin
      FreeLibrary(lib);
      exit;
    end;
    s1:=tname;
    If (iPlugCnt > 0) then
    begin
      For i:=0 to iPlugCnt-1 do
        If s1 = AllPlug[i].Name then exit;
    end;
    If pos('PEiD signatures',s1) <> 0 then
    begin
      iSignPlug:=iPlugCnt;
      AllPlug[iPlugCnt].DieStatus:=GetProcAddress(lib,'DiePlugStatus');
      AllPlug[iPlugCnt].DiePe    :=GetProcAddress(lib,'DiePlugPe');
    end;
    AllPlug[iPlugCnt].Name:=s1;
    AllPlug[iPlugCnt].Handle:=lib;
    AllPlug[iPlugCnt].DieProc  :=@tproc;
    inc(iPlugCnt);
  end;
end;

procedure FindDirPlug(Path: string);
var
  SearchRec: TSearchRec;
  FindRes:Integer;
begin
  FindRes:=FindFirst(Path+'\*.*', faAnyFile, SearchRec);
  while (FindRes = 0) do
  begin
    if ((SearchRec.name='.') or (SearchRec.name='..')) then
    begin
      FindRes:=FindNext(SearchRec);
      continue;
    end;
    if ((SearchRec.Attr and faDirectory) <> 0) then
    begin
      If (iDirLevel = 1) then
      begin
        iDirLevel:=0;
        FindRes:=FindNext(SearchRec);
        Continue;
      end;
      inc(iDirLevel);
      //FindDirPlug(Path+'\'+SearchRec.Name);
      FindDirPlug(Path+SearchRec.Name);
      FindRes:=FindNext(SearchRec);
      Continue;
    end;
    if (pos('.dll',lowercase(SearchRec.Name))<>0) then LoadPlugin(Path+'\'+SearchRec.Name);
    FindRes:=FindNext(SearchRec);
  end;
  iDirLevel:=0;
  FindClose(SearchRec);
end;

Procedure LoadPlugins();
var
  NewMenuItem:TMenuItem;
  s:string;
begin
  s:=ExtractFilePath(application.ExeName)+'Plugins\';
  iPlugCnt:=0;
  iDirLevel:=0;
  iSignPlug:=-1;
  FindDirPlug(s);
  If (iPlugCnt=0) then
  begin
    DieFrm._info.Caption:=' No plugins found =(';
    NewMenuItem:=TMenuItem.Create(nil);
    NewMenuItem.Caption:='None';
    NewMenuItem.OnClick:=nil;
    DieFrm.PopupMenu2.Items.Add(NewMenuItem);
  end;
end;

procedure CloseCurPlugin();
var
  proc:TDiePlugExit;
begin
  If (iCurPlug > -1) and (AllPlug[iCurPlug].DieExit <> nil) and (bPlugNeedExit) then
  begin
    proc:=AllPlug[iCurPlug].DieExit;
    Application.ProcessMessages;
    proc();
    iCurPlug:=-1;
  end;
  DieFrm._plug_info.Caption:='';
  DieFrm._plug_work.Caption:='';
  //DieFrm._plugins.Caption:='Plugins states';
end;

procedure Run_Plug(const j:integer);
var
  proc1:TDiePlugProc;
  proc2:TDiePlugHwnd;
  proc3:TDiePlugPe;
  proc4:TDiePlugHwndEx;
  lib  :HWND;
begin
  CloseCurPlugin();
  lib:=AllPlug[j].Handle;
  AllPlug[j].DiePe    :=GetProcAddress(lib,'DiePlugPe');
  AllPlug[j].DieHwnd  :=GetProcAddress(lib,'DiePlugHwnd');
  AllPlug[j].DieHwndEx:=GetProcAddress(lib,'DiePlugHwndEx');
  AllPlug[j].DieExit  :=GetProcAddress(lib,'DiePlugExit');
  If (AllPlug[j].DieHwnd <> nil) then
  begin
    proc2:=AllPlug[j].DieHwnd;
    proc2(diefrm._plug_info.Handle,diefrm._plug_work.Handle);
  end;
  If (AllPlug[j].DieHwndEx <> nil) then
  begin
    proc4:=AllPlug[j].DieHwndEx;
    proc4(diefrm.Panel1.Handle,diefrm._plugins.Handle);
  end;
  If (AllPlug[j].DiePe <> nil) then
  begin
    proc3:=AllPlug[j].DiePe;
    proc3(diefrm.PE.MEMPTR,diefrm.PE.MEMSZ,diefrm.PE.RvaToFileOffset(diefrm.PE.EntryPoint));
  end;
  proc1:=AllPlug[j].DieProc;
  iCurPlug:=j;
  bPlugNeedExit:=True;
  proc1(Diefrm.Handle,Pchar(path),Pchar(application.ExeName));
  bPlugNeedExit:=False;
  //ShowMessage('EXIT!');
  //DieFrm._plugins.Caption:='Plugins states';
  //DieFrm._plugins.Update;
end;

Procedure TDiEfrm.MenuClick(Sender:TObject);
var
  s:shortstring;
  j:integer;
begin
  If path = '' then
  begin
    DiEfrm._info.Caption:=' Please open any file!';
    exit;
  end;
  s:=TMenuItem(Sender).Caption;
  j:=pos('&',s);
  delete(s,j,1);
  for j:=0 to iPlugCnt-1 do
    if (AllPlug[j].Name=s) then
    begin
      PageControl1.TabIndex:=2;
      Application.ProcessMessages;
      run_plug(j);
      Break;
    end;
end;

Procedure TDiEfrm.FillMenu(Sender:TObject);
var
  j:byte;
  NewMenuItem:TMenuItem;
begin
  j:=0;
  while j<iPlugCnt do
  begin
    NewMenuItem:=TMenuItem.Create(Self);
    NewMenuItem.Caption:=AllPlug[j].Name;
    NewMenuItem.OnClick:=MenuClick;
    PopupMenu2.Items.Add(NewMenuItem);
    inc(j);
  end;
end;

procedure DisasmEx(const ADDR,RVA:dword;var DisOpt: TDisasmOptions);
var
  dBuff: array [0..150] of Char;
  Buff:  array [0..30] of Byte;
  cPtr: dword;
  Len : dword;
  Command: TDisCommand;
  Instr  : TInstruction;
  Options: TMnemonicOptios;
begin
  cPtr := ADDR;
  
  Options.RealtiveOffsets   := false;
  Options.AddAddresPart     := true;
  Options.AlternativeAddres := RVA;
  Options.AddHexDump        := false;
  Options.MnemonicAlign     := 40;

  ZeroMemory(@Instr, SizeOf(TInstruction));
  ZeroMemory(@Command, SizeOf(TDisCommand));
  ZeroMemory(@Buff, SizeOf(Buff));
  ZeroMemory(@DBuff, SizeOf(DBuff));
  ZeroMemory(@DisOpt, SizeOf(DisOpt));

  Move(pointer(cPtr)^,Buff,30);
  Len := InstrDecode(@Buff, @Instr, false);
  InstrDasm(@Instr, @Command, false);
  MakeMnemonic(dBuff, @Command, @Options);

  DisOpt.Mnem   := dBuff;
  DisOpt.Command:= Command;
  DisOpt.Len  := Len;
  DisOpt.Instr:= Instr;
end;

function Emulate(const algo:integer;const adr_offs,adr_rva:dword):integer;
var
  com : TDisasmOptions;
  adr : dword;
  rva : dword;
  max : dword;
  done: dword;
  cnt1: dword;
  tmp:dword;
  step: integer;
  s:string;
begin
  adr := adr_offs+DWORD(DieFrm.Pe.Memptr);
  max := DWORD(DieFrm.Pe.Memptr) + DieFrm.Pe.MEMSZ - 10;
  rva := adr_rva;
  tmp   := 0;
  cnt1  := 0;
  done  := 0;
  step  := 0;
  result:= 0;
  repeat
    DisasmEx(adr,rva,com);
    inc(rva,com.Len);
    inc(adr,com.Len);
// *****************************************************************************
// ALGO 1 Morphnah -------------------------------------------------------------
    If (algo = 1) then
    begin
// com: MOV ESI,DWORD PTR SS:[ESP+20] ------------------------------------------
      If (com.Command.CmdOrdinal = $96) and (step = 0) then
      begin
        If (com.Command.ParamsNum = 3) then
        begin
          If (com.Command.Params[1].Value = $1C) and (com.Command.Params[2].Value = $20) then
          begin
            inc(step);
            cnt1:=0;
          end;
        end;
      end;
// com: MOV EDI,004B207C -------------------------------------------------------
      If (com.Command.CmdOrdinal = $96) and (step = 1) then
      begin
        If (com.Command.ParamsNum=2) then
        begin
          If (com.Command.Params[0].Flags=PRT_REG or PRS_DWORD) and (com.Command.Params[1].Flags=PRS_DWORD) then
          begin
            inc(step);
            cnt1:=0;
          end;
        end;
      end;
// com: MOVS BYTE PTR ES:[EDI],BYTE PTR DS:[ESI] -------------------------------
      If (com.Command.CmdOrdinal = $3D) and (step = 2) then
      begin
        If (com.Command.ParamsNum=0) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;
// com: DEC EDI
      If (com.Command.CmdOrdinal = $9B) and (step = 3) then
      begin
        If (com.Command.ParamsNum=1) and (com.Command.Params[0].Flags = PRT_REG or PRS_DWORD) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;
// com: XOR BYTE PTR DS:[EDI],0D4
      If (com.Command.CmdOrdinal = $72) and (step = 4) then
      begin
        If (com.Command.ParamsNum=2) and (com.Command.Params[0].Flags = PRT_MODRM) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;
// com: RETN RET 
      If ((com.Command.CmdOrdinal = $BA) or (com.Command.CmdOrdinal = $4C)) and (step = 5) then
      begin
        inc(step);
        cnt1:=0;
      end;
// final
      If (step = 6) then
      begin
        result:=1;
        done:=1;
      end;
// -----------------------------------------------------------------------------
      inc(cnt1);
      If (cnt1 >= 30) then
      begin
        done := 1;
      end;
    end; // end algo 1
// *****************************************************************************
// ALGO 2 RPolyCrypt -----------------------------------------------------------
    If (algo = 2) then
    begin
// com: PUSH address GOTO address
      If (com.Command.CmdOrdinal = $D8) and (step = 0) and (tmp = 0) then
      begin
        If (com.Command.ParamsNum=1) and (com.Command.Params[0].Flags=PRS_DWORD) then
        begin
          If (com.Command.Params[0].Value > DieFrm.Pe.ImageBase) and (com.Command.Params[0].Value  < (DieFrm.Pe.ImageBase + DieFrm.Pe.ImageSize)) then
          begin
            adr  := DWORD(DieFrm.PE.Memptr) + DieFrm.PE.RvaToFileOffset(com.Command.Params[0].Value-DieFrm.Pe.ImageBase);
            rva  := com.Command.Params[0].Value;
            cnt1 := 0;
            inc(tmp);
          end;
        end;
      end;
// com: CMP BYTE PTR DS:[EAX-D],6A
      If (com.Command.CmdOrdinal = $6C) and (step = 0) then
      begin
        If (com.Command.ParamsNum=3) and (com.Command.Params[0].Flags=PRT_MODRM) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;
// com: PUSH 00455C20
      If (com.Command.CmdOrdinal = $D8) and (step = 1) then
      begin
        If (com.Command.ParamsNum=1) and (com.Command.Params[0].Flags=PRS_DWORD) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;
// com: MOV ECX,00401000
      If (com.Command.CmdOrdinal = $96) and (step = 2) then
      begin
        If (com.Command.ParamsNum=2) and (com.Command.Params[0].Flags=PRT_REG or PRS_DWORD)
          and (com.Command.Params[1].Flags=PRS_DWORD) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;
// com: CMP ECX,00455E00
      If (com.Command.CmdOrdinal = $6C) and (step = 3) then
      begin
        If (com.Command.ParamsNum=2) and (com.Command.Params[0].Flags=PRT_REG)
          and (com.Command.Params[1].Flags=PRS_DWORD) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;
// com: JE 00403126
      If (com.Command.CmdOrdinal = $D6) and (step = 4) then
      begin
        If (com.Command.ParamsNum=1) and (com.Command.Params[0].Flags=PRS_DWORD) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;              
// com: XOR BYTE PTR DS:[ECX],0F8
      If (com.Command.CmdOrdinal = $72) and (step = 5) then
      begin
        If (com.Command.ParamsNum=2) and (com.Command.Params[0].Flags=PRT_MODRM) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;
// com: INC ECX or ADD ECX,1
      If ((com.Command.CmdOrdinal = $9C) or (com.Command.CmdOrdinal = $62)) and (step = 6) then
      begin
        If ((com.Command.ParamsNum=1) and (com.Command.Params[0].Flags=PRT_REG or PRS_DWORD))
          or ((com.Command.ParamsNum=2) and (com.Command.Params[0].Flags=PRT_REG)) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;
// com: JMP 0046B124
      If (com.Command.CmdOrdinal = $D5) and (step = 7) then
      begin
        If (com.Command.ParamsNum=1) and (com.Command.Params[0].Flags=PRS_DWORD) then
        begin
          inc(step);
          cnt1:=0;
        end;
      end;// -----------------------------------------------------------------------------
      If (step = 8) then
      begin
        result := 2;
        done   := 1;
      end;
      inc(cnt1);
      If (cnt1 >= 30) then
      begin
        done:=1;
      end;
    end;
// -----------------------------------------------------------------------------
  until ((adr >= max) or (done = 1));
end;

Procedure Disasm(const offset:dword);
var
  dBuff : array [0..100] of Char;
  Buff  : array [0..30]  of Byte;
  cPtr  : dword;
  _rva  : dword;
  MaxR  : dword;
  rr    : byte;
  Len, Cmds : dword;
  Command   : TDisCommand;
  Instr     : TInstruction;
  Options   : TMnemonicOptios;
begin
  DiEfrm._AsmList.Items.BeginUpdate;
  DiEfrm._AsmList.Items.Clear;
  DiEfrm._AsmList.Items.EndUpdate;
  MaxR:=dword(DiEfrm.PE.MEMPTR)+DiEfrm.PE.MEMSZ;
  cPtr := dword(DiEfrm.PE.MEMPTR)+offset;
  _rva := DiEfrm.PE.ImageBase+DiEfrm.PE.FileOffsetToRva(offset);
  Options.RealtiveOffsets := false;
  Options.AddAddresPart   := true;
  Options.AlternativeAddres := _rva;
  Options.AddHexDump    := true;
  Options.MnemonicAlign := 31;
  rr:=Length(Buff);
  Cmds := 0;
  repeat
    ZeroMemory(@Instr, SizeOf(TInstruction));
    ZeroMemory(@Command, SizeOf(TDisCommand));
    ZeroMemory(@Buff, SizeOf(Buff));
    ZeroMemory(@DBuff, SizeOf(DBuff));
    If ((MaxR-cPtr) < Length(Buff)) then rr:= MaxR-cPtr;
    Move(pointer(cPtr)^,Buff,rr);
    Len := InstrDecode(@Buff, @Instr, false);
    Options.AlternativeAddres := _rva;
    InstrDasm(@Instr, @Command, false);
    MakeMnemonic(dBuff, @Command, @Options);
    Inc(Cmds);
    DiEfrm._AsmList.Items.Add.Caption:=dBuff;
    cPtr := dword(cPtr) + Len;
    _rva:=_rva+Len;
  until (MaxR <= cPtr) or (Cmds >= 200);
end;{END DISASM}
//!!!!!!!!!!!!!!
function check_upx_v(const s:string):integer;
var
  j:integer;
begin
  j:=0;
  If s[1] in ['0'..'3'] then inc(j);
  If s[2] in ['.'] then inc(j);
  If s[3] in ['0'..'9'] then inc(j);
  If s[4] in ['0'..'9'] then inc(j);
  If j = 4 then result:=1 else result:=0;
end;

function sign_cmp(const bb1,bb2:array of byte):integer;
var
  nn,i:integer;
begin;
  result:=0;
  nn:=length(bb1);
  for i:=0 to nn-1 do
  begin
    if ((bb1[i] <> bb2[i]) and (bb1[i] <> $3F)) then
      exit;
  end;
  result:=1;
end;

function detect_1(offset:dword;pr:integer):integer;
var
  n:dword;
  buff : array [1..250] of byte;
begin
  result:=0;
  n:=250;
  try
    If ((DieFrm.PE.MEMSZ - offset) < n) then
    begin
      Zeromemory(@buff,250);
      n:=DieFrm.PE.MEMSZ - offset;
    end;
    move(pointer(dword(DiEfrm.PE.MEMPTR)+offset)^,buff,n);
  except
    diefrm._info2.Caption:=' Some error!';
    exit;
  end;
  If (pr=0) then
  begin
    if (sign_cmp(Obsidium125,buff) = 1) then result:=1;
    exit;
  end;
  If (pr=1) then
  begin
    if (sign_cmp(Obsidium1304,buff) = 1) then result:=1;
    exit;
  end;
  If (pr=2) then
  begin
    If (sign_cmp(PESpin13,buff) = 1)   then result:=1;
    If (sign_cmp(PESpin1304,buff) = 1) then result:=1;
    If (sign_cmp(PESpin041,buff) = 1)  then result:=1;
    If (sign_cmp(PESpin11,buff) = 1)   then result:=1;
    exit;
  end;
  If (pr=3) then
  begin
    If (sign_cmp(Arma20x,buff) = 1) then result:=1;
    exit;
  end;
  If (pr=4) then
  begin
    If sign_cmp(Arma25x,buff) = 1 then result:=1;
    exit;
  end;
  If (pr=5) then
  begin
    If (sign_cmp(WinUpack032_03991,buff) = 1) then result:=1;
    If (sign_cmp(WinUpack032_0399,buff) = 1)  then result:=1;
    exit;
  end;
  If (pr=6) then
  begin
    If (sign_cmp(WinUpack0361,buff) = 1) then result:=1;
    If (sign_cmp(WinUpack0362,buff) = 1) then result:=1;
    If (sign_cmp(WinUpack036,buff) = 1)  then result:=1;
    exit;
  end;
  If pr=7 then
    If sign_cmp(WinUpack02x_032,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=8 then
  begin
    If sign_cmp(Arma26x,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
    If sign_cmp(Arma34x,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  end;
  If pr=9 then
  begin
    If sign_cmp(EXECryptor23,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
    If sign_cmp(EXECryptor21,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
    If sign_cmp(EXECryptor15,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  end;
  If pr=10 then
    If sign_cmp(FSG10,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=11 then
    If sign_cmp(MoleBoxPro25x,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=12 then
    If sign_cmp(MoleBoxPro251x,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=13 then
    If sign_cmp(MoleBoxPro21,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=14 then
    If sign_cmp(ASprotect20,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=15 then
    If sign_cmp(ASProtect1x_2x,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=16 then
    If sign_cmp(beria007,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=17 then
    If sign_cmp(Arma444,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=18 then
    If sign_cmp(PE_Armor,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=19 then
    If sign_cmp(SDProtector112,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=20 then
    If sign_cmp(MoleBoxPro2518,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=21 then
    If sign_cmp(WinUpack039,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=22 then
    If sign_cmp(Arma420,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=23 then
    If sign_cmp(eXPressor1451,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=24 then
    If sign_cmp(SoftwareCompress12,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=25 then
    If sign_cmp(ACProtect132,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=26 then
    If sign_cmp(ACProtect20,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=27 then
    If sign_cmp(ACProtect141,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=28 then
    If sign_cmp(MEW11,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=29 then
    If sign_cmp(yodaProtector1032,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=30 then
    If sign_cmp(PELock106F,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=31 then
    If sign_cmp(ACProtect20x,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=32 then
    If sign_cmp(MoleBoxPro2523,buff) = 1 then
    begin
      result:=1;
      exit;
    end;   
  If pr=33 then
    If sign_cmp(MoleBoxPro261,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=34 then
    If sign_cmp(SVKProtector143,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=35 then
    If sign_cmp(AHTeamUPXMutanter02,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=36 then
    If sign_cmp(AlexProtector10beta2,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=37 then
    If sign_cmp(XtremeProtector108,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=38 then
    If sign_cmp(telock098,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=39 then
    If sign_cmp(telock099,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=40 then
    If sign_cmp(PUNISHER15,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=41 then
    If sign_cmp(SimplePack111m2,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=42 then
    If sign_cmp(SimplePack112m2,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=43 then
    If sign_cmp(ASProtect211SKE,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=44 then
    If sign_cmp(SDProtector116,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=45 then
    If sign_cmp(Petite22,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=46 then
    If sign_cmp(PELock106D,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=47 then
    If sign_cmp(MoleBoxPro2612,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=48 then
    If sign_cmp(ASprotect23,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=49 then
    If sign_cmp(aspack212,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=50 then
    If sign_cmp(aspack211c,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=51 then
    If sign_cmp(aspack211,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=52 then
    If sign_cmp(aspack2000,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=53 then
    If sign_cmp(aspack21,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=54 then
    If sign_cmp(aspack212b,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=55 then
    If sign_cmp(ASProtect123RCx,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=56 then
    If sign_cmp(ASProtect12,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=57 then
    If sign_cmp(FSG20,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=58 then
    If sign_cmp(FSG133,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=59 then
    If sign_cmp(EnigmaProtector102,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=60 then
    If sign_cmp(EnigmaProtector114,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=61 then
    If sign_cmp(Krypton05,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=62 then
    If sign_cmp(Obsidium1300,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=63 then
    If sign_cmp(ExeStealth275,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=64 then
    If sign_cmp(ExeStealth273,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=65 then
    If sign_cmp(SimplePack1XX,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=66 then
    If sign_cmp(RLPack116,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=67 then
    If sign_cmp(RLPack116b,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=68 then
    If sign_cmp(WinUpack039,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=69 then
    If sign_cmp(WinUpack037,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=70 then
    If sign_cmp(WinUpack036,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=71 then
    If sign_cmp(RLPack115b,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=72 then
    If sign_cmp(XtremeProtectorJmp,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=73 then
    If sign_cmp(XtremeProtector106,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=74 then
    If sign_cmp(Themida,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=75 then
    If sign_cmp(Obsidium1331,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=76 then
    If sign_cmp(Obsidium13037,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=77 then
    If sign_cmp(PEP1819,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=78 then
    If sign_cmp(Themida185x,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=79 then
    If sign_cmp(yodaCrypter13,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=80 then
    If sign_cmp(ORiEN212,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=81 then
    If sign_cmp(ORiEN211,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=82 then
    If sign_cmp(RLPack117b,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=83 then
    If sign_cmp(RLPack116f,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=84 then
    If sign_cmp(RLPack118f,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If pr=85 then
    If sign_cmp(Obsidium1200,buff) = 1 then
    begin
      result:=1;
      exit;
    end;
  If (pr=86) then
  begin
    If sign_cmp(PEP202,buff) = 1 then result:=1;
    exit;
  end;
  If (pr=87) then
  begin
    If sign_cmp(Pohernah103,buff) = 1 then result:=1;
    exit;
  end;
  If (pr=88) then
  begin
    If sign_cmp(Pohernah102,buff) = 1 then result:=1;
    exit;
  end;
end;

function CheckNspack():integer;
var
  n:integer;
  ImpFun : PImportedFunction;
begin
  result:=0;
  IF ImpList.Count<>0 then
  begin
    n:=0;
    FuncList:=PImportedLibrary(ImpList[0]).FunctionList;
    If (FuncList.Count=6) then
    begin
      ImpFun:=PImportedFunction(FuncList[0]);
      If impfun.ApiName='LoadLibraryA' then inc(n);
      ImpFun:=PImportedFunction(FuncList[1]);
      If impfun.ApiName='GetProcAddress' then inc(n);
      ImpFun:=PImportedFunction(FuncList[2]);
      If impfun.ApiName='VirtualProtect' then inc(n);
      ImpFun:=PImportedFunction(FuncList[3]);
      If (impfun.ApiName='VirtualAlloc') then inc(n);
      ImpFun:=PImportedFunction(FuncList[4]);
      If impfun.ApiName='VirtualFree' then inc(n);
      ImpFun:=PImportedFunction(FuncList[5]);
      If impfun.ApiName='ExitProcess' then inc(n);
    end;
    ImpFun:=nil;
    If (n=6) then result:=1;
  end;
end;

function check_MEW:integer;
var
  n:integer;
  ImpFun : PImportedFunction;
begin
  result:=0;
  IF ImpList.Count<>0 then
  begin
    n:=0;
    FuncList:=PImportedLibrary(ImpList[0]).FunctionList;
    If (FuncList.Count=2) then
    begin
      ImpFun:=PImportedFunction(FuncList[0]);
      If impfun.ApiName='LoadLibraryA' then inc(n);
      ImpFun:=PImportedFunction(FuncList[1]);
      If impfun.ApiName='GetProcAddress' then inc(n);
    end;
    ImpFun:=nil;
    If n=2 then result:=1;
  end;
end;

function get_import_align(const n:integer):dword;
var
  s1,s2:string[8];
  ImpLib :PImportedLibrary;
  c1,c2:dword;
begin
  result:=0;
  c1:=0;
  c2:=0;
  IF ImpList.Count>0 then
  begin
    ImpLib:=PImportedLibrary(ImpList.Items[0]);  
    s1:=IntToHex(ImpLib.Rva,8);
    s2:=IntToHex(ImpLib.First,8);
    delete(s1,1,8-n);
    delete(s2,1,8-n);
    c1:=StrToInt('$'+s1);
    c2:=StrToInt('$'+s2);
    If n=2 then
    begin
      c1:=c1*$100;
      c1:=c1+c2;
      result:=c1;
    end;
    If n=3 then
    begin
      c1:=c1*$1000;
      c1:=c1+c2;
      result:=c1;
    end;
    If n=4 then
    begin
      c1:=c1*$10000;
      c1:=c1+c2;
      result:=c1;
    end;
    //result:=s1+'|'+s2;
  end;
end;

function check_obsidium():string;
var
  ImpLib :PImportedLibrary;
  s1,s2:string[8];
  c1,c2:dword;
  obs13:integer;
begin
  result:='';
  If (ImpList.Count<2) then exit;
  obs13:=0;
  ImpLib:=PImportedLibrary(ImpList.Items[0]);
  s1:=IntToHex(ImpLib.Rva,8);
  s2:=IntToHex(ImpLib.First,8);
  delete(s1,1,5);
  delete(s2,1,5);
  delete(s2,length(s2),1);
  c1:=strtoint('$'+s1);
  c2:=strtoint('$'+s2);
  If (c1=$050) and (c2=$07) then
  begin
    inc(obs13)
  end;
  If (c1=$0A0) and (c2=$0C) then
  begin
    inc(obs13)
  end;
  If (c1=$08C) and (c2=$0B) then
  begin
    inc(obs13)
  end;
  If (c1=$03C) and ((c2=$06) or (c2=$05)) then
  begin
    inc(obs13)
  end;
  If obs13=1 then
  begin
    result:=' Obsidium 1.2.0.0 - 1.3.3.1';
    exit;
  end;
end;

function CheckPetite():integer;
var
  ImpLib :PImportedLibrary;
  ImpFun :PImportedFunction;
  c1,c2:dword;
  iPetite,i:integer;
begin
  result:=0;
  If (ImpList.Count=1) then exit;
  iPetite:=0;
  For i:=0 to ImpList.Count-1 do
  begin
    If (iPetite = 5) then break;
    ImpLib:=PImportedLibrary(ImpList.Items[i]);
    If (lowercase(ImpLib.DllName)='kernel32.dll') then
    begin
      FuncList:=PImportedLibrary(ImpList[i]).FunctionList;
      If (FuncList.Count = 7) then
      begin
        ImpFun:=PImportedFunction(FuncList[0]);
        If impfun.ApiName='ExitProcess' then inc(iPetite);
        ImpFun:=PImportedFunction(FuncList[1]);
        If impfun.ApiName='LoadLibraryA' then inc(iPetite);
        ImpFun:=PImportedFunction(FuncList[5]);
        If impfun.ApiName='GlobalFree' then inc(iPetite);
        ImpFun:=PImportedFunction(FuncList[6]);
        If impfun.ApiName='GetModuleHandleA' then inc(iPetite);
      end;
      If (FuncList.Count > 2) and  (FuncList.Count < 7)then
      begin
        ImpFun:=PImportedFunction(FuncList[0]);
        If impfun.ApiName='ExitProcess' then inc(iPetite);
        ImpFun:=PImportedFunction(FuncList[1]);
        If impfun.ApiName='LoadLibraryA' then inc(iPetite);
        ImpFun:=PImportedFunction(FuncList[2]);
        If impfun.ApiName='GetProcAddress' then inc(iPetite);
      end;
    end;
    If (lowercase(ImpLib.DllName)='user32.dll') then
    begin
      FuncList:=PImportedLibrary(ImpList[i]).FunctionList;
      If (FuncList.Count = 2) then
      begin
        ImpFun:=PImportedFunction(FuncList[0]);
        If impfun.ApiName='MessageBoxA' then inc(iPetite);
        ImpFun:=PImportedFunction(FuncList[1]);
        If impfun.ApiName='wsprintfA' then inc(iPetite);
      end;
    end;
  end;
  If (iPetite = 6) then result:=1;
  If (iPetite = 5) then result:=2;
end;

function CheckEnigma():integer;
var
  ImpLib :PImportedLibrary;
  ImpFun :PImportedFunction;
  c1,c2:dword;
  iEnigma,i:integer;
begin
  result:=0;
  If (ImpList.Count<6) then exit;
  iEnigma:=0;
  For i:=0 to ImpList.Count-1 do
  begin
    If (iEnigma = 5) then break;
    ImpLib:=PImportedLibrary(ImpList.Items[i]);
    If (lowercase(ImpLib.DllName)='kernel32.dll') then
    begin
      FuncList:=PImportedLibrary(ImpList[i]).FunctionList;
      If (FuncList.Count = 6) then
      begin
        ImpFun:=PImportedFunction(FuncList[0]);
        If impfun.ApiName='VirtualAlloc' then inc(iEnigma);
        ImpFun:=PImportedFunction(FuncList[1]);
        If impfun.ApiName='VirtualFree' then inc(iEnigma);
        ImpFun:=PImportedFunction(FuncList[4]);
        If impfun.ApiName='ExitProcess' then inc(iEnigma);
        ImpFun:=PImportedFunction(FuncList[5]);
        If impfun.ApiName='LoadLibraryA' then inc(iEnigma);
      end;
    end;
    If (lowercase(ImpLib.DllName)='user32.dll') then
    begin
      FuncList:=PImportedLibrary(ImpList[i]).FunctionList;
      If (FuncList.Count = 1) then
      begin
        ImpFun:=PImportedFunction(FuncList[0]);
        If impfun.ApiName='MessageBoxA' then inc(iEnigma);
      end;
    end;
  end;
  If (iEnigma = 5) then result:=1;
end;

function CheckPrivateExeProtector():integer;
var
  Section : PSection;
  i,n:integer;
begin
  n:=0;
  For i:=0 to DieFrm.pe.SectionList.Count-1 do
  begin
    Section:=PSection(DieFrm.pe.SectionList.Items[i]);
    If (Section.virtual_size > $20000000) then
    begin
      n:=1;
      break;
    end;
  end;
  result:=n;
end;

function CheckRLPack():integer;
var
  ImpLib :PImportedLibrary;
  ImpFun :PImportedFunction;
  c1,c2:dword;
  iRLPack,i:integer;
begin
  result:=0;
  iRLPack:=0;
  FuncList:=PImportedLibrary(ImpList[0]).FunctionList;
  If (FuncList.Count = 6) then
  begin
    ImpFun:=PImportedFunction(FuncList[0]);
    If impfun.ApiName='LoadLibraryA' then inc(iRLPack);
    ImpFun:=PImportedFunction(FuncList[1]);
    If impfun.ApiName='GetProcAddress' then inc(iRLPack);
    ImpFun:=PImportedFunction(FuncList[2]);
    If impfun.ApiName='VirtualAlloc' then inc(iRLPack);
    ImpFun:=PImportedFunction(FuncList[3]);
    If impfun.ApiName='VirtualFree' then inc(iRLPack);
    ImpFun:=PImportedFunction(FuncList[4]);
    If impfun.ApiName='VirtualProtect' then inc(iRLPack);
    ImpFun:=PImportedFunction(FuncList[5]);
    If impfun.ApiName='GetModuleHandleA' then inc(iRLPack);
  end;
  If (FuncList.Count = 4) then
  begin
    ImpFun:=PImportedFunction(FuncList[0]);
    If impfun.ApiName='LoadLibraryA' then inc(iRLPack);
    ImpFun:=PImportedFunction(FuncList[1]);
    If impfun.ApiName='GetProcAddress' then inc(iRLPack);
    ImpFun:=PImportedFunction(FuncList[2]);
    If impfun.ApiName='VirtualAlloc' then inc(iRLPack);
    ImpFun:=PImportedFunction(FuncList[3]);
    If impfun.ApiName='VirtualFree' then inc(iRLPack);
  end;
  If (iRLPack = 6) then result:=1;
  If (iRLPack = 4) and (FuncList.Count = 4) then result:=2;
end;

Procedure TDieFrm.scan_file();
type Tpack = packed record
  name : string[35];
  cnt  : integer;
end;
var
  i,n      : integer;
  s1,s2,s3 : string[8];
  bb       : array[1..4] of char;
  upx_ver  : string[4];
  c1,c2,c3 : dword;
  cw : word;
  opt_header : _IMAGE_OPTIONAL_HEADER;
  pe_header  : _IMAGE_FILE_HEADER;
  dos_header : PImageDosHeader;
  nt_header  : PImageNtHeaders;
  names      : array [1..150] of Tpack;
  Section1   : PSection;
  s          : string[36];
  ImpFun     : PImportedFunction;
  ImpLib     : PImportedLibrary;
  bpt        : Pbyte;
  ch:char;
begin
  nt_header :=Pe.nt;
  opt_header:=Pe.nt.OptionalHeader;
  pe_header :=Pe.nt.FileHeader;
  dos_header:=Pe.dos;
  DiEfrm._packer.Caption:='';
  DiEfrm._compiler.Caption:='';
  s1:='';
  s2:='';
  s3:='';
  For i:=1 to 150 do names[i].cnt:=0;
  names[1].name:=' ASProtect 1.23 RC4';
  names[2].name:=' ASProtect 1.2';
  names[3].name:=' UPX';
  names[4].name:=' ASPack 2.12';
  names[5].name:=' ASPack 2.11c';
  names[6].name:=' ASProtect 1.33 - 2.2';
  names[7].name:=' ASProtect 1.32 / 2.0';
  names[8].name:=' ASprotect 1.23 RC1';
  names[9].name:=' PESHiELD 0.25';
  names[10].name:=' ASProtect 1.0';
  names[11].name:=' ASProtect 1.1b';
  names[12].name:=' ASProtect 1.1';
  names[13].name:=' ASPack 2.000';
  names[14].name:=' ASPack 2.1';
  names[15].name:=' Borland Delphi';
  names[16].name:=' Microsoft Visual Basic';
  names[17].name:=' Borland C++';
  names[18].name:=' ASPack/ASProtect';
  names[19].name:=' DotFix FakeSigner';
  names[20].name:=' PESpin 0.3ı - 1.3ı';
  names[21].name:=' FSG 2.0';
  names[22].name:=' FSG 1.33';
  names[23].name:=' FSG 1.0';
  names[24].name:=' <Modified>';
  names[25].name:=' ASPack 2.001';
  names[26].name:=' Microsoft Visual C++';
  names[27].name:=' MASM32 - TASM32';
  names[28].name:=' EXECryptor 2.2.x - 2.3.x';
  names[29].name:=' EXECryptor 2.1.x';
  names[30].name:=' Armadillo 2.01b';
  names[31].name:=' Armadillo 3.01';
  names[32].name:=' Armadillo x.xx';
  names[33].name:=' Armadillo 2.52';
  names[34].name:=' Armadillo 2.65';
  names[35].name:=' Armadillo 3.40';
  names[36].name:=' MEW 11 SE 1.1';
  names[37].name:=' | C/C++';
  names[38].name:=' | Object Pascal';
  names[39].name:=' | Basic';
  names[40].name:=' EXECryptor 1.5.x';
  names[41].name:=' Obsidium 1.xx';
  names[42].name:=' (Win)Upack 0.37 - 0.39';
  names[43].name:=' | Borland stub';
  names[44].name:=' (Win)Upack 0.36 - 0.37';
  names[45].name:=' (Win)Upack 0.2x-0.32';
  names[46].name:=' Armadillo 4.30a';
  names[47].name:=' Armadillo 4.40.0250';
  names[48].name:=' ASPack 1.08.02';
  names[49].name:=' MoleBox Pro 2.5.x';
  names[50].name:=' MoleBox Pro 2.1.x';
  names[51].name:=' ASProtect 1.22 - 1.23 Beta 21';
  names[52].name:=' beria 0.07 public WIP';
  names[53].name:=' SVK-Protector 1.4x';
  names[54].name:=' Armadillo 3.60';
  names[55].name:=' Armadillo 4.44 beta1';
  names[56].name:=' SDProtector 1.12';
  names[57].name:=' Armadillo 4.4x [?]';
  names[58].name:=' PECompact 2.x';
  names[59].name:=' SVK-Protector 1.3x';
  names[60].name:=' ASPack 2.11';
  names[61].name:=' ACProtect 1.3x';
  names[62].name:=' ACProtect 2.0 [build: 2006.03.10]';
  names[63].name:=' ASProtect 1.2x - 2.xx [Registered]';
  names[64].name:=' ACProtect 1.4x';
  names[65].name:=' MEW 11 SE 1.2';
  names[66].name:=' Armadillo 4.40';
  names[67].name:=' Armadillo 3.10';
  names[68].name:=' Armadillo 4.10';
  names[69].name:=' yoda'+chr($27)+'s Protector 1.02 - 1.03.2';
  names[70].name:=' Armadillo 3.75Ò';
  names[71].name:=' SimplePack 1.11 [Method 1]';
  names[72].name:=' ACProtect 2.0 [build: 2006.02.06]';
  names[73].name:=' MoleBox Pro 2.5.23';
  names[74].name:=' MoleBox Pro 2.6.1 Trial';
  names[75].name:=' SVK-Protector 1.5x';
  names[76].name:=' Alex Protector 1.0 beta 2';
  names[77].name:=' PE-Armor 0.7x';
  names[78].name:=' yoda'+chr($27)+'s Protector 1.03.3';
  names[79].name:=' tElock 0.98';
  names[80].name:=' tElock 0.99';
  names[81].name:=' PUNiSHER 1.5 DEMO';
  names[82].name:=' Private exe Protector 1.8 - 2.0';
  names[83].name:=' SimplePack 1.12 / 1.21 [Method 1]';
  names[84].name:=' SDProtector 1.16';
  names[85].name:=' Petite 2.3';
  names[86].name:=' Petite 2.x';
  names[87].name:=' MoleBox Pro 2.6.1.2387';
  names[88].name:=' Armadillo 4.xx [?]';
  names[89].name:=' ASProtect 2.3 SKE';
  names[90].name:=' ASProtect 2.2 - 2.3 SKE';
  names[91].name:=' Armadillo 3.70a';
  names[92].name:=' Armadillo 4.00.0053';
  names[93].name:=' Armadillo 4.40';
  names[94].name:=' Armadillo 4.42';
  names[95].name:=' Armadillo 4.44';
  names[96].name:=' Armadillo 4.54 b1';
  names[97].name:=' Enigma protector 1.xx';
  names[98].name:=' Armadillo 4.62';
  names[99].name:=' NsPack 3.x';
  names[100].name:=' NsPack 2.x';
  names[101].name:=' Armadillo 4.42';
  names[102].name:=' Krypton 0.5';
  names[103].name:=' ExeStealth 2.7x';
  names[104].name:=' PECompact 1.xx';
  names[105].name:=' RLPack 1.xx | FullEdition';
  names[106].name:=' RLPack 1.xx | BasicEdition';
  names[107].name:=' MoleBox Pro 2.6.1.x [?]';
  names[108].name:=' PELock 1.06';
  names[109].name:=' Xtreme-Protector / Themida';
  names[110].name:=' Armadillo 4.66';
  names[111].name:=' Armadillo 4.64';
  names[112].name:=' NTkrnl Secure Suite 0.1';
  names[113].name:=' ORiEN 2.11 / 2.12';
  names[114].name:=' yoda'+chr($27)+'s Crypter 1.3';
  names[115].name:=' Armadillo 4.54';
  names[116].name:=' Pohernah 1.0.x | may be trojan!';
  names[117].name:=' Armadillo 5.0 beta';
  names[118].name:=' Armadillo 5.0';
  names[119].name:=' Armadillo 4.66b';
// Pohernah 1.0.x !! ---------------------------------------------------------//
  Section1:=PSection(PE.SectionList[PE.SectionList.Count-1]);
  If (Section1.flags=$E00000A0) and (Section1.physical_size=$1B2) and (Section1.virtual_size=$1B2)
    then inc(names[116].cnt);
  If (Section1.flags=$E00000A0) and (Section1.physical_size=$200) and (Section1.virtual_size=$15D)
    then inc(names[116].cnt);
// yoda Crypter 1.3!!! -------------------------------------------------------//
  if (ImpList.Count=1) then
  begin
    bpt:=POINTER(DWORD(pe.MEMPTR) + pe.MEMSZ - 1);
    c1:=get_import_align(3);
    ImpLib:=PImportedLibrary(ImpList.Items[0]);
    If (ImpLib.DllName='KeRnEl32.dLl') then
      if (c1=$028035) and (bpt^=$C3) then inc(names[114].cnt);
  end;
// ORiEN 2.12!!! -------------------------------------------------------------//
  if (opt_header.DataDirectory[1].Size=$B6) and (ImpList.Count=2) then
  begin
    c1:=get_import_align(3);
    if (c1=$D5CD44) then inc(names[113].cnt);
  end;
// NTkrnl Secure Suite!!! ----------------------------------------------------//
  if (opt_header.DataDirectory[1].Size=$61) and (ImpList.Count=1) then
  begin
    c1:=get_import_align(4);
    If (LowerCase(ImpLib.DllName)='kernel32.dll') then
      If (c1=$10341028) then inc(names[112].cnt);
  end;
// Xtreme-Protector!!! -------------------------------------------------------//
  if (opt_header.DataDirectory[1].Size=$3C) and (ImpList.Count=2) then
  begin
    c1:=get_import_align(3);
    if (c1=$50000) then
    begin
      inc(names[109].cnt);
      c1:=Pe.EntryPoint;
      If ((c1 and $1F) = $10) then delete(names[109].name,18,11);
      If ((c1 and $1F) = $14) then delete(names[109].name,1,19);
    end;
  end;
// PELock!!! -----------------------------------------------------------------//
  if (opt_header.DataDirectory[1].Size=$5C) and (ImpList.Count=1) then
  begin
    c1:=get_import_align(2);
    if (c1=$4F28) then inc(names[108].cnt);
  end;
// RLPack!!! -----------------------------------------------------------------//
  if (opt_header.DataDirectory[1].Size=$28) and (ImpList.Count=1) then
  begin
    n:=CheckRLPack();
    If (n = 1) then inc(names[105].cnt);
    If (n = 2) then inc(names[106].cnt);
  end;
// ExeStealth!!! -------------------------------------------------------------//
  If (ImpList.Count=1) then
  begin
    Section1:=PSection(PE.SectionList[PE.SectionList.Count-1]);
    c1:=get_import_align(3);
    c2:=Section1.virtual_size;
    bpt:=POINTER(DWORD(pe.MEMPTR) + pe.MEMSZ - 1);
    ImpLib:=PImportedLibrary(ImpList.Items[0]);
    If (LowerCase(ImpLib.DllName)='kernel32.dll') then
      If (c1=$028035) and (bpt^=$00) and (c2=$2000) then inc(names[103].cnt);
  end;
// Krypton!!! ----------------------------------------------------------------//
  c1:=get_import_align(3);
  if (opt_header.DataDirectory[1].Size=$68) and (c1=$BB1BD2) and (ImpList.Count=1) then inc(names[102].cnt);
// NsPack!!! -----------------------------------------------------------------//
  If CheckNspack() = 1 then
  begin
    Section1:=PSection(PE.SectionList[0]);
    if (Section1.physical_size > 0) and (Section1.physical_offs < $200) then inc(names[100].cnt);
    if (Section1.physical_size = 0) and (Section1.physical_offs >= $200) then inc(names[99].cnt);
  end;
// Enigma protector 1.02 !!! -------------------------------------------------//
  If (CheckEnigma=1) then inc(names[97].cnt);
// Petite 2.x !!! ------------------------------------------------------------//
  If (CheckPetite=1) then inc(names[85].cnt);
  If (CheckPetite=2) then inc(names[86].cnt);
// Private exe Protector 1.x !!! ---------------------------------------------//
  s1:=IntToHex(opt_header.SizeOfImage,8);
  delete(s1,1,5);
  c1:=strtoint('$'+s1);
  If (c1=0) and (ImpList.Count=1) and (opt_header.DataDirectory[1].Size=$4B) then
  begin
    If (CheckPrivateExeProtector()=1) then inc(names[82].cnt);
  end;
  If (c1=0) and (ImpList.Count=1) and (opt_header.DataDirectory[1].Size<$60) then
  begin
    If (CheckPrivateExeProtector()=1) then inc(names[82].cnt);
  end;
  If (c1=0) and (ImpList.Count=1) and (opt_header.DataDirectory[1].VirtualAddress>$20000000) then
  begin
    If (CheckPrivateExeProtector()=1) then inc(names[82].cnt);
  end;
// PUNiSHER 1.5 (DEMO) !!! ---------------------------------------------------//
  s1:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
  delete(s1,1,6);
  c1:=strtoint('$'+s1);
  //s1:=get_import_align(3);
  c2:=get_import_align(3);
  If (opt_header.DataDirectory[1].Size=$B4) and (c1=$00) and (c2=$058040) then inc(names[81].cnt);
// tElock 0.98 !!! -----------------------------------------------------------//
  s1:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
  delete(s1,1,6);
  c1:=strtoint('$'+s1);
  //s1:=get_import_align(3);
  c2:=get_import_align(3);
  If (opt_header.DataDirectory[1].Size=$9C) and (c1=$E2) and (c2=$C3EC2E) then inc(names[79].cnt);
  If (opt_header.DataDirectory[1].Size=$9C) and (c1=$A9) and (c2=$1050F5) then inc(names[80].cnt);
// PE-Armor 0.7x !!! ---------------------------------------------------------//
  s1:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
  delete(s1,1,6);
  c1:=strtoint('$'+s1);
  //s1:=get_import_align(3);
  c2:=get_import_align(3);
  If (c1=$4C) and (c2=$084074) then inc(names[77].cnt);
// Alex Protector 1.0 beta 2 !!! ---------------------------------------------//
  s1:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
  delete(s1,1,6);
  c1:=strtoint('$'+s1);
  c2:=get_import_align(2);
  If (opt_header.DataDirectory[1].Size=$B1) and (c1=$80) and (c2=$D4C4) then inc(names[76].cnt);
// Detect SimplePack !!! ----------------------------------------------------//
  s1:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
  delete(s1,1,5);
  c1:=strtoint('$'+s1);
  c2:=get_import_align(3);
  If (opt_header.DataDirectory[1].Size=$CE) and (c1=$2F4) and (ImpList.Count=2) then inc(names[71].cnt);
  If (opt_header.DataDirectory[1].Size=$E4) and (c1=$31B) and (c2=$37B357) then inc(names[83].cnt);
  If (opt_header.DataDirectory[1].Size=$0) and (c1=$0) and (c2=$154028) then
  begin
    inc(names[71].cnt);
    names[71].name:=' SimplePack 1.x [Method 2]';
  end;
// Detect yoda !!! -----------------------------------------------------------//
  If (opt_header.DataDirectory[1].Size=$60) then inc(names[69].cnt);
  If (opt_header.DataDirectory[1].Size=$70) then inc(names[78].cnt);
  If (ImpList.Count = 1) then
  begin
    c2:=get_import_align(3);
    //If (c2=$035028) then inc(names[69].cnt);
    If (c2=$028035) then inc(names[69].cnt);
    If (c2=$034028) then inc(names[78].cnt);
  end;
// Detect ACProtect !!! ------------------------------------------------------//
  s1:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
  delete(s1,1,5);
  c1:=strtoint('$'+s1);
  s2:=IntToHex(opt_header.DataDirectory[1].Size,8);
  delete(s2,1,5);
  c2:=strtoint('$'+s2);
  c3:=Pe.RvaToFileOffset(Pe.nt.OptionalHeader.DataDirectory[1].VirtualAddress);
  If (((c2=$3C) or (c2=$D8)) and ((c1=$14) or (c1=$21C))) then
  begin
    If (c3<>0) then
    begin
      bpt:=pointer(dword(Pe.MEMPTR)+c3+$14);
      If bpt^=$84 then inc(names[61].cnt)
    end;
  end;
  If ((c2=$D8) and (c1=$62C)) then
  begin
    If (c3<>0) then
    begin
      bpt:=pointer(dword(Pe.MEMPTR)+c3+$14);
      If bpt^=$94 then inc(names[62].cnt)
    end;
  end;
  If ((c2=$D8) and (c1=$AA0)) then
  begin
    If (c3<>0) then
    begin
      bpt:=pointer(dword(Pe.MEMPTR)+c3+$14);
      If bpt^=$08 then inc(names[72].cnt)
    end;
  end;
  If ((c2=$D8) and (c1=$4AC)) then
  begin
    If (c3<>0) then
    begin
      bpt:=pointer(dword(Pe.MEMPTR)+c3+$14);
      If bpt^=$14 then inc(names[64].cnt)
    end;
  end;
// END -----------------------------------------------------------------------//
// Detect PECompact 2.x !!! --------------------------------------------------//
  c1:=PE.dos._lfanew+$110+dword(Pe.MEMPTR);
  MOVE(pointer(c1)^,bb,4);
  If bb = 'PEC2' then inc(names[58].cnt);
  c1:=PE.dos._lfanew+$C+dword(Pe.MEMPTR);
  MOVE(pointer(c1)^,bb,4);
  If bb = 'PECO' then inc(names[104].cnt);
  Section1:=PSection(PE.SectionList[0]);
  if (Section1.name = 'pec1') then inc(names[104].cnt);
  IF (ImpList.Count<>0) then
  begin
    n:=0;
    FuncList:=PImportedLibrary(ImpList[0]).FunctionList;
    If (FuncList.Count=4) then
    begin
      ImpFun:=PImportedFunction(FuncList[0]);
      If impfun.ApiName='LoadLibraryA' then inc(n);
      ImpFun:=PImportedFunction(FuncList[1]);
      If impfun.ApiName='GetProcAddress' then inc(n);
      ImpFun:=PImportedFunction(FuncList[2]);
      If (impfun.ApiName='VirtualAlloc') then inc(n);
      ImpFun:=PImportedFunction(FuncList[3]);
      If impfun.ApiName='VirtualFree' then inc(n);
    end;
    ImpFun:=nil;
    If n=4 then inc(names[58].cnt);
  end;
// END -----------------------------------------------------------------------//
// Detect SDProtector 1.12 !!! -----------------------------------------------//
    s1:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
    delete(s1,1,6);
    c1:=strtoint('$'+s1);
    c2:=get_import_align(2);
    If (opt_header.DataDirectory[1].Size=$88) and (c1=$E2) and (c2=$0A27) then inc(names[56].cnt);
    If (opt_header.DataDirectory[1].Size=$88) and (c1=$A4) and (c2=$CCE9) then inc(names[84].cnt);
// END -----------------------------------------------------------------------
  // Detect MEW 11 SE 1.1 !!! --------------------------------------------------
  If check_MEW=1 then
  begin
    If (opt_header.DataDirectory[1].Size=$14) and (opt_header.BaseOfData=$C) then
      If (dos_header.e_res2[0]=$200) and (dos_header.e_oeminfo=$C05) then
        If (dos_header.e_oemid=$10B) and (dos_header.e_res[3]=$10F) then
          If (dos_header.e_res[2]=$E0) and (dos_header.e_sp=$14C) then
            If (dos_header.e_maxalloc=$4550) then inc(names[36].cnt);

    If (opt_header.DataDirectory[1].Size=$14) and (opt_header.BaseOfData=$C)
        then If (dos_header.e_res2[0]=$200) and (dos_header.e_oeminfo=$0)
          then If (dos_header.e_oemid=$10B) and (dos_header.e_res[3]=$10F)
            then If (dos_header.e_res[2]=$E0) and (dos_header.e_sp=$14C)
              then If (dos_header.e_maxalloc=$4550) then inc(names[65].cnt);

    If (opt_header.DataDirectory[1].Size=$14) and (opt_header.BaseOfData=$1000)
        then If (dos_header.e_res2[0]=$10B) and (dos_header.e_oeminfo=$10F)
          then If (dos_header.e_oemid=$E0) and (dos_header.e_res[3]=$0)
            then If (dos_header.e_res[2]=$0) and (dos_header.e_sp=$4550)
              then If (dos_header.e_maxalloc=$6C6C) then inc(names[65].cnt);
  end;
  // END -----------------------------------------------------------------------
  // Detect SVK-Protector  !!! -------------------------------------------------
    s1:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
    delete(s1,1,5);
    c1:=strtoint('$'+s1);
    If(opt_header.DataDirectory[1].Size=$E4)and(pe_header.PointerToSymbolTable=$504B5653) then
    begin
      If (c1=$69D) then inc(names[53].cnt);
      If (c1=$07C) then inc(names[59].cnt);
      If (c1=$69F) then inc(names[75].cnt);
    end;
  // END -----------------------------------------------------------------------
  // Detect beria  !!! ---------------------------------------------------------
    If (opt_header.DataDirectory[12].Size=$50)and(opt_header.DataDirectory[1].Size=$28)
      and(opt_header.DataDirectory[12].VirtualAddress=$3000)and(opt_header.DllCharacteristics=$400)
      and(opt_header.BaseOfData=$3000)and(opt_header.DataDirectory[1].VirtualAddress=$3054)
      then inc(names[52].cnt);
  // END -----------------------------------------------------------------------
  // Detect MoleBox  !!! -------------------------------------------------------
     s1:=IntToHex( opt_header.DataDirectory[1].VirtualAddress,8);
     delete(s1,1,6);
     c1:=strtoint('$'+s1);

    If (((opt_header.DataDirectory[12].Size=$54)or(opt_header.DataDirectory[12].Size=$58))
      and(opt_header.DataDirectory[1].Size=$3C)and(c1=$AC)
      and(pe_header.NumberOfSections>4)) then inc(names[49].cnt);

    If ((opt_header.DataDirectory[12].Size=$12C)and(opt_header.DataDirectory[1].Size=$50)
    and(c1=$B8)and (pe_header.NumberOfSections>4))
      then inc(names[50].cnt);

    If ((opt_header.DataDirectory[12].Size=$5C)and(opt_header.DataDirectory[1].Size=$3C)
    and(c1=$B4)and (pe_header.NumberOfSections>4))
      then inc(names[73].cnt);

    If ((opt_header.DataDirectory[12].Size=$60)and(opt_header.DataDirectory[1].Size=$3C)
    and(c1=$F4)and (pe_header.NumberOfSections>4))
      then inc(names[74].cnt);

    If ((opt_header.DataDirectory[12].Size=$5C)and(opt_header.DataDirectory[1].Size=$3C)
    and(c1=$F4)and (pe_header.NumberOfSections>4))
      then inc(names[87].cnt);

    //If ((opt_header.DataDirectory[12].Size=$0)and(opt_header.DataDirectory[1].Size=$244)
    //and(c1=$0)and (pe_header.NumberOfSections>4))
    //  then inc(names[107].cnt);

  // END -----------------------------------------------------------------------
  // Detect WinUpack !!! -------------------------------------------------------
    If (((opt_header.DataDirectory[1].Size=$14)or(opt_header.DataDirectory[1].Size=$28))and(imp_kernel=1)) then
    begin
      If ((opt_header.DataDirectory[5].VirtualAddress=$48)
        or(opt_header.DataDirectory[5].VirtualAddress=$0476FFA5)
        or (opt_header.DataDirectory[8].Size=$7373)) then
      begin
        If ((pe_header.PointerToSymbolTable<>0) and ((dos_header.e_res2[6]=$426B) or (dos_header.e_res2[6]=$4179))
          or ((dos_header.e_res2[6]=$0)and((dos_header.e_res2[2]=$7373) or (dos_header.e_res2[2]=$6461)))) then inc(names[42].cnt);
      end;

      If ((opt_header.DataDirectory[5].VirtualAddress=$0)
        and (opt_header.DataDirectory[8].Size=$0)) then
      begin
        If ((dos_header.e_res2[6]=$426B) or (dos_header.e_res2[6]=$4C4C))
          or ((dos_header.e_res2[6]=$0)and((dos_header.e_res2[2]=$7373) or (dos_header.e_res2[2]=$4E52))) then inc(names[44].cnt);
      end;

      If ((dos_header.e_res[2]=$6547) and (opt_header.DataDirectory[1].Size=$28)) then inc(names[45].cnt);

      If (names[42].cnt=1) or (names[44].cnt=1) or (names[45].cnt=1) then
        If (dos_header.e_res2[4]=$7055) and(dos_header.e_res2[5]=$6361) then
        begin
          inc(names[43].cnt);
        end;
    end;
  // END -----------------------------------------------------------------------
  // Detect Armadillo !!! ------------------------------------------------------
    If (opt_header.DataDirectory[1].Size = $50)
      or (opt_header.DataDirectory[1].Size = $55) or (opt_header.DataDirectory[1].Size = $66) then inc(names[32].cnt);

    If (opt_header.MajorLinkerVersion = $53) and (opt_header.MinorLinkerVersion = $52)
      then inc(names[32].cnt);
    If (names[32].cnt>0) or (deep=true) then
    begin
      If opt_header.DataDirectory[12].Size = $1F4 then inc(names[30].cnt);
      If dos_header._lfanew = $E8 then inc(names[30].cnt);
      If opt_header.MinorImageVersion = $34 then inc(names[30].cnt);
      If opt_header.SizeOfCode = $F000 then inc(names[30].cnt);
      If opt_header.SizeOfInitializedData = $8000 then inc(names[30].cnt);
      If opt_header.DataDirectory[12].Size = $1BC then inc(names[33].cnt);
      If opt_header.SizeOfCode = $D000 then inc(names[33].cnt);
      If opt_header.DataDirectory[12].Size = $1F4 then inc(names[34].cnt);
      If opt_header.SizeOfCode = $11000 then inc(names[34].cnt);
      If opt_header.DataDirectory[12].Size = $1F8 then inc(names[31].cnt);
      If opt_header.SizeOfCode = $19000 then inc(names[31].cnt);
      If opt_header.DataDirectory[12].Size = $21C then inc(names[35].cnt);
      If opt_header.SizeOfCode = $23000 then inc(names[35].cnt);
      If opt_header.DataDirectory[12].Size = $284 then inc(names[46].cnt);
      If opt_header.SizeOfCode = $50000 then inc(names[46].cnt);
      If opt_header.DataDirectory[12].Size = $21C then inc(names[54].cnt);
      If opt_header.SizeOfCode = $38000 then inc(names[54].cnt);
      If opt_header.DataDirectory[12].Size = $288 then inc(names[55].cnt);
      If opt_header.SizeOfCode = $4F000 then inc(names[55].cnt);
      If opt_header.DataDirectory[12].Size = $284 then inc(names[66].cnt);
      If opt_header.SizeOfCode = $50000 then inc(names[66].cnt);
      If opt_header.DataDirectory[12].Size = $214 then inc(names[67].cnt);
      If opt_header.SizeOfCode = $23000 then inc(names[67].cnt);
      If opt_header.DataDirectory[12].Size = $21C then inc(names[91].cnt);
      If opt_header.SizeOfCode = $3C000 then inc(names[91].cnt);
      If opt_header.DataDirectory[12].Size = $284 then inc(names[92].cnt);
      If opt_header.SizeOfCode = $3E000 then inc(names[92].cnt);
      If opt_header.DataDirectory[12].Size = $284 then inc(names[93].cnt);
      If opt_header.SizeOfCode = $4F000 then inc(names[93].cnt);
      If opt_header.DataDirectory[12].Size = $288 then inc(names[94].cnt);
      If opt_header.SizeOfCode = $4E000 then inc(names[94].cnt);
      If opt_header.DataDirectory[12].Size = $288 then inc(names[95].cnt);
      If opt_header.SizeOfCode = $4F000 then inc(names[95].cnt);
      If opt_header.DataDirectory[12].Size = $288 then inc(names[96].cnt);
      If opt_header.SizeOfCode = $4E000 then inc(names[96].cnt);
      If opt_header.DataDirectory[12].Size = $288 then inc(names[110].cnt);
      If opt_header.SizeOfCode = $50000 then inc(names[110].cnt);
      If opt_header.DataDirectory[12].Size = $2BC then inc(names[118].cnt);
      If opt_header.SizeOfCode = $4F000 then inc(names[118].cnt);

      If opt_header.DataDirectory[12].Size = $284 then inc(names[68].cnt);
      If (opt_header.SizeOfCode = $4F000) or (opt_header.SizeOfCode = $52000) then inc(names[68].cnt);
      If opt_header.DataDirectory[12].Size = $260 then inc(names[70].cnt);
      If (opt_header.SizeOfCode = $3D000) or (opt_header.SizeOfCode = $40000) then inc(names[70].cnt);

      If names[46].cnt=2 then names[47].cnt:=2;
      If names[55].cnt=2 then names[57].cnt:=2;
      If names[68].cnt=2 then names[66].cnt:=2;
      If names[70].cnt=2 then names[88].cnt:=2;
      If names[96].cnt=2 then names[98].cnt:=2;
      If names[66].cnt=2 then names[101].cnt:=2;
      If names[96].cnt=2 then names[115].cnt:=2;
      If names[110].cnt=2 then names[111].cnt:=2;
      If names[96].cnt=2 then names[111].cnt:=2;
      If names[95].cnt=2 then names[117].cnt:=2;
      If names[95].cnt=2 then names[119].cnt:=2;

      s1:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
      delete(s1,1,5);
      c1:=strtoint('$'+s1);
      If c1 = $5E8 then inc(names[33].cnt);
      If c1 = $21C then inc(names[31].cnt);
      If c1 = $1FC then inc(names[34].cnt);
      If c1 = $7BC then inc(names[35].cnt);
      If c1 = $CFC then inc(names[47].cnt);
      If c1 = $E3C then inc(names[46].cnt);
      If c1 = $C3C then inc(names[57].cnt);
      If c1 = $CBC then inc(names[55].cnt);
      If c1 = $D5C then inc(names[54].cnt);
      If c1 = $D1C then inc(names[66].cnt);
      If c1 = $79C then inc(names[67].cnt);
      If c1 = $B9C then inc(names[68].cnt);
      If c1 = $1DC then inc(names[70].cnt);
      If c1 = $C3C then inc(names[66].cnt);
      If c1 = $2FC then inc(names[88].cnt);
      If c1 = $F1C then inc(names[91].cnt);
      If c1 = $7BC then inc(names[92].cnt);
      If c1 = $B9C then inc(names[94].cnt);
      If c1 = $D5C then inc(names[95].cnt);
      If c1 = $C9C then inc(names[96].cnt);
      If c1 = $C3C then inc(names[98].cnt);
      If c1 = $D9C then inc(names[101].cnt);
      If c1 = $044 then inc(names[110].cnt);
      If c1 = $004 then inc(names[111].cnt);
      If c1 = $C7C then inc(names[115].cnt);
      If c1 = $F04 then inc(names[117].cnt);
      If c1 = $2A8 then inc(names[118].cnt);
      If c1 = $064 then inc(names[111].cnt);
      If c1 = $F84 then inc(names[119].cnt);
    end;
  // END -----------------------------------------------------------------------
  // Detect FSG 2.0 !!! --------------------------------------------------------
    If ((dos_header.e_res[2]=$E0) and (dos_header.e_oemid=$10B)) then inc(names[21].cnt);
    If ((dos_header._lfanew=$C) and (opt_header.BaseOfData=$C)) then inc(names[21].cnt);
    If ((opt_header.DataDirectory[1].Size=$84) and (dos_header.e_res2[6]=$154)) then inc(names[21].cnt);
    If (deep and (opt_header.DataDirectory[1].Size=$84)) then inc(names[21].cnt);
    If names[21].cnt > 1 then
    begin
      If (opt_header.SizeOfImage > $500000) and (dos_header.e_res2[6] > $154)
      and (opt_header.NumberOfRvaAndSizes > $10000000) then
      begin
        names[19].cnt:=6;
        names[21].cnt:=3;
      end;
    end;
// END -----------------------------------------------------------------------//
// Detect FSG 1.33 !!! -------------------------------------------------------//
    If names[21].cnt = 2 then
      If (opt_header.DataDirectory[1].Size=$34) and (dos_header.e_res2[6]<>$154) then inc(names[22].cnt);
    If (dos_header.e_ip=$5047) and (dos_header.e_cs=$4863) then
      If (opt_header.DataDirectory[1].Size=$34) and (dos_header.e_res2[6]<>$154) then
      begin
        inc(names[22].cnt);
        names[19].cnt:=6;
      end;
// END -----------------------------------------------------------------------//
// Detect FSG 1.0 !!! --------------------------------------------------------//
    bpt:=pointer(dword(PE.memptr)+$E0);
    If bpt^ = $F4 then
      If (opt_header.MajorLinkerVersion = $0) and (opt_header.DataDirectory[1].Size =$6B)
        and (dos_header._lfanew =$60) then inc(names[23].cnt);
// END -----------------------------------------------------------------------//
// Detect BASIC !!! ----------------------------------------------------------//
    If (names[23].cnt<>0) or (names[22].cnt<>0) or (names[21].cnt<>0) then
    begin
      If (opt_header.MinorImageVersion <> $0) and (((opt_header.MajorLinkerVersion <> $0)
        or (opt_header.MajorLinkerVersion = $0)) and (opt_header.MinorLinkerVersion=$0)) then inc(names[16].cnt);
    end;
    If basic = 1 then inc(names[16].cnt);
// P-Code OR Native ----------------------------------------------------------//
    If names[16].cnt <> 0 then names[16].cnt:=10;
    If names[16].cnt = 10 then
    begin
      c1:=PE.RvaToFileOffset(PE.EntryPoint);
      If c1 <> INVALID_VALUE then
      begin
        MOVE(pointer(dword(PE.Memptr)+c1+1)^,c1,4);
        c2:=PE.RvaToFileOffset(c1-PE.ImageBase);
        If c2 <> INVALID_VALUE then
        begin
          MOVE(pointer(dword(PE.Memptr)+c2+$30)^,c1,4);
          c2:=PE.RvaToFileOffset(c1-PE.ImageBase);
          If c2 <> INVALID_VALUE then
          begin
            MOVE(pointer(dword(PE.Memptr)+c2+$20)^,c1,4);
            If c1 = 0 then names[16].name:=names[16].name+' [P-Code]';
            If c1 > 0 then names[16].name:=names[16].name+' [Native]';
          end;
        end;
      end;
    end;
// END -----------------------------------------------------------------------
  // Detect PESpin -------------------------------------------------------------
    If (opt_header.DataDirectory[15].Size = $4000)
      and (opt_header.DataDirectory[1].Size = $3C) then inc(names[20].cnt);
  // END -----------------------------------------------------------------------
  // Detect Borland C++ !!! ----------------------------------------------------
    If opt_header.DataDirectory[0].VirtualAddress <> $0 then inc(names[17].cnt);
    If opt_header.DataDirectory[9].Size = $18 then inc(names[17].cnt);
    If opt_header.DataDirectory[0].Size <> $0 then inc(names[17].cnt);
    If opt_header.DataDirectory[9].VirtualAddress <> $0 then inc(names[17].cnt);
    If dos_header.e_minalloc=$000F then inc(names[17].cnt);
    If dos_header.e_ovno=$001A then inc(names[17].cnt);
    If names[17].cnt > 6 then names[17].cnt:=10;
    If (opt_header.SizeOfStackCommit = $2000)
    or (opt_header.SizeOfStackCommit = $20000) or (opt_header.SizeOfStackCommit = $60000) then
    begin
      If deep then names[17].cnt:=10
        else names[17].cnt:=names[17].cnt+3;
    end;
    If (names[20].cnt > 0) and (names[17].cnt > 4) then names[17].cnt:=10;
    If (names[32].cnt = 2) and (names[17].cnt > 5) then names[17].cnt:=10;
    If (names[30].cnt > 3) and (names[17].cnt > 0) then names[17].cnt:=10;
    If (deep=true) and (names[17].cnt>4) then names[17].cnt:=10;
  // END -----------------------------------------------------------------------
  // Detect DELPHI !!! ---------------------------------------------------------
    If (names[17].cnt<10) and (names[16].cnt<10) then
    begin
      If (opt_header.DataDirectory[9].Size=$18) then names[15].cnt:=names[15].cnt+2;
      If (opt_header.DataDirectory[9].VirtualAddress <> $0) then names[15].cnt:=names[15].cnt+2;
      If (pe_header.Characteristics=$818E) or (pe_header.Characteristics=$818F)
        then inc(names[15].cnt);
      If (opt_header.SizeOfStackCommit=$4000) then names[15].cnt:=names[15].cnt+2;
      If (opt_header.MajorLinkerVersion=$2) then inc(names[15].cnt);
      If (opt_header.MinorLinkerVersion=$19) then inc(names[15].cnt);
      If (opt_header.SizeOfHeaders=$400) or (opt_header.SizeOfHeaders=$1000)
        then inc(names[15].cnt);
      If (dos_header.e_minalloc=$000F) then inc(names[15].cnt);
      If (dos_header.e_ovno=$001A) then names[15].cnt:=names[15].cnt+2;
      If (names[15].cnt > 8) then names[15].cnt:=10;
      If (deep=true) and (names[15].cnt>4) then names[15].cnt:=10;

      If (deep=true) and (names[15].cnt=10) then
        If (opt_header.MinorLinkerVersion=$0) and
          (opt_header.MajorLinkerVersion=$8) then names[15].cnt:=0;
    end;

    c1:=LoadLibraryEx(PChar(path),0,LOAD_LIBRARY_AS_DATAFILE);
    if (c1<>0) then
    begin
      n:=0;
      if FindResource(c1,'DVCLAL',RT_RCDATA)<>0 then Inc(n);
      if FindResource(c1,'PACKAGEINFO',RT_RCDATA)<>0 then Inc(n);
      if n = 2 then
      begin
        names[15].cnt:=10;
        names[17].cnt:=0;
        names[16].cnt:=0;
      end;
      if (n = 1) and (names[15].cnt < 10) then
      begin
        names[15].cnt:=0;
        names[17].cnt:=10;
        names[16].cnt:=0;
      end;
      FreeLibrary(c1);
    end;

  // END------------------------------------------------------------------------
  // Detect Microsoft Visual C++ !!! -------------------------------------------
    If (names[16].cnt=0) and (names[15].cnt<10) and (names[17].cnt<10) then
    begin
      If (opt_header.MinorLinkerVersion=$2) and (opt_header.MajorLinkerVersion=$5)
        then inc(names[26].cnt);
      If (opt_header.MinorLinkerVersion=$0) and (opt_header.MajorLinkerVersion=$6)
        and (opt_header.MinorImageVersion <>$6) then inc(names[26].cnt);
      If (opt_header.MajorImageVersion=$5) and (opt_header.MajorLinkerVersion=$5)
        then inc(names[26].cnt);
      If (opt_header.MajorImageVersion=$5)  and (opt_header.MajorLinkerVersion=$7)
        then inc(names[26].cnt);
      If (opt_header.MajorImageVersion=$9) and (opt_header.MajorLinkerVersion=$7)
        then inc(names[26].cnt);
      If (opt_header.MajorImageVersion=$0) and (opt_header.MajorLinkerVersion=$5)
        then inc(names[26].cnt);
      If (opt_header.MinorLinkerVersion=$A) and
      ((opt_header.MajorLinkerVersion=$7) or (opt_header.MajorLinkerVersion=$5))
        then inc(names[26].cnt);
      If (opt_header.MinorLinkerVersion=$0) and
      (opt_header.MajorLinkerVersion=$8) then inc(names[26].cnt);
      If opt_header.MinorLinkerVersion=$C then inc(names[27].cnt);
      If dos_header._lfanew = $B8 then inc(names[27].cnt);
      If names[26].cnt>0 then names[26].cnt:=10;
    end;
  // END -----------------------------------------------------------------------
  // Detect dotfix !!! ---------------------------------------------------------
    If dos_header.e_res[2] = $746F then inc(names[19].cnt);
    If dos_header.e_res[3] = $6946 then inc(names[19].cnt);
    If dos_header.e_oemid =  $2078 then inc(names[19].cnt);
    If dos_header.e_oeminfo =  $475B then inc(names[19].cnt);
    If dos_header.e_res2[0] =  $6350 then inc(names[19].cnt);
    If opt_header.NumberOfRvaAndSizes > $10000000 then inc(names[19].cnt);
    If dos_header.e_res2[9] = $2020 then inc(names[19].cnt);
  // END------------------------------------------------------------------------
  // Detect ASPR !!! -----------------------------------------------------------
  If (opt_header.DataDirectory[15].Size=$100000) {and (opt_header.DataDirectory[5].Size=$8)} then
  begin
    s1:=IntToHex(opt_header.DataDirectory[5].VirtualAddress,8);
    s2:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
    delete(s1,1,5);
    delete(s2,1,5);
    c1:=strtoint('$'+s1);
    c2:=strtoint('$'+s2);
    If (c1 = $000) then inc(names[24].cnt);
    If ((c1 = $2CC) and (c2 = $464)) or (c2 = $464) then inc(names[10].cnt);
    If ((c1 = $734) and (c2 = $8D0)) or (c2 = $8D0) then inc(names[11].cnt);
    If ((c1 = $73C) and (c2 = $8E4)) or (c2 = $8E4) then inc(names[12].cnt);
    If ((c1 = $9C4) and (c2 = $A38)) then inc(names[1].cnt);
    If ((c1 = $9DC) and (c2 = $A50)) then inc(names[6].cnt);
    If ((c1 = $874) and (c2 = $8F4)) then inc(names[2].cnt);
    If ((c1 = $9D8) and (c2 = $A4C)) then inc(names[7].cnt);
    If ((c1 = $91C) and (c2 = $990)) then inc(names[8].cnt);
    If ((c1 = $90C) and (c2 = $980)) then inc(names[51].cnt);
    If ((c1 = $BD4) and (c2 = $C48)) then inc(names[89].cnt);
    If ((c1 = $9E0) and (c2 = $A54)) then inc(names[90].cnt);
    If names[19].cnt > 3 then
    begin
      If (c1 = $E58) then inc(names[13].cnt);
      If (c1 = $E54) then inc(names[14].cnt);
      If (c1 = $0F0) then inc(names[5].cnt);
      If (c1 = $F54) then inc(names[4].cnt);
      names[24].cnt:=0;
    end;
    If ((c1 = $518) and (c2 = $70C)) or (c2 = $70C) then inc(names[48].cnt);
    If ((c1 = $E58) and (c2 = $FC0)) or (c2 = $FC0) then inc(names[13].cnt);
    If ((c1 = $E5C) and (c2 = $FC4)) or (c2 = $FC4) then inc(names[25].cnt);
    If ((c1 = $0C4) and (c2 = $21C)) or (c2 = $21C) then inc(names[60].cnt);
    If ((c1 = $F54) and (c2 = $FAC)) or (c2 = $FAC) then inc(names[4].cnt);
    If ((c1 = $0F0) and (c2 = $248)) or (c2 = $248) then inc(names[5].cnt);
    If ((c1 = $E54) and (c2 = $FBC)) or (c2 = $FBC) then inc(names[14].cnt);
    If ((c1 = $9CC) and (c2 = $A40)) or (c2 = $A40) then inc(names[63].cnt);
    IF ImpList.Count<>0 then
    begin
      n:=0;
      FuncList:=PImportedLibrary(ImpList[0]).FunctionList;
      If (FuncList.Count=3) and (PImportedLibrary(ImpList[0]).DllName='kernel32.dll') then
      begin
        ImpFun:=PImportedFunction(FuncList[0]);
        If impfun.ApiName='GetProcAddress' then inc(n);
        ImpFun:=PImportedFunction(FuncList[1]);
        If impfun.ApiName='GetModuleHandleA' then inc(n);
        ImpFun:=PImportedFunction(FuncList[2]);
        If (impfun.ApiName='LoadLibraryA') then inc(n);
      end;
      ImpFun:=nil;
      If n=3 then inc(names[18].cnt);
    end;
  end;
  // END -----------------------------------------------------------------------
  // Detect UPX !!! ------------------------------------------------------------
    upx_ver:='';
    Section1:=PSection(PE.SectionList[0]);
    n:=0;
    IF (ImpList.Count<>0) then
    begin
      FuncList:=PImportedLibrary(ImpList[0]).FunctionList;
      //If (FuncList.Count=3) or (FuncList.Count=4) or (FuncList.Count=2) or (FuncList.Count=6) then
      If (FuncList.Count>1) and (FuncList.Count<7) then
        begin
          ImpFun:=PImportedFunction(FuncList[0]);
          If impfun.ApiName='LoadLibraryA' then inc(n);
          ImpFun:=PImportedFunction(FuncList[1]);
          If impfun.ApiName='GetProcAddress' then inc(n);
          If (FuncList.Count=4) then
          begin
            ImpFun:=PImportedFunction(FuncList[2]);
            If (impfun.ApiName='VirtualProtect') then inc(n);
            ImpFun:=PImportedFunction(FuncList[3]);
            If impfun.ApiName='ExitProcess' then inc(n);
          end;
          If (FuncList.Count >= 3) and (FuncList.Count <= 6) and (n < 4) then
          begin
            ImpFun:=PImportedFunction(FuncList[2]);
            If (impfun.ApiName='ExitProcess') then inc(n);
            If PE.nt.OptionalHeader.DllCharacteristics=1 then
              If (impfun.ApiName='VirtualProtect') then inc(n);
          end;
          If (FuncList.Count=6) then
          begin
            ImpFun:=PImportedFunction(FuncList[2]);
            If impfun.ApiName='VirtualProtect' then inc(n);
            ImpFun:=PImportedFunction(FuncList[3]);
            If impfun.ApiName='VirtualAlloc' then inc(n);
            ImpFun:=PImportedFunction(FuncList[4]);
            If impfun.ApiName='VirtualFree' then inc(n);
            ImpFun:=PImportedFunction(FuncList[5]);
            If impfun.ApiName='ExitProcess' then inc(n);
          end;
        end;
      ImpFun:=nil;
    end;

    If ((opt_header.SizeOfUninitializedData<>$0) or (deep=true)) and (pe_header.NumberOfSections > 2) then
    begin
      IF (n=2) and (FuncList.Count=2) then inc(names[3].cnt);
      IF (n=3) and (FuncList.Count=3) then inc(names[3].cnt);
      IF (n=3) and (FuncList.Count=4) then inc(names[3].cnt);
      IF (n=3) and (FuncList.Count=5) then inc(names[3].cnt);
      IF (n=3) and (FuncList.Count=6) then inc(names[3].cnt);
      IF (n=4) and (FuncList.Count=4) then inc(names[3].cnt);
      IF (n=6) and (FuncList.Count=6) then inc(names[3].cnt);
    end;
    If ((opt_header.FileAlignment=$200) and ((opt_header.BaseOfCode >= $6000) or (opt_header.BaseOfCode = $1000)) ///!!!!!!!!!!!!!!!!!!!!
      and (pe_header.NumberOfSections<6)) then inc(names[3].cnt);

    s1:=IntToHex(opt_header.SizeOfInitializedData,8);
    s2:=IntToHex(opt_header.SizeOfUninitializedData,8);
    delete(s1,1,4);
    delete(s2,5,8);
    c1:=strtoint('$'+s1);
    c2:=strtoint('$'+s2);
    If (names[3].cnt=1) and (c1=$2404) and (c2=$00C3) then names[3].cnt:=3; ///!!!!!!!!!!!!!!!!!!!!
    //If (names[3].cnt=1) and (c1=$1000) and (c2=$0001) then names[3].cnt:=3;
    If names[3].cnt > 1 then
    begin
      move(pointer(dword(PE.MEMPTR)+$1F0)^,bb,4);
      If check_upx_v(bb) = 1 then upx_ver:=bb;
      move(pointer(dword(PE.MEMPTR)+$1DB)^,bb,4);
      If check_upx_v(bb) = 1 then upx_ver:=bb;
      move(pointer(dword(PE.MEMPTR)+$238)^,bb,4);
      If check_upx_v(bb) = 1 then upx_ver:=bb;
      move(pointer(dword(PE.MEMPTR)+$2A1)^,bb,4);
      If check_upx_v(bb) = 1 then upx_ver:=bb;
      move(pointer(dword(PE.MEMPTR)+$3DB)^,bb,4);
      If check_upx_v(bb) = 1 then upx_ver:=bb;
      move(pointer(dword(PE.MEMPTR)+$39D)^,bb,4);
      If check_upx_v(bb) = 1 then upx_ver:=bb;
      move(pointer(dword(PE.MEMPTR)+$320)^,bb,4);
      If check_upx_v(bb) = 1 then upx_ver:=bb;
      move(pointer(dword(PE.MEMPTR)+$3CB)^,bb,4);
      If check_upx_v(bb) = 1 then upx_ver:=bb;
    end;
  // END -----------------------------------------------------------------------
  // Detect PESHiELD 0.25 !!! --------------------------------------------------
  If opt_header.DataDirectory[1].Size = $28 then
  begin
    s2:=IntToHex(opt_header.DataDirectory[1].VirtualAddress,8);
    delete(s2,1,5);
    c2:=strtoint('$'+s2);
    If c2=$31C then inc(names[9].cnt);
  end;
  // END -----------------------------------------------------------------------
  // Detect EXECryptor 2.x.x !!! -----------------------------------------------
    s1:=IntToHex(opt_header.DataDirectory[9].VirtualAddress,8);
    delete(s1,1,5);
    c1:=strtoint('$'+s1);
    If ((opt_header.DataDirectory[1].Size = $110) and (c1 = $110)
      and (dos_header.e_sp=$B8) and (pe_header.NumberOfSections>5)) then inc(names[28].cnt);

    If (deep and (opt_header.DataDirectory[1].Size=$110) and (dos_header.e_sp=$B8)
      and (pe_header.NumberOfSections>5)) then inc(names[28].cnt);

    If ((opt_header.DataDirectory[1].Size=$E0) and (opt_header.DataDirectory[9].Size=$18)
      and (dos_header.e_sp=$B8)) then inc(names[29].cnt);

    If (opt_header.BaseOfCode=$1000) and (opt_header.CheckSum<>$0)
      and (opt_header.MajorOperatingSystemVersion=$4) and (opt_header.AddressOfEntryPoint=$1000)
      and (dos_header.e_sp=$B8) and (names[18].cnt=$0)
      and (nt_header.FileHeader.NumberOfSections>4) then
        If Pe.EpBytes[1]=$E8 then inc(names[40].cnt);
  // END -----------------------------------------------------------------------
  // Detect Obsidium  !!! ------------------------------------------------------
    If (dos_header.e_cblp=$50) and (dos_header.e_cp=$2) and (dos_header.e_minalloc=$F)
      and (dos_header.e_ovno=$1A) and (pe_header.Characteristics=$103)
      and (opt_header.FileAlignment=$200) and (opt_header.SizeOfHeaders=$400) then
      begin
        s:=check_obsidium();
        If s<>'' then
        begin
          names[41].name:=s;
          inc(names[41].cnt)
        end;
        If (s='') and (deep=true) then inc(names[41].cnt);
      end;
  // END -----------------------------------------------------------------------
  If (names[15].cnt = 10) then
  begin
    If get_delphi then _compiler.Caption:=names[15].name+PE.GetDelphiVer+names[38].name
      else _compiler.Caption:=names[15].name+names[38].name;
  end;
  If (names[26].cnt=10) or ((names[15].cnt<10)and(names[16].cnt<10)and(names[17].cnt<10)) then
  begin
    If (get_delphi) then
    begin
      s:=PE.EpCheckVC;
      If (s=' LCC Win32 1.x') or (s=' WATCOM C/C++ 32') or (s=' FreeBasic 0.14') then  _compiler.Caption:=s
        else _compiler.Caption:=names[26].name+s+names[37].name;
    end else _compiler.Caption:=names[26].name + names[37].name;
  end;
// -----------------------------------------------------------------------------
// Œœ–≈ƒ≈Àﬂ≈Ã Ã¿—Ã »À» “¿—Ã
  if (pos('[ver: x.x]',_compiler.Caption) <> 0) then
  begin
    If (PE.EpCheckMasm = 1) then names[27].cnt:= 2;
    //If (nt_header.OptionalHeader.MajorLinkerVersion=5)
      //and (nt_header.OptionalHeader.MinorLinkerVersion=12) then inc(names[27].cnt);
    If (names[27].cnt > 1) then _compiler.Caption:=names[27].name;
  end;
// -----------------------------------------------------------------------------
  If (names[36].cnt > 0) and (names[15].cnt > 1)
    then _compiler.Caption:=names[15].name+' /'+names[17].name;
  If (names[52].cnt > 0) and (names[15].cnt > 1)
    then _compiler.Caption:=names[15].name+' /'+names[17].name;
// -----------------------------------------------------------------------------
// œ€“¿≈Ã—ﬂ «¿ƒ≈“≈ “»“‹ ¬≈–—»ﬁ ƒ≈À‹‘», ≈—À» œŒÀ”◊»ÀŒ—‹ ¬€¬Œƒ»Ã
  If (names[15].cnt<10) and (names[17].cnt<10) and (names[15].cnt>2) and (names[17].cnt>2) then
  begin             
    s:=PE.GetDelphiVer;
    If s <> ' [ver: x]' then
    begin
      _compiler.Caption:=names[15].name+s+names[38].name;
      names[17].cnt:=0;
    end;
  end;
  If names[17].cnt = 10 then _compiler.Caption:=names[17].name + names[37].name;
  If names[16].cnt > 0  then _compiler.Caption:=names[16].name + names[39].name;
// -----------------------------------------------------------------------------
// Õ≈ —“–Œ√»≈ ƒ≈“≈ “€
  If names[104].cnt > 1 then _packer.Caption:=names[104].name;
  If names[105].cnt > 0 then _packer.Caption:=names[105].name;
  If names[106].cnt > 0 then _packer.Caption:=names[106].name;
  If names[107].cnt > 0 then _packer.Caption:=names[107].name;
  If names[109].cnt > 0 then _packer.Caption:=names[109].name;
// -----------------------------------------------------------------------------
  If names[1].cnt  > 0 then _packer.Caption:=names[1].name;
  If names[2].cnt  > 0 then _packer.Caption:=names[2].name;
  If names[4].cnt  > 0 then _packer.Caption:=names[4].name;
  If names[5].cnt  > 0 then _packer.Caption:=names[5].name;
  If names[6].cnt  > 0 then _packer.Caption:=names[6].name;
  If names[7].cnt  > 0 then _packer.Caption:=names[7].name;
  If names[8].cnt  > 0 then _packer.Caption:=names[8].name;
  If names[9].cnt  > 0 then _packer.Caption:=names[9].name;
  If names[10].cnt > 0 then _packer.Caption:=names[10].name;
  If names[11].cnt > 0 then _packer.Caption:=names[11].name;
  If names[12].cnt > 0 then _packer.Caption:=names[12].name;
  If names[13].cnt > 0 then _packer.Caption:=names[13].name;
  If names[14].cnt > 0 then _packer.Caption:=names[14].name;
  If names[20].cnt > 0 then _packer.Caption:=names[20].name;
  If names[21].cnt > 2 then _packer.Caption:=names[21].name;
  If names[22].cnt > 0 then _packer.Caption:=names[22].name;
  If names[23].cnt > 0 then _packer.Caption:=names[23].name;
  If names[25].cnt > 0 then _packer.Caption:=names[25].name;
  If names[28].cnt > 0 then _packer.Caption:=names[28].name;
  If names[29].cnt > 0 then _packer.Caption:=names[29].name;
  If names[30].cnt > 3 then _packer.Caption:=names[30].name;
  If names[31].cnt > 2 then _packer.Caption:=names[31].name;
  If names[33].cnt > 2 then _packer.Caption:=names[33].name;
  If names[34].cnt > 2 then _packer.Caption:=names[34].name;
  If names[35].cnt > 2 then _packer.Caption:=names[35].name;
  If names[36].cnt > 0 then _packer.Caption:=names[36].name;
  If names[40].cnt > 0 then _packer.Caption:=names[40].name;
  If names[41].cnt > 0 then _packer.Caption:=names[41].name;
  If names[42].cnt > 0 then _packer.Caption:=names[42].name;
  If names[44].cnt > 0 then _packer.Caption:=names[44].name;
  If names[45].cnt > 0 then _packer.Caption:=names[45].name;
  If names[46].cnt > 2 then _packer.Caption:=names[46].name;
  If names[47].cnt > 2 then _packer.Caption:=names[47].name;
  If names[48].cnt > 0 then _packer.Caption:=names[48].name;
  If names[49].cnt > 0 then _packer.Caption:=names[49].name;
  If names[50].cnt > 0 then _packer.Caption:=names[50].name;
  If names[51].cnt > 0 then _packer.Caption:=names[51].name;
  If names[52].cnt > 0 then _packer.Caption:=names[52].name;
  If names[53].cnt > 0 then _packer.Caption:=names[53].name;
  If names[54].cnt > 2 then _packer.Caption:=names[54].name;
  If names[55].cnt > 2 then _packer.Caption:=names[55].name;
  If names[56].cnt > 0 then _packer.Caption:=names[56].name;
  If names[57].cnt > 2 then _packer.Caption:=names[57].name;
  If names[59].cnt > 0 then _packer.Caption:=names[59].name;
  If names[60].cnt > 0 then _packer.Caption:=names[60].name;
  If names[61].cnt > 0 then _packer.Caption:=names[61].name;
  If names[62].cnt > 0 then _packer.Caption:=names[62].name;
  If names[63].cnt > 0 then _packer.Caption:=names[63].name;
  If names[64].cnt > 0 then _packer.Caption:=names[64].name;
  If names[65].cnt > 0 then _packer.Caption:=names[65].name;
  If names[66].cnt > 2 then _packer.Caption:=names[66].name;
  If names[67].cnt > 2 then _packer.Caption:=names[67].name;
  If names[68].cnt > 2 then _packer.Caption:=names[68].name;
  If names[69].cnt > 1 then _packer.Caption:=names[69].name;
  If names[70].cnt > 2 then _packer.Caption:=names[70].name;
  If names[71].cnt > 0 then _packer.Caption:=names[71].name;
  If names[72].cnt > 0 then _packer.Caption:=names[72].name;
  If names[73].cnt > 0 then _packer.Caption:=names[73].name;
  If names[74].cnt > 0 then _packer.Caption:=names[74].name;
  If names[75].cnt > 0 then _packer.Caption:=names[75].name;
  If names[76].cnt > 0 then _packer.Caption:=names[76].name;
  If names[77].cnt > 0 then _packer.Caption:=names[77].name;
  If names[78].cnt > 1 then _packer.Caption:=names[78].name;
  If names[79].cnt > 0 then _packer.Caption:=names[79].name;
  If names[80].cnt > 0 then _packer.Caption:=names[80].name;
  If names[81].cnt > 0 then _packer.Caption:=names[81].name;
  If names[82].cnt > 0 then _packer.Caption:=names[82].name;
  If names[83].cnt > 0 then _packer.Caption:=names[83].name;
  If names[84].cnt > 0 then _packer.Caption:=names[84].name;
  If names[85].cnt > 0 then _packer.Caption:=names[85].name;
  If names[86].cnt > 0 then _packer.Caption:=names[86].name;
  If names[87].cnt > 0 then _packer.Caption:=names[87].name;
  If names[88].cnt > 2 then _packer.Caption:=names[88].name;
  If names[89].cnt > 0 then _packer.Caption:=names[89].name;
  If names[90].cnt > 0 then _packer.Caption:=names[90].name;
  If names[91].cnt > 2 then _packer.Caption:=names[91].name;
  If names[92].cnt > 2 then _packer.Caption:=names[92].name;
  If names[93].cnt > 2 then _packer.Caption:=names[93].name;
  If names[94].cnt > 2 then _packer.Caption:=names[94].name;
  If names[95].cnt > 2 then _packer.Caption:=names[95].name;
  If names[96].cnt > 2 then _packer.Caption:=names[96].name;
  If names[97].cnt > 0 then _packer.Caption:=names[97].name;
  If names[98].cnt > 2 then _packer.Caption:=names[98].name;
  If names[99].cnt > 0 then _packer.Caption:=names[99].name;
  If names[100].cnt > 0 then _packer.Caption:=names[100].name;
  If names[101].cnt > 2 then _packer.Caption:=names[101].name;
  If names[102].cnt > 0 then _packer.Caption:=names[102].name;
  If names[103].cnt > 0 then _packer.Caption:=names[103].name;
  If names[108].cnt > 0 then _packer.Caption:=names[108].name;
  If names[110].cnt > 2 then _packer.Caption:=names[110].name;
  If names[111].cnt > 2 then _packer.Caption:=names[111].name;
  If names[112].cnt > 0 then _packer.Caption:=names[112].name;
  If names[113].cnt > 0 then _packer.Caption:=names[113].name;
  If names[114].cnt > 0 then _packer.Caption:=names[114].name;
  If names[115].cnt > 2 then _packer.Caption:=names[115].name;
  If names[117].cnt > 2 then _packer.Caption:=names[117].name;
  If names[118].cnt > 2 then _packer.Caption:=names[118].name;
  If names[119].cnt > 2 then _packer.Caption:=names[119].name;

  If (_packer.Caption='') then
  begin
    If names[116].cnt > 0 then _packer.Caption:=names[116].name;
  end;

  If (names[3].cnt>1) then
  begin
    If (upx_ver<>'') then _packer.Caption:=names[3].name+' '+upx_ver
      else If (names[3].cnt=2) then
        If (ImpList.Count < 12) then _packer.Caption:=names[3].name+names[24].name;
    If names[3].cnt=3 then _packer.Caption:=names[3].name+' | Unopix 1.xx';
  end;

  If (names[19].cnt>3) then
    If _packer.Caption='' then _packer.Caption:=names[19].name
      else _packer.Caption:=_packer.Caption+' | '+names[19].name; 
  
  If (names[18].cnt>0) and (_packer.Caption='') then
  begin
    _packer.Caption:=names[18].name;
    If names[24].cnt>0 then _packer.Caption:=_packer.Caption+names[24].name;
  end;
  If (names[32].cnt>1) and (_packer.Caption='') then _packer.Caption:=names[32].name;
  If names[43].cnt>0 then _packer.Caption:=_packer.Caption+names[43].name;

  If (_packer.Caption='') and (names[58].cnt>1) then _packer.Caption:=names[58].name;
  If _packer.Caption='' then _packer.Caption:=' Nothing found';
  If _compiler.Caption='' then _compiler.Caption:=' Unknown';
end;{END scan_file}

Procedure analyzing_sect(dos_header: PImageDosHeader;nt_header: PImageNtHeaders);
var
  exp,imp,tls,code,data,resource,dd,reloc:dword;
  n:integer;
  s : string;
begin
  exp:=nt_header.OptionalHeader.DataDirectory[0].VirtualAddress;
  imp:=nt_header.OptionalHeader.DataDirectory[1].VirtualAddress;
  resource:=nt_header.OptionalHeader.DataDirectory[2].VirtualAddress;
  tls:=nt_header.OptionalHeader.DataDirectory[9].VirtualAddress;
  code:=nt_header.OptionalHeader.BaseOfCode;
  data:=nt_header.OptionalHeader.BaseOfData;
  reloc:=nt_header.OptionalHeader.DataDirectory[5].VirtualAddress;
  If (code > 0) then
  begin
    //dd:=DiEfrm.PE.FileOffsetToRva(code);
    dd:=code;
    n:=DiEfrm.PE.RvaToSecNum(dd);
    If (n <> -1) then
    begin
      s:=Diefrm.ListView1.Items.Item[n].SubItems.Strings[5];
      If s <> 'none' then
      begin
        If pos('/',s)=0 then delete(s,2,length(s));
        s:=s+'/c';
        Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:=s;
      end
      else Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:='code';
    end;
  end;
  If (reloc > 0) then
  begin
    n:=DiEfrm.PE.RvaToSecNum(reloc);
    If (n <> -1) then
    begin
      s:=Diefrm.ListView1.Items.Item[n].SubItems.Strings[5];
      If s <> 'none' then
      begin
        If pos('/',s)=0 then delete(s,2,length(s));
        s:=s+'/b';
        Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:=s;
      end
      else Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:='breloc';
    end;
  end;
  If (data > 0) then
  begin
    n:=DiEfrm.PE.RvaToSecNum(data);
    If (n <> -1) then
    begin
      s:=Diefrm.ListView1.Items.Item[n].SubItems.Strings[5];
      If (s <> 'none') then
      begin
        If pos('/',s)=0 then delete(s,2,length(s));
        s:=s+'/d';
        Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:=s;
      end
      else Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:='data';
    end;
  end;
  If tls > 0 then
  begin
    n:=DiEfrm.PE.RvaToSecNum(tls);
    If n <> -1 then
    begin
      s:=Diefrm.ListView1.Items.Item[n].SubItems.Strings[5];
      If s <> 'none' then
      begin
        If pos('/',s)=0 then delete(s,2,length(s));
        s:=s+'/t';
        Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:=s;
      end
      else Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:='tls';
    end;
  end;
  If exp > 0 then
  begin
    n:=DiEfrm.PE.RvaToSecNum(exp);
    If n <> -1 then
    begin
      s:=Diefrm.ListView1.Items.Item[n].SubItems.Strings[5];
      If s <> 'none' then
      begin
        If pos('/',s)=0 then delete(s,2,length(s));
        s:=s+'/e';
        Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:=s;
      end
      else Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:='exp';
    end;
  end;
  If imp > 0 then
  begin
    n:=DiEfrm.PE.RvaToSecNum(imp);
    If n <> -1 then
    begin
      s:=Diefrm.ListView1.Items.Item[n].SubItems.Strings[5];
      If s <> 'none' then
      begin
        If pos('/',s)=0 then delete(s,2,length(s));
        s:=s+'/i';
        Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:=s;
      end
      else Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:='imp';
    end;
  end;
  If resource > 0 then
  begin
    n:=DiEfrm.PE.RvaToSecNum(resource);
    If n <> -1 then
    begin
      s:=Diefrm.ListView1.Items.Item[n].SubItems.Strings[5];
      If s <> 'none' then
      begin
        If pos('/',s)=0 then delete(s,2,length(s));
        s:=s+'/r';
        Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:=s;
      end
      else Diefrm.ListView1.Items.Item[n].SubItems.Strings[5]:='res';
    end;
  end;
  If Diefrm.PageControl1.TabIndex=3 then Diefrm.ListView1.SetFocus;
end;

Procedure GetImport();
label SomeError;
var
  FP,zzz1,dw1  : dword;
  dd,zzz,sz    : dword;
  c1,c2        : dword;
  s            : string[125];
  imp          : PIMAGE_IMPORT_DESCRIPTOR;
  hint         : word;
  nado,er      : boolean;
  Li           : TListItem;
  Ls           : TListItems;
  ImpLib       : PImportedLibrary;
  ImpFun       : PImportedFunction;
  ddd          : Pdword;
  i            : integer;
begin
  ImpList.Clear;
  If path='' then
  begin
    DiEfrm._info.Caption:=NoFileLoaded;
    exit;
  end;
  FP:=dword(DiEfrm.PE.MEMPTR);
  SZ:=DiEfrm.PE.MEMSZ;
  er:=false;
  dd:=DiEfrm.PE.nt.OptionalHeader.DataDirectory[1].VirtualAddress;
  If (dd = INVALID_VALUE) or (dd = 0) then goto SomeError;
  dd:=DiEfrm.PE.RvaToFileOffset(dd);
  If (dd = INVALID_VALUE) then goto SomeError;
  IMP:=PIMAGE_IMPORT_DESCRIPTOR(pointer(FP+dd));
  nado:=false;
  repeat
    hint:=0;
    c1:=0;
    try
      c1:=DiEfrm.PE.RvaToFileOffset(imp.Name);
    except
      ER:=true;
    end;
    If (c1 = INVALID_VALUE) or (er = true) or (c1>=SZ) or (c1=0) then goto SomeError;
    s:=PCHAR(Pointer(FP+c1));
    zzz:=imp.Characteristics;
    If (imp.Characteristics <> 0) then zzz:=imp.Characteristics else zzz:=imp.FirstThunk;

    If (zzz > $50000000) then zzz:=zzz and $FFFF;

    i:=DiEfrm.PE.RvaToSecNum(zzz);
    If (i = -1) {or (zzz < $1000)} then
    begin
      zzz:=imp.FirstThunk;
      i:=DiEfrm.PE.RvaToSecNum(zzz);
      If (i = -1) then
      begin
        er:=true;
        goto SomeError;
      end;
    end;

    If (imp.FirstThunk <> 0) then zzz1:=imp.FirstThunk else zzz1:=imp.Characteristics;
    If (zzz1 > $10000000) then zzz1:=zzz1 and $FFFF;

    c2:=DiEfrm.Pe.RvaToFileOffset(zzz);
    If (c2 = INVALID_VALUE) then
    begin
      er:=true;
      goto SomeError;
    end;

    If (c2 > SZ) then
    begin
      If (zzz = zzz1) then zzz1:=zzz1 and $FFFF;
      zzz:=zzz and $FFFF;
    end;

    Li:=DiEfrm.ListView2.Items.add;
    Li.Caption:=s;
    Li.subItems.add(IntToHex(imp.Name,8));
    Li.subItems.add(IntToHex(zzz1,8));
    new(ImpLib);
    ImpLib.DllName:=s;
    ImpLib.Rva:=imp.Name;
    ImpLib.First:=zzz1;
    inc(imp_kernel);
    If (uppercase(s) = 'MSVBVM60.DLL') or (uppercase(s) = 'MSVBVM50.DLL') then basic:=1;
    ImpLib.FunctionList:=TList.Create;
    ImpList.add(ImpLib);
    repeat
      c1:=DiEfrm.PE.RvaToFileOffset(zzz);
      If c1 = INVALID_VALUE then goto SomeError;
      ddd:=pointer(c1+FP);
      c1:=ddd^;
      If c1 <> 0 then
      begin
        If c1 < $80000000 then
        begin
          c2:=c1;
          c1:=DiEfrm.PE.RvaToFileOffset(c1);
          If c1 <> INVALID_VALUE then
          begin
            try
              Move(Pointer(FP+C1)^,hint,2);
            except
              ER:=true;
            end;
            If ER then goto SomeError;
            dw1:=sz-C1-2;
            If ((dw1) <= 35) then ZeroMemory(@s,dw1+2); // ÂÒÎË ÒÚÓÍ‡ ‚ ÍÓÌˆÂ Ù‡ÈÎ‡
            s:=PCHAR(Pointer(FP+C1+2));
            If ((dw1) <= 35) then SetLength(s,dw1);     // ÛÒÚ‡ÌÓ‚ËÏ ‡ÁÏÂ ‚Û˜ÌÛ˛
          end else
          begin
            s:='<memory address: '+IntToHex(c2,8)+'>';
            hint:=0;
          end;
        end;
        If (c1 > $80000000) then
        begin
          hint:=c1-$80000000;
          s:='<by ordinal>';
        end;
        New(ImpFun);
        If uppercase(ImpLib.DllName) = 'MSVBVM60.DLL' then
          If hint = 100 then s:='ThunRTMain';
        ImpFun.ApiName:=s;
        ImpFun.Rva :=zzz1;
        ImpFun.hint:=hint;
        ImpLib.FunctionList.Add(ImpFun);
        zzz:=zzz+$4;
        zzz1:=zzz1+$4;
        c1:=1;
      end;

    until (c1 = 0);

    //Ls:=DiEfrm.ListView2.Items;
    //If (Ls.Count > 0) then
    //  Ls.Item[ImpList.Count-1].Caption:='['+ IntToStr(ImpLib.FunctionList.Count)+']' + Ls.Item[ImpList.Count-1].Caption;

    inc(imp);
    c1:=DiEfrm.PE.RvaToFileOffset(imp.FirstThunk);
    If (imp.FirstThunk = 0) or (c1 > SZ) or (c1 < 1) then nado:=true;
  until nado = true;
SomeError:
  If (ER = true) then
  begin
    DiEfrm.ListView2.Enabled:=false;
    DiEfrm.ListView2.Items.add.Caption:='Error get Import';
  end;
end;

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!//

Procedure DUMP_PEINFO();
var
  bb         : array [0..4] of byte;
  n1         : DWORD;
  dos_header : PImageDosHeader;
  nt_header  : PImageNtHeaders;
  Li         : TListItem;
  Section1   : PSection;
  FP         : pointer;
  s1,s2      : string[12];
begin
  FP:=DiEfrm.PE.MEMPTR;
  dos_header:=PImageDosHeader(FP);
  nt_header:=PImageNtHeaders(Pointer(Dword(dos_header)+Dword(dos_header._lfanew)));
  DiEfrm.ListView1.Items.BeginUpdate;
  DiEfrm.ListView1.Items.Clear;
  For n1:=0 to DiEfrm.PE.SectionList.Count-1 do
  begin
    Section1:=PSection(DiEfrm.PE.SectionList[n1]);
    Li:=DiEfrm.ListView1.Items.add;
    Li.Caption:=Section1.name;
    Li.subItems.add(IntToHex(Section1.rva,8));
    Li.subItems.add(IntToHex(Section1.virtual_size,8));
    Li.subItems.add(IntToHex(Section1.physical_offs,8));
    Li.subItems.add(IntToHex(Section1.physical_size,8));
    Li.subItems.add(IntToHex(Section1.flags,8));
    Li.subItems.add('none');
    Li.subItems.add(' ');
  end;
  DiEfrm.ListView1.Items.EndUpdate;
  n1:=DiEfrm.PE.RvaToFileOffset(nt_header.OptionalHeader.AddressOfEntryPoint);
  If n1 <= (DiEfrm.PE.MEMSZ-5) then
  begin
    Move(Pointer(dword(FP)+n1)^,bb,5);
    s1:=inttohex(bb[0],2)+inttohex(bb[1],2)+inttohex(bb[2],2)+inttohex(bb[3],2)+inttohex(bb[4],2);
    DiEfrm._FirstBytes.Caption:=' EpBytes:  '+s1;
  end else
  begin
    s1:='EoF';
    DiEfrm._FirstBytes.Caption:=' EpBytes:  '+s1;
  end;
  s2:=DiEfrm.PE.RvaToFileName(nt_header.OptionalHeader.AddressOfEntryPoint);
  If s2='' then s2:='empty';
  DiEfrm._EntryPoint.Caption:=' EntryPoint: '+IntToHex(nt_header.OptionalHeader.AddressOfEntryPoint,8);
  DiEfrm._ImageBase.Caption:=' ImageBase: '+IntToHex(nt_header.OptionalHeader.ImageBase,8);
  DiEfrm._ImageSize.Caption:=' ImageSize:  '+IntToHex(nt_header.OptionalHeader.SizeOfImage,8);
  DiEfrm._FileOffset.Caption:=' FileOffset:  '+IntToHex(n1,8);
  DiEfrm._FirstBytes.Caption:=' EpBytes:  '+s1;
  DiEfrm._EPsection.Caption:=' EpSection: '+'<'+s2+'>';
  s1:=IntTostr(nt_header.OptionalHeader.MajorLinkerVersion);
  s1:=s1+'.'+IntTostr(nt_header.OptionalHeader.MinorLinkerVersion);
  DiEfrm._Linker.Caption:=' LinkerInfo:  '+s1;
  case nt_header.OptionalHeader.Subsystem of
    0: DiEfrm._Subsystem.Caption:=' SubSystem: '+'Unknown';
    1: DiEfrm._Subsystem.Caption:=' SubSystem: '+'Native';
    2: DiEfrm._Subsystem.Caption:=' SubSystem: '+'Windows GUI';
    3: DiEfrm._Subsystem.Caption:=' SubSystem: '+'Windows CUI';
    5: DiEfrm._Subsystem.Caption:=' SubSystem: '+'OS2 CUI ';
    7: DiEfrm._Subsystem.Caption:=' SubSystem: '+'Posix CUI';
    8: DiEfrm._Subsystem.Caption:=' SubSystem: '+'Win 9x Driver';
    9: DiEfrm._Subsystem.Caption:=' SubSystem: '+'Windows CE';
  end;
  DiEfrm.scan_file();
  IF ((DiEfrm.PE.nt.FileHeader.Characteristics and IMAGE_FILE_DLL) = IMAGE_FILE_DLL)
    then DiEfrm._Type.Caption:=' DLL' else DiEfrm._Type.Caption:=' EXE';
  analyzing_sect(dos_header,nt_header);
end;

procedure SaveSetting;
var
  IniFile : TIniFile;
begin
  try
    IniFile := TIniFile.Create(ExtractFilePath(application.ExeName)+'Options.ini');
    IniFile.WriteBool('Options','Stay On Top',DiEfrm.CheckBox1.Checked);
    IniFile.WriteBool('Options','Reg Shell',DiEfrm.CheckBox2.Checked);
    IniFile.WriteBool('Options','Tray Icon',DiEfrm.CheckBox3.Checked);
    IniFile.WriteBool('Options','Return',DiEfrm.CheckBox4.Checked);
    IniFile.WriteBool('Options','Deep Scan',DiEfrm.CheckBox5.Checked);
    IniFile.WriteBool('Options','Hex Viewer',DiEfrm.CheckBox6.Checked);
    IniFile.WriteBool('Options','Get Delphi',DiEfrm.CheckBox7.Checked);
    IniFile.WriteBool('Options','Auto Scan',DiEfrm.CheckBox8.Checked);
    IniFile.WriteBool('Options','Emul',DiEfrm.CheckBox9.Checked);
    IniFile.Free;
  except
    IniFile.Free;  
  end;
end;

procedure TDiEfrm.Button3Click(Sender: TObject);
begin
  SaveSetting();
end;

procedure LoadSetting();
var
  IniFile : TIniFile;
begin
  try
    IniFile := TIniFile.Create(ExtractFilePath(application.ExeName)+'Options.ini');
    DiEfrm.CheckBox1.Checked:=IniFile.ReadBool('Options','Stay On Top',false);
    DiEfrm.CheckBox2.Checked:=IniFile.ReadBool('Options','Reg Shell',false);
    DiEfrm.CheckBox3.Checked:=IniFile.ReadBool('Options','Tray Icon',false);
    DiEfrm.CheckBox4.Checked:=IniFile.ReadBool('Options','Return',false);
    DiEfrm.CheckBox5.Checked:=IniFile.ReadBool('Options','Deep Scan',false);
    DiEfrm.CheckBox6.Checked:=IniFile.ReadBool('Options','Hex Viewer',false);
    DiEfrm.CheckBox7.Checked:=IniFile.ReadBool('Options','Get Delphi',false);
    DiEfrm.CheckBox8.Checked:=IniFile.ReadBool('Options','Auto Scan',false);
    DiEfrm.CheckBox9.Checked:=IniFile.ReadBool('Options','Emul',false);
    IniFile.Free;
  except
    IniFile.Free;
  end;
end;

procedure ExternalScan();
var
  proc1: TDiePlugStatus;
  proc2: TDiePlugPe;
  pDw: Dword;
  pStr:PChar;
begin
  If (not bPluginsLoaded) then
  begin
    LoadPlugins();
    DiEfrm.FillMenu(nil);
    bPluginsLoaded:=true;
  end;
  If (iSignPlug = -1) then
  begin
    DiEfrm._Info.Caption:=' Can'+ '''t'+' find PEiD signatures';
    exit;
  end;
  If (AllPlug[iSignPlug].DieStatus <> nil) then
  begin
    @proc1:=AllPlug[iSignPlug].DieStatus;
    @proc2:=AllPlug[iSignPlug].DiePe;
    proc2(DiEfrm.PE.MEMPTR,DiEfrm.PE.MEMSZ,DiEfrm.PE.RvaToFileOffset(diefrm.PE.EntryPoint));
    pDw:=0;
    pStr:=nil;
    try
      proc1(pCHAR(path),@pDw);
    except
      DiEfrm._Info.Caption:=' Some error in plugin!';
      exit;  
    end;
    pStr:=POINTER(pDw);
    //MOVE(POINTER(pDw)^,pStr,200);
    //sStr:=PChar(POINTER(pDw));
    DiEfrm._Info.Caption:=' External Sign: '+pStr;
  end else DiEfrm._Info.Caption:=' Need PEiD signatures 0.15 or better!';
end;

procedure TDiEfrm.Button1Click(Sender: TObject);
begin
  If (custom_open = false) then
  begin
    Application.ProcessMessages;
    //path:='';
    If (not Opendialog1.Execute) then exit;
    path:=Opendialog1.FileName;
  end;
  Application.ProcessMessages;
  PE.PEFilePath:=path;
  Application.ProcessMessages;

  clear_all;
  if (loaded_hex) then clear_hex;
  loaded_hex:=false;

  If (PE.PEFilePath = '1') then
  begin
    _info.Caption:=' Unable to open file!';
    path:='';
    custom_open:=false;
    exit;
  end;
  If (PE.PEFilePath = '2') then
  begin
    _info.Caption:=' '+ExtractFileName(path)+' - not valid PE file!';
    path:='';
    custom_open:=false;
    exit;
  end;
  basic:=0;
  imp_kernel:=0;
  _info.Caption:=' File opened';
  _name.Caption:=' '+ExtractFileName(path);
  _size.Caption:=' '+IntToStr(PE.MEMSZ)+' [bytes]';
  _info.Caption:=' Get import';
  GetImport();
  _info.Caption:=' Get Pe info';
  dump_peinfo();
  custom_open:=false;
  If deep then _info.Caption:=' Scanning done (deep scan)'
    else _info.Caption:=' Scanning done';

  If bAutoScan then ExternalScan();
  
  If (save_op) then
  begin
    save_op:=false;
    SaveSetting();
  end;
end;

Function EntopiaFile(FOffset,FSize:dword):Extended;
var
  //B         : array[1..65536] of Byte;
  Counts    : array[0..255] of Integer;
  i,n       : dword;
  FP        : PbyteArray;
  Section   : PSection;
  Freq,_Log2 ,ENTR  : Extended;
  _Size,RT: Dword;
  addr_sec  : dword;
  addr_siz  : dword;
  addr_nam  : string[8];
Begin
  FP:=POINTER(DWORD(DiEfrm.PE.MEMPTR)+FOffset);
  //FillChar(B,SizeOf(B),0);
  FillChar(Counts,SizeOf(Counts),0);
  For I := 0 to FSize-1 do inc(Counts[FP[I]]);
  Entr := 0;
  //FSize:=FSize-Counts[0];
  //FSize:=FSize-Counts[255];
  //Counts[0]:=0;
  //Counts[255]:=0;
  for i := 0 to 255 do
  Begin
    Freq  := Counts[I] / FSize;
    if Freq > 0 then _Log2 := Log2( Freq ) else _Log2 := 0;
    Entr := Entr + _Log2 * Counts[I];
  end;
  Entr:= Trunc(Abs(Entr));
  Result := Entr;
end;

Function detect_2(const adr,sz:dword; pp:pointer; const buf:array of byte):integer;
var
  i,n  : integer;
  bb   : Pbyte;
  find,nn: byte;
begin
  result:=1;
  find:=0;
  bb:=pointer(dword(pp)+adr);
  nn:=length(buf);
  n:=sz;
  try
    For i:=0 to n-1 do
    begin
      If ((bb^ = buf[find]) or (buf[find] = $3F))
        then inc(find)
        else find:=0;
      If (find = nn) then exit;
      inc(bb);
    end;
  except
    result:=0;
    exit;
  end;
  result:=0;
end;

Function FastDetect(const adr,sz:dword; pp:pointer; const buf:array of byte):integer;
var
  i,n  : integer;
  bb   : Pbyte;
  find,nn : byte;
begin
  result:=1;
  find:=0;
  bb:=pointer(dword(pp)+adr);
  nn:=length(buf);
  n:=sz;
  For i:=0 to n-1 do
  begin
    If (bb^ = buf[find]) then inc(find) else find:=0;
    If (find = nn) then exit;
    inc(bb);
  end;
  result:=0;
end;

procedure TDiEfrm.Button2Click(Sender: TObject);
const
  Morphnah   = 1;
  RPolyCrypt = 2;
var
  s       : string;
  Section : PSection;
  i       : integer;
  DosHeader   : PImageDosHeader;
  NtHeader    : PImageNtHeaders;
  aspr,arma   : boolean;
  d1,d2   : dword;
  imp_sec : integer;
//------------------
  adr,rva,res:dword;
begin
  Application.ProcessMessages;
  DiEfrm._info2.Caption:=' Scaning';
  Application.ProcessMessages;
  If (path='') then
  begin
    DiEfrm._info2.Caption:=NoFileLoaded;
    exit;
  end;
  aspr:=false;
  arma:=false;
  DosHeader:=PImageDosHeader(DiEfrm.PE.MEMPTR);
  NtHeader:=PImageNtHeaders(Pointer(Dword(DosHeader)+Dword(DosHeader._lfanew)));
  imp_sec:=DiEfrm.PE.RvaToSecNum(PE.nt.OptionalHeader.DataDirectory[1].VirtualAddress);
  If (NtHeader.OptionalHeader.DataDirectory[15].Size=$100000) then aspr:=true;
  If (NtHeader.OptionalHeader.DataDirectory[1].Size = $50)
   or (NtHeader.OptionalHeader.DataDirectory[1].Size = $55)
   or (NtHeader.OptionalHeader.DataDirectory[1].Size = $66)
   then
    If (NtHeader.OptionalHeader.MajorLinkerVersion = $53) and
      (NtHeader.OptionalHeader.MinorLinkerVersion = $52) then arma:=true;

  If deep then DiEfrm._info2.Caption:=' Scanning done (deep scan)'
    else DiEfrm._info2.Caption:=' Scanning done';

  If (aspr = true) or (deep = true) then
    For i:=0 to PE.SectionList.Count-1 do
    begin
      Section:=PSection(PE.SectionList[i]);
      If Section.physical_size > $500 then
        If detect_1(Section.physical_offs+$3C0,49) = 1 then
        begin
          _Detected.Caption:=' --> ASPack 2.12';
          exit;
        end;
      If Section.physical_size > $500 then
        If detect_1(Section.physical_offs+$3C0,54) = 1 then
        begin
          _Detected.Caption:=' --> ASPack 2.12b';
          exit;
        end;
      If Section.physical_size > $1200 then
        If detect_1(Section.physical_offs+$10F0,50) = 1 then
        begin
          _Detected.Caption:=' --> ASPack 2.11c';
          exit;
        end;
      If Section.physical_size > $1200 then
        If detect_1(Section.physical_offs+$10C0,51) = 1 then
        begin
          _Detected.Caption:=' --> ASPack 2.11';
          exit;
        end;
      If Section.physical_size > $1000 then
        If detect_1(Section.physical_offs+$E60,52) = 1 then
        begin
          _Detected.Caption:=' --> ASPack 2.000 - 2.001';
          exit;
        end;
      If Section.physical_size > $1000 then
        If detect_1(Section.physical_offs+$E60,53) = 1 then
        begin
          _Detected.Caption:=' --> ASPack 2.1';
          exit;
        end;
      {If Section.physical_size > $A50 then
        If detect_1(Section.physical_offs+$A00,14) = 1 then
        begin
          _Detected.Caption:=' --> ASProtect 2.0';
          exit;
        end; }
      If (Section.physical_size > $A50) then
        If detect_1(Section.physical_offs+$9F8,55) = 1 then
        begin
          _Detected.Caption:=' --> ASProtect 1.23 RC4';
          exit;
        end;
      If (Section.physical_size > $9A0) then
        If detect_1(Section.physical_offs+$950,55) = 1 then
        begin
          _Detected.Caption:=' --> ASProtect 1.23 RC1';
          exit;
        end;
      If (Section.physical_size > $900) then
        If detect_1(Section.physical_offs+$8B0,56) = 1 then
        begin
          _Detected.Caption:=' --> ASProtect 1.2';
          exit;
        end;
      If (Section.physical_size > $10000) then
        If detect_1(Section.physical_offs,43) = 1 then
        begin
          d1:= Section.physical_offs+$500;
          d2:= Section.physical_size-$2500;

          If FastDetect(d1,d2,PE.MEMPTR,ASprotect23) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.3 SKE build 06.26 Beta';
            exit;
          end;

          If FastDetect(d1,d2,PE.MEMPTR,ASProtect23_1) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.3 SKE build 05.14';
            exit;
          end;

          If FastDetect(d1,d2,PE.MEMPTR,ASProtect23_2) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.3 SKE build 05.14 | Beta [1]';
            exit;
          end;

          If FastDetect(d1,d2,PE.MEMPTR,ASProtect23_3) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.2 SKE build 04.25 | [?]';
            exit;
          end;

          If FastDetect(d1,d2,PE.MEMPTR,ASProtect21) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.1 build 02.19';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect211) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.11 SKE build 03.13';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect22) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.2 SKE build 04.25 | Release [2]';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect22a) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.2 SKE build 03.05';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect133) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 1.33 build 03.07';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect22R) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.2 SKE build 04.25 | Release [1]';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect2xx) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.xx | Registered [1]';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect2xx1) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.xx | Registered [2]';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect22Ra) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.2 SKE build 04.25 | Debug';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect2xxP) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.xx | Private [?]';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect135) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 1.35 build 04.25 / 06.26';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect21r) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.1 build 02.19';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect2xx3) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.xx | Registered [3]';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect23_0319) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.3 SKE build 03.19';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect200_23) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.00 - 2.3 [?]';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect135build0425) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 1.35 build 04.25';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect132build1020) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 1.32 build 10.20';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,ASProtect200build0623) <> 0 then
          begin
            _Detected.Caption:=' --> ASProtect 2.0 build 06.23';
            exit;
          end;
          _Detected.Caption:=' --> ASProtect 1.33 - 2.2';
          exit;
        end;
    end;

  If detect_1($150,58) = 1 then
  begin
    _Detected.Caption:=' --> FSG 1.33';
    exit;
  end;

  If detect_1($160,57) = 1 then
  begin
    _Detected.Caption:=' --> FSG 2.0';
    exit;
  end;

  If detect_1($F0,68) = 1 then
  begin
    _Detected.Caption:=' --> (Win)Upack 0.39';
    exit;
  end;
  If detect_1($F0,69) = 1 then
  begin
    _Detected.Caption:=' --> (Win)Upack 0.37';
    exit;
  end;
  If detect_1($F0,70) = 1 then
  begin
    _Detected.Caption:=' --> (Win)Upack 0.36';
    exit;
  end;
  
  Section:=PSection(PE.SectionList[PE.SectionList.Count-1]);
  If (Section.physical_size >= $10000) then
  begin
    d1:=PE.RvaToFileOffset(PE.EntryPoint)+$3C;
    if PE.RvaToSecNum(PE.EntryPoint) = (PE.SectionList.Count-1) then
    begin
      If detect_1(d1,59) = 1 then
      begin
        _Detected.Caption:=' --> Enigma protector 1.02';
        exit;
      end;
      If detect_1(d1,60) = 1 then
      begin
        _Detected.Caption:=' --> Enigma protector 1.12 / 1.14';
        exit;
      end;
    end;
    d1:=Section.physical_offs+$1500;
    d2:=$5000;
    If detect_2(d1,d2,PE.MEMPTR,Enigma) = 1 then
    begin
      _Detected.Caption:=' --> Enigma protector 1.12 / 1.14';
      exit;
    end;
  end;

  Section:=PSection(PE.SectionList[0]);
  If (Section.physical_size > $1500) then
    If detect_1(Section.physical_offs,9) = 1 then
    begin
      _Detected.Caption:=' --> EXECryptor 1.5.x';
      exit;
    end;

  For i:=0 to PE.SectionList.Count-1 do
  begin
    Section:=PSection(PE.SectionList[i]);
    If (arma = true) or (deep = true) then
    begin
      If (Section.physical_size = $4000) then
        If detect_1(Section.physical_offs+$300,3) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 2.0x';
          exit;
        end;
      If (Section.physical_size = $4000) then
        If detect_1(Section.physical_offs+$174,4) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 2.5x';
          exit;
        end;
      If (Section.physical_size = $6000) then
        If detect_1(Section.physical_offs+$2D8,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 2.6x';
          exit;
        end;
      If (Section.physical_size = $6000) then
        If detect_1(Section.physical_offs+$2DC,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 2.8x - 3.0x';
          exit;
        end;
      If (Section.physical_size > $8000) and (Section.physical_size < $A000) then
        If detect_1(Section.physical_offs+$30C,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 3.4x - 3.6x';
          exit;
        end;
      If (Section.physical_size > $8000) and (Section.physical_size < $A000) then
        If detect_1(Section.physical_offs+$308,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 3.1x';
          exit;
        end;
      If (Section.physical_size = $B000) then
        If detect_1(Section.physical_offs+$6CC,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.3x';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$468,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.42';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$478,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.44';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$458,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.40 [?]';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$464,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.54/5.00 [beta]';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$460,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.54';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$444,22) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.00 - 4.40 [?]';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$45C,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.40 - 4.60 [?]';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$488,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.66';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$484,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.64';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$534,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.64 [max]';
          exit;
        end;

      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$474,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.66b';
          exit;
        end;


      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$448,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.40';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$430,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.10 - 4.40';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$428,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.00 - 4.10';
          exit;
        end;
      If (Section.physical_size = $A000) then
        If detect_1(Section.physical_offs+$450,17) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 4.48';
          exit;
        end;
      If (Section.physical_size = $9000) then
        If detect_1(Section.physical_offs+$3C0,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 3.7x - 4.xx';
          exit;
        end;
      If (Section.physical_size = $9000) then
        If detect_1(Section.physical_offs+$34C,8) = 1 then
        begin
          _Detected.Caption:=' --> Armadillo 3.7x';
          exit;
        end;
    end;
    If (i=1) then
    begin
      If (Section.physical_size >= $900) then
      begin
        If ((Pe.MEMSZ) >= (Section.physical_size+$150)) then
        begin
          d1:=Section.physical_size-$900;
          d2:=$1000;
          If (d1+d2 > PE.MEMSZ) then d2:= PE.MEMSZ - d1;
          If FastDetect(d1,d2,PE.MEMPTR,UPX121) <> 0 then
          begin
            _Detected.Caption:=' --> UPX 1.xx';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,UPX291) <> 0 then
          begin
            _Detected.Caption:=' --> UPX 0.9x - 3.0';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,UPX2912) <> 0 then
          begin
            _Detected.Caption:=' --> UPX 0.9x - 3.0';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,UPX7x) <> 0 then
          begin
            _Detected.Caption:=' --> UPX 0.7x';
            exit;
          end;
          If FastDetect(d1,d2,PE.MEMPTR,UPX1xx) <> 0 then
          begin
            _Detected.Caption:=' --> UPX 1.xx';
            exit;
          end;
        end;
      end;
    end;

    If (section.physical_size >= $D00) and (i>1) then
    begin
      If detect_1(Section.physical_offs+$BA,63) = 1 then
      begin
        _Detected.Caption:=' --> ExeStealth 2.75';
        exit;
      end;
      If detect_1(Section.physical_offs+$60,63) = 1 then
      begin
        _Detected.Caption:=' --> ExeStealth 2.75';
        exit;
      end;
    end;
    If (section.physical_size >= $D00) and (i>1) then
    begin
      If detect_1(Section.physical_offs+$93,64) = 1 then
      begin
        _Detected.Caption:=' --> ExeStealth 2.73';
        exit;
      end;
    end;
    If (section.physical_size > $10000) and (i>1) then
      If detect_1(Section.physical_offs,61) = 1 then
      begin
        _Detected.Caption:=' --> Krypton 0.5';
        exit;
      end;
    If section.physical_size > $3000 then
      If detect_1(Section.physical_offs+$F4,46) = 1 then
      begin
        _Detected.Caption:=' --> PELock 1.x Demo';
        exit;
      end;
    If section.physical_size > $3000 then
      If detect_1(Section.physical_offs,30) = 1 then
      begin
        _Detected.Caption:=' --> PELock 1.x';
        exit;
      end;

    If (section.physical_size > $2000)  and (i>0) then
      If detect_1(Section.physical_offs+$6ED,29) = 1 then
      begin
        _Detected.Caption:=' --> yoda'+chr($27)+'s Protector 1.03.3';
        exit;
      end;

    If (section.physical_size > $2000)  and (i>0) then
      If detect_1(Section.physical_offs+$549,29) = 1 then
      begin
        _Detected.Caption:=' --> yoda'+chr($27)+'s Protector 1.03.2';
        exit;
      end;

    If (section.physical_size > $2000)  and (i>0) then
      If detect_1(Section.physical_offs+$288,29) = 1 then
      begin
        _Detected.Caption:=' --> yoda'+chr($27)+'s Protector 1.02';
        exit;
      end;
    If (section.physical_size > $2000) and (i>0) then
      If detect_1(Section.physical_offs,37) = 1 then
      begin
        _Detected.Caption:=' --> yoda'+chr($27)+'s Protector 1.03.3';
        exit;
      end;
    If (section.physical_size > $2000) and (i>1) then
      If detect_1(Section.physical_offs+$21F,40) = 1 then
      begin
        _Detected.Caption:=' --> PUNiSHER 1.5 DEMO';
        exit;
      end;
    If section.physical_size > $2000 then
      If detect_1(Section.physical_offs,38) = 1 then
      begin
        _Detected.Caption:=' --> tElock 0.98';
        exit;
      end;
    If section.physical_size > $2000 then
      If detect_1(Section.physical_offs,39) = 1 then
      begin
        _Detected.Caption:=' --> tElock 0.99';
        exit;
      end;
    If (Section.physical_size = $11000) and (i>2) then
      If detect_1(Section.physical_offs,19) = 1 then
      begin
        _Detected.Caption:=' --> SDProtector 1.12';
        exit;
      end;
    If (Section.physical_size = $12000) and (i>2) then
      If detect_1(Section.physical_offs,44) = 1 then
      begin
        _Detected.Caption:=' --> SDProtector 1.16';
        exit;
      end;
    If (Section.physical_size > $2500) and (i>1) then
      If detect_1(Section.physical_offs+$2230,2) = 1 then
      begin
        _Detected.Caption:=' --> PESpin 1.304';
        exit;
      end;
    If (Section.physical_size > $100) and (Section.physical_size < $1000) and (i>1) then
    begin
      If detect_1(Section.physical_offs+$26F,65) = 1 then
      begin
        _Detected.Caption:=' --> SimplePack 1.11 [Method 1]';
        exit;
      end;
      If detect_1(Section.physical_offs+$296,65) = 1 then
      begin
        _Detected.Caption:=' --> SimplePack 1.12 / 1.21 [Method 1]';
        exit;
      end;
    end;
    If (Section.physical_size > $2500) and (i>1) then
      If detect_1(Section.physical_offs+$2259,2) = 1 then
      begin
        _Detected.Caption:=' --> PESpin 1.3 beta 2';
        exit;
      end;
    If (Section.physical_size > $2000) and (i>1) then
      If detect_1(Section.physical_offs+$1DA2,2) = 1 then
      begin
        _Detected.Caption:=' --> PESpin 1.1';
        exit;
      end;
    If (Section.physical_size >= $50) and (i=1) then
    begin
      If (check_mew = 1) and (detect_1(Section.physical_offs,28) = 1) then
      begin
        _Detected.Caption:=' --> MEW 11 SE 1.X';
        exit;
      end;
    end;
    If (Section.physical_size = $400) and (i=1) then
      If detect_1(Section.physical_offs+$1A0,16) = 1 then
      begin
        _Detected.Caption:=' --> beria 0.07 public WIP';
        exit;
      end;
    If (Section.physical_size >= $AE00) then
      If detect_1(Section.physical_offs,11) = 1 then
      begin
        _Detected.Caption:=' --> MoleBox Pro 2.5.7';
        exit;
      end;
    If (Section.physical_size > $A000) then
      If detect_1(Section.physical_offs,12) = 1 then
      begin
        _Detected.Caption:=' --> MoleBox Pro 2.5.13';
        exit;
      end;
    If (Section.physical_size >= $7200) then
      If detect_1(Section.physical_offs,13) = 1 then
      begin
        _Detected.Caption:=' --> MoleBox Pro 2.1';
        exit;
      end;
    If (Section.physical_size >= $B000) then
      If detect_1(Section.physical_offs,20) = 1 then
      begin
        _Detected.Caption:=' --> MoleBox Pro 2.5.18';
        exit;
      end;    
    If (Section.physical_size >= $B000) then
      If detect_1(Section.physical_offs,32) = 1 then                       
      begin
        _Detected.Caption:=' --> MoleBox Pro 2.5.23';
        exit;
      end;  
    If (Section.physical_size >= $B200) then
      If detect_1(Section.physical_offs,33) = 1 then
      begin
        _Detected.Caption:=' --> MoleBox Pro 2.6.1 Trial';
        exit;
      end;
    If (Section.physical_size >= $B200) then
      If detect_1(Section.physical_offs,47) = 1 then
      begin
        _Detected.Caption:=' --> MoleBox Pro 2.6.1.x';
        exit;
      end;
    If (Section.physical_size > $2500) and (i>1) then
      If detect_1(Section.physical_offs+$224C,2) = 1 then
      begin
        _Detected.Caption:=' --> PESpin 1.3';
        exit;
      end;
    If (Section.physical_size > $1300) and (i>1) then
      If detect_1(Section.physical_offs+$12E0,2) = 1 then
      begin
        _Detected.Caption:=' --> PESpin 0.41';
        exit;
      end;
    If (Section.physical_size > $300) and (Section.physical_size < $400) and (i>1) then
      If detect_1(Section.physical_offs+$160,24) = 1 then
      begin
        _Detected.Caption:=' --> Software Compress 1.2';
        exit;
      end;
    If (Section.physical_size > $3D00) and (i>2) then
      If detect_1(Section.physical_offs+$162,80) = 1 then
      begin
        _Detected.Caption:=' --> ORiEN 2.11 / 2.12';
        exit;
      end;
    If (Section.physical_size > $3D00) and (i>2) then
      If detect_1(Section.physical_offs+$162,81) = 1 then
      begin
        _Detected.Caption:=' --> ORiEN 2.11 / 2.12';
        exit;
      end;
    {If (Section.physical_size > $500) and (i>2) then
      If detect_1(Section.physical_offs,9) = 1 then
      begin
        _Detected.Caption:=' --> EXECryptor 2.2.x - 2.3.x';
        exit;
      end;}
    If (Section.physical_size > $500) and (i>2) then
      If detect_1(Section.physical_offs+$3C,9) = 1 then
      begin
        _Detected.Caption:=' --> EXECryptor 2.1.x';
        exit;
      end;
    If (Section.physical_size > $135) and (Section.physical_size < $350) then
      If detect_1(Section.physical_offs,10) = 1 then
      begin
        _Detected.Caption:=' --> FSG 1.0';
        exit;
      end;
    If (i=2) and (Section.physical_size > $800) then
      If detect_1(Section.physical_offs+$194,23) = 1 then
      begin
        _Detected.Caption:=' --> eXPressor 1.4.5.1';
        exit;
      end;
    If (i=1) and (Section.physical_size > $800) then
      If detect_1(Section.physical_offs+$3C,9) = 1 then
      begin
        _Detected.Caption:=' --> EXECryptor 2.1.x';
        exit;
      end;
    If (section.physical_size > $B000) and (section.physical_size < $D000) and (i>1) then
      If detect_1(Section.physical_offs,85) = 1 then
      begin
        _Detected.Caption:=' --> Obsidium 1.2.0.0';
        exit
      end;
    If (section.physical_size > $B000) and (section.physical_size < $D000) and (i>1) then
      If detect_1(Section.physical_offs,62) = 1 then
      begin
        _Detected.Caption:=' --> Obsidium 1.3.0.0';
        exit
      end;
    If (section.physical_size > $B000) and (section.physical_size < $D000) and (i>1) then
      If detect_1(Section.physical_offs,75) = 1 then
      begin
        _Detected.Caption:=' --> Obsidium 1.3.3.1';
        exit
      end;
    If (section.physical_size > $B000) and (section.physical_size < $D000) and (i>1) then
      If detect_1(Section.physical_offs,1) = 1 then
      begin
        _Detected.Caption:=' --> Obsidium 1.3.0.4';
        exit;
      end;
    If (i>1) and (Section.physical_size >= $A000) then
      If detect_1(Section.physical_offs,0) = 1 then
      begin
        _Detected.Caption:=' --> Obsidium 1.2.5.0';
        exit;
      end;
    If (i>1) and (Section.physical_size <= $200) then
    begin
      If detect_1(Section.physical_offs,87) = 1 then
      begin
        _Detected.Caption:=' --> Pohernah 1.0.3 | be careful may be trojan!';
        exit;
      end;
      If detect_1(Section.physical_offs,88) = 1 then
      begin
        _Detected.Caption:=' --> Pohernah 1.0.2 | be careful may be trojan!';
        exit;
      end;
    end;
    If (section.physical_size > $B000) and (section.physical_size < $D000) and (i>1) then
      If detect_1(Section.physical_offs,76) = 1 then
      begin
        _Detected.Caption:=' --> Obsidium 1.3.0.37';
        exit;
      end;
    If (section.physical_size > $500) and (i=1) then
    begin
      d1:=section.physical_offs+section.physical_size-$700;
      d2:=$700;
      If detect_2(d1,d2,PE.MEMPTR,WinUpack039Borland) = 1 then
      begin
        _Detected.Caption:=' --> (Win)Upack 0.32 - 0.39';
        exit;
      end;
    end;

    If (i=3) and (Section.physical_size >= $50000) then
    begin
      If detect_1(Section.physical_offs+$10,37) = 1 then
      begin
        _Detected.Caption:=' --> Xtreme-Protector 1.07 - 1.08';
        exit;
      end;
      If detect_1(Section.physical_offs+$10,73) = 1 then
      begin
        _Detected.Caption:=' --> Xtreme-Protector 1.06';
        exit;
      end;
      If detect_1(Section.physical_offs+$14,74) = 1 then
      begin
        _Detected.Caption:=' --> Themida 1.x.x.x';
        exit;
      end;
      If detect_1(Section.physical_offs+$14,78) = 1 then
      begin
        _Detected.Caption:=' --> Themida 1.8.x.x';
        exit;
      end;
      If detect_1(Section.physical_offs+$14,72) = 1 then
      begin
        d1:=Section.physical_offs+$1000;
        d2:=Section.physical_size div 15;
        If detect_2(d1,d2,PE.MEMPTR,Themida1530) <> 0 then
        begin
          _Detected.Caption:=' --> Themida 1.5.3.0';
          exit;
        end;
        If detect_2(d1,d2,PE.MEMPTR,Themida1500) <> 0 then
        begin
          _Detected.Caption:=' --> Themida 1.5.0.0';
          exit;
        end;
        If detect_2(d1,d2,PE.MEMPTR,Themida1355) <> 0 then
        begin
          _Detected.Caption:=' --> Themida 1.3.5.5';
          exit;
        end;
        If detect_2(d1,d2,PE.MEMPTR,Themida1201) <> 0 then
        begin
          _Detected.Caption:=' --> Themida 1.2.0.1';
          exit;
        end;
        If detect_2(d1,d2,PE.MEMPTR,Themida1855) <> 0 then
        begin
          _Detected.Caption:=' --> Themida 1.7.x.x - 1.8.x.x';
          exit;
        end;
      end;

      If detect_1(Section.physical_offs+$10,72) = 1 then
      begin
        d1:=Section.physical_offs+$1000;
        d2:=Section.physical_size div 5;
        If detect_2(d1,d2,PE.MEMPTR,XtremeProtector108j) <> 0 then
        begin
          _Detected.Caption:=' --> Xtreme-Protector 1.07 - 1.08';
          exit;
        end;
      end;
    end;
  end;
  If (CheckNspack=1) or (deep=true) then
  begin
    d1:=PE.RvaToFileOffset(PE.nt.OptionalHeader.DataDirectory[1].VirtualAddress);
    If (d1<>INVALID_VALUE) and (d1>0) and ((PE.MEMSZ-d1) > $600) then
    begin
      d1:=d1+PE.nt.OptionalHeader.DataDirectory[1].Size;
      d2:=$650;
      If detect_2(d1,d2,PE.MEMPTR,NsPack37) <> 0 then
      begin
        _Detected.Caption:=' --> NsPack 3.7';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,NsPack36) <> 0 then
      begin
        _Detected.Caption:=' --> NsPack 3.6';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,NsPack31) <> 0 then
      begin
        _Detected.Caption:=' --> NsPack 3.1';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,NsPack34) <> 0 then
      begin
        _Detected.Caption:=' --> NsPack 3.4';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,NsPack23) <> 0 then
      begin
        _Detected.Caption:=' --> NsPack 2.3';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,NsPack30) <> 0 then
      begin
        _Detected.Caption:=' --> NsPack 3.0';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,NsPack3x) <> 0 then
      begin
        _Detected.Caption:=' --> NsPack 3.x';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,NsPack2x) <> 0 then
      begin
        _Detected.Caption:=' --> NsPack 2.x';
        exit;
      end;
    end;
  end;

  If (DiEfrm.PE.MEMSZ > $400) then
  begin
    d1:=DiEfrm.PE.MEMSZ-$500;
    d2:=$500;
    If detect_2(d1,d2,PE.MEMPTR,Obsidium1304_1) <> 0 then
    begin
      _Detected.Caption:=' --> Obsidium 1.3.0.0 / 1.3.0.4 [?]';
      exit;
    end;
    If detect_2(d1,d2,PE.MEMPTR,Obsidium1331_1) <> 0 then
    begin
      _Detected.Caption:=' --> Obsidium 1.3.3.1 [?]';
      exit;
    end;

    If detect_1($200,41) = 1 then
    begin
      _Detected.Caption:=' --> SimplePack 1.11 [Method 2]';
      exit;
    end;
    If detect_1($200,42) = 1 then
    begin
      _Detected.Caption:=' --> SimplePack 1.12 [Method 2]';
      exit;
    end;
  end;
  
  If (imp_sec <> -1) then
  begin
    Section:=PSection(DiEfrm.PE.SectionList[imp_sec]);
    d1:=Section.physical_offs;
    d2:=$150;
    If detect_2(d1,d2,PE.MEMPTR,PE_Armor) = 1 then
      begin
        _Detected.Caption:=' --> PE-Armor 0.74 - 0.75';
        exit;
      end;
    If section.physical_size > $300 then
    begin
      d1:=Section.physical_offs+Section.physical_size-$350;
      d2:=$350;
      If detect_2(d1,d2,PE.MEMPTR,PECompact23x) <> 0 then
      begin
        _Detected.Caption:=' --> PECompact 2.3x - 2.4x';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,PECompact27x) <> 0 then
      begin
        _Detected.Caption:=' --> PECompact 2.66 -  2.79b';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,PECompact260) <> 0 then
      begin
        _Detected.Caption:=' --> PECompact 2.60 - 2.65';
        exit;
      end;
      If detect_2(d1,d2,PE.MEMPTR,PECompact25x) <> 0 then
      begin
        _Detected.Caption:=' --> PECompact 2.5x';
        exit;
      end;
    end;
  end;
  
  d1:=PE.RvaToFileOffset(PE.nt.OptionalHeader.DataDirectory[1].VirtualAddress);
  IF (d1 <> 0) and (d1 < (PE.MEMSZ - 200)) then
  begin
    d2:=d1+$92;
    If detect_1(d2,36) <> 0 then
    begin
      _Detected.Caption:=' --> Alex Protector 1.0 beta 2';
      exit;
    end;
    d2:=d1-$D;
    If detect_1(d2,34) <> 0 then
    begin
      _Detected.Caption:=' --> SVK-Protector 1.4x';
      exit;
    end;
    d2:=d1+$50;
    If detect_1(d2,79) = 1 then
    begin
      _Detected.Caption:=' --> yoda'+chr($27)+'s Crypter 1.3';
      exit;
    end;

    d2:=d1-$1C;
    If detect_1(d2,25) <> 0 then
    begin
      _Detected.Caption:=' --> ACProtect 1.3x';
      exit;
    end;
    If detect_1(d2,27) <> 0 then
    begin
      _Detected.Caption:=' --> ACProtect 1.4x';
      exit;
    end;
    If detect_1(d2,26) <> 0 then
    begin
      _Detected.Caption:=' --> ACProtect 2.0 [build: 2006.03.10]';
      exit;
    end;
    If detect_1(d2,31) <> 0 then
    begin
      _Detected.Caption:=' --> ACProtect 2.0 [build: 2006.02.06]';
      exit;
    end;
    
    {d2:=d1-$19F;
    If detect_1(d2,82) <> 0 then
    begin
      _Detected.Caption:=' --> RLPack 1.16 - 1.18 | BasicEdition';
      exit;
    end;}

    d2:=d1+$28;
    If detect_1(d2,71) <> 0 then
    begin
      _Detected.Caption:=' --> RLPack 1.15 | BasicEdition';
      exit;
    end;
    d2:=d1-$19F;
    If detect_1(d2,83) <> 0 then
    begin
      _Detected.Caption:=' --> RLPack 1.16 | FullEdition';
      exit;
    end;

    d2:=d1+$28;
    If detect_1(d2,67) <> 0 then
    begin
      _Detected.Caption:=' --> RLPack 1.16 - 1.18 | BasicEdition';
      exit;
    end;

    {d2:=d1-$19F;
    If detect_1(d2,84) <> 0 then
    begin
      _Detected.Caption:=' --> RLPack 1.17 - 1.18 | FullEdition';
      exit;
    end; }

    d2:=d1+$53;
    If detect_1(d2,66) <> 0 then
    begin
      _Detected.Caption:=' --> RLPack 1.17 - 1.18 | FullEdition';
      exit;
    end;
  end;

  If (Pe.MEMSZ > $850) then
  begin
    d1:=$200;
    d2:=$650;
    If detect_2(d1,d2,PE.MEMPTR,Petite23) <> 0 then
    begin
      _Detected.Caption:=' --> Petite 2.3';
      exit;
    end;
    If detect_2(d1,d2,PE.MEMPTR,Petite22) <> 0 then
    begin
      _Detected.Caption:=' --> Petite 2.2';
      exit;
    end;
  end;

  If (PE.MEMSZ > $1000) then
  begin
    d1:=PE.MEMSZ - $500;
    d2:=$500;
    If (ImpList.count = 1) then
      If (detect_2(d1,d2,PE.MEMPTR,NTkrnlPacker01) <> 0) then
      begin
        _Detected.Caption:=' --> NTkrnl Secure Suite 0.1';
        exit;
      end;
  end;

  d1:=Pe.MEMSZ-$1A;
  If detect_1(d1,35) <> 0 then
    begin
      _Detected.Caption:=' --> AHTeam UPX Mutanter 0.2';
      exit;
    end;

  d1:=Pe.MEMSZ-$70;
  d2:=$70;
  If detect_2(d1,d2,PE.MEMPTR,AHTeamEPProtector03) <> 0 then
    begin
      _Detected.Caption:=' --> AHTeam EP Protector 0.3';
      exit;
    end;

  If detect_1($0,7) = 1 then
  begin
    _Detected.Caption:=' --> (Win)Upack 0.2x-0.32';
    exit;
  end;
  If detect_1($0,5) = 1 then
  begin
    _Detected.Caption:=' --> (Win)Upack 0.32-0.399';
    exit;
  end;

  d1:=PE.RvaToFileOffset(PE.nt.OptionalHeader.DataDirectory[1].VirtualAddress);
  IF (d1 <> 0) and (d1 < (PE.MEMSZ - 70)) and (ImpList.Count=1) then
  begin
    d2:=d1+$14;
    If detect_1(d2,77) <> 0 then
    begin
      _Detected.Caption:=' --> Private exe Protector 1.8 / 1.9';
      exit;
    end;
  end;

  d1:=PE.RvaToFileOffset(PE.nt.OptionalHeader.DataDirectory[1].VirtualAddress);
  IF (d1 <> 0) and (d1 < (PE.MEMSZ - 70)) and (ImpList.Count=1) then
  begin
    If detect_1(d1,86) <> 0 then
    begin
      _Detected.Caption:=' --> Private exe Protector 2.0';
      exit;
    end;
  end;

  If (DiEfrm.PE.SectionList.Count > 1) then
  begin
    Section:=PSection(DiEfrm.PE.SectionList[1]);
    If ((Section.physical_size+Section.physical_offs) > $250) then
    begin
      d1:=Section.physical_size+Section.physical_offs-$250;
      d2:=$250;
      If detect_2(d1,d2,PE.MEMPTR,AHTeamUPXMutanter02) <> 0 then
      begin
        _Detected.Caption:=' --> AHTeam UPX Mutanter 0.2';
        exit;
      end;
    end;
  end;
  
  If (_Detected.Caption = '') and bEmul then
  begin
    rva := Pe.EntryPoint+Pe.ImageBase;
    adr := Pe.RvaToFileOffset(rva-Pe.ImageBase);
    res := Emulate(Morphnah,adr,rva);
    If (res = Morphnah) then
    begin
      _Detected.Caption:=' --> Morphnah beta2 decryptor [emul]';
      exit;
    end;
    res := Emulate(RPolyCrypt,adr,rva);
    If (res = RPolyCrypt) then
    begin
      _Detected.Caption:=' --> RPolyCrypt 1.x decryptor [emul]';
      exit;
    end;
  end;


  _Detected.Caption:=' --> Nothing found';
end;

procedure TDiEfrm.CheckBox1Click(Sender: TObject);
begin
  If CheckBox1.Checked = true  then SetWindowPos(DiEfrm.Handle, HWND_TOPMOST, 0,0,0,0, SWP_NOMOVE OR SWP_NOSIZE OR SWP_SHOWWINDOW);
  If CheckBox1.Checked = false then SetWindowPos(DiEfrm.Handle, HWND_NOTOPMOST, 0,0,0,0, SWP_NOMOVE OR SWP_NOSIZE OR SWP_SHOWWINDOW);
  //SetWindowPos( hWnd, HWND_NOTOPMOST, 0,0,0,0,SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE )
end;

procedure TDiEfrm.CheckBox2Click(Sender: TObject);
var
 Reg: TRegistry;
begin
  If (iLoaded = 1) then
  begin
    iLoaded:=0;
    exit;
  end;
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  If (CheckBox2.Checked = true) then
  begin
    Reg.OpenKey('exefile\shell', true);
    Reg.CreateKey('DiE Scan\command');
    Reg.OpenKey('DiE Scan\command', true);
    Reg.WriteString('','"'+application.ExeName+'"'+' "%1"');
    Reg.CloseKey;
    Reg.OpenKey('dllfile\shell', true);
    Reg.CreateKey('DiE Scan\command');
    Reg.OpenKey('DiE Scan\command', true);
    Reg.WriteString('','"'+application.ExeName+'"'+' "%1"');
    Reg.Free;
  end;
  If (CheckBox2.Checked = false) then
  begin
    Reg.DeleteKey('exefile\shell\DiE Scan\');
    Reg.DeleteKey('dllfile\shell\DiE Scan\');
    Reg.Free;
  end;
end;

procedure hexfile;
begin
  If (path = '') then
  begin
    DiEfrm.info_hex.Caption:=NoFileLoaded;
    exit;
  end;
  if (not hexview) then
  begin
    DieFrm.info_hex.Caption:=' You have to turn on the Hex Viewer at first!';
    exit;
  end;
  if (not loaded_hex) then
  begin
    try
      DieFrm.MPHexEditor1.LoadFromFile(path);
    except
      loaded_hex:=false;
      DieFrm.info_hex.Caption:=' Read error !';
      exit;
    end;
    DieFrm.MPHexEditor1.SelStart:=0;
  end;
  loaded_hex:=true;
  //DieFrm.MPHexEditor1.CenterCursorPosition;
end;

procedure TDiEfrm.PageControl1Change(Sender: TObject);
var
  proc:TDiePlugExit;
begin
  If DiEfrm.PageControl1.TabIndex=7 then
  begin
    LoadSetting;
    save_op:=true;
  end;
  If DiEfrm.PageControl1.TabIndex=5 then
  begin
    info_dis.Caption:='';
  end;
  If (DiEfrm.PageControl1.TabIndex<>7) and (save_op) then
  begin
    save_op:=false;
    SaveSetting();
  end;
  If DiEfrm.PageControl1.TabIndex=5 then
  begin
    If _AsmList.Items.Count = 0 then Button5Click(nil);
  end;
  If DiEfrm.PageControl1.TabIndex=6 then
  begin
    If (hexview) then
    begin
      MPHexEditor1.Enabled:=true;
      MPHexEditor1.Colors.Background:=clWindow;
      MPHexEditor1.SetFocus;
    end else
    begin
      MPHexEditor1.Enabled:=false;
      MPHexEditor1.Colors.Background:=clBtnFace;
      clear_hex;
    end;
    hexfile;
  end;
  If DiEfrm.PageControl1.TabIndex = 3 then info_scan.Caption:='';
  If DiEfrm.PageControl1.TabIndex = 0 then _info.Caption:='';
  If DiEfrm.PageControl1.TabIndex = 1 then _info2.Caption:='';
  If DiEfrm.PageControl1.TabIndex = 2 then CloseCurPlugin();
  If (DiEfrm.PageControl1.TabIndex=2) then
  begin
    _plug_work.Caption:='';
    _plug_info.Caption:='';
  end;
  iCurTab:=DiEfrm.PageControl1.TabIndex;
end;

procedure TDiEfrm.FormCreate(Sender: TObject);
begin
  DiEfrm.Left:=((Screen.WIdth-DiEfrm.Width) div 2);
  DiEfrm.Top :=((Screen.Height-DiEfrm.Height) div 2);

  iLoaded:=1;
  LoadSetting();

  ImpList:=Tlist.create;
  custom_open:=false;
  loaded_hex:=false;
  save_op:=false;
  bPluginsLoaded:=false;
  path:='';
  Assert(MPHexEditor1 is TCustomGrid);
  MPHexEditor1.ShowPositionIfNotFocused:=false;

  If (paramstr(1) <> '') then
  begin
    IF (not FileExists(paramstr(1))) then exit;
    custom_open:=true;
    path:=paramstr(1);
    Button1Click(Sender);
  end;

  //SendMessage();
  //SetWindowLong(ListView1.Handle,GWL_STYLE,GetWindowLong(ListView1.Handle,GWL_STYLE) and not (WS_HSCROLL or WS_VSCROLL));
end;

procedure TDiEfrm.Button4Click(Sender: TObject);
begin
  If (path='') then
  begin
    DiEfrm._info2.Caption:=NoFileLoaded;
    exit;
  end;
  DiEfrm._info2.Caption:=' Geting MD5';
  HashManager1.Algorithm:='Message Digest 5';
  try
    Application.ProcessMessages;
    HashManager1.CalcFile(path);
    _md5_64.Caption := ' '+HashManager1.DigestString[fmtMIME64];
    _md5_16.Caption := ' '+HashManager1.DigestString[fmtHEX];
  finally
    DiEfrm._info2.Caption:=' MD5 hashing done';
  end;
end;

procedure TDiEfrm.Button5Click(Sender: TObject);
var
  n1:dword;
begin
  If (path='') then
  begin
    DiEfrm._info.Caption:=NoFileLoaded;
    If (DiEfrm.PageControl1.TabIndex=5) then
      DiEfrm.info_dis.Caption:=NoFileLoaded;
    exit;
  end;
  n1:=PE.RvaToFileOffset(PE.EntryPoint);
  If n1 >= (DiEfrm.PE.MEMSZ) then
  begin
    DiEfrm._info.Caption:=' Bad offset!';
    If (DiEfrm.PageControl1.TabIndex=5) then
      DiEfrm.info_dis.Caption:=' Bad offset!';
    exit;
  end;
  _AsmList.Items.BeginUpdate;
  _AsmList.Items.Clear;
  disasm(n1);
  _AsmList.Items.EndUpdate;
  Application.ProcessMessages;
  PageControl1.TabIndex:=5;
end;

procedure TDiEfrm.CheckBox4Click(Sender: TObject);
begin
  If CheckBox4.Checked = true  then rets:=true;
  If CheckBox4.Checked = false  then rets:=false;
end;

procedure TDiEfrm.ListView2SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  FuncList:=PImportedLibrary(ImpList[Item.Index]).FunctionList;
  AdvListView1.items.BeginUpdate;
  AdvListView1.Items.Count := FuncList.Count;
  AdvListView1.Items.EndUpdate;
end;

procedure _copy;
var
  S:string;
  i:integer;
begin
  s:='';
  For i:=0 to DiEfrm._AsmList.Items.Count-1 do
  begin
    If DiEfrm._AsmList.Items.Item[i].Selected then
    begin
      s:=s+DiEfrm._AsmList.Items.Item[i].Caption+#13#10;
      DiEfrm._AsmList.Items.Item[i].Selected:=true;
    end;
  end;
  Clipboard.SetTextBuf(Pchar(s));
end;

procedure TDieFrm.AdvListView1Data(Sender: TObject; Item: TListItem);
var
  ImportedFunc:PImportedFunction;
begin
  ImportedFunc:=PImportedFunction(FuncList[item.index]);
  Item.caption:=ImportedFunc.ApiName;
  Item.SubItems.add(IntToHex(ImportedFunc.Hint,4));
  Item.SubItems.add(IntToHex(ImportedFunc.Rva,8));
end;

procedure TDieFrm.HashManager1Progress(Sender: TObject; Current,
  Maximal: Integer);
begin
 // if (Maximal <= 0) then ProgressBar1.Position := 0
 //    else ProgressBar1.Position := Trunc(ProgressBar1.max / Maximal * Current)
 if (Maximal > 0) then ProgressBar1.Position := Trunc(ProgressBar1.max / Maximal * Current)
    else ProgressBar1.Position := 0;
end;

procedure TDieFrm.Button6Click(Sender: TObject);
begin
If (path='') then
  begin
    DiEfrm._info2.Caption:=NoFileLoaded;
    exit;
  end;
  DiEfrm._info2.Caption:=' Geting CRC-32';
  HashManager1.Algorithm:='CRC-32';
  try
    Application.ProcessMessages;
    HashManager1.CalcFile(path);
    _crc32_64.Caption := ' '+HashManager1.DigestString[fmtMIME64];
    _crc32_16.Caption := ' '+HashManager1.DigestString[fmtHEX];
  finally
    DiEfrm._info2.Caption:=' CRC-32 hashing done';
  end;
end;

procedure TDieFrm.CheckBox5Click(Sender: TObject);
begin
  deep:=CheckBox5.Checked;
end;

procedure TDieFrm.CheckBox3Click(Sender: TObject);
begin
  If CheckBox3.Checked = true  then
  begin
    CoolTrayIcon1.Enabled:=true;
    CoolTrayIcon1.IconVisible:=true;
    CoolTrayIcon1.MinimizeToTray:=true;
    //CoolTrayIcon1.HideTaskbarIcon;
  end;
  If CheckBox3.Checked = false  then
  begin
    CoolTrayIcon1.Enabled:=false;
    CoolTrayIcon1.IconVisible:=false;
    CoolTrayIcon1.MinimizeToTray:=false;
    //CoolTrayIcon1.ShowTaskbarIcon;
  end;
end;

procedure TDieFrm.CoolTrayIcon1DblClick(Sender: TObject);
begin
  CoolTrayIcon1.ShowMainForm;
end;

procedure TDieFrm.menu2Click(Sender: TObject);
begin
  close;
end;

procedure TDieFrm.menu1Click(Sender: TObject);
begin
  CoolTrayIcon1.ShowMainForm;
end;

procedure TDieFrm.button_plugClick(Sender: TObject);
begin
  If not bPluginsLoaded then
  begin
    LoadPlugins();
    FillMenu(nil);
    bPluginsLoaded:=true;
  end;
  PopupMenu2.Popup(DiEfrm.Left+button_plug.Left+button_plug.Width+7,DiEfrm.Top+DiEfrm.button_plug.Top+button_plug.Height+27);
end;

procedure TDieFrm.copy_to_clipboar(Sender: TObject);
var
  s:string;
  n:integer;
begin
  s:=Tstatictext(Sender).Caption;
  If length(s)=0 then exit;
  If (pos('ver:',s)=0) and (pos('build:',s)=0) then
  begin
    n:=pos(':',s);
    If (n<>0) then delete(s,1,n);
  end;
  If length(s)=0 then exit;
  n:=0;
  while (n=0) do
  begin
    If length(s) = 1 then n:=1;
    If s[1]=' ' then delete(s,1,1) else n:=1;
  end;
  Clipboard.SetTextBuf(Pchar(s));
  If (PageControl1.TabIndex=0) then  _info.Caption:='['+Tstatictext(Sender).Name+']'+' copied to clipboard';
  If (PageControl1.TabIndex=1) then _info2.Caption:='['+Tstatictext(Sender).Name+']'+' copied to clipboard';
end;

procedure TDieFrm.ListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var
  s1,s2:string;
begin
  if item.SubItems.Count = 0 then exit;
  s1:=item.SubItems.Strings[5];
  s2:='none';
  if pos('/',s1) = 0 then
  begin
    if pos('code',s1)<>0 then s2:='CODE';
    if pos('reloc',s1)<>0 then s2:='Base Relocation';
    if pos('data',s1)<>0 then s2:='DATA';
    if pos('tls',s1)<>0 then s2:='TLS Directory';
    if pos('exp',s1)<>0 then s2:='Export Directory';
    if pos('imp',s1)<>0 then s2:='Import Directory';
    if pos('res',s1)<>0 then s2:='Resource Directory';
  end else
  begin
    s2:='';
    if pos('c',s1)<>0 then s2:=s2+'CODE|';
    if pos('b',s1)<>0 then s2:=s2+'Base Relocation|';
    if pos('d',s1)<>0 then s2:=s2+'DATA|';
    if pos('t',s1)<>0 then s2:=s2+'TLS Directory|';
    if pos('e',s1)<>0 then s2:=s2+'Export Directory|';
    if pos('i',s1)<>0 then s2:=s2+'Import Directory|';
    if pos('r',s1)<>0 then s2:=s2+'Resource Directory|';
    delete(s2,length(s2),1);
  end;
  info_scan.Caption:=' Scan Info: [ '+s2+' ]';
end;

procedure TDieFrm.Copy1Click(Sender: TObject);
var
  s,t1,t2,tt,s1:string;
  i,n:integer;
begin
  s:='';
  t1:='';
  t2:='';
  tt:='';
  If (PageControl1.TabIndex=5) then  // disasm
  begin
    If (_AsmList.Items.Count = 0)
      then exit;
    s:='Listing: '+#13#10;
    For i:=0 to _AsmList.Items.Count-1 do
    begin
      If _AsmList.Items.Item[i].Selected then s:=s+_AsmList.Items.Item[i].Caption+#13#10;
    end;
  end;
  If (PageControl1.TabIndex=6) then // hex
  begin
    t1:=MPHexEditor1.SelectionAsHex;
    //t2:=MPHexEditor1.SelectionAsText;
    i:=0;
    while length(t1)>0 do
    begin
      tt:=copy(t1,1,32);
      delete(t1,1,32);
      s1:=inttohex(MPHexEditor1.SelStart+i,8)+': ';
      s:=s+s1+tt+#13#10;
      i:=i+16;
    end;
  end;
  If (PageControl1.TabIndex=3) then // sections
  begin
    if (not assigned(listview1.selected)) then
    begin
      info_scan.Caption:=' Nothing to copy !';
      exit;
    end;
    s:=Format('%-9s%-9s%-9s%-9s%-9s%-9s%-10s%-9s%',['Name:','VOffset:','VSize:','ROffset:','RSize:','Flags:','Scan:','Packed:'])+#13#10;
    For i:=0 to ListView1.Items.Count-1 do
    begin
      If (ListView1.Items.Item[i].Selected) then
      begin

        s:=s+Format('%-8s', [ListView1.Items.Item[i].Caption])+' ';
        For n:=0 to ListView1.Items.Item[i].SubItems.Count-1 do
        begin
          If n<>5 then s:=s+ListView1.Items.Item[i].SubItems.Strings[n]+' '
            else s:=s+Format('%-9s', [ListView1.Items.Item[i].SubItems.Strings[n]])+' '
        end;
        s:=s+#13#10;
      end;
    end;
    info_scan.Caption:=' Section info was copied';
  end;
  Clipboard.SetTextBuf(Pchar(s));
end;

procedure TDieFrm.MPHexEditor1SelectionChanged(Sender: TObject);
var
  s1,s2:string;
begin
  s1:='Offset: '+inttohex(MPHexEditor1.PositionAtCursor[MPHexEditor1.Col,MPHexEditor1.Row],8)+'h';
  s2:='Selsize: '+inttohex(MPHexEditor1.SelCount,8)+'h'+' Selstart: '+inttohex(MPHexEditor1.SelStart,8)+'h';
  info_hex.Caption:=' '+s1+' '+s2;
  If (not hexview) then info_hex.Caption:=' You have to turn on the Hex Viewer at first!' else
    If (not loaded_hex) then info_hex.Caption:=NoFileLoaded;
end;

procedure TDieFrm.CheckBox6Click(Sender: TObject);
begin
  If CheckBox6.Checked then hexview:=true else hexview:=false;
end;

procedure TDieFrm.ListView1DblClick(Sender: TObject);  {---Hex Viewer---}
var
  c1,c2:dword;
  Section : PSection;
begin
  if (not hexview) then
  begin
    info_scan.Caption:=' You have to turn on the Hex Viewer at first!';
    exit;
  end;
  if (path='') then
  begin
    info_scan.Caption:=NoFileLoaded;
    exit;
  end;
  if not assigned(listview1.selected) then
  begin
    info_scan.Caption:=' Select section!';
    exit;
  end;
  Section:=PSection(DiEfrm.PE.SectionList[ListView1.Selected.Index]);
  MPHexEditor1.Enabled:=true;
  MPHexEditor1.Colors.Background:=clWindow;
  If (Section.physical_size>PE.MEMSZ)or(Section.physical_offs>PE.MEMSZ) then
  begin
    info_scan.Caption:=' Wrong section offset/size!';
    exit;
  end;
  info_scan.Caption:=' Loading';
  if not loaded_hex then
  begin
    try
      MPHexEditor1.LoadFromFile(path);
    except
      loaded_hex:=false;
      info_scan.Caption:=' Read error!';
      exit;
    end;
  end;
  loaded_hex:=true;
  c1:=Section.physical_offs;
  c2:=Section.physical_size;
  If (c1=PE.MEMSZ) then
  begin
    MPHexEditor1.Row:=(c1 div 16)+1;
    MPHexEditor1.CenterCursorPosition;
    PageControl1.TabIndex:=6;
    MPHexEditor1.SetFocus;
    exit;
  end;
  If (c2=0) then
  begin
    MPHexEditor1.Row:=(c1 div 16)+2;
    MPHexEditor1.SelStart:=c1;
    MPHexEditor1.CenterCursorPosition;
    PageControl1.TabIndex:=6;
    MPHexEditor1.SetFocus;
    exit;
  end;
  If ((c1+c2)>=PE.MEMSZ) then
  begin
    MPHexEditor1.SelStart:=c1;
    MPHexEditor1.SelEnd:=PE.MEMSZ-1;
    MPHexEditor1.CenterCursorPosition;
    PageControl1.TabIndex:=6;
    MPHexEditor1.SetFocus;
    exit;
  end;
  MPHexEditor1.SelStart:=c1;
  MPHexEditor1.SelEnd:=c1+c2-1;
  MPHexEditor1.CenterCursorPosition;
  PageControl1.TabIndex:=6;
  MPHexEditor1.SetFocus;
end;

procedure TDieFrm._goto_hexKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [#8,#20,#3,#22,#26,'0'..'9','a'..'f','A'..'F'] then
    else key:=#0;
end;

procedure TDieFrm.Button8Click(Sender: TObject);
var
  c:dword;
begin
  If (loaded_hex) and (_goto_hex.text<>'') then
  begin
    try
      c:=strtoint('$'+_goto_hex.text);
    except
      info_hex.Caption:=' Invalid Offset!';
      exit;
    end;
    If (c>PE.MEMSZ) then c:=PE.MEMSZ-1;
    MPHexEditor1.Seek(c,soFromBeginning);
    MPHexEditor1.SelStart:=c;
    MPHexEditor1.SelEnd:=c;
    MPHexEditor1.SetFocus;
  end;
end;

procedure TDieFrm.Image3Click(Sender: TObject);
begin
  If not bPluginsLoaded then
  begin
    LoadPlugins();
    FillMenu(Sender);
    bPluginsLoaded:=true;
  end;
  PopupMenu2.Popup(DiEfrm.Left+button_plug.Left+button_plug.Width+11,DiEfrm.Top+DiEfrm.button_plug.Top+button_plug.Height+28);
end;

procedure TDieFrm.CheckBox7Click(Sender: TObject);
begin
  If CheckBox7.Checked = true then get_delphi:=true;
  If CheckBox7.Checked = false then get_delphi:=false;
end;

procedure TDieFrm._entro_butClick(Sender: TObject);
var
  EntroSum: Extended;
  TmpPer  : Extended;
  FSize   : dword;
  CPer    : Extended;
  s       : string;
begin
  DiEfrm._info2.Caption:=' Working';
  If (path='') then
  begin
    DiEfrm._info2.Caption:=NoFileLoaded;
    exit;
  end;
  FSize:=Pe.MEMSZ;
  try
    EntroSum:=EntopiaFile($0,FSize);
  except
    DiEfrm._info2.Caption:=' Read error!';
    exit;
  end;
  _bytes.Caption:='  '+inttostr(FSize);
  _bits.Caption:='  '+inttostr(FSize*8);
  _entrobits.Caption:='  '+FloatToStr(EntroSum);
  if (FSize*8) <= EntroSum then CPer := 100.0 else CPer := EntroSum / ( FSize * 8 ) * 100;

  TmpPer:=CPer;
  if (FSize > 0)     and (FSize < 4500)  then TmpPer:=TmpPer*1.9;
  if (FSize > 5000)  and (FSize < 7500)  then TmpPer:=TmpPer*1.65;
  if (FSize > 7500)  and (FSize < 16000) then TmpPer:=TmpPer*1.45;
  if (FSize > 16000) and (FSize < 26000) then TmpPer:=TmpPer*1.15;

  s:=FloatToStr(CPer);
  delete(s,7,length(s));
  _Entropy_Index.Caption:=' Entropy Index:  '+s;

  if (TmpPer > 102) then
  begin
    _entro.Caption:=' --> Packed';
    _Entropy_Index.Caption:=_Entropy_Index.Caption+' [k]';
    DiEfrm._info2.Caption:=' Job'+chr($27)+'s done.';
    Exit;
  end;

  If CPer >= 88 then _entro.Caption:=' --> Packed';
  If (CPer < 88) then _entro.Caption:=' --> Not Packed';

  DiEfrm._info2.Caption:=' Job'+chr($27)+'s done.';
end;

procedure TDiEfrm._AsmListDblClick(Sender: TObject);
var
  s:string;
  d1:dword;
  n,i:integer;
begin
  info_dis.Caption:='';
  If not assigned(_AsmList.Selected) then exit;
  s:=_AsmList.Selected.Caption;
  delete(s,1,31);
  If (pos('[',s)<>0) then exit;
  If ((pos('call',s)<>0) or (pos('j',s)<>0)) then
  begin
    n:=0;
    while n<=1 do
    begin
      n:=0;
      If s='' then exit;
      If s[1] in ['0'..'9','A'..'F'] then inc(n) else delete(s,1,1);
      If s='' then exit;
      If s[length(s)] in ['0'..'9','A'..'F'] then inc(n) else delete(s,length(s),1);
    end;
    n:=0;
    For i:=1 to length(s) do
      If s[i] in ['0'..'9','A'..'F'] then inc(n);
    If n < length(s) then exit;
    d1:=strtoint('$'+s);
    d1:=d1-PE.ImageBase;
    d1:=PE.RvaToFileOffset(d1);
    If (d1 = INVALID_VALUE) then
    begin
      info_dis.Caption:=' Can'+chr($27)+'t goto - invalid address!';
      exit;
    end;
    If d1 >= (Pe.MEMSZ) then
    begin
      info_dis.Caption:=' Can'+chr($27)+'t goto - invalid address!';
      exit;
    end;
    Disasm(d1);
  end;
end;

procedure TDiEfrm._goto_disClick(Sender: TObject);
var
  c1:dword;
  s1:string[8];
begin
  info_dis.Caption:='';
  If path='' then
  begin
    info_dis.Caption:=NoFileLoaded;
    exit;
  end;
  s1:=Edit1.Text;
  If s1 = '' then
  begin
    info_dis.Caption:=' Invalid Virtual Address!';
    exit;
  end;
  try
    c1:=strtoint('$'+s1);
  except
    info_dis.Caption:=' Invalid Virtual Address!';
    exit;
  end;
  c1:=c1-Pe.ImageBase;
  c1:=PE.RvaToFileOffset(c1);
  IF (c1 = INVALID_VALUE) then
  begin
    info_dis.Caption:=' Invalid Virtual Address!';
    exit;
  end;
  disasm(c1);
end;

procedure TDiEfrm.PopupMenu3Popup(Sender: TObject);
begin
  If (PageControl1.TabIndex=3) then // sections tab
  begin
    PopupMenu3.Items.Items[2].Visible:=true; // "Copy All" Enable
    PopupMenu3.Items.Items[3].Visible:=true; // "DisAsm" Enable
  end;
  If (PageControl1.TabIndex=5) then // disasm tab
  begin
    PopupMenu3.Items.Items[2].Visible:=false; // "Copy All" Disable
    PopupMenu3.Items.Items[3].Visible:=false; // "DisAsm" Disable
  end;
  If (PageControl1.TabIndex=6) then  // hex tab
  begin
    PopupMenu3.Items.Items[2].Visible:=false; // "Copy All" Disable
    PopupMenu3.Items.Items[3].Visible:=false; // "DisAsm" Disable
  end;
end;

procedure TDiEfrm.CopyAll1Click(Sender: TObject);
var
  s:string;
  i,n:integer;
begin
  If (ListView1.Items.Count=0) then
  begin
    info_scan.Caption:=' Nothing to copy !';
    exit;
  end;
  s:='';
  s:=Format('%-9s%-9s%-9s%-9s%-9s%-9s%-9s%-9s',['Name:','VOffset:','VSize:','ROffset:','RSize:','Flags:','Scan:','Packed:'])+#13#10;
  For i:=0 to ListView1.Items.Count-1 do
  begin
    s:=s+Format('%-8s', [ListView1.Items.Item[i].Caption])+' ';
    For n:=0 to ListView1.Items.Item[i].SubItems.Count-1 do
    begin
      If n<>5 then s:=s+ListView1.Items.Item[i].SubItems.Strings[n]+' '
        else s:=s+Format('%-9s', [ListView1.Items.Item[i].SubItems.Strings[n]])+' '
    end;
    s:=s+#13#10;
  end;
  Clipboard.SetTextBuf(Pchar(s));
  info_scan.Caption:=' Sections info was copied';
end;

procedure TDiEfrm.HideDiE1Click(Sender: TObject);
begin
  CoolTrayIcon1.HideMainForm;
  CoolTrayIcon1.HideTaskbarIcon;
end;

procedure TDiEfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSetting();
end;

procedure TDiEfrm.PopupMenu1Popup(Sender: TObject);
begin
  If DiEfrm.Visible then
  begin
    PopupMenu1.Items.Items[0].Visible:=false; // Show DiE
    PopupMenu1.Items.Items[1].Visible:=true;  // Hide DiE
  end else
  begin
    PopupMenu1.Items.Items[0].Visible:=true;  // Show DiE
    PopupMenu1.Items.Items[1].Visible:=false; // Hide DiE
  end;
end;

procedure TDiEfrm.ListView1KeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then ListView1DblClick(nil);
end;

procedure TDiEfrm.Check_secClick(Sender: TObject);
var
  c1,c2:dword;
  Section : PSection;
  i,n:integer;
  EntroSum: Extended;
  CPer : Extended;
begin
  info_scan.Caption:=' Working';
  If path='' then
  begin
    info_scan.Caption:=NoFileLoaded;
    exit;
  end;
  For i:=0 to Pe.SectionList.Count-1 do
  begin
    Section:=PSection(Pe.SectionList.Items[i]);
    c1:=Section.physical_offs;
    c2:=Section.physical_size;
    EntroSum:=0;
    CPer:=0;
    If ((c2 > 0) and ((c1+c2) <= Pe.Memsz)) then
    begin
      try
        EntroSum:=EntopiaFile(c1,c2);
      except
        EntroSum:=0;
      end;
    end;
    If (EntroSum > 0) then
    begin
      If (c2*8) <= EntroSum then CPer :=100.0 else CPer:=EntroSum/(c2*8)*100;
      If (Cper > 89.5) then ListView1.Items.Item[i].SubItems.Strings[6]:='X'
        else ListView1.Items.Item[i].SubItems.Strings[6]:='-';
    end else ListView1.Items.Item[i].SubItems.Strings[6]:='-';
    //memo1.Lines.Add(FloatToStr(CPer));
  end;
  info_scan.Caption:=' Job'+chr($27)+'s done.';
end;

procedure TDiEfrm.btn2Click(Sender: TObject);
begin
  If (path='') then
  begin
    _Info.Caption:=' Please open any file!';
    exit;
  end;
  ExternalScan();
end;

procedure TDiEfrm.N561Click(Sender: TObject);
var
  c1:dword;
  Section : PSection;
begin
  If ListView1.Items.Count=0 then
  begin
    info_scan.Caption:=' Nothing to disasm!';
    exit;
  end;
  if not assigned(listview1.selected) then
  begin
    info_scan.Caption:=' Select section!';
    exit;
  end;
  Section:=PSection(DiEfrm.PE.SectionList[ListView1.Selected.Index]);
  If (Section.physical_size>PE.MEMSZ)or(Section.physical_offs>PE.MEMSZ) then
  begin
    info_scan.Caption:=' Wrong section offset/size!';
    exit;
  end;

  If Section.physical_size=0 then
  begin
    info_scan.Caption:=' Wrong Size!';
    exit;
  end;

  c1:=Section.physical_offs;
  If c1 >= (DiEfrm.PE.MEMSZ) then
  begin
    DiEfrm._info.Caption:=' Bad offset!';
    If (DiEfrm.PageControl1.TabIndex=5) then DiEfrm.info_dis.Caption:=' Bad offset!';
    exit;
  end;
  _AsmList.Items.BeginUpdate;
  _AsmList.Items.Clear;
  PageControl1.TabIndex:=5;
  disasm(c1);
  _AsmList.Items.EndUpdate;
end;

procedure TDiEfrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ORD(Key) = VK_ESCAPE then Application.Terminate;
end;

procedure TDiEfrm.CheckBox8Click(Sender: TObject);
begin
  If CheckBox8.Checked = true then bAutoScan:=true;
  If CheckBox8.Checked = false then bAutoScan:=false;
end;

procedure TDiEfrm.PJFormDropFiles1FileFilter(Sender: TObject;
  const FileName: String; const IsFolder: Boolean; var Accept: Boolean);
begin
  IF not FileExists(FileName) then exit;
  Application.BringToFront;
  custom_open:=true;
  path:=FileName;
  If rets then PageControl1.TabIndex:=0;
  Button1Click(nil);
  If (PageControl1.TabIndex = 5) then Button5Click(nil);
  If (PageControl1.TabIndex = 6) then
  begin
    If (hexview) then
    begin
      MPHexEditor1.Enabled:=true;
      MPHexEditor1.Colors.Background:=clWindow;
      MPHexEditor1.SetFocus;
    end else
    begin
      MPHexEditor1.Enabled:=false;
      MPHexEditor1.Colors.Background:=clBtnFace;
      clear_hex;
    end;
    hexfile();
  end;
  CloseCurPlugin();
end;

procedure TDiEfrm.Label27Click(Sender: TObject);
begin
  ShellExecute(0, nil,'http://hellspawn.nm.ru', nil, nil, SW_NORMAL);
end;

procedure TDiEfrm.Label28Click(Sender: TObject);
begin
  ShellExecute(0, nil,'http://hellspawn.ucoz.ru/forum', nil, nil, SW_NORMAL);
end;

procedure TDiEfrm.CheckBox9Click(Sender: TObject);
begin
  bEmul := CheckBox9.Checked;
end;

procedure TDiEfrm.Copyall2Click(Sender: TObject);
var
  s:string;
  i,n:integer;
begin
  If (pos('Offset',info_hex.Caption)=0) then
  begin
    exit;
  end;
  s:=info_hex.Caption;
  Clipboard.SetTextBuf(Pchar(s));
end;

procedure TDiEfrm.Copyoffset1Click(Sender: TObject);
var
  s:string;
  i,n:integer;
begin
  n := pos('Offset',info_hex.Caption);
  If (n = 0) then
  begin
    exit;
  end;
  s := copy(info_hex.Caption,n,17);
  Clipboard.SetTextBuf(Pchar(s));
end;

procedure TDiEfrm.Copyselsize1Click(Sender: TObject);
var
  s:string;
  i,n:integer;
begin
  n := pos('Selsize',info_hex.Caption);
  If (n = 0) then
  begin
    exit;
  end;
  s := copy(info_hex.Caption,n,18);
  Clipboard.SetTextBuf(Pchar(s));
end;

procedure TDiEfrm.Copyselstart1Click(Sender: TObject);
var
  s:string;
  i,n:integer;
begin
  n := pos('Selstart',info_hex.Caption);
  If (n = 0) then
  begin
    exit;
  end;
  s := copy(info_hex.Caption,n,19);
  Clipboard.SetTextBuf(Pchar(s));
end;

end.


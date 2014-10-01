{
  Code Analization and Disassembling Tool v 1.1
  Coded By Ms-Rem ( Ms-Rem@yandex.ru ) ICQ 286370715
}
unit Cadt;

interface

const // param types
 PRT_IMM   = 00; // immediate param value
 PRT_DSP   = 01; // displacement (offset) value
 PRT_REG   = 02; // register param
 PRT_SIB   = 03; // param is SIB value and sib flags
 PRT_MODRM = 04; // param defined is MOD r/m
 MODRM_32  = 08;

const // param sizes
 PRS_BYTE   = $00;
 PRS_WORD   = $08;
 PRS_DWORD  = $10;
 PRS_QWORD  = $48;
 PRS_DQWORD = $50;
 PRS_FWORD  = $18;
 PRS_TBYTE  = $20;
 PRS_REAL4  = $28;
 PRS_REAL8  = $30;
 PRS_REAL10 = $38;

const // register types 
 RGT_BYTE  = PRS_BYTE;
 RGT_WORD  = PRS_WORD;
 RGT_DWORD = PRS_DWORD;
 RGT_SEG   = $20;
 RGT_CR    = $18;
 RGT_DR    = $28;
 RGT_TR    = $40;
 RGT_FPU   = $30;
 RGT_NONE  = $38;
 RGT_MMX   = $48;
 RGT_XMM   = $50;

const
 MEM_OVERRIDE = $40;
 INSTR_FPU    = $80;
 CMD_JUMP     = $800;
 JMP_FAR      = $1000;
 JMP_ABS      = $2000; 

const // param registers (if PRT_REG param type)
 PRR_AL   = $00 or RGT_BYTE;
 PRR_CL   = $01 or RGT_BYTE;
 PRR_DL   = $02 or RGT_BYTE;
 PRR_BL   = $03 or RGT_BYTE;
 PRR_AH   = $04 or RGT_BYTE;
 PRR_CH   = $05 or RGT_BYTE;
 PRR_DH   = $06 or RGT_BYTE;
 PRR_BH   = $07 or RGT_BYTE;
 PRR_AX   = $00 or RGT_WORD;
 PRR_CX   = $01 or RGT_WORD;
 PRR_DX   = $02 or RGT_WORD;
 PRR_BX   = $03 or RGT_WORD;
 PRR_SP   = $04 or RGT_WORD;
 PRR_BP   = $05 or RGT_WORD;
 PRR_SI   = $06 or RGT_WORD;
 PRR_DI   = $07 or RGT_WORD;
 PRR_EAX  = $00 or RGT_DWORD;
 PRR_ECX  = $01 or RGT_DWORD;
 PRR_EDX  = $02 or RGT_DWORD;
 PRR_EBX  = $03 or RGT_DWORD;
 PRR_ESP  = $04 or RGT_DWORD;
 PRR_EBP  = $05 or RGT_DWORD;
 PRR_ESI  = $06 or RGT_DWORD;
 PRR_EDI  = $07 or RGT_DWORD;
 PRR_ES   = $00 or RGT_SEG;
 PRR_CS   = $01 or RGT_SEG;
 PRR_SS   = $02 or RGT_SEG;
 PRR_DS   = $03 or RGT_SEG;
 PRR_FS   = $04 or RGT_SEG;
 PRR_GS   = $05 or RGT_SEG;
 PRR_INV1 = $06 or RGT_SEG; // invalid register
 PRR_INV2 = $06 or RGT_SEG; // invalid register
 PRR_CR0  = $00 or RGT_CR;
 PRR_CR1  = $01 or RGT_CR; // invalid register
 PRR_CR2  = $02 or RGT_CR;
 PRR_CR3  = $03 or RGT_CR;
 PRR_CR4  = $04 or RGT_CR;
 PRR_CR5  = $05 or RGT_CR; // invalid register
 PRR_CR6  = $06 or RGT_CR; // invalid register
 PRR_CR7  = $07 or RGT_CR; // invalid register
 PRR_DR0  = $00 or RGT_DR;
 PRR_DR1  = $01 or RGT_DR;
 PRR_DR2  = $02 or RGT_DR;
 PRR_DR3  = $03 or RGT_DR;
 PRR_DR6  = $06 or RGT_DR;
 PRR_DR7  = $07 or RGT_DR;
 PRR_ST0  = $00 or RGT_FPU;
 PRR_ST1  = $01 or RGT_FPU;
 PRR_ST2  = $02 or RGT_FPU;
 PRR_ST3  = $03 or RGT_FPU;
 PRR_ST4  = $04 or RGT_FPU;
 PRR_ST5  = $05 or RGT_FPU;
 PRR_ST6  = $06 or RGT_FPU;
 PRR_ST7  = $07 or RGT_FPU;
 PRR_TR0  = $00 or RGT_TR; // invalid register
 PRR_TR1  = $01 or RGT_TR; // invalid register
 PRR_TR2  = $00 or RGT_TR; // invalid register
 PRR_TR3  = $00 or RGT_TR;
 PRR_TR4  = $00 or RGT_TR;
 PRR_TR5  = $00 or RGT_TR;
 PRR_TR6  = $00 or RGT_TR;
 PRR_TR7  = $00 or RGT_TR;
 PRR_MM0  = $00 or RGT_MMX;
 PRR_MM1  = $01 or RGT_MMX;
 PRR_MM2  = $02 or RGT_MMX;
 PRR_MM3  = $03 or RGT_MMX;
 PRR_MM4  = $04 or RGT_MMX;
 PRR_MM5  = $05 or RGT_MMX;
 PRR_MM6  = $06 or RGT_MMX;
 PRR_MM7  = $07 or RGT_MMX;
 PRR_XMM0 = $00 or RGT_XMM;
 PRR_XMM1 = $01 or RGT_XMM;
 PRR_XMM2 = $02 or RGT_XMM;
 PRR_XMM3 = $03 or RGT_XMM;
 PRR_XMM4 = $04 or RGT_XMM;
 PRR_XMM5 = $05 or RGT_XMM;
 PRR_XMM6 = $06 or RGT_XMM;
 PRR_XMM7 = $07 or RGT_XMM;

const // out preffixes codes
 OPX_66    = $0001;
 OPX_67    = $0002;
 OPX_CS    = $0004;
 OPX_DS    = $0008;
 OPX_ES    = $0010;
 OPX_SS    = $0020;
 OPX_FS    = $0040;
 OPX_GS    = $0080;
 OPX_REP   = $0100;
 OPX_REPNZ = $0200;
 OPX_LOCK  = $0400;

const
 F_PTR_WORD   = $000 shl 1;
 F_PTR_DWORD  = $080 shl 1;
 F_PTR_QWORD  = $100 shl 1;
 F_PTR_REAL4  = $180 shl 1;
 F_PTR_REAL8  = $200 shl 1;
 F_PTR_REAL10 = $280 shl 1;
 F_PTR_TBYTE  = $300 shl 1;

const // condition constants
 CON_O   = $00;
 CON_NO  = $01;
 CON_B   = $02;
 CON_NB  = $03;
 CON_Z   = $04;
 CON_NZ  = $05;
 CON_BE  = $06;
 CON_NBE = $07;
 CON_S   = $08;
 CON_NS  = $09;
 CON_PE  = $0A;
 CON_NP  = $0B;
 CON_L   = $0C;
 CON_NL  = $0D;
 CON_LE  = $0E;
 CON_NLE = $0F;

type
 dword  = cardinal;
 pdword = ^dword;
 bool   = LongBool;
 pbyte  = ^byte;
 pword  = ^word;

 PModRM = ^TModRM;
 TModRM = packed record
   Present: bool;
   iMod: byte;
   iReg: byte;
   iRM : byte;
 end;

 PSIB = ^TSIB;
 TSIB = packed record
  Present: bool;
  Scale: byte;
  Index: byte;
  Base : byte;
 end; 

 PInstruction = ^TInstruction;
 TInstruction = packed record
  Preffixes: word;
  RepPfx: bool;
  OpCode: word;
  OpcodeWord: bool;
  OpcodeExt: bool;
  ModRM: TModRM;
  SIB:   TSIB;
  Offset: dword;
  OffsetSize: byte;
  ImmVal: dword;
  ImmExtVal: word;
  ImmSize: byte;
  Mode16Cmd: bool;
  Mode16Oper: bool;
  InstrAddr: dword;
  InstrLen: byte;
 end;

 PParam = ^TParam;
 TParam = packed record
  Flags: byte;
  EFlags: word;
  Value: dword;
 end;

 PDisCommand = ^TDisCommand;
 TDisCommand = packed record
  Preffixes: word;
  CmdOrdinal: word;
  CmdFlags: word; 
  ParamsNum: byte;
  Cmd16BitOperand: bool;
  Params: array [0..3] of TParam;
  CmdAddr: dword;
  CmdLength: byte;
 end;

 PMnemonicOptios = ^TMnemonicOptios;
 TMnemonicOptios = packed record
  RealtiveOffsets: bool;
  AddAddresPart: bool;
  AddHexDump: bool;
  AlternativeAddres: dword;
  MnemonicAlign: byte;
 end;

function  InstrDecode(cPtr: pointer; Instr: PInstruction; Mode16: bool): dword; stdcall;
Function  InstrDasm(Instr: PInstruction; Command: PDisCommand; Mode16: bool): bool; stdcall;
procedure MakeMnemonic(OutBuffer: PChar; Command: PDisCommand; Options: PMnemonicOptios); stdcall;
function  GetCadtVersion: PChar; stdcall;

implementation

const  // preffixes
 PFX_CS    = $2E;  
 PFX_SS    = $36;
 PFX_DS    = $3E;
 PFX_ES    = $26;
 PFX_FS    = $64;
 PFX_GS    = $65;
 PFX_LOCK  = $F0;
 PFX_REPNZ = $F2;
 PFX_REP   = $F3;
 PFX_66    = $66; // переопределение размера операндов
 PFX_67    = $67; // переопределение размера адреса
 PFX_L_CD  = $0F; // 2 байта на опкод

const
 MAX_INSTR_LEN = 15;
 PFX_SEG_MASK  = $FF03;
 PFX_REP_MASK  = $FCFF;

type
 PModrmUsedTable = ^TModrmUsedTable;
 TModrmUsedTable = array [0..7] of byte;
 PMmxModrmUsedTable = ^TMmxModrmUsedTable;
 TMmxModrmUsedTable = array [0..7] of word;


{$include string.inc}
{$include tables.inc}

{
  Анализ префиксов команды, незначащие префиксы отбрасываются.
  cPtr - указатель на команду,
  Instr - указатель на заполняемую структуру TInstruction.
  Result - Result - размер префиксов.
}
function GetPrefixes(cPtr: pbyte; Instr: PInstruction): word;
var
 Prefixes: dword;
begin
  Prefixes := 0;
  Result   := 0;
  while Result <= MAX_INSTR_LEN do
   begin
    case cPtr^ of
     PFX_CS    : Prefixes := (Prefixes and PFX_SEG_MASK) or OPX_CS;
     PFX_SS    : Prefixes := (Prefixes and PFX_SEG_MASK) or OPX_SS;
     PFX_DS    : Prefixes := (Prefixes and PFX_SEG_MASK) or OPX_DS;
     PFX_ES    : Prefixes := (Prefixes and PFX_SEG_MASK) or OPX_ES;
     PFX_FS    : Prefixes := (Prefixes and PFX_SEG_MASK) or OPX_FS;
     PFX_GS    : Prefixes := (Prefixes and PFX_SEG_MASK) or OPX_GS;
     PFX_LOCK  : Prefixes := Prefixes or OPX_LOCK;
     PFX_REPNZ : Prefixes := (Prefixes and PFX_REP_MASK) or OPX_REPNZ;
     PFX_REP   : Prefixes := (Prefixes and PFX_REP_MASK) or OPX_REP;
     PFX_66    : Prefixes := Prefixes or OPX_66;
     PFX_67    : Prefixes := Prefixes or OPX_67;
     else begin
           Instr^.Preffixes := Prefixes;
           Exit;
          end;
    end;
    Inc(Result);
    Inc(cPtr);
   end;
end;

{
  Выделение опкода команды.
  cPtr - указатель на первый опкод инструкции,
  Instr - указатель на заполняемую структуру TInstruction.
  Result - размер опкода, 0 - если INVALID_OPCODE
}
function GetOpcode(cPtr: pbyte; Instr: PInstruction): dword;
begin
 Result := 1;
 if cPtr^ = PFX_L_CD then
  begin
   Inc(cPtr);
   Inc(Result);
   Instr^.OpCode := cPtr^;
   Instr^.OpcodeExt := true;
  end else                   
  begin
   Instr^.OpCode := cPtr^;
   if (OpcodeFlags[Instr^.OpCode] and OP_WORD <> 0) and
      ((pbyte(dword(cPtr) + 1)^ shr 6) = 3) then
    begin
     Instr^.OpCode := pword(cPtr)^;
     Instr^.OpcodeWord := true;
     Inc(Result);
    end;
  end;
end;

{
  Определение флагов опкода инструкции.
  Instr - указатель на TInstruction,
  Result - флаги.
}
function GetOpcodeFlags(Instr: PInstruction): dword;
begin
  if Instr^.OpcodeExt then
    Result := OpcodeFlagsExt[byte(Instr^.OpCode)]
    else Result := OpcodeFlags[byte(Instr^.OpCode)];
end;

{
  Выделение поля MOD r/m команды.
  cPtr - указатель на ModRM,
  Instr - указатель на заполняемую структуру TInstruction (опкод должен быть заполнен).
  Result - размер поля ModRM.
  Mode16 - true 16 битный режим, false - 32 битный
}
function GetModRM(cPtr: pbyte; Instr: PInstruction; Mode16: boolean): dword;
var
 ModRM: byte;
begin
  Result := 0;
  Instr^.Mode16Cmd  := Mode16;
  Instr^.Mode16Oper := Mode16;
  if (Instr^.Preffixes and OPX_67) <> 0 then Instr^.Mode16Cmd  := not Mode16;
  if (Instr^.Preffixes and OPX_66) <> 0 then Instr^.Mode16Oper := not Mode16;
  Instr^.ModRM.Present := (GetOpcodeFlags(Instr) and OP_MODRM <> 0) and (not Instr^.OpcodeWord);
  if Instr^.ModRM.Present then
   begin
    ModRM := cPtr^;
    Instr^.ModRM.iMod := ModRM shr 6;
    Instr^.ModRM.iReg := (ModRM and $38) shr 3;
    Instr^.ModRM.iRM  := ModRM and 7;
    Inc(Result);
   end;         
end;


{
  Выделение полей SIB и Offset команды.
  cPtr - указатель на SIB,
  Instr - указатель на заполняемую структуру TInstruction,
  должены быть заполнены поля опкода и ModRM.
  Result - размер SIB и Offset.
}   
function GetSIBAndOffset(cPtr: pbyte; Instr: PInstruction): dword;
var
 SIB: byte;
 OffsetSize: byte;
begin
  Result     := 0;
  OffsetSize := 0;
  Instr^.SIB.Present := (not Instr^.Mode16Cmd) and (Instr^.ModRM.iRM = 4);
  case Instr^.ModRM.iMod of
  {00} 0: begin
           if Instr^.Mode16Cmd and (Instr^.ModRM.iRM = 6) then OffsetSize := 16;
           if (not Instr^.Mode16Cmd) and (Instr^.ModRM.iRM = 5) then OffsetSize := 32;
          end;
  {01} 1: OffsetSize := 8;
  {10} 2: if Instr^.Mode16Cmd then OffsetSize := 16 else OffsetSize := 32;
  {11} 3: begin
           OffsetSize := 0;
           Instr^.SIB.Present := false;
          end;
  end;
  if Instr^.SIB.Present then
   begin
    SIB := cPtr^;
    Instr^.SIB.Scale := SIB shr 6;
    Instr^.SIB.Index := (SIB and $38) shr 3;
    Instr^.SIB.Base  := SIB and 7;
    Inc(Result);
    if (Instr^.SIB.Base = 5) and (Instr^.ModRM.iMod in [0, 2]) then OffsetSize := 32;
   end;
 case OffsetSize of
  00: Instr^.Offset := 0;
  08: Instr^.Offset := pbyte(dword(cPtr) + Result)^;
  16: Instr^.Offset := pword(dword(cPtr) + Result)^;
  32: Instr^.Offset := pdword(dword(cPtr) + Result)^;
 end;
 Instr^.OffsetSize := OffsetSize;
 Inc(Result, OffsetSize div 8);
end;

{
  Выделение непосредственного операнда команды.
  cPtr - указатель на ImmVal,
  Instr - указатель на заполняемую структуру TInstruction,
  Result - размер поля ImmVal.
}
function GetImmVal(cPtr: pointer; Instr: PInstruction): dword;
var
 Flags: dword;
 Add: Byte;
 r: byte;
 EFl: dword;
 pf66: boolean;
begin
  Result := 0;
  Flags := GetOpcodeFlags(Instr);
  if (Flags and $0F000000) <> 0 then
   for r := 0 to ModrmUsedExtendedLen do
    begin
     EFl := ModrmUsedExtendedFlags[r];
     if (((EFl and $FF00) shr 8) = Instr^.OpCode) and
        (((EFl and $70000) shr 18) = Instr^.ModRM.iReg) then Flags := Flags or (EFl and $FF);
    end;
  if (Flags and OP_DATA_I8)  <> 0 then Inc(Result);
  if (Flags and OP_DATA_I16) <> 0 then Inc(Result, 2);
  if (Flags and OP_DATA_I32) <> 0 then Inc(Result, 4);
  if Instr^.Opcode in [$A0..$A3] then pf66 := Instr^.Mode16Cmd else
    pf66 := Instr^.Mode16Oper;
  if pf66 then Add := 2 else Add := 4;
  if (Flags and (OP_DATA_PRE66 or OP_DATA_PRE67)) <> 0 then Inc(Result, Add);
  case Result of
   1: Instr^.ImmVal := pbyte(cPtr)^;
   2: Instr^.ImmVal := pword(cPtr)^;
   3, 4: Instr^.ImmVal := pdword(cPtr)^;
   6: begin
       Instr^.ImmVal := pdword(cPtr)^;
       Instr^.ImmExtVal := pword(dword(cPtr) + 4)^;
      end;
  end;
  Instr^.ImmSize := Result shl 3;
end;

{
  Разложение команды на значащие составляющие.
  cPtr - указатель на инструкцию,
  Instr - указатель на заполняемую структуру TInstruction
  Result - размер инструкции.
}
function InstrDecode(cPtr: pointer; Instr: PInstruction; Mode16: bool): dword; stdcall;
var
 dPtr: pbyte;
begin
  dPtr := cPtr;
  Instr^.InstrAddr := dword(cPtr);
  Inc(dPtr, GetPrefixes(dPtr, Instr));
  Inc(dPtr, GetOpcode(dPtr, Instr));
  Inc(dPtr, GetModRM(dPtr, Instr, Mode16));
  if Instr^.ModRM.Present then Inc(dPtr, GetSIBAndOffset(dPtr, Instr));
  Result := dword(dPtr) - dword(cPtr) + GetImmVal(dPtr, Instr);
  if Result > MAX_INSTR_LEN then Exit;
  Instr^.InstrLen := Result;
end;

{
 Извлечение условия выполнения.
 Возвращает Cmd Flags.
}
function GetCondition(Opcode: byte): byte;
begin
 Result := ((Opcode and $0F) shl 1) or $01;
end;

{
 Получение номера мнемоники инструкции в таблице мнемоник и флаги условия.
}
function GetCommandOrdinal(Instr: PInstruction; Flags: dword): word;
var
 Mode16Cmd: boolean;
 TwoByte: byte;
 r: byte;

 function SearchArray(Data: array of word; Code: byte; Len: dword): byte;
 var
  r: byte;
 begin
  for r := 0 to Len do
   if byte(Data[r]) = Code then
    begin
     Result := Data[r] shr 8;
     Exit;
    end;
  Result := $DA;
 end;

begin
 Result := $DA;
 if Flags = OP_NONE then Exit;
 Mode16Cmd := Instr^.Mode16Cmd or Instr^.Mode16Oper;
 if Instr^.OpcodeWord then
  begin // decode word opcode
   TwoByte := Instr^.OpCode shr 8;
   case byte(Instr^.OpCode) of
    $D8: Result := SearchArray(OpcodeWordD8, TwoByte, OpcodeWordD8Len);
    $D9: Result := SearchArray(OpcodeWordD9, TwoByte, OpcodeWordD9Len);
    $DA: Result := SearchArray(OpcodeWordDA, TwoByte, OpcodeWordDALen);
    $DB: Result := SearchArray(OpcodeWordDB, TwoByte, OpcodeWordDBLen);
    $DE: Result := SearchArray(OpcodeWordDE, TwoByte, OpcodeWordDELen);
    $DC: Result := SearchArray(OpcodeWordDC, TwoByte, OpcodeWordDCLen);
    $DD: Result := SearchArray(OpcodeWordDD, TwoByte, OpcodeWordDDLen);
    $DF: if TwoByte = $E0 then Result := $DD else Result := $DA;// invalid opcode
   end;
  end else
  begin  // no word opcode
  if Flags and OP_MODRM_USED = 0 then
   begin
    Result  := (Flags and $00FF0000) shr 16;
    if Mode16Cmd and (not Instr^.OpcodeExt) and ((Flags and OP_MNEMDIFF) <> 0) then
     begin
      for r := 0 to MnemDiffTableLen do
       if Instr^.OpCode = (MnemDiffTable[r] shr 8) then Result := byte(MnemDiffTable[r]);
     end else
      if Instr^.OpcodeExt and ((Flags and OP_MNEMDIFF) <> 0) then Result := Result or $100;
   end else
   begin
     if Instr^.OpcodeExt then
      begin
       case Instr^.OpCode of
         $BA      : Result := ModrmUsedMnems13[Instr^.ModRM.iReg];
         $00      : Result := ModrmUsedMnems14[Instr^.ModRM.iReg];
         $01      : Result := ModrmUsedMnems15[Instr^.ModRM.iReg];
         $71      : Result := MmxModrmUsedMnems1[Instr^.ModRM.iReg];
         $72      : Result := MmxModrmUsedMnems2[Instr^.ModRM.iReg];
         $73      : Result := MmxModrmUsedMnems3[Instr^.ModRM.iReg];
         $C7      : Result := MmxModrmUsedMnems4[Instr^.ModRM.iReg];
         $AE      : Result := MmxModrmUsedMnems5[Instr^.ModRM.iReg];
         $18      : Result := MmxModrmUsedMnems6[Instr^.ModRM.iReg];
       end;
      end else
      begin
       case Instr^.OpCode of
         $80..$83 : Result := ModrmUsedMnems1[Instr^.ModRM.iReg];
         $D8, $DC : Result := ModrmUsedMnems2[Instr^.ModRM.iReg];
         $DA, $DE : Result := ModrmUsedMnems3[Instr^.ModRM.iReg];
         $F6, $F7 : Result := ModrmUsedMnems4[Instr^.ModRM.iReg];
         $D0..$D3,
         $C0, $C1 : Result := ModrmUsedMnems5[Instr^.ModRM.iReg];
         $C6, $C7 : Result := ModrmUsedMnems6[Instr^.ModRM.iReg];
         $FF, $FE : Result := ModrmUsedMnems7[Instr^.ModRM.iReg];
         $DF      : Result := ModrmUsedMnems8[Instr^.ModRM.iReg];
         $DB      : Result := ModrmUsedMnems9[Instr^.ModRM.iReg];
         $D9      : Result := ModrmUsedMnems10[Instr^.ModRM.iReg];
         $DD      : Result := ModrmUsedMnems11[Instr^.ModRM.iReg];
         $8F      : Result := ModrmUsedMnems12[Instr^.ModRM.iReg];
       end;
     end;
   end;
  end;
 if Instr^.OpcodeExt and(Flags and OP_SSE_PFX <> 0) and
    (Instr^.Preffixes and OPX_REP <> 0) then
    begin
     Instr^.Preffixes := Instr^.Preffixes and PFX_REP_MASK;
     Instr^.RepPfx := true;
     Inc(Result);
    end;
 if (Result = $CA) and Instr^.Mode16Cmd then Result := $C9; // jcxz/jecxz
end;

{
  Извлечение регистров содержащихся в полях опкода.
}
procedure GetInOpcodeRegister(Instr: PInstruction; Command: PDisCommand;
                              Flags: dword);
var
 AddFlag: dword;
begin
 // если опкод содержит код регистра, то опознаем его
 if (Flags and OP_RD) <> 0 then
  begin
   AddFlag := 0;
   case Instr^.ImmSize of
    00: if Instr^.Mode16Oper then AddFlag := PRS_WORD else AddFlag := PRS_DWORD;
    08: AddFlag := PRS_BYTE;
    16: AddFlag := PRS_WORD;
    32: AddFlag := PRS_DWORD;
   end;
   Command^.Params[Command^.ParamsNum].Value := (Instr^.OpCode and $07) or AddFlag;
   Command^.Params[Command^.ParamsNum].Flags := PRT_REG or AddFlag;
   if Instr^.OpCode <> $90 then Inc(Command^.ParamsNum);
  end else
  // если опкод содержит код сегментного регистра, то опознаем его
  if (not Instr^.OpcodeExt) and ((Flags and OP_SREG2) <> 0) then
   begin
    Command^.Params[Command^.ParamsNum].Flags := PRT_REG;
    Command^.Params[Command^.ParamsNum].Value := ((Instr^.OpCode and $18) shr $03) or RGT_SEG;
    Inc(Command^.ParamsNum);
   end else

  if ((Flags and OP_SREG3) <> 0) and (not Instr^.ModRM.Present) then
   begin
    Command^.Params[Command^.ParamsNum].Flags := PRT_REG;
    Command^.Params[Command^.ParamsNum].Value := ((Instr^.OpCode and $38) shr $03) or RGT_SEG;
    Inc(Command^.ParamsNum);
   end;
end;

{
 Декодирование MOD r/m байта опкода.
}
function DecodeModRM(Instr: PInstruction; Command: PDisCommand;
                     Reversed: boolean; Flags, DefSize: dword): boolean;
var
 Prm1, Prm2, Prt1, Prt2: dword;
 Param1Present, Param2Present: boolean;
begin
 Result := false;
 Prm1 := Instr^.ModRM.iReg or DefSize;
 if Instr^.OpcodeExt then
  case Instr^.OpCode of
   $2D, $2C : if Instr^.RepPfx then
                Prm1 := Instr^.ModRM.iReg or PRS_DWORD else
                Prm1 := Instr^.ModRM.iReg or PRS_QWORD;
   $50, $C5,
   $D7      : Prm1 := Instr^.ModRM.iReg or PRS_DWORD;
  end;
 Prm2 := Instr^.ModRM.iRM;
 Prt1 := PRT_REG;
 Prt2 := 0;
 Param1Present := false;
 Param2Present := false;

 if (Flags and OP_EEE) <> 0 then // опознаем DR, CR и TR регистры
  begin
   Param1Present := true;
   Prm2 := Prm2 or RGT_DWORD;
   case Instr^.OpCode of
    $20, $22: Prm1 := (Prm1 and $07) or RGT_CR;
    $21, $23: Prm1 := (Prm1 and $07) or RGT_DR;
    $24, $26: Prm1 := (Prm1 and $07) or RGT_TR;
   end;
   if Instr^.ModRM.iMod < 3 then
    begin // MOV CRx TRx DRx, Mem32 не бывает!
     Command^.CmdOrdinal := $DA;
     Exit;
    end;
  end;
          
 case Instr^.ModRM.iMod of
   00: begin //
        Param1Present := Instr^.ImmSize = 0;
        if Instr^.Mode16Cmd then
          begin  // формируем 16 битный MODRM
           if Prm2 <> $06 then  // если адресация не по смещению...
             begin
              Prt2 := PRT_MODRM or DefSize;
              Param2Present := true;
             end else Param1Present := false;
          end else
          if not Instr^.SIB.Present then // если адресация не через SIB
            if prm2 <> $05 then // если адресация не по смещению...
             begin
              if (Instr^.OpCode = 01) and Instr^.OpcodeExt then //LMSW
               Prt2 := PRT_MODRM or RGT_WORD else Prt2 := PRT_MODRM or DefSize;
              Prm2 := Prm2 or MODRM_32;
              Param2Present := true;
             end;
       end;
   01,
   02: if not Instr^.SIB.Present then // формируем MODRM параметр
         begin
          if not Instr^.Mode16Cmd then Prm2 := Prm2 or MODRM_32;
          Prt1 := PRT_REG;
          Prt2 := PRT_MODRM or DefSize;
          Param1Present := Instr^.ImmSize = 0;
          Param2Present := true;
         end else
         begin
          Prt1 := PRT_REG;
          Prm1 := Prm1 or DefSize;
          Param1Present := Instr^.ImmSize = 0;
         end;
       
   03: begin  // формируем 2 регистровых параметра
        Prt2 := PRT_REG;
        Param2Present := true;
         if (Flags and OP_EEE) = 0 then Prm2 := Prm2 or DefSize;
         if Instr^.OpcodeExt then
          case Instr^.OpCode of
            $2A : if Instr^.RepPfx then
                   Prm2 := (Prm2 and $187) or PRS_DWORD else
                   Prm2 := (Prm2 and $187) or PRS_QWORD;
            $C4 :  Prm2 := (Prm2 and $187) or PRS_DWORD;
          end; 
        Param1Present := Instr^.ImmSize = 0;
       end;
 end;

 if (Flags and OP_SREG3) <> 0 then // опознаем сегментные регистры
  begin
   Param1Present := true;
   Prm1 := (Prm1 and $07) or RGT_SEG;
   if Prt2 = PRT_REG then Prm2 := (Prm2 and $07) or DefSize;
   if (not Reversed) and (Prt2 = PRT_REG) then Prm2 := (Prm2 and $07) or RGT_WORD;
   Prt2 := (Prt2 and $07) or PRS_WORD;
  end;

 if (Flags and OP_ONE) <> 0 then Param1Present := false;
 if ((Flags and OP_THREE) <> 0) and (Prm1 <> Prm2) then Param1Present := true;
 if Command^.CmdOrdinal = $15D then Param2Present := false;

 // сохраняем полученные параметры
 Command^.Params[Command^.ParamsNum].Flags := Prt1;
 Command^.Params[Command^.ParamsNum].Value := Prm1;
 if Param1Present then Inc(Command^.ParamsNum);
 Command^.Params[Command^.ParamsNum].Flags := Prt2;
 Command^.Params[Command^.ParamsNum].Value := Prm2;
 if Param2Present then Inc(Command^.ParamsNum);
 Result := true;
end;

{
 Декодирование параматров специфичных для конкретных опкодов.
}
Procedure DecodeSpecParams(Instr: PInstruction; Command: PDisCommand;
                           DefSize: dword;
                           var ImmRevers, NotImm: boolean);
var
 SpecFlags: dword;
 Param1Present, Param2Present: boolean;
 Prt1, Prt2, Prm1, Prm2, RegTmp: dword;
 Reversed: boolean;

 function GetSpecOpcodeFlags(Opcode: byte): word;
 var
  r: byte;
 begin
  Result := 0;
  for r := 0 to OpcodeSpecFlagsLen do
   if (OpcodeSpecFlags[r] and $FF) = Opcode then
    begin
     Result := OpcodeSpecFlags[r];
     Exit;
    end;
 end;

begin
 SpecFlags := GetSpecOpcodeFlags(Instr^.OpCode);
 Param1Present := false;
 Param2Present := false;
 Reversed := false;
 Prm1 := 0;
 Prt1 := 0;
 Prt2 := 0;
 Prm2 := 0;

 if (SpecFlags and OP_USEAL) <> 0 then
  begin
   Prt1 := PRT_REG;
   Param1Present := true;
   if DefSize = PRS_BYTE then Prm1 := PRR_AL else
    if Instr^.Mode16Oper then Prm1 := PRR_AX else Prm1 := PRR_EAX;
  end;

  if (SpecFlags and OP_PARAMDX) <> 0 then
   begin
    Prt2 := PRT_REG;
    Param2Present := true;
    Prm2 := PRR_DX;
   end;

  if (SpecFlags and (OP_USECL or OP_USE1)) <> 0 then
   begin
    if (SpecFlags and OP_USECL) <> 0 then
      begin
       Prt1 := PRT_REG;
       Prm1 := PRR_CL;
      end else
      begin
       Prt1 := PRT_IMM or PRS_BYTE;
       Prm1 := $01;
      end;

    Param1Present := true;
   end;

  if (Instr^.OpCode >= $A0) and (Instr^.OpCode <= $A3) then
   begin
    Prt1 := PRT_REG;
    if (Instr^.OpCode = $A0) or (Instr^.OpCode = $A2) then Prm1 := PRR_AL else
       if Instr^.Mode16Oper then Prm1 := PRR_AX else Prm1 := PRR_EAX;
    Param2Present := true;
    Prt2 := PRT_DSP;
    Prm2 := Instr^.ImmVal;
    NotImm := true;
    if (Instr^.OpCode = $A2) or (Instr^.OpCode = $A3) then Reversed := true;
   end;

   if (SpecFlags and OP_REVERS) <> 0 then
    if (Instr^.ImmSize <> 0) and (not Reversed) then ImmRevers := true else
     begin
      RegTmp := Prm1;
      Prm1   := Prm2;
      Prm2   := RegTmp;
      RegTmp := Prt1;
      Prt1   := Prt2;
      Prt2   := RegTmp;
     end;

   if (SpecFlags and OP_IMMREV) <> 0 then ImmRevers := true;

  Command^.Params[Command^.ParamsNum].Flags  := Prt1;
  Command^.Params[Command^.ParamsNum].Value  := Prm1;
  Command^.Params[Command^.ParamsNum].EFlags := DefSize;
  if Param1Present then Inc(Command^.ParamsNum);
  Command^.Params[Command^.ParamsNum].Flags  := Prt2;
  Command^.Params[Command^.ParamsNum].Value  := Prm2;
  Command^.Params[Command^.ParamsNum].EFlags := DefSize;
  if Param2Present then Inc(Command^.ParamsNum);
end;

{
  Декодирование параметров FPU команд.
}
Procedure DecodeFpuParams(Instr: PInstruction; Command: PDisCommand; Flags: dword);
var
 r: byte;
 FFlags: dword;

 Function GetFpuOpcodeFlags(Instr: PInstruction): dword; 
 var
  r: byte;
 begin
  Result := 0;
  for r := 0 to OpcodeFpuFlagsLen do
   if word(OpcodeFpuFlags[r]) = (swap(Instr^.OpCode) and $FFF8) then
    begin
     Result := OpcodeFpuFlags[r] and $FFFF0000;
     Exit;
    end;
 end;

begin
 if Flags and OP_SSE <> 0 then Exit;
 FFlags := GetFpuOpcodeFlags(Instr);

 if Instr^.OpcodeWord then
  begin
    // получаем флаги команды и извлекаем FPU регистры
    if (FFlags and OP_REGUSED) <> 0 then // в опкоде присутствуют регистры
     begin
      if (FFlags and OP_TWOPARAM) <> 0 then // st(0) - первый параметр
       begin
        Command^.Params[Command^.ParamsNum].Flags := PRT_REG;
        Command^.Params[Command^.ParamsNum].Value := PRR_ST0 or RGT_FPU;
        Inc(Command^.ParamsNum);
       end;
      Command^.Params[Command^.ParamsNum].Flags := PRT_REG;
      Command^.Params[Command^.ParamsNum].Value := ((Instr^.OpCode shr $08) and $7) or RGT_FPU;
      Inc(Command^.ParamsNum);
      if (FFlags and OP_REVERSED) <> 0 then
       begin
        Command^.Params[Command^.ParamsNum].Flags := PRT_REG;
        Command^.Params[Command^.ParamsNum].Value := PRR_ST0 or RGT_FPU;
        Inc(Command^.ParamsNum);
       end;
     end;

    if Instr^.OpCode = $E0DF then
     begin //FSTSW AX
      Command^.Params[Command^.ParamsNum].Flags := PRT_REG;
      Command^.Params[Command^.ParamsNum].Value := PRR_AX;
      Inc(Command^.ParamsNum);
     end;
  end else // получаем размер FPU параметров и устанавливаем флаги инструкции
   for r := 0 to FpuMemFmtLen do
    if (Instr^.OpCode = (FpuMemFmt[r] and $FF)) and
       (Instr^.ModRM.iReg = (FpuMemFmt[r] shr 11)) then
      begin
       Command^.CmdFlags := Command^.CmdFlags or INSTR_FPU or (FpuMemFmt[r] and $700);
       Exit;
      end;
end;

{
  Декодирование Offset.
}
Procedure DecodeOffsetParam(Instr: PInstruction; Command: PDisCommand; Flags, DefSize: dword);
var
 Prt1, Prt2: dword;
begin
 // формируем offset параметры
 Prt1 := PRT_DSP;
 Prt2 := 0;
 case Instr^.OffsetSize of
  08: Prt1 := Prt1 or PRS_BYTE;
  16: Prt1 := Prt1 or PRS_WORD;
  32: Prt1 := Prt1 or PRS_DWORD;
 end;

 if (Flags and OP_SREG3) = 0 then  Prt2 := Prt2 or DefSize else Prt2 := Prt2 or PRS_WORD;

 if Instr^.OpcodeExt and (Instr^.OpCode = $00) then Prt2 := (Prt2 and $07) or PRS_WORD;  //werr

 Command^.Params[Command^.ParamsNum].Flags  := Prt1;
 Command^.Params[Command^.ParamsNum].EFlags := Prt2;
 Command^.Params[Command^.ParamsNum].Value  := Instr^.Offset;
 Inc(Command^.ParamsNum);
end;

{
  Декодирование Immediate параметров.
}
Procedure DecodeImmParam(Instr: PInstruction; Command: PDisCommand; Flags: dword; DefSize: dword);
var
 Prt1: dword;
 Val: dword;
 AddVal: dword;
begin
 Prt1 := PRT_IMM;
 Val  := Instr^.ImmVal;
 case Instr^.ImmSize of
  08: begin // обрабатываем бит расширения знака
        if Instr^.OpcodeExt or ((Flags and OP_S) = 0) then
         Prt1 := Prt1 or PRS_BYTE else
          begin
           Prt1 := Prt1 or DefSize;
           if DefSize = PRS_WORD then AddVal := $FF00 else AddVal := dword(-$100);
           Val := Val or (AddVal * (Val shr 7)); 
          end;
      end;
  16: Prt1 := Prt1 or PRS_WORD;
  32: Prt1 := Prt1 or PRS_DWORD;
  48: Prt1 := Prt1 or PRS_FWORD;  // для fword параметров остаток храниться в EFlags
 end;

// if Command^.CmdOrdinal in [$D5, $D6, $9A] then

 Command^.Params[Command^.ParamsNum].Flags  := Prt1;
 Command^.Params[Command^.ParamsNum].EFlags := Instr^.ImmExtVal;
 Command^.Params[Command^.ParamsNum].Value  := Val;
 Inc(Command^.ParamsNum);
end;

{
 Поправка параметров на специфичных опкодах.
}
procedure DecodeCmdSpecParams(Instr: PInstruction; Command: PDisCommand; var NotImm: boolean);
begin
 if Instr^.OpcodeExt then
 case Instr^.OpCode of
  $00: begin
        If Instr^.OffsetSize = 0 then
         Command^.Params[0].Value := (Command^.Params[0].Value and $0F) or RGT_WORD;
         Command^.Params[0].Flags := (Command^.Params[0].Flags and $07) or PRS_WORD;
       end;
  $A5, $AD: begin
             Command^.Params[Command^.ParamsNum].Flags := PRT_REG;
             Command^.Params[Command^.ParamsNum].Value := PRR_CL;
             Inc(Command^.ParamsNum);
             end;
 end else
 if Instr^.OpCode = $C8 then
  begin
    Command^.Params[Command^.ParamsNum].Flags := PRT_IMM;
    Command^.Params[Command^.ParamsNum].Value := Instr^.ImmVal and $FFFF;
    Inc(Command^.ParamsNum);
    Command^.Params[Command^.ParamsNum].Flags := PRT_IMM;
    Command^.Params[Command^.ParamsNum].Value := (Instr^.ImmVal and $FF0000) shr 16;
    Inc(Command^.ParamsNum);
    NotImm := true;
  end; 
end;

{
  Декодирование SIB байта инструкции.
}
function DecodeSibParam(Instr: PInstruction; Command: PDisCommand; Flags, DefSize: dword): boolean;
var
 Prt1, Prm1: dword;
begin
 Result := true;
 if (Instr^.SIB.Scale = 0) and (Instr^.SIB.Index = 4) and (Instr^.SIB.Base = 4) then
   begin // распознаем адресацию [esp] и формируем MODRM параметр
     Prt1 := PRT_MODRM;
     Prm1 := PRR_ESP or MODRM_32;
   end else
   begin // формируем SIB параметр
    Prt1 := PRT_SIB;
    Prm1 := Instr^.SIB.Base or RGT_DWORD;

    if (Instr^.SIB.Base = $05) and (Instr^.ModRM.iMod = 0) then Prm1 := RGT_NONE;

    if Instr^.SIB.Index = $04 then
     begin
      Prm1 := Prm1 or (RGT_NONE shl 8);
      if Instr^.SIB.Scale > 0 then Result := false;
     end else Prm1 := Prm1 or ((Instr^.SIB.Index or RGT_DWORD) shl 8);
     
    Prm1 := Prm1 or (Instr^.SIB.Scale shl 16);
   end;

 Prt1 := Prt1 or DefSize;
      
 if Instr^.OpcodeExt and (Instr^.OpCode = $00) then Prt1 := (Prt1 and $07) or PRS_WORD;

 if (Flags and OP_SREG3) <> 0 then Prt1 := (Prt1 and $07) or PRS_WORD;

 Command^.Params[Command^.ParamsNum].Flags := Prt1;
 Command^.Params[Command^.ParamsNum].Value := Prm1;
 Inc(Command^.ParamsNum);
end;

{
 Очистка сформированной структуры от нулевых смещений
 и определение MEM_OVERRIDE флага.
}
function CleanDisasmStruct(Command: PDisCommand; MmxInstr: boolean; Mode16: boolean): boolean;
var
 r: byte;
 NewParams: array [0..3] of TParam;
 CurrParam: byte;
 pType, pValue: dword;
 AddrPresent, RegPresent: boolean;
 RegSize, AddrSize: dword;
 MemOverride: boolean;
begin
 Result := false;
 CurrParam := 0;
 AddrSize  := 0;
 RegSize   := 0;
 AddrPresent := false;
 RegPresent  := false;
 if Command^.ParamsNum <> 0 then
 begin
  for r := 0 to Command^.ParamsNum - 1 do
   begin
    pType  := Command^.Params[r].Flags and $07;
    pValue := Command^.Params[r].Value;
    if (pType = PRT_MODRM) or (pType = PRT_SIB) then
     begin
      AddrPresent := true;  //помимо offset есть и другая адресная часть
      AddrSize := Command^.Params[r].Flags and $78;
     end;
    if pType = PRT_REG then
     begin
      RegPresent := true;
      case pValue of
       $00..$17: RegSize := pValue and $38;
       $18..$1F,
       $28..$2F: RegSize := PRS_DWORD;
       $20..$27: RegSize := PRS_WORD;
      end; 
     end;
    if (pType = PRT_REG) and
       (pValue in [PRR_CR1, PRR_CR5..PRR_CR7, PRR_TR0..PRR_TR2, PRR_INV1, PRR_INV2]) then
        begin // отсеиваем инвалидные регистры
         Command^.CmdOrdinal := $DA;
         Exit;
        end;
   end;

  for r := 0 to Command^.ParamsNum - 1 do
   if (not AddrPresent) or ((Command^.Params[r].Flags and $07) <> PRT_DSP) or
      (Command^.Params[r].Value <> 0) then
        begin
         NewParams[CurrParam].Flags  := Command^.Params[r].Flags;
         NewParams[CurrParam].EFlags := Command^.Params[r].EFlags;
         NewParams[CurrParam].Value  := Command^.Params[r].Value;
         Inc(CurrParam);
        end;
 end;

 //сохраняем результаты обработки
 if CurrParam > 1 then
  begin
   for r := 0 to CurrParam - 1 do
    begin
     if ((NewParams[r].Flags and $07) = PRT_DSP) and (not AddrPresent) then
      begin
       AddrPresent := true;
       AddrSize := NewParams[r].EFlags and $38;
      end;
     Command^.Params[r].Flags  := NewParams[r].Flags;
     Command^.Params[r].EFlags := NewParams[r].EFlags;
     Command^.Params[r].Value  := NewParams[r].Value;
    end;
   Command^.ParamsNum := CurrParam;
  end;

 if AddrPresent then
  case Command^.CmdOrdinal of
   $132, $134 : Inc(Command^.CmdOrdinal);
  end;

 MemOverride := (RegPresent and AddrPresent and (AddrSize <> RegSize));
 if (not RegPresent) and AddrPresent then
  case AddrSize of
    PRS_BYTE : MemOverride := true;
    PRS_WORD : MemOverride := not Mode16;
    PRS_DWORD: MemOverride := Mode16;
  end;

 if (Command^.CmdOrdinal = $74) or MmxInstr then MemOverride := false;// lea и MMX команды не имеют MEM_OVERRIDE

 if MemOverride then Command^.CmdFlags := Command^.CmdFlags or MEM_OVERRIDE;
 Result := true;
end;

procedure GetJumpFlags(Instr: PInstruction; Command: PDisCommand);

 function IsRelative(Ordinal: word): boolean;
 var
  r: byte;
 begin
  Result := false;
  for r := 0 to RelInstrSize do if RelInstrTable[r] = Ordinal then
   begin
    Result := true;
    Exit;
   end;
 end;
 
begin
 if IsRelative(Command^.CmdOrdinal) then 
  begin
    Command^.CmdFlags := Command^.CmdFlags or CMD_JUMP;
    if not Instr^.OpcodeExt then
     begin
      if Instr^.OpCode in [$EA, $9A] then
       Command^.CmdFlags := Command^.CmdFlags or JMP_ABS or JMP_FAR;
      if (Instr^.OpCode = $FF) and (Instr^.ModRM.iReg in [3, 5]) then
       Command^.CmdFlags := Command^.CmdFlags or JMP_FAR;
     end;
  end;
end;

{
  Дизассемблирование команды разложенной в структуру TInstruction.
  Instr - указатель на TInstruction,
  Command - указатель на заполнямую структуру TDisCommand,
  Mode16 - true для 16 битного кода, false - для 32 битного.
  Result - успешность результата.
}
Function InstrDasm(Instr: PInstruction; Command: PDisCommand; Mode16: bool): bool; stdcall;
var
 Flags: dword;
 ImmRevers, NotImm: boolean;
 Prt1, Prm1: dword;
 ByteParam, FpuCode: boolean;
 DefSize: dword;
 Reversed, MmxInstr: boolean; 

begin
 Result := false;
 ImmRevers := false;
 NotImm := false;

 Flags := GetOpcodeFlags(Instr);

 Command^.CmdOrdinal := GetCommandOrdinal(Instr, Flags);
 Command^.CmdAddr := Instr^.InstrAddr;
 Command^.CmdLength := Instr^.InstrLen;
 Command^.Cmd16BitOperand := Instr^.Mode16Oper;
 if Command^.CmdOrdinal = $DA then Exit;
 Command^.Preffixes := Instr^.Preffixes;
 
 if (Flags and OP_TTTn) <> 0 then Command^.CmdFlags := GetCondition(Instr^.OpCode);

 ByteParam := ((Flags and OP_W) <> 0) and ((Instr^.OpCode and 1) = 0);
 if Instr^.OpcodeExt and ((Flags and OP_BYTE) <> 0) then ByteParam := true;
 FpuCode   := (Instr^.InstrLen > 1)  and ((Instr^.OpCode and $F8) = $D8) and (not Instr^.OpcodeExt);
 Reversed  := ((Flags and OP_D) <> 0) and ((Instr^.OpCode and 2) = 0);
 MmxInstr  := Instr^.OpcodeExt and ((Flags and OP_MMX) <> 0);
 
 if ByteParam then DefSize := PRS_BYTE else
   if Instr^.Mode16Oper then DefSize := PRS_WORD else DefSize := PRS_DWORD;

 if MmxInstr then DefSize := PRS_QWORD;

 if Instr^.OpcodeExt and ((Flags and OP_SSE) <> 0) then  DefSize := PRS_DQWORD;

 if MmxInstr and (Instr^.OpCode in [$6E, $7E]) then MmxInstr := false;

 if not FpuCode then GetInOpcodeRegister(Instr, Command, Flags);
 
 if FpuCode then DecodeFpuParams(Instr, Command, Flags);

 if Instr^.ModRM.Present then
  if not DecodeModRM(Instr, Command, Reversed, Flags, DefSize) then Exit;

 if Instr^.SIB.Present then
    if not DecodeSibParam(Instr, Command, Flags, DefSize) then Exit;

 if Instr^.OffsetSize <> 0 then
   DecodeOffsetParam(Instr, Command, Flags, DefSize);
 
 if not (Instr^.OpcodeExt or FpuCode) then
   DecodeSpecParams(Instr, Command, DefSize, ImmRevers, NotImm);

 if not Instr^.OpcodeWord then DecodeCmdSpecParams(Instr, Command, NotImm);

 if (Instr^.ImmSize > 0) and (not NotImm) then DecodeImmParam(Instr, Command, Flags, DefSize);

  // movsx и movzx - исключение из правил кодирования размера
 if Instr^.OpcodeExt and (Instr^.OpCode in [$BE, $B6]) then
  begin
    Command^.Params[0].Value := (Command^.Params[0].Value and $07) or RGT_DWORD;
    if (Command^.Params[1].Flags and $07) = PRT_REG then
      Command^.Params[1].Value := (Command^.Params[1].Value and $0F) or RGT_BYTE;
    Command^.Params[1].EFlags := (Command^.Params[1].EFlags and $07) or PRS_BYTE;
    Command^.Params[1].Flags := (Command^.Params[1].Flags and $07) or PRS_BYTE;
  end;
 if Instr^.OpcodeExt and (Instr^.OpCode in [$B7, $BF]) then
  begin
    Command^.Params[0].Value := (Command^.Params[0].Value and $07) or RGT_DWORD;
    if (Command^.Params[1].Flags and $07) = PRT_REG then
      Command^.Params[1].Value := (Command^.Params[1].Value and $0F) or RGT_WORD;
    Command^.Params[1].EFlags := (Command^.Params[1].EFlags and $07) or PRS_WORD;
    Command^.Params[1].Flags := (Command^.Params[1].Flags and $07) or PRS_WORD;
  end;

 if (not Instr^.OpcodeExt) and (Instr^.OpCode in [$A0, $A1]) then Reversed := false; 

 // процессинг результатов и изменение параметров в соответствии с установлеными флагами
  if Reversed or ((Flags and OP_REV) <> 0) or ImmRevers then
   begin   
    Prt1 := Command^.Params[0].Flags;
    Prm1 := Command^.Params[0].Value;
    Command^.Params[0].Flags := Command^.Params[1].Flags;
    Command^.Params[0].Value := Command^.Params[1].Value;
    Command^.Params[1].Flags := Prt1;
    Command^.Params[1].Value := Prm1;
    Prt1 := Command^.Params[1].EFlags;
    Command^.Params[1].EFlags := Command^.Params[0].EFlags;
    Command^.Params[0].EFlags := Prt1;
   end;  
 GetJumpFlags(Instr, Command);
 if Flags and OP_SSE <> 0 then MmxInstr := true;
 if not CleanDisasmStruct(Command, MmxInstr, Mode16) then Exit;
 Result := true;
end;



{
 Получегие имени регистра по его коду.
}
function GetRegName(Reg: dword): PChar;
const
 Regs: array [0..55] of string[6] =
 (
   'al', 'cl', 'dl', 'bl', 'ah', 'ch', 'dh', 'bh',
   'ax', 'cx', 'dx', 'bx', 'sp', 'bp', 'si', 'di',
   'eax', 'ecx', 'edx', 'ebx', 'esp', 'ebp', 'esi', 'edi',
   'cr0', '', 'cr2', 'cr3', 'cr4', '', '', '',
   'es', 'cs', 'ss', 'ds', 'fs', 'gs', '', '',
   'dr0', 'dr1', 'dr2', 'dr3', 'dr4', 'dr5', 'dr6', 'dr7',
   'st(0)', 'st(1)', 'st(2)', 'st(3)', 'st(4)', 'st(5)', 'st(6)', 'st(7)'
 );
 ExtRegs: array[0..23] of string[5] =
 (
   'tr0', 'tr1', 'tr2', 'tr3', 'tr4', 'tr5', 'tr6', 'tr7',
   'mm0', 'mm1', 'mm2', 'mm3', 'mm4', 'mm5', 'mm6', 'mm7',
   'xmm0', 'xmm1', 'xmm2', 'xmm3', 'xmm4', 'xmm5', 'xmm6', 'xmm7'
 );
begin
 if (Reg and $40) > 0 then Result := PChar(@ExtRegs[Reg and $3F][1])
  else Result := PChar(@Regs[Reg and $3F][1]);
 if Reg = RGT_NONE then Result := nil;
end;

{
 Получение строки условия операции.
}
function GetConditionStr(Cmd: PDisCommand): PChar;
const
 CondTable: array[0..15] of string[4] =
 (
   'o', 'no', 'b', 'nb', 'z', 'nz', 'be', 'nbe',
   's', 'ns', 'pe', 'np', 'l', 'nl', 'le', 'nle'
 );
begin
 if (Cmd^.CmdFlags and 1) <> 0 then
  Result := PChar(dword(@CondTable[(Cmd^.CmdFlags and $1E) shr 1]) + 1)
  else Result := nil;
end;

{
  Получение строки описывающей формат FPU операнда в памяти.
}
function GetFpuWidthStr(Flags: word): PChar;
const
 PtrType: array [0..6] of PChar =
 (
   'word ptr', 'dword ptr', 'qword ptr',
   'real4 ptr', 'real8 ptr', 'real10 ptr', 'tbyte ptr'
 );
begin
 Result := PtrType[(Flags and $700) shr 8];
end;

procedure GetHexDump(Addr: dword; Len: dword; OutBuff: PChar);
var
 cPtr: pbyte;
 Tmp: array [0..5] of Char;
begin
 cPtr := pointer(Addr);
 OutBuff[0] := #0;
 while dword(cPtr) < dword(Addr) + Len do
  begin
   ToHex(cPtr^, 2, Tmp);
   StrCat(OutBuff, Tmp); 
   Inc(cPtr);
  end;
end;



procedure GetPrePfxStr(Prefixes: word; OutBuff: PChar);
begin
 OutBuff[0] := #0;
 if (Prefixes and OPX_LOCK)  <> 0 then StrCpy(OutBuff, 'lock ');
 if (Prefixes and OPX_REP)   <> 0 then StrCat(OutBuff, 'rep ');
 if (Prefixes and OPX_REPNZ) <> 0 then StrCat(OutBuff, 'repnz ');
end;

function GetSegmentPfxStr(Prefixes: word): PChar;
begin
 Result := nil;
 case Prefixes and $FC of
   OPX_CS: Result := 'cs:';
   OPX_DS: Result := 'ds:';
   OPX_ES: Result := 'es:';
   OPX_SS: Result := 'ss:';
   OPX_FS: Result := 'fs:';
   OPX_GS: Result := 'gs:';
 end; 
end;

procedure GetSibStr(Param: TParam; OutBuff: PChar);
var
 Index: dword;
 Scale: byte;
 Base: dword;
 Tmp: array [0..5] of Char;
begin
 Scale := (Param.Value and $30000) shr 16;
 Base := Param.Value and $FF;
 Index := (Param.Value and $FF00) shr 8;
 StrCpy(OutBuff, '[');
 if Base <> RGT_NONE then
  begin
   StrCat(OutBuff, GetRegName(Base));
   StrCat(OutBuff, '+');
  end;
 StrCat(OutBuff, GetRegName(Index));
 if Scale > 0 then
  begin
   StrCat(OutBuff, '*');     
   ToHex(2 shl (Scale - 1), 1, Tmp);
   StrCat(OutBuff, Tmp);
  end;
end;

procedure GetSignedHexStr(Value, Flags: dword; OutBuff: PChar;
                          var Val: dword; var Sign: boolean);
var
 Size: dword;
 Tmp: array [0..10] of Char;
begin
 Size := 2 shl ((Flags and $38) shr 3);
 Sign := false;
 Val  := 0;
 case Size of
  02: begin
       Sign := (Value and $80) = 0;
       Val  := Value and $7F;
       if not Sign then Val := $80 - Val;
      end;
  04: begin
       Sign := (Value and $8000) = 0;
       Val  := Value and $7FFF;
       if not Sign then Val := $8000 - Val;
      end;
  08: begin
       Sign := (Value and $80000000) = 0;
       Val  := Value and $7FFFFFFF;
       if not Sign then Val := $80000000 - Val;   
      end;
 end;
 if Sign then StrCpy(OutBuff, '+') else StrCpy(OutBuff, '-');
 ToHex(Val, Size, Tmp);
 StrCat(OutBuff, Tmp);
end;

procedure MakeMnemonic(OutBuffer: PChar; Command: PDisCommand; Options: PMnemonicOptios); stdcall;
const
 ModRm16: array[0..7] of PChar =
 (
  'bx+si', 'bx+di', 'bp+si', 'bp+di',
  'si','di','bp','bx'
 );
 
var
 r: byte;
 pType, pSize, pValue: dword;
 OffsetSize, Len, Val: dword;
 AddrPresent, MemOverride: boolean;
 PtrStr, OffsetStr,
 Tmp, SegPfx: array [0..20] of Char;
 Sign: boolean;
 EffectAddr: dword;
begin
 OutBuffer[0] := #0;
 if Options^.AlternativeAddres > 0 then EffectAddr := Options^.AlternativeAddres
  else EffectAddr := Command^.CmdAddr;
 if Options^.AddAddresPart then
  begin
   ToHex(EffectAddr, 8, Tmp);
   StrCat(OutBuffer, Tmp);
   StrCat(OutBuffer, ': ');
  end;
 if Options^.AddHexDump then
  begin
   GetHexDump(Command^.CmdAddr, Command^.CmdLength, Tmp);
   StrCat(OutBuffer, Tmp);
  end;
  
 if Options^.MnemonicAlign > 0 then AlignText(OutBuffer, Options^.MnemonicAlign);

 GetPrePfxStr(Command^.Preffixes, Tmp);
 StrCat(OutBuffer, Tmp);
 StrCat(OutBuffer, PChar(dword(@MnemArr[Command^.CmdOrdinal]) + 1));
 if Command^.CmdOrdinal = $DA then Exit;
 OffsetStr[0] := #0;
 PtrStr[0] := #0;
 SegPfx[0] := #0;
 AddrPresent  := false;
 OffsetSize   := 0;
 MemOverride  := (Command^.CmdFlags and MEM_OVERRIDE) <> 0;
 StrCat(OutBuffer, GetConditionStr(Command));
 StrCat(OutBuffer, ' ');
 StrCpy(SegPfx, GetSegmentPfxStr(Command^.Preffixes));

 if (Command^.CmdFlags and JMP_FAR) <> 0 then StrCat(OutBuffer, 'far ');

 if Command^.ParamsNum > 0 then
 for r := 0 to Command^.ParamsNum - 1 do
  case Command^.Params[r].Flags and $07 of
    PRT_DSP: begin
              OffsetSize := 2 shl ((Command^.Params[r].Flags and $38) shr 3);
              if Command^.Params[r].Value <> 0 then
               begin
                GetSignedHexStr(Command^.Params[r].Value,
                                Command^.Params[r].Flags, Tmp, Val, Sign);
                StrCat(OffsetStr, Tmp);
                StrCat(OffsetStr, 'h');
               end;
             end;
    PRT_MODRM, PRT_SIB: AddrPresent := true;
    end;

 if (Command^.CmdFlags and INSTR_FPU) <> 0 then
    StrCpy(PtrStr, GetFpuWidthStr(Command^.CmdFlags));
    
 if Command^.ParamsNum > 0 then
 for r := 0 to Command^.ParamsNum - 1 do
  begin
    pType  := Command^.Params[r].Flags and $07;
    pSize  := Command^.Params[r].Flags and $78;
    if pType = PRT_DSP then pSize := Command^.Params[r].EFlags and $38;
    pValue := Command^.Params[r].Value;

    if (pType in [PRT_MODRM, PRT_SIB, PRT_DSP]) and
       ((Command^.CmdFlags and INSTR_FPU) = 0) then
     case pSize of
       PRS_BYTE : StrCpy(PtrStr, 'byte ptr');
       PRS_WORD : StrCpy(PtrStr, 'word ptr');
       PRS_DWORD, PRS_QWORD: StrCpy(PtrStr, 'dword ptr');
     end;

    StrCat(PtrStr, ' ');
    
    if (not MemOverride) and
       (Command^.CmdFlags and INSTR_FPU  = 0) then PtrStr[0] := #0;

    case pType of
      PRT_REG  : StrCat(OutBuffer, GetRegName(pValue));
      PRT_MODRM: begin
                  StrCat(OutBuffer, PtrStr);
                  StrCat(OutBuffer, SegPfx);
                  StrCat(OutBuffer, '['); 
                  if (pValue and MODRM_32) <> 0 then
                    StrCat(OutBuffer, GetRegName((pValue and $07) or RGT_DWORD))
                    else StrCat(OutBuffer, ModRm16[pValue and $07]);
                  StrCat(OutBuffer, OffsetStr);
                  StrCat(OutBuffer, ']');
                 end;
      PRT_SIB:   begin
                  StrCat(OutBuffer, PtrStr);
                  StrCat(OutBuffer, SegPfx);
                  GetSibStr(Command^.Params[r], Tmp);
                  StrCat(OutBuffer, Tmp);
                  StrCat(OutBuffer, OffsetStr);
                  StrCat(OutBuffer, ']');
                 end;
      PRT_DSP: if not AddrPresent then
                 begin
                  StrCat(OutBuffer, PtrStr);
                  StrCat(OutBuffer, SegPfx);
                  StrCat(OutBuffer, '[');
                  ToHex(pValue, OffsetSize, Tmp);
                  StrCat(OutBuffer, Tmp);
                  StrCat(OutBuffer, 'h]');
                 end;
      PRT_IMM:   begin
                  if (Command^.Params[r].Flags and $38) = PRS_FWORD then
                   begin
                    ToHex(Command^.Params[r].EFlags, 4, Tmp);
                    StrCat(OutBuffer, Tmp);
                    StrCat(OutBuffer, ':');
                    ToHex(pValue, 8, Tmp);
                   end else
                   if (Command^.CmdFlags and CMD_JUMP) <> 0 then
                    begin //JUMP
                     GetSignedHexStr(pValue + Command^.CmdLength, Command^.Params[r].Flags, Tmp, Val, Sign);
                     if Options^.RealtiveOffsets then
                      begin
                       StrCat(OutBuffer, '$'#0);
                      // Tmp[StrLen(Tmp) - 1] := #0;
                      end else
                      begin 
                       if Sign then Val := EffectAddr + Val else Val := EffectAddr - Val;
                       if Command^.Cmd16BitOperand then Val := Val and $FFFF;
                       ToHex(Val, 2 shl ((Command^.Params[r].Flags and $38) shr 3), Tmp);
                      end; 
                    end else
                      ToHex(pValue, 2 shl ((Command^.Params[r].Flags and $38) shr 3), Tmp);
                  StrCat(Tmp, 'h');
                  StrCat(OutBuffer, Tmp);
                 end;
      
    end;
  if (pType <> PRT_DSP) or (not AddrPresent) then StrCat(OutBuffer, ', ');
  end;
 Len := StrLen(OutBuffer) - 2;
 if OutBuffer[Len] = ',' then OutBuffer[Len] := #0;
end;

function GetCadtVersion: PChar; stdcall;
begin
 Result := 'CADt v 1.1 by Ms-Rem';
end;  

end.



program Project1;

uses
  Forms,
  Windows,
  Messages,
  Unit1 in 'Unit1.pas' {DiEfrm};

{$R *.res}

function Check(): boolean;
var
  HM: THandle;
begin
  HM := OpenMutex(MUTEX_ALL_ACCESS, false, 'MyDieMutex');
  Result := (HM <> 0);
  if (HM = 0) then CreateMutex(nil, false, 'MyDieMutex');
end;

var
  bb:HWND;

begin
  If Check() then
  begin
    bb:= FindWindow('TApplication','DiE 0.65');
    If (bb <> 0) then SendMessage(bb, WM_CLOSE, 0, 0);
  end;
  Application.Initialize;
  Application.Title := 'DiE 0.65';
  Application.CreateForm(TDiEfrm, DiEfrm);
  Application.Run;
end.

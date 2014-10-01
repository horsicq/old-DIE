unit Unit1;
{$INCLUDE MPDELVER.INC}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, MPHexEditor, MPHexEditorEx, StdCtrls;

type
  TForm1 = class(TForm)
    MPHexEditor1: TMPHexEditorEx;
    MPHexEditor2: TMPHexEditorEx;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure MPHexEditor1TopLeftChanged(Sender: TObject);
    procedure MPHexEditor1SelectionChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FDoSync: Boolean;
    FSyncOffset: integer;
    procedure Sync;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.MPHexEditor1TopLeftChanged(Sender: TObject);
begin
  Sync;
end;

procedure TForm1.MPHexEditor1SelectionChanged(Sender: TObject);
begin
  Sync;
end;

procedure TForm1.Sync;
begin
  if FDoSync then
  begin
    if MPHexEditor1.Focused then
      MPHexEditor2.SyncView(MPHexEditor1, FSyncOffset)
    else
      if MPHexEditor2.Focused then
        MPHexEditor1.SyncView(MPHexEditor2, -FSyncOffset)
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // make sure that MYGRID is not defined in mphexeditor.pas
  Assert(MPHexEditor1 is TCustomGrid);

  Button1.Click;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDoSync := False;
  try
    MPHexEditor1.LoadFromFile('a.bin');
    with MPHexEditor2 do
    begin
      LoadFromFile('b.bin');
      {$IFDEF DELPHI6UP}
      PropertiesAsString := MPHexEditor1.PropertiesAsString;
      {$ELSE}
      BytesPerRow := MPHexEditor1.BytesPerRow;
      BytesPerBlock := MPHexEditor1.BytesPerBlock;
      {$ENDIF}
      FSyncOffset := 0;
    end;
  finally
    FDoSync := True;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDoSync := False;
  try
    MPHexEditor1.LoadFromFile('a.bin');
    with MPHexEditor2 do
    begin
      LoadFromFile('c.bin');
      {$IFDEF DELPHI6UP}
      PropertiesAsString := MPHexEditor1.PropertiesAsString;
      {$ENDIF}
      BytesPerRow := 16;
      BytesPerBlock := 4;
      FSyncOffset := 1024;
    end;
  finally
    FDoSync := True;
  end;
end;

end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MPHexEditor, StdCtrls, ComCtrls, Grids;

type
  TForm1 = class(TForm)
    MPHexEditor1: TMPHexEditor;
    Panel1: TPanel;
    rbHex: TRadioButton;
    rbDec: TRadioButton;
    Label1: TLabel;
    edOffset: TEdit;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure MPHexEditor1GetOffsetText(Sender: TObject;
      const Number: Int64; var OffsetText: String);
    procedure edOffsetChange(Sender: TObject);
    procedure rbHexClick(Sender: TObject);
    procedure MPHexEditor1SelectionChanged(Sender: TObject);
    procedure rbDecClick(Sender: TObject);
  private
    { Private declarations }
    FOffsetShift: Int64;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // make sure that MYGRID is not defined in mphexeditor.pas
  Assert(MPHexEditor1 is TCustomGrid);

  MPHexEditor1.LoadFromFile(ParamStr(0));
  FOffsetShift := 0;
end;

procedure TForm1.MPHexEditor1GetOffsetText(Sender: TObject;
  const Number: Int64; var OffsetText: String);
begin
  // add the custom FOffsetShift value to the actual data position (given in Number)
  with MPHexEditor1 do
    OffsetText := GetOffsetString(Number + FOffsetShift);
end;

procedure TForm1.edOffsetChange(Sender: TObject);
var
  c: integer;
  i64: Int64;
begin
  // calculate new offset shift
  Val('$'+edOffset.Text, i64, c);
  if c = 0 then
  begin
    // valid input
    edOffset.Color := clWindow;
    // change offset shift
    FOffsetShift := i64;
    // draw editor
    MPHexEditor1.Repaint;
    // draw status bar
    MPHexEditor1SelectionChanged(MPHexEditor1);
  end
  else
    // show error
    edOffset.Color := clRed;
end;

procedure TForm1.rbHexClick(Sender: TObject);
begin
  MPHexEditor1.OffsetFormat := MPHOffsetHex;
  MPHexEditor1SelectionChanged(MPHexEditor1);
end;

procedure TForm1.MPHexEditor1SelectionChanged(Sender: TObject);
begin
  StatusBar1.SimpleText := MPHexEditor1.GetOffsetString(MPHexEditor1.GetCursorPos)
end;

procedure TForm1.rbDecClick(Sender: TObject);
begin
  MPHexEditor1.OffsetFormat := MPHOffsetDec;
  MPHexEditor1SelectionChanged(MPHexEditor1);
end;

end.

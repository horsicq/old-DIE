unit ct1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, MPHexEditor, StdCtrls, ExtCtrls, Grids;

type
  TForm1 = class(TForm)
    MPHexEditor1: TMPHexEditor;
    Panel1: TPanel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  FillBuffer: packed array[0..255] of Char;
  c: Char;
begin
  // make sure that MYGRID is not defined in mphexeditor.pas
  Assert(MPHexEditor1 is TCustomGrid);
  //Fill the hexeditor with data range 0..255
  for c := #0 to #255 do
    FillBuffer[Ord(c)] := c;
  MPHexEditor1.AppendBuffer(@FillBuffer, 256);
  MPHexEditor1.SelStart := 0;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  TransTable: TMPHCharConv;
  b: byte;
begin
  (* create a custom translation table where
     char 00 maps to char ff
     char 01 maps to char fe
              ...
     char fe maps to char 01
     char ff maps to char 00
  *)

  // 1 - fill the translation from windows to custom
  for b := 0 to 255 do
    TransTable[cctFromAnsi, b] := Char(255-b);

  // 2 - fill the translation from custom to windows
  for b := 0 to 255 do
    TransTable[cctToAnsi, b] := Char(255-b);

  // 3 - set this as the custom translation table
  MPHCustomCharConv := TransTable;

  // 4 - use the custom table
  MPHexEditor1.Translation := tkCustom;
end;

end.

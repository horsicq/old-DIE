unit Unit1;
{$INCLUDE MPDELVER.INC}


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, MPHexEditor, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    MPHexEditor1: TMPHexEditor;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure ODEveryOtherByte(Sender: TObject; ACanvas: TCanvas; ACol,
      ARow: Integer; var AWideText: WideString; ARect: TRect;
      var ADefaultDraw: Boolean);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ODMarkZeroes(Sender: TObject; ACanvas: TCanvas; ACol,
      ARow: Integer; var AWideText: WideString; ARect: TRect;
      var ADefaultDraw: Boolean);
    procedure ODColumns(Sender: TObject; ACanvas: TCanvas; ACol,
      ARow: Integer; var AWideText: WideString; ARect: TRect;
      var ADefaultDraw: Boolean);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$IFNDEF DELPHI6UP}
const
  clMoneyGreen = TColor($C0DCC0);
  clSkyBlue = TColor($F0CAA6);
  clCream = TColor($F0FBFF);
{$ENDIF}

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  with OpenDialog1 do
    if Execute then
      MPHexEditor1.LoadFromFile(FileName);
end;

procedure TForm1.ODColumns(Sender: TObject; ACanvas: TCanvas; ACol,
  ARow: Integer; var AWideText: WideString; ARect: TRect;
  var ADefaultDraw: Boolean);
var
  LIntCurPos: Integer;
  LColor: TColor;
begin
  // paint even/odd columns using different background colors (only in the hex pane)
  with MPHexEditor1, ACanvas do
  begin
    LIntCurPos := PositionAtCursor[ACol, ARow];
    // skip ruler cols/rows
    if (ACol > 0) and (ARow > 0) and (not IsCharFieldCol[ACol]) then
    begin
      if ((LIntCurPos div BytesPerColumn) mod 2) = 0 then
        LColor := clCream
      else
        LColor := clSkyBlue;
      if IsSelected(LIntCurPos) then
        LColor := TColor(ColorToRGB(LColor) xor $00FFFFFF);
      Brush.Color := LColor;
      SetBKColor(Handle, ColorToRGB(LColor));
    end;
  end;
end;

procedure TForm1.ODEveryOtherByte(Sender: TObject; ACanvas: TCanvas;
  ACol, ARow: Integer; var AWideText: WideString; ARect: TRect;
  var ADefaultDraw: Boolean);
var
  LIntCurPos: Integer;
begin
  // paint every other byte using a different background color
  with MPHexEditor1, ACanvas do
  begin
    LIntCurPos := PositionAtCursor[ACol, ARow];
    // skip ruler cols/rows
    if (ACol > 0) and (ARow > 0) and ((LIntCurPos mod 2) = 1) then
    begin
      if IsSelected(LIntCurPos) then
      begin
       // selected
       (* SetBKColor is used rather than Brush.Color to avoid painting the whole cell,
          only the background of the character to be drawn is painted *)
       SetBKColor(Handle, ColorToRGB(clBlack));
       Font.Color := clMoneyGreen;
      end
      else
        // not selected
       SetBKColor(Handle, ColorToRGB(clMoneyGreen));
    end;
  end;
end;

procedure TForm1.ODMarkZeroes(Sender: TObject; ACanvas: TCanvas; ACol,
  ARow: Integer; var AWideText: WideString; ARect: TRect;
  var ADefaultDraw: Boolean);
var
  LIntCurPos: Integer;
begin
  // paint 'zero' bytes using a different background color
  with MPHexEditor1, ACanvas do
  begin
    LIntCurPos := PositionAtCursor[ACol, ARow];
    // skip ruler cols/rows and positions beyond the files size
    if (ACol > 0) and (ARow > 0) and (LIntCurPos < DataSize) and (Data[LIntCurPos] = 0)
      then
    begin
      if IsSelected(LIntCurPos) then
      begin
       // selected
       (* SetBKColor is used rather than Brush.Color to avoid painting the whole cell,
          only the background of the character to be drawn is painted *)
       SetBKColor(Handle, ColorToRGB(clYellow));
       Font.Color := clMaroon;
      end
      else
      begin
        // not selected
       SetBKColor(Handle, ColorToRGB(clMaroon));
       Font.Color := clYellow;
      end;
    end;
  end;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  MPHexEditor1.OnDrawCell := ODEveryOtherByte;
  MPHexEditor1.Invalidate;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  MPHexEditor1.OnDrawCell := ODMarkZeroes;
  MPHexEditor1.Invalidate;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  MPHexEditor1.OnDrawCell := ODColumns;
  MPHexEditor1.Invalidate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // make sure that MYGRID is not defined in mphexeditor.pas
  Assert(MPHexEditor1 is TCustomGrid);
end;

end.

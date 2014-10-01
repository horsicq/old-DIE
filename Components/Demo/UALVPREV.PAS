unit ualvprev;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, advlistv;

type
  TPreview = class(TForm)
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
  private
    listv:tadvlistview;
    { Private declarations }
  public
    { Public declarations }
    property Listview:TAdvListview read listv write listv;
  end;

var
  Preview: TPreview;

implementation

{$R *.DFM}


procedure TPreview.PaintBox1Paint(Sender: TObject);
begin
  listv.preview(paintbox1.canvas,clientrect);
end;

end.

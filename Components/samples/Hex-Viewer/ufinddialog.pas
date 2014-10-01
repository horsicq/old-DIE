unit ufinddialog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TdlgFind = class(TForm)
    Label1: TLabel;
    edSearch: TEdit;
    cbHex: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    cbIgnoreCase: TCheckBox;
    procedure edSearchChange(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  dlgFind: TdlgFind;

implementation

{$R *.dfm}

procedure TdlgFind.edSearchChange(Sender: TObject);
begin
  Button1.Enabled := edSearch.Text <> '';
end;

end.

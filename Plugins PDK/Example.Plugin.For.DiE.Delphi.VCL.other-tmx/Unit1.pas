unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, myPEFile;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ListBox1: TListBox;
    Label20: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  file_n: pchar;
  die_n: pchar;
  file_size: dword;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
 i,n:integer;
begin
 Label2.Caption:=file_n;
 label4.Caption:=die_n;
 label6.Caption:=floattostr(file_size)+' bytes';

 if file_n <> '' then
 begin

 label8.Caption:=GetImageBase(file_n);
 label11.Caption:=GetEPrva(file_n);
 label13.Caption:=GetSecNumb(file_n);
 label15.Caption:=GetLinkerVer(file_n);
 label17.Caption:=GetOEP(file_n);
 label19.Caption:=GetEPoffset(file_n);

 i:=StrToInt(GetSecNumb(file_n));

 for n:=1 to i do
  begin
    listbox1.Items.Add(
    'Name: '+GetSecName(file_n,n)+
    ' VSize: '+GetSecVSize(file_n,n)+
    ' VOffs: '+GetSecVOffs(file_n,n)+
    ' PSize: '+GetSecPSize(file_n,n)+
    ' POffs: '+GetSecPOffs(file_n,n)+
    ' Chract: '+GetSecCharact(file_n,n)
    );
  end;

  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 close;
end;

end.

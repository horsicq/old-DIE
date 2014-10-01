program custtrans;

uses
  Forms,
  ct1 in 'ct1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

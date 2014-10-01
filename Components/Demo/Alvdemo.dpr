program alvdemo;

uses
  Forms,
  ualvdemo in 'ualvdemo.pas' {Form1},
  ualvprev in 'ualvprev.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

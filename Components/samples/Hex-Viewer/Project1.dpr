program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {fmHexViewer},
  uprinting in 'uprinting.pas' {fmPrinting},
  uprintprogress in 'uprintprogress.pas' {dlgPrintProgress},
  ufinddialog in 'ufinddialog.pas' {dlgFind};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfmHexViewer, fmHexViewer);
  Application.Run;
end.

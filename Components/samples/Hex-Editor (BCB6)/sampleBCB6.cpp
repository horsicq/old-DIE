//---------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------
USEFORM("s6main.cpp", fmMain);
USEFORMNS("uprinting.pas", Uprinting, fmPrinting);
USEFORMNS("uprintprogress.pas", Uprintprogress, dlgPrintProgress);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
	Application->Initialize();
	Application->Title = "very little hexer";
                 Application->CreateForm(__classid(TfmMain), &fmMain);
                 Application->CreateForm(__classid(TfmPrinting), &fmPrinting);
                 Application->CreateForm(__classid(TdlgPrintProgress), &dlgPrintProgress);
                 Application->CreateForm(__classid(TfmPrinting), &fmPrinting);
                 Application->CreateForm(__classid(TdlgPrintProgress), &dlgPrintProgress);
                 Application->Run();

	return 0;
}
//---------------------------------------------------------------------

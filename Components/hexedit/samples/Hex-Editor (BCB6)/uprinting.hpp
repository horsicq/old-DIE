// Borland C++ Builder
// Copyright (c) 1995, 2002 by Borland Software Corporation
// All rights reserved

// (DO NOT EDIT: machine generated header) 'uprinting.pas' rev: 6.00

#ifndef uprintingHPP
#define uprintingHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <ComCtrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <ActnList.hpp>	// Pascal unit
#include <MPHexEditorEx.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Uprinting
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfmPrinting;
class PASCALIMPLEMENTATION TfmPrinting : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Extctrls::TPanel* Panel1;
	Extctrls::TPanel* Panel3;
	Stdctrls::TGroupBox* GroupBox1;
	Stdctrls::TRadioButton* rbPrintAllPages;
	Stdctrls::TRadioButton* rbPrintCurrentPage;
	Stdctrls::TRadioButton* rbPrintSelection;
	Stdctrls::TGroupBox* GroupBox2;
	Stdctrls::TEdit* edMarginTop;
	Stdctrls::TEdit* edMarginLeft;
	Stdctrls::TEdit* edMarginRight;
	Stdctrls::TEdit* edMarginBottom;
	Buttons::TBitBtn* btnSetup;
	Stdctrls::TCheckBox* cbColors;
	Stdctrls::TCheckBox* cbBack;
	Stdctrls::TCheckBox* cbSelBold;
	Stdctrls::TEdit* edPage;
	Comctrls::TUpDown* udPage;
	Stdctrls::TLabel* Label1;
	Stdctrls::TLabel* lbPageNum;
	Stdctrls::TButton* Button1;
	Stdctrls::TButton* Button2;
	Dialogs::TFontDialog* FontDialog1;
	Forms::TScrollBox* sbPreview;
	Extctrls::TImage* imgPreview;
	Stdctrls::TLabel* Label2;
	Stdctrls::TEdit* edZoom;
	Comctrls::TUpDown* udZoom;
	Stdctrls::TButton* Button3;
	Stdctrls::TLabel* Label3;
	Stdctrls::TEdit* edPageHeader;
	Stdctrls::TLabel* Label4;
	Stdctrls::TEdit* edPageFooter;
	Stdctrls::TRadioButton* rbPrintCurrentView;
	Dialogs::TPrinterSetupDialog* dlgSetupPrinter;
	void __fastcall Button2Click(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall FormDestroy(System::TObject* Sender);
	void __fastcall sbPreviewResize(System::TObject* Sender);
	void __fastcall Button3Click(System::TObject* Sender);
	void __fastcall cbSelBoldClick(System::TObject* Sender);
	void __fastcall cbBackClick(System::TObject* Sender);
	void __fastcall cbColorsClick(System::TObject* Sender);
	void __fastcall udPageClick(System::TObject* Sender, Comctrls::TUDBtnType Button);
	void __fastcall rbPrintSelectionClick(System::TObject* Sender);
	void __fastcall udZoomClick(System::TObject* Sender, Comctrls::TUDBtnType Button);
	void __fastcall edPageHeaderChange(System::TObject* Sender);
	void __fastcall edMarginTopChange(System::TObject* Sender);
	void __fastcall Button1Click(System::TObject* Sender);
	void __fastcall btnSetupClick(System::TObject* Sender);
	
private:
	Mphexeditorex::TMPHexEditorEx* FEditor;
	Graphics::TMetafile* FMeta;
	bool FSetting;
	void __fastcall SetControls(void);
	void __fastcall SetImageBounds(void);
	void __fastcall CreatePreview(void);
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TfmPrinting(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TfmPrinting(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TfmPrinting(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfmPrinting(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TfmPrinting* fmPrinting;
extern PACKAGE void __fastcall PrintPreview(Mphexeditorex::TMPHexEditorEx* Editor);

}	/* namespace Uprinting */
using namespace Uprinting;
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// uprinting

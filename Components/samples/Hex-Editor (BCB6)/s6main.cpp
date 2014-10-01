//---------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "s6main.h"
#include "uprinting.hpp"
//---------------------------------------------------------------------
#pragma link "MPHexEditor"
#pragma link "MPHexEditorEx"
#pragma resource "*.dfm"
TfmMain *fmMain;
//---------------------------------------------------------------------
__fastcall TfmMain::TfmMain(TComponent *AOwner)
	: TForm(AOwner)
{
}
//---------------------------------------------------------------------

void __fastcall TfmMain::FileNew1Execute(TObject *Sender)
{
  // Keine Aktion notwendig
  MPHexEditorEx1->CreateEmptyFile("");
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::FileOpen1Execute(TObject *Sender)
{
  if (OpenDialog->Execute()) {
    MPHexEditorEx1->LoadFromFile(OpenDialog->FileName);
  };
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::FileSaveAs1Execute(TObject *Sender)
{
  if (SaveDialog->Execute()) {
    MPHexEditorEx1->SaveToFile(SaveDialog->FileName);
  }
}
//---------------------------------------------------------------------------


void __fastcall TfmMain::FileExit1Execute(TObject *Sender)
{
  Close();        
}
//---------------------------------------------------------------------------


void __fastcall TfmMain::FileSave1Update(TObject *Sender)
{
  FileSave1->Enabled = MPHexEditorEx1->HasFile && MPHexEditorEx1->Modified;
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::FileSaveAs1Update(TObject *Sender)
{
  FileSaveAs1->Enabled = (MPHexEditorEx1->DataSize > 0);
}
//---------------------------------------------------------------------------


void __fastcall TfmMain::FileSave1Execute(TObject *Sender)
{
  MPHexEditorEx1->Save();        
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditCut1Update(TObject *Sender)
{
  EditCut1->Enabled = MPHexEditorEx1->CanCut();
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditCopy1Update(TObject *Sender)
{
  EditCopy1->Enabled = MPHexEditorEx1->CanCopy();
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditPaste1Update(TObject *Sender)
{
  EditPaste1->Enabled = MPHexEditorEx1->CanPaste();
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditCut1Execute(TObject *Sender)
{
  MPHexEditorEx1->CBCut();
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditCopy1Execute(TObject *Sender)
{
  MPHexEditorEx1->CBCopy();
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditPaste1Execute(TObject *Sender)
{
  MPHexEditorEx1->CBPaste();
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditUndo1Update(TObject *Sender)
{
  EditUndo1->Enabled = MPHexEditorEx1->CanUndo;
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditRedo1Update(TObject *Sender)
{
  EditRedo1->Enabled = MPHexEditorEx1->CanRedo;
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditUndo1Execute(TObject *Sender)
{
  MPHexEditorEx1->Undo();        
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::EditRedo1Execute(TObject *Sender)
{
  MPHexEditorEx1->Redo();        
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::FilePrint1Update(TObject *Sender)
{
  FilePrint1->Enabled = MPHexEditorEx1->DataSize;
}
//---------------------------------------------------------------------------

void __fastcall TfmMain::FilePrint1Execute(TObject *Sender)
{
  PrintPreview(MPHexEditorEx1);
}
//---------------------------------------------------------------------------


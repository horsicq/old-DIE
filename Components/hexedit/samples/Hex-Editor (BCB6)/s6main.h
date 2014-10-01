//----------------------------------------------------------------------------
#ifndef s6mainH
#define s6mainH
//----------------------------------------------------------------------------
#include <vcl\ComCtrls.hpp>
#include <vcl\ExtCtrls.hpp>
#include <vcl\Buttons.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Dialogs.hpp>
#include <vcl\Menus.hpp>
#include <vcl\Controls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\Graphics.hpp>
#include <vcl\Classes.hpp>
#include <vcl\Windows.hpp>
#include <vcl\System.hpp>
#include <ActnList.hpp>
#include <ImgList.hpp>
#include <StdActns.hpp>
#include <ToolWin.hpp>
#include "MPHexEditor.hpp"
#include "MPHexEditorEx.hpp"
#include <Grids.hpp>
//----------------------------------------------------------------------------
class TfmMain : public TForm
{
__published:
    TOpenDialog *OpenDialog;
    TSaveDialog *SaveDialog;
    TToolBar *ToolBar1;
    TToolButton *ToolButton9;
    TToolButton *ToolButton1;
    TToolButton *ToolButton2;
    TToolButton *ToolButton3;
    TToolButton *ToolButton4;
    TToolButton *ToolButton5;
    TToolButton *ToolButton6;
    TActionList *ActionList1;
    TAction *FileNew1;
    TAction *FileOpen1;
    TAction *FileSave1;
    TAction *FileSaveAs1;
    TAction *FileExit1;
        TAction *EditCut1;
        TAction *EditCopy1;
        TAction *EditPaste1;
    TStatusBar *StatusBar;
    TImageList *ImageList1;
    TMainMenu *MainMenu1;
    TMenuItem *File1;
    TMenuItem *FileNewItem;
    TMenuItem *FileOpenItem;
    TMenuItem *FileSaveItem;
    TMenuItem *FileSaveAsItem;
    TMenuItem *N1;
    TMenuItem *FileExitItem;
    TMenuItem *Edit1;
    TMenuItem *CutItem;
    TMenuItem *CopyItem;
    TMenuItem *PasteItem;
        TMPHexEditorEx *MPHexEditorEx1;
        TAction *EditUndo1;
        TAction *EditRedo1;
        TMenuItem *N2;
        TMenuItem *Undo1;
        TMenuItem *Redo1;
        TToolButton *ToolButton7;
        TAction *FilePrint1;
        TToolButton *ToolButton8;
        TToolButton *ToolButton10;
        TMenuItem *N3;
        TMenuItem *Print1;void __fastcall FileNew1Execute(TObject *Sender);
        void __fastcall FileOpen1Execute(TObject *Sender);
        void __fastcall FileSaveAs1Execute(TObject *Sender);
        void __fastcall FileExit1Execute(TObject *Sender);
        void __fastcall FileSave1Update(TObject *Sender);
        void __fastcall FileSaveAs1Update(TObject *Sender);
        void __fastcall FileSave1Execute(TObject *Sender);
        void __fastcall EditCut1Update(TObject *Sender);
        void __fastcall EditCopy1Update(TObject *Sender);
        void __fastcall EditPaste1Update(TObject *Sender);
        void __fastcall EditCut1Execute(TObject *Sender);
        void __fastcall EditCopy1Execute(TObject *Sender);
        void __fastcall EditPaste1Execute(TObject *Sender);
        void __fastcall EditUndo1Update(TObject *Sender);
        void __fastcall EditRedo1Update(TObject *Sender);
        void __fastcall EditUndo1Execute(TObject *Sender);
        void __fastcall EditRedo1Execute(TObject *Sender);
        void __fastcall FilePrint1Update(TObject *Sender);
        void __fastcall FilePrint1Execute(TObject *Sender);
private:
public:
    virtual __fastcall TfmMain(TComponent *AOwner);
};
//----------------------------------------------------------------------------
extern TfmMain *fmMain;
//----------------------------------------------------------------------------
#endif

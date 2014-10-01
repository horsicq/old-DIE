{
 * ***** BEGIN LICENSE BLOCK *****
 * 
 * Version: MPL 1.1
 * 
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with the
 * License. You may obtain a copy of the License at http://www.mozilla.org/MPL/
 * 
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 * 
 * The Original Code is Drop Files Components Demo.
 * 
 * The Initial Developer of the Original Code is Peter Johnson
 * (http://www.delphidabbler.com/).
 * 
 * Portions created by the Initial Developer are Copyright (C) 1997-2004 Peter
 * Johnson. All Rights Reserved.
 * 
 * Contributor(s):
 * 
 * ***** END LICENSE BLOCK *****
}


unit FmDropFilesDemo;

interface

uses
  Forms, Controls, ComCtrls, StdCtrls, Classes, ExtCtrls, ImgList,

  PJDropFiles;

type
  TDropFilesDemoForm = class(TForm)
    dfForm: TPJFormDropFiles;
    pnlSideBar: TPanel;
    chkFormIncFolders: TCheckBox;
    chkFormIncFiles: TCheckBox;
    chkFormRecurseFolders: TCheckBox;
    lblFormHeading: TLabel;
    ilMain: TImageList;
    btnClose: TButton;
    lblFormDropCtrl: TLabel;
    lblFormDropPointDesc: TLabel;
    lblFormDropCtrlDesc: TLabel;
    pnlBody: TPanel;
    lvForm: TListView;
    pnlArea: TPanel;
    dfArea: TPJDropFiles;
    lblAreaDropPointDesc: TLabel;
    lblAreaDropPoint: TLabel;
    lblAreaDropCtrlDesc: TLabel;
    lblAreaDropCtrl: TLabel;
    lblFormDropPoint: TLabel;
    pnlAreaOptions: TPanel;
    chkAreaIncFolders: TCheckBox;
    chkAreaIncFiles: TCheckBox;
    chkAreaRecurseFolders: TCheckBox;
    chkAreaPassThru: TCheckBox;
    lvArea: TListView;
    lblAreaHeading: TLabel;       
    sbInstructions: TScrollBox;
    lblDesc1: TLabel;
    lblInstructions: TLabel;
    lblDesc2: TLabel;
    lblDesc3: TLabel;
    lblDesc4: TLabel;
    lblDesc5: TLabel;
    lblExtFilter: TLabel;
    edExtFilter: TEdit;
    lblDesc6: TLabel;
    fltExt: TPJExtFileFilter;
    fltWild: TPJWildCardFileFilter;
    lblWildCard: TLabel;
    edWildcardFilter: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure dfFormDropFiles(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCheckBoxClick(Sender: TObject);
    procedure dfAreaDropFiles(Sender: TObject);
    procedure AreaCheckBoxClick(Sender: TObject);
    procedure chkAreaPassThruClick(Sender: TObject);
    procedure edWildcardFilterChange(Sender: TObject);
    procedure edExtFilterChange(Sender: TObject);
  private
    procedure UpdateFormOptions;
    procedure UpdateAreaOptions;
  end;

var
  DropFilesDemoForm: TDropFilesDemoForm;

implementation

uses
  SysUtils;

{$R *.DFM}

{ TDropFilesDemoForm }

procedure TDropFilesDemoForm.AreaCheckBoxClick(Sender: TObject);
begin
  UpdateAreaOptions;
end;

procedure TDropFilesDemoForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TDropFilesDemoForm.chkAreaPassThruClick(Sender: TObject);
begin
  dfArea.PassThrough := chkAreaPassThru.Checked;
end;

procedure TDropFilesDemoForm.dfAreaDropFiles(Sender: TObject);
var
  Idx: Integer;
  Item: TListItem;
const
  cImgIdx: array[Boolean, Boolean] of Integer = ((3, 2), (1, 0));
begin
  lblAreaDropPoint.Caption := Format(
    '(%d,%d)', [dfArea.DropPoint.X, dfArea.DropPoint.Y]
  );
  if dfArea.DropControl <> nil then
    lblAreaDropCtrl.Caption := dfArea.DropControl.Name
  else
    lblAreaDropCtrl.Caption := 'NIL';
  lvArea.Items.BeginUpdate;
  try
    lvArea.Items.Clear;
    for Idx := 0 to Pred(dfArea.Count) do
    begin
      Item := lvArea.Items.Add;
      Item.Caption := dfArea.Files[Idx];
      Item.ImageIndex := cImgIdx[dfArea.IsFolder[Idx], Idx <> 0];
    end;
  finally
    lvArea.Items.EndUpdate;
  end;
end;

procedure TDropFilesDemoForm.dfFormDropFiles(Sender: TObject);
var
  Idx: Integer;
  Item: TListItem;
const
  cImgIdx: array[Boolean, Boolean] of Integer = ((3, 2), (1, 0));
begin
  if dfForm.DropControl <> nil then
    lblFormDropCtrl.Caption := dfForm.DropControl.Name
  else
    lblFormDropCtrl.Caption := 'NIL';
  lblFormDropPoint.Caption := Format(
    '(%d, %d)',
    [dfForm.DropPoint.X, dfForm.DropPoint.Y]
  );
  lvForm.Items.BeginUpdate;
  try
    lvForm.Items.Clear;
    for Idx := 0 to Pred(dfForm.Count) do
    begin
      Item := lvForm.Items.Add;
      Item.Caption := dfForm.Files[Idx];
      Item.ImageIndex := cImgIdx[dfForm.IsFolder[Idx], Idx <> 0];
    end;
  finally
    lvForm.Items.EndUpdate;
  end;
end;

procedure TDropFilesDemoForm.edExtFilterChange(Sender: TObject);
begin
  fltExt.Extensions := edExtFilter.Text;
end;

procedure TDropFilesDemoForm.edWildcardFilterChange(Sender: TObject);
begin
  fltWild.WildCard := edWildcardFilter.Text;
end;

procedure TDropFilesDemoForm.FormCheckBoxClick(Sender: TObject);
begin
  UpdateFormOptions;
end;

procedure TDropFilesDemoForm.FormCreate(Sender: TObject);
begin
  Application.HintHidePause := 10000;
  chkFormIncFolders.Tag := Ord(dfoIncFolders);
  chkAreaIncFolders.Tag := Ord(dfoIncFolders);
  chkFormIncFiles.Tag := Ord(dfoIncFiles);
  chkAreaIncFiles.Tag := Ord(dfoIncFiles);
  chkFormRecurseFolders.Tag := Ord(dfoRecurseFolders);
  chkAreaRecurseFolders.Tag := Ord(dfoRecurseFolders);
  chkFormIncFolders.Checked := True;
  chkAreaIncFolders.Checked := True;
  chkFormIncFiles.Checked := True;
  chkAreaIncFiles.Checked := True;
  chkFormRecurseFolders.Checked := False;
  chkAreaRecurseFolders.Checked := False;
  chkAreaPassThru.Checked := False;
  edExtFilter.Text := fltExt.Extensions;
  edWildcardFilter.Text := fltWild.WildCard;
  UpdateFormOptions;
  UpdateAreaOptions;
end;

procedure TDropFilesDemoForm.UpdateAreaOptions;
var
  Idx: Integer;
  CB: TCheckBox;
  Opt: TPJDropFilesOption;
  Opts: TPJDropFilesOptions;
begin
  Opts := [];
  for Idx := 0 to Pred(pnlAreaOptions.ControlCount) do
  begin
    if pnlAreaOptions.Controls[Idx] is TCheckBox then
    begin
      CB := pnlAreaOptions.Controls[Idx] as TCheckBox;
      if CB.Checked and (CB.Tag <> -1) then
      begin
        Opt := TPJDropFilesOption(CB.Tag);
        Include(Opts, Opt);
      end;
    end;
  end;
  dfArea.Options := Opts;
  dfArea.PassThrough := chkAreaPassThru.Checked;
end;

procedure TDropFilesDemoForm.UpdateFormOptions;
var
  Idx: Integer;
  CB: TCheckBox;
  Opt: TPJDropFilesOption;
  Opts: TPJDropFilesOptions;
begin
  Opts := [];
  for Idx := 0 to Pred(pnlSideBar.ControlCount) do
  begin
    if pnlSideBar.Controls[Idx] is TCheckBox then
    begin
      CB := pnlSideBar.Controls[Idx] as TCheckBox;
      if CB.Checked then
      begin
        Opt := TPJDropFilesOption(CB.Tag);
        Include(Opts, Opt);
      end;
    end;
  end;
  dfForm.Options := Opts;
end;

end.

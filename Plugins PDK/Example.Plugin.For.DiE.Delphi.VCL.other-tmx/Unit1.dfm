object Form1: TForm1
  Left = 255
  Top = 166
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Example Plugin for DiE (Delphi)'
  ClientHeight = 422
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 45
    Height = 13
    Caption = 'Filename:'
  end
  object Label2: TLabel
    Left = 8
    Top = 24
    Width = 45
    Height = 13
    Caption = 'file_name'
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 65
    Height = 13
    Caption = 'DiE Filename:'
  end
  object Label4: TLabel
    Left = 8
    Top = 64
    Width = 46
    Height = 13
    Caption = 'die_name'
  end
  object Label5: TLabel
    Left = 8
    Top = 88
    Width = 99
    Height = 13
    Caption = 'Size of Selected File:'
  end
  object Label6: TLabel
    Left = 8
    Top = 104
    Width = 37
    Height = 13
    Caption = 'file_size'
  end
  object Label7: TLabel
    Left = 8
    Top = 152
    Width = 59
    Height = 13
    Caption = 'Image Base:'
  end
  object Label8: TLabel
    Left = 8
    Top = 168
    Width = 32
    Height = 13
    Caption = 'Label8'
  end
  object Label9: TLabel
    Left = 8
    Top = 128
    Width = 148
    Height = 13
    Caption = '[ myPEFile Module Information ]'
  end
  object Label10: TLabel
    Left = 8
    Top = 192
    Width = 85
    Height = 13
    Caption = 'Entry Point (RVA):'
  end
  object Label11: TLabel
    Left = 8
    Top = 208
    Width = 38
    Height = 13
    Caption = 'Label11'
  end
  object Label12: TLabel
    Left = 8
    Top = 232
    Width = 44
    Height = 13
    Caption = 'Sections:'
  end
  object Label13: TLabel
    Left = 8
    Top = 248
    Width = 38
    Height = 13
    Caption = 'Label13'
  end
  object Label14: TLabel
    Left = 136
    Top = 152
    Width = 70
    Height = 13
    Caption = 'Linker Version:'
  end
  object Label15: TLabel
    Left = 136
    Top = 168
    Width = 38
    Height = 13
    Caption = 'Label15'
  end
  object Label16: TLabel
    Left = 136
    Top = 192
    Width = 25
    Height = 13
    Caption = 'OEP:'
  end
  object Label17: TLabel
    Left = 136
    Top = 208
    Width = 38
    Height = 13
    Caption = 'Label17'
  end
  object Label18: TLabel
    Left = 136
    Top = 232
    Width = 85
    Height = 13
    Caption = 'Entry Point Offset:'
  end
  object Label19: TLabel
    Left = 136
    Top = 248
    Width = 38
    Height = 13
    Caption = 'Label19'
  end
  object Label20: TLabel
    Left = 8
    Top = 272
    Width = 39
    Height = 13
    Caption = 'Section:'
  end
  object Button1: TButton
    Left = 264
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 288
    Width = 329
    Height = 97
    ItemHeight = 13
    TabOrder = 1
  end
end

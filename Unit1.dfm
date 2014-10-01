object DiEfrm: TDiEfrm
  Left = 267
  Top = 105
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Detect it Easy 0.65'
  ClientHeight = 257
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel5: TBevel
    Left = 13
    Top = 112
    Width = 60
    Height = 18
    Style = bsRaised
  end
  object Label2: TLabel
    Left = 17
    Top = 114
    Width = 36
    Height = 13
    Caption = 'Packer:'
  end
  object Label11: TLabel
    Left = 17
    Top = 49
    Width = 48
    Height = 13
    AutoSize = False
    Caption = 'Bits:'
  end
  object Bevel13: TBevel
    Left = 13
    Top = 47
    Width = 60
    Height = 18
    Style = bsRaised
  end
  object Label13: TLabel
    Left = 20
    Top = 21
    Width = 48
    Height = 13
    AutoSize = False
    Caption = 'Status:'
  end
  object Bevel16: TBevel
    Left = 16
    Top = 19
    Width = 60
    Height = 18
    Style = bsRaised
  end
  object Bevel24: TBevel
    Left = 5
    Top = 39
    Width = 20
    Height = 18
    Style = bsRaised
  end
  object Label17: TLabel
    Left = 9
    Top = 41
    Width = 12
    Height = 13
    Caption = '16'
  end
  object Bevel28: TBevel
    Left = 285
    Top = 19
    Width = 20
    Height = 18
    Style = bsRaised
  end
  object Label21: TLabel
    Left = 289
    Top = 21
    Width = 12
    Height = 13
    Caption = '16'
  end
  object Label24: TLabel
    Left = 25
    Top = 65
    Width = 56
    Height = 13
    Caption = 'Plugin info: '
  end
  object Bevel32: TBevel
    Left = 21
    Top = 63
    Width = 65
    Height = 18
    Shape = bsFrame
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 493
    Height = 257
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = ' Scan'
      object Bevel4: TBevel
        Left = 21
        Top = 182
        Width = 60
        Height = 18
        Shape = bsFrame
      end
      object Bevel1: TBevel
        Left = 5
        Top = 8
        Width = 60
        Height = 18
        Shape = bsFrame
      end
      object Bevel2: TBevel
        Left = 320
        Top = 8
        Width = 36
        Height = 18
        Shape = bsFrame
      end
      object Bevel3: TBevel
        Left = 5
        Top = 208
        Width = 44
        Height = 18
        Shape = bsFrame
      end
      object file_info: TLabel
        Left = 9
        Top = 210
        Width = 34
        Height = 13
        Caption = 'status:'
      end
      object file_name: TLabel
        Left = 9
        Top = 10
        Width = 48
        Height = 13
        AutoSize = False
        Caption = 'File name:'
      end
      object file_size: TLabel
        Left = 326
        Top = 10
        Width = 23
        Height = 13
        Caption = 'Size:'
      end
      object Bevel6: TBevel
        Left = 21
        Top = 157
        Width = 60
        Height = 18
        Shape = bsFrame
      end
      object Label3: TLabel
        Left = 25
        Top = 159
        Width = 45
        Height = 13
        Caption = 'Compiler:'
      end
      object Label1: TLabel
        Left = 25
        Top = 184
        Width = 45
        Height = 13
        Caption = 'Heuristic:'
      end
      object Label4: TLabel
        Left = 74
        Top = 136
        Width = 54
        Height = 13
        Caption = '[Detecting]'
      end
      object Bevel20: TBevel
        Left = 136
        Top = 143
        Width = 345
        Height = 8
        Shape = bsTopLine
      end
      object Bevel21: TBevel
        Left = 0
        Top = 143
        Width = 65
        Height = 8
        Shape = bsTopLine
      end
      object Image2: TImage
        Left = 400
        Top = 152
        Width = 32
        Height = 32
        ParentShowHint = False
        Picture.Data = {
          055449636F6E0000010001002020000001000800A80800001600000028000000
          2000000040000000010008000000000000000000000000000000000000010000
          0000000000000000FFFFFF00898A8900757B78007B7D7C00828D88007FAF9A00
          7AA894005F83730082B29D0081B19C007CAA960077A3900069907F0048635700
          7AA7930079A5920078A4910076A18E006B9281005D7F70007797890071887E00
          82B39E006A92810057786A00567769004762570084B5A00083B49F0081B19D00
          80B09C007EAD99007DAC98007CAA9700739E8C006E9786006C948300668C7C00
          658B7B0058796B004863580080AF9B00729C8A0070998800698F7F00678D7D00
          506D61004C685C00596E650069777100626E690067736E005F6965007C7E7E00
          EEEEEE00DDDDDD00CCCCCC00BCBCBC00ABABAB009A9A9A00FFFFFF0000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000001B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
          1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
          1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
          1B1B1B1B1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
          1C1C1C1C1C1C1C1D1D1D1D1D1D1D1D1C1C1C1D1D1D1D1D1C1C1D1D1D1D1D1D1D
          1D1C1C1C1C1D1D090A0A0A0A0A0A1E091D1D090A0A0A1E17171E0A0A0A0A0A0A
          091D1C1C1C172A0B0C0C0C0C0C0C10222A0A0B0C0C0C0F21210F0C0C0C0C0C0C
          0B1F1D1C1D2A0C272929292929292F2E0C0B25292929192C2C19292929292929
          0D0F0A1D1D2025360101010101013804140C290101013A28283A010101010101
          32232A1D1D2025360101010101010101042D290101013A28283A010101010101
          32232A1D1D2025360101013A390101013A28290101013A28283A010101010101
          32232A1D1D20253601010104330101013A28290101013A28283A010101350E29
          0D0F0A1D1D20253601010136320101013A28290101013A28283A01010132230C
          0B1F1D1C1D20253601010136320101013A28290101013A28283A01010134182B
          0F1F1D1C1D20253601010136320101013A28290101013A28283A0101013C3605
          1321171C1D20253601010136320101013A28290101013A28283A01010101013A
          2807091C1D20253601010136320101013A28290101013A28283A01010101013A
          2807091C1D20253601010136320101013A28290101013A28283A0101013C3605
          1321171C1D20253601010136320101013A28290101013A28283A01010134182B
          0F1F1D1C1D20253601010136340101013A28290101013A28283A010101331A28
          2C21171C1D2025360101013C3C0101013B14273636360513283A010101393A3A
          190F1E1D1D20253601010101010101010325193A3A3A0227283A010101010101
          290C0A1D1D2025360101010101013704080C290101013A28283A010101010101
          290C0A1D1D2A0C1532323232323130260C0B0D32323216242416323232323232
          0D0B091D1C17060F232323232312110B2A1F0F23232311222211232323232323
          0F1F1D1C1C1D1D0A2A2A2A2A2A1F0A091D1D0A2A2A2A0A09090A2A2A2A2A2A2A
          0A1D1C1C1C1C1C1D1D1D1D1D1D1D1D1C1C1C1D1D1D1D1D1C1C1D1D1D1D1D1D1D
          1D1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
          1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
          1C1C1C1C1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
          1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
          1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
          1B1B1B1B00000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000}
        ShowHint = False
      end
      object Button1: TButton
        Left = 420
        Top = 208
        Width = 57
        Height = 18
        Caption = 'Open PE'
        TabOrder = 0
        OnClick = Button1Click
      end
      object _Name: TStaticText
        Left = 72
        Top = 8
        Width = 233
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        OnDblClick = copy_to_clipboar
      end
      object _Size: TStaticText
        Left = 364
        Top = 8
        Width = 101
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        OnDblClick = copy_to_clipboar
      end
      object _Info: TStaticText
        Left = 56
        Top = 208
        Width = 337
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvSpace
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 3
        OnDblClick = copy_to_clipboar
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 32
        Width = 482
        Height = 97
        Caption = '[Header]'
        TabOrder = 4
        object _EntryPoint: TStaticText
          Left = 320
          Top = 18
          Width = 145
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          Caption = ' EntryPoint:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnDblClick = copy_to_clipboar
        end
        object _ImageBase: TStaticText
          Left = 176
          Top = 18
          Width = 129
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          Caption = ' ImageBase:'
          ParentBiDiMode = False
          TabOrder = 1
          OnDblClick = copy_to_clipboar
        end
        object _ImageSize: TStaticText
          Left = 176
          Top = 42
          Width = 129
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          Caption = ' ImageSize:'
          ParentBiDiMode = False
          TabOrder = 2
          OnDblClick = copy_to_clipboar
        end
        object _FileOffset: TStaticText
          Left = 320
          Top = 42
          Width = 145
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          Caption = ' FileOffset:'
          ParentBiDiMode = False
          TabOrder = 3
          OnDblClick = copy_to_clipboar
        end
        object _FirstBytes: TStaticText
          Left = 320
          Top = 66
          Width = 145
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          Caption = ' EpBytes:'
          ParentBiDiMode = False
          TabOrder = 4
          OnDblClick = copy_to_clipboar
        end
        object Button5: TButton
          Left = 248
          Top = 66
          Width = 57
          Height = 18
          Caption = 'DisAsm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button5Click
        end
        object _EPsection: TStaticText
          Left = 16
          Top = 66
          Width = 145
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          Caption = ' EpSection:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 6
          OnDblClick = copy_to_clipboar
        end
        object _Subsystem: TStaticText
          Left = 16
          Top = 18
          Width = 145
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          Caption = ' SubSystem:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 7
          OnDblClick = copy_to_clipboar
        end
        object _Linker: TStaticText
          Left = 16
          Top = 42
          Width = 145
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          Caption = ' LinkerInfo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 8
          OnDblClick = copy_to_clipboar
        end
      end
      object _Compiler: TStaticText
        Left = 96
        Top = 157
        Width = 281
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        ParentBiDiMode = False
        TabOrder = 5
        OnDblClick = copy_to_clipboar
      end
      object _Packer: TStaticText
        Left = 96
        Top = 182
        Width = 281
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        ParentBiDiMode = False
        TabOrder = 6
        OnDblClick = copy_to_clipboar
      end
      object StaticText1: TStaticText
        Left = 397
        Top = 185
        Width = 44
        Height = 17
        Caption = 'DiE 0.65'
        TabOrder = 7
      end
      object button_plug: TButton
        Left = 448
        Top = 182
        Width = 27
        Height = 18
        Caption = #187#187
        TabOrder = 8
        OnClick = button_plugClick
      end
      object _Type: TStaticText
        Left = 448
        Top = 157
        Width = 27
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 9
        OnDblClick = copy_to_clipboar
      end
      object btn2: TButton
        Left = 400
        Top = 208
        Width = 16
        Height = 18
        Caption = #171
        TabOrder = 10
        OnClick = btn2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' Entro'
      ImageIndex = 1
      object Bevel10: TBevel
        Left = 5
        Top = 208
        Width = 44
        Height = 18
        Shape = bsFrame
      end
      object Label8: TLabel
        Left = 9
        Top = 210
        Width = 34
        Height = 13
        Caption = 'status:'
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 185
        Height = 123
        Caption = ' [Entropy of file]'
        TabOrder = 0
        object Bevel7: TBevel
          Left = 13
          Top = 15
          Width = 60
          Height = 18
          Shape = bsFrame
        end
        object Bevel9: TBevel
          Left = 13
          Top = 65
          Width = 60
          Height = 18
          Shape = bsFrame
        end
        object Bevel8: TBevel
          Left = 13
          Top = 40
          Width = 60
          Height = 18
          Shape = bsFrame
        end
        object Label5: TLabel
          Left = 17
          Top = 17
          Width = 48
          Height = 13
          AutoSize = False
          Caption = 'Bytes:'
        end
        object Label6: TLabel
          Left = 17
          Top = 42
          Width = 48
          Height = 13
          AutoSize = False
          Caption = 'Bits:'
        end
        object Label7: TLabel
          Left = 17
          Top = 67
          Width = 48
          Height = 13
          AutoSize = False
          Caption = 'Entro bits:'
        end
        object _Entrobits: TStaticText
          Left = 80
          Top = 65
          Width = 89
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 0
          OnDblClick = copy_to_clipboar
        end
        object _Bits: TStaticText
          Left = 80
          Top = 40
          Width = 89
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 1
          OnDblClick = copy_to_clipboar
        end
        object _Bytes: TStaticText
          Left = 80
          Top = 15
          Width = 89
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 2
          OnDblClick = copy_to_clipboar
        end
        object _Entropy_Index: TStaticText
          Left = 16
          Top = 95
          Width = 153
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          Caption = ' Entropy Index:'
          ParentBiDiMode = False
          TabOrder = 3
          OnDblClick = copy_to_clipboar
        end
      end
      object _info2: TStaticText
        Left = 56
        Top = 208
        Width = 291
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvSpace
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        OnDblClick = copy_to_clipboar
      end
      object _entro_but: TButton
        Left = 420
        Top = 208
        Width = 57
        Height = 18
        Caption = 'Entropy'
        TabOrder = 2
        OnClick = _entro_butClick
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 128
        Width = 482
        Height = 73
        Caption = '[Hard scan]'
        TabOrder = 3
        object Bevel17: TBevel
          Left = 13
          Top = 43
          Width = 60
          Height = 18
          Shape = bsFrame
        end
        object Bevel14: TBevel
          Left = 13
          Top = 19
          Width = 60
          Height = 18
          Shape = bsFrame
        end
        object Label12: TLabel
          Left = 17
          Top = 21
          Width = 48
          Height = 13
          AutoSize = False
          Caption = 'Status:'
        end
        object Label14: TLabel
          Left = 17
          Top = 45
          Width = 48
          Height = 13
          AutoSize = False
          Caption = 'Detected:'
        end
        object Bevel26: TBevel
          Left = 304
          Top = 19
          Width = 44
          Height = 18
          Shape = bsFrame
        end
        object Label19: TLabel
          Left = 308
          Top = 21
          Width = 37
          Height = 13
          Caption = 'CRC32:'
        end
        object Bevel27: TBevel
          Left = 352
          Top = 19
          Width = 20
          Height = 18
          Shape = bsFrame
        end
        object Label20: TLabel
          Left = 356
          Top = 21
          Width = 12
          Height = 13
          Caption = '16'
        end
        object Bevel29: TBevel
          Left = 352
          Top = 43
          Width = 20
          Height = 18
          Shape = bsFrame
        end
        object Label22: TLabel
          Left = 356
          Top = 45
          Width = 12
          Height = 13
          Caption = '64'
        end
        object _Detected: TStaticText
          Left = 80
          Top = 43
          Width = 267
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 0
          OnDblClick = copy_to_clipboar
        end
        object _Entro: TStaticText
          Left = 80
          Top = 19
          Width = 217
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 1
          OnDblClick = copy_to_clipboar
        end
        object _Crc32_16: TStaticText
          Left = 376
          Top = 19
          Width = 73
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 2
          OnDblClick = copy_to_clipboar
        end
        object _Crc32_64: TStaticText
          Left = 376
          Top = 43
          Width = 73
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 3
          OnDblClick = copy_to_clipboar
        end
        object Button6: TButton
          Left = 454
          Top = 43
          Width = 18
          Height = 18
          Caption = '<'
          TabOrder = 4
          OnClick = Button6Click
        end
      end
      object GroupBox4: TGroupBox
        Left = 200
        Top = 0
        Width = 281
        Height = 123
        Caption = '[Hash]'
        TabOrder = 4
        object Bevel22: TBevel
          Left = 13
          Top = 15
          Width = 100
          Height = 18
          Shape = bsFrame
        end
        object Label15: TLabel
          Left = 17
          Top = 17
          Width = 92
          Height = 13
          Caption = 'MD5 (Digest Base):'
        end
        object Bevel23: TBevel
          Left = 13
          Top = 39
          Width = 20
          Height = 18
          Shape = bsFrame
        end
        object Label16: TLabel
          Left = 17
          Top = 41
          Width = 12
          Height = 13
          Caption = '16'
        end
        object Bevel25: TBevel
          Left = 13
          Top = 63
          Width = 20
          Height = 18
          Shape = bsFrame
        end
        object Label18: TLabel
          Left = 17
          Top = 65
          Width = 12
          Height = 13
          Caption = '64'
        end
        object Bevel31: TBevel
          Left = 28
          Top = 91
          Width = 227
          Height = 9
          Shape = bsTopLine
        end
        object _Md5_64: TStaticText
          Left = 46
          Top = 63
          Width = 202
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 0
          OnDblClick = copy_to_clipboar
        end
        object Button4: TButton
          Left = 253
          Top = 63
          Width = 18
          Height = 18
          Caption = '<'
          TabOrder = 1
          OnClick = Button4Click
        end
        object ProgressBar1: TProgressBar
          Left = 16
          Top = 104
          Width = 249
          Height = 10
          TabOrder = 2
        end
        object _Md5_16: TStaticText
          Left = 46
          Top = 39
          Width = 224
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 3
          OnDblClick = copy_to_clipboar
        end
      end
      object Button7: TButton
        Left = 355
        Top = 208
        Width = 57
        Height = 18
        Caption = 'Hard'
        TabOrder = 5
        OnClick = Button2Click
      end
    end
    object TabSheet8: TTabSheet
      Caption = ' Extra'
      ImageIndex = 7
      object _plugins: TGroupBox
        Left = 0
        Top = 0
        Width = 481
        Height = 73
        TabOrder = 0
        object Bevel30: TBevel
          Left = 13
          Top = 17
          Width = 44
          Height = 18
          Shape = bsFrame
        end
        object Label23: TLabel
          Left = 17
          Top = 19
          Width = 25
          Height = 13
          Caption = 'info: '
        end
        object Bevel33: TBevel
          Left = 13
          Top = 41
          Width = 44
          Height = 18
          Shape = bsFrame
        end
        object Label25: TLabel
          Left = 17
          Top = 43
          Width = 34
          Height = 13
          Caption = 'status:'
        end
        object _plug_info: TStaticText
          Left = 64
          Top = 17
          Width = 401
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          TabOrder = 0
          OnDblClick = copy_to_clipboar
        end
        object _plug_work: TStaticText
          Left = 64
          Top = 41
          Width = 401
          Height = 18
          AutoSize = False
          BevelKind = bkFlat
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = sbsSunken
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          OnDblClick = copy_to_clipboar
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 81
        Width = 481
        Height = 145
        BevelOuter = bvLowered
        TabOrder = 1
        object Bevel38: TBevel
          Left = 439
          Top = 103
          Width = 40
          Height = 40
          Style = bsRaised
        end
        object Image3: TImage
          Left = 443
          Top = 107
          Width = 32
          Height = 32
          AutoSize = True
          ParentShowHint = False
          Picture.Data = {
            055449636F6E0000010001002020180000000000A80C00001600000028000000
            20000000400000000100180000000000000C0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF000000007F7F000000
            FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF00000000FFFF007F7F00000000000000FFFF000000
            000000007F7F007F7F000000FFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF007F7F007F7FFFFFFF000000
            007F7F00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000007F7F00000000FFFFFFFFFF00FFFFFFFFFF
            00FFFF000000007F7F000000FFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000007F7F00FFFFFFFFFF000000000000000000
            FFFFFF00FFFF007F7F000000FFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000000000FFFFFF000000000000000000007F7F000000000000FFFFFF000000
            000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFF000000FF
            FFFF7F7F7F0000000000007F7F7F00000000FFFF007F7F7F7F7FFFFFFF000000
            00FFFF007F7F000000FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000BFBFBF7F7F7F7F7F7FFFFFFF000000007F7F000000000000FFFFFF000000
            00000000FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFF0000007F
            7F7F000000FFFFFF7F7F7FFFFFFFFFFFFF000000FFFFFFBFBFBF7F7F7FFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFF000000BF
            BFBFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F00
            00007F7F7F000000000000FFFFFF0000000000007F7F7F000000000000FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF000000FFFFFF000000FFFFFFBFBFBF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F
            7F7FBFBFBF000000FFFFFF7F7F7F000000000000FFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FFFFFFF000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF7F7F7F0000000000000000000000000000000000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF7F7F7FFFFFFFFFFFFFBFBFBF7F7F7F0000000000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF7F7F7FFFFFFFBFBFBF7F7F7F0000000000000000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF7F7F7FBFBFBF7F7F7F0000000000000000000000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF7F7F7F7F7F7F0000000000000000000000000000000000000000
            000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF7F7F7F0000000000000000000000000000000000000000000000
            000000000000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F0000000000000000000000000000000000000000000000
            00000000E0000007E0000007E0000007E0000007E0000007E0000007E0000007
            E0000007E0000007E0000007E0000007E0000007E0000007E0000007E0000007
            E0000007E0000007E0000007E0000007E0000007E0000007E0000007E0000007
            E0000007E0000007E0000007E000000FE000001FE000003FE000007FE00000FF
            E00001FF}
          ShowHint = False
          OnClick = Image3Click
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Sections'
      ImageIndex = 5
      object ListView1: TListView
        Left = 7
        Top = 8
        Width = 468
        Height = 193
        Columns = <
          item
            Caption = 'Name'
            Width = 70
          end
          item
            Caption = 'VOffset'
            Width = 65
          end
          item
            Caption = 'VSize'
            Width = 65
          end
          item
            Caption = 'ROffset'
            Width = 65
          end
          item
            Caption = 'RSize'
            Width = 65
          end
          item
            Caption = 'Flags'
            Width = 65
          end
          item
            Caption = 'Scan'
            Width = 55
          end
          item
            Caption = '?'
            Width = 18
          end>
        ColumnClick = False
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FlatScrollBars = True
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu3
        ShowHint = False
        TabOrder = 0
        ViewStyle = vsReport
        OnDblClick = ListView1DblClick
        OnKeyPress = ListView1KeyPress
        OnSelectItem = ListView1SelectItem
      end
      object info_scan: TStaticText
        Left = 7
        Top = 208
        Width = 402
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvSpace
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        OnDblClick = copy_to_clipboar
      end
      object Check_sec: TButton
        Left = 420
        Top = 208
        Width = 57
        Height = 18
        Caption = 'Check'
        TabOrder = 2
        OnClick = Check_secClick
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Import'
      ImageIndex = 6
      object ListView2: TListView
        Left = 7
        Top = 8
        Width = 468
        Height = 105
        Columns = <
          item
            Caption = 'Source DLL'
            MaxWidth = 312
            MinWidth = 312
            Width = 312
          end
          item
            Caption = 'RvaName'
            MaxWidth = 69
            MinWidth = 69
            Width = 69
          end
          item
            Caption = 'FirstThunk'
            MaxWidth = 69
            MinWidth = 69
            Width = 69
          end>
        ColumnClick = False
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FlatScrollBars = True
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        ViewStyle = vsReport
        OnSelectItem = ListView2SelectItem
      end
      object AdvListView1: TAdvListView
        Left = 7
        Top = 120
        Width = 468
        Height = 105
        Columns = <
          item
            Caption = 'API Function'
            MaxWidth = 330
            MinWidth = 330
            Width = 330
          end
          item
            AutoSize = True
            Caption = 'Hint'
            MaxWidth = 50
            MinWidth = 50
          end
          item
            AutoSize = True
            Caption = 'Rva'
            MaxWidth = 70
            MinWidth = 70
          end>
        ColumnClick = False
        Ctl3D = False
        FlatScrollBars = True
        HoverTime = -1
        OwnerData = True
        ReadOnly = True
        RowSelect = True
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        ViewStyle = vsReport
        OnData = AdvListView1Data
        AutoHint = False
        ClipboardEnable = False
        ColumnSize.Save = False
        ColumnSize.Stretch = False
        ColumnSize.Storage = stInifile
        FilterTimeOut = 500
        PrintSettings.FooterSize = 0
        PrintSettings.HeaderSize = 0
        PrintSettings.Time = ppNone
        PrintSettings.Date = ppNone
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.PageNr = ppNone
        PrintSettings.Title = ppNone
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Borders = pbNoborder
        PrintSettings.BorderStyle = psSolid
        PrintSettings.Centered = False
        PrintSettings.RepeatHeaders = False
        PrintSettings.LeftSize = 0
        PrintSettings.RightSize = 0
        PrintSettings.ColumnSpacing = 0
        PrintSettings.RowSpacing = 0
        PrintSettings.Orientation = poPortrait
        PrintSettings.FixedWidth = 0
        PrintSettings.FixedHeight = 0
        PrintSettings.UseFixedHeight = False
        PrintSettings.UseFixedWidth = False
        PrintSettings.FitToPage = fpNever
        PrintSettings.PageNumSep = '/'
        HTMLHint = False
        HTMLSettings.Width = 100
        HeaderHotTrack = False
        HeaderDragDrop = False
        HeaderFlatStyle = True
        HeaderOwnerDraw = False
        HeaderHeight = 12
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        ProgressSettings.ColorFrom = clSilver
        ProgressSettings.FontColorFrom = clBlack
        ProgressSettings.ColorTo = clWhite
        ProgressSettings.FontColorTo = clGray
        SelectionRTFKeep = False
        ScrollHint = False
        SelectionColor = clHighlight
        SelectionTextColor = clHighlightText
        SizeWithForm = False
        SortDirection = sdAscending
        SortShow = False
        SortIndicator = siLeft
        StretchColumn = False
        SubImages = False
        SubItemEdit = False
        SubItemSelect = False
        VAlignment = vtaCenter
        ItemHeight = 13
        SaveHeader = False
        LoadHeader = False
        ReArrangeItems = False
        DetailView.Visible = False
        DetailView.Column = 0
        DetailView.Font.Charset = DEFAULT_CHARSET
        DetailView.Font.Color = clBlue
        DetailView.Font.Height = -11
        DetailView.Font.Name = 'MS Sans Serif'
        DetailView.Font.Style = []
        DetailView.Height = 16
        DetailView.Indent = 0
        DetailView.SplitLine = False
        Version = '1.6.4.1'
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'DisAsm'
      ImageIndex = 6
      object _AsmList: TListView
        Left = 7
        Top = 8
        Width = 468
        Height = 193
        BiDiMode = bdLeftToRight
        Columns = <
          item
            MaxWidth = 450
            MinWidth = 450
            Width = 450
          end>
        ColumnClick = False
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        FlatScrollBars = True
        HideSelection = False
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        ParentBiDiMode = False
        ParentFont = False
        PopupMenu = PopupMenu3
        TabOrder = 0
        ViewStyle = vsReport
        OnDblClick = _AsmListDblClick
      end
      object _goto_dis: TButton
        Left = 340
        Top = 208
        Width = 57
        Height = 18
        Caption = 'Goto'
        TabOrder = 1
        OnClick = _goto_disClick
      end
      object Edit1: TEdit
        Left = 408
        Top = 208
        Width = 67
        Height = 18
        AutoSize = False
        CharCase = ecUpperCase
        Ctl3D = False
        MaxLength = 8
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = _goto_hexKeyPress
      end
      object info_dis: TStaticText
        Left = 7
        Top = 208
        Width = 322
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvSpace
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
    end
    object TabSheet9: TTabSheet
      Caption = ' Hex'
      ImageIndex = 8
      object info_hex: TStaticText
        Left = 7
        Top = 208
        Width = 322
        Height = 18
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvSpace
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        PopupMenu = PopupMenu4
        TabOrder = 0
      end
      object _goto_hex: TEdit
        Left = 408
        Top = 208
        Width = 67
        Height = 18
        AutoSize = False
        CharCase = ecUpperCase
        Ctl3D = False
        MaxLength = 8
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = _goto_hexKeyPress
      end
      object Button8: TButton
        Left = 340
        Top = 208
        Width = 57
        Height = 18
        Caption = 'Goto'
        TabOrder = 1
        OnClick = Button8Click
      end
      object MPHexEditor1: TMPHexEditor
        Left = 7
        Top = 8
        Width = 468
        Height = 193
        Cursor = crIBeam
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu3
        ScrollBars = ssVertical
        TabOrder = 3
        BytesPerRow = 16
        BytesPerColumn = 16
        Translation = tkAsIs
        OffsetFormat = '8!10:|'
        Colors.Background = clWindow
        Colors.ChangedBackground = 11075583
        Colors.ChangedText = clMaroon
        Colors.CursorFrame = clNavy
        Colors.Offset = clBlack
        Colors.OddColumn = clBlue
        Colors.EvenColumn = clNavy
        Colors.CurrentOffsetBackground = clBtnShadow
        Colors.OffsetBackground = clBtnFace
        Colors.CurrentOffset = clBtnHighlight
        Colors.Grid = clBtnFace
        Colors.NonFocusCursorFrame = clAqua
        Colors.ActiveFieldBackground = clWindow
        FocusFrame = False
        DrawGridLines = False
        GutterWidth = 64
        Version = 'december 06, 2006; '#169' markus stephany, vcl[at]mirkes[dot]de'
        MaxUndo = 0
        OnSelectionChanged = MPHexEditor1SelectionChanged
        BytesPerBlock = 16
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Options'
      ImageIndex = 3
      object Bevel15: TBevel
        Left = 8
        Top = 216
        Width = 401
        Height = 9
        Shape = bsTopLine
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 483
        Height = 201
        Caption = 'Options'
        TabOrder = 0
        object CheckBox1: TCheckBox
          Left = 26
          Top = 23
          Width = 97
          Height = 17
          Caption = 'Stay On Top'
          TabOrder = 0
          OnClick = CheckBox1Click
        end
        object CheckBox2: TCheckBox
          Left = 26
          Top = 43
          Width = 143
          Height = 17
          Caption = 'Register Shell Extensions'
          TabOrder = 1
          OnClick = CheckBox2Click
        end
        object CheckBox3: TCheckBox
          Left = 26
          Top = 83
          Width = 97
          Height = 17
          Caption = 'Tray Icon'
          TabOrder = 3
          OnClick = CheckBox3Click
        end
        object CheckBox4: TCheckBox
          Left = 26
          Top = 63
          Width = 127
          Height = 17
          Caption = 'Return to [Scan] tab'
          TabOrder = 2
          OnClick = CheckBox4Click
        end
        object CheckBox5: TCheckBox
          Left = 26
          Top = 103
          Width = 97
          Height = 17
          Caption = 'Deep Scan'
          TabOrder = 4
          OnClick = CheckBox5Click
        end
        object CheckBox6: TCheckBox
          Left = 26
          Top = 123
          Width = 191
          Height = 17
          Caption = 'Enable Hex-Viewer (may be slow)'
          TabOrder = 5
          OnClick = CheckBox6Click
        end
        object CheckBox7: TCheckBox
          Left = 26
          Top = 143
          Width = 191
          Height = 17
          Caption = 'Get VC++ and Delphi version'
          TabOrder = 6
          OnClick = CheckBox7Click
        end
        object CheckBox8: TCheckBox
          Left = 26
          Top = 163
          Width = 191
          Height = 17
          Caption = 'Auto scan with External Sign'
          TabOrder = 7
          OnClick = CheckBox8Click
        end
        object CheckBox9: TCheckBox
          Left = 304
          Top = 23
          Width = 97
          Height = 17
          Caption = 'Use emulate'
          TabOrder = 8
          OnClick = CheckBox9Click
        end
      end
      object Button3: TButton
        Left = 420
        Top = 208
        Width = 57
        Height = 18
        Caption = 'Save'
        TabOrder = 1
        OnClick = Button3Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'About'
      ImageIndex = 2
      object Bevel34: TBevel
        Left = 86
        Top = 176
        Width = 124
        Height = 18
      end
      object Label9: TLabel
        Left = 126
        Top = 16
        Width = 138
        Height = 13
        Caption = 'Detect it Easy [version 0.65]'
      end
      object Label10: TLabel
        Left = 90
        Top = 178
        Width = 32
        Height = 13
        Caption = '[www]'
      end
      object Bevel11: TBevel
        Left = 6
        Top = 200
        Width = 469
        Height = 9
        Shape = bsTopLine
      end
      object Bevel12: TBevel
        Left = 6
        Top = 8
        Width = 469
        Height = 9
        Shape = bsTopLine
      end
      object Image1: TImage
        Left = 86
        Top = 33
        Width = 314
        Height = 136
        AutoSize = True
        Picture.Data = {
          0A544A504547496D616765955A0000FFD8FFE000104A46494600010201004700
          470000FFDB008400010101010101010101010201010102020101010102020202
          0202020203020303030302030304040404040305050505050507070707070808
          0808080808080808010101010202020403030407050405070808080808080808
          0808080808080808080808080808080808080808080808080808080808080808
          080808080808080808FFC20011080088013A03011100021101031101FFC400DB
          00000202030003010000000000000000000708050603040901020A0001000203
          0101010000000000000000000003040102050006071000010402020104020201
          0304030000000100020304050611070810211213140931152341221620323317
          2434181100020102050205010506020609050100010203110400211205063113
          415161220714718132230891A142523315B124C1D1E1627216F0F18292A24383
          342510B253357617120001020402070900010501000000000001001110213102
          3041205161718191D140F0A1B1C1E112223250F1426272E292FFDA000C030101
          02110311000000F8E1D1CE8B8B638EAA52F6C252CB7A582F4DB98909892B44ED
          AB296ACFDA9927AF4415D8A225984F66A65F41980F41F2F4FE807CA7A80FB20A
          6107731923A6B4028C32C2CB0BA9AA6FA4AD34A24B59118185ED46C3CB1E9432
          A719DA236096A22254E84F1DC5F617F5EEAC0EFA159B49693E4ACE4D77E6B632
          56C56A6FDA33F44D5AB396A120C123184C93A9BC9A19EE5888DCA2FF0079BCB7
          A69A8B694C648EAF5E81B642B9B49A9AFA2B938A21EFA00509424BB4225CE330
          9948CF7C26B322A5CD4011AA83BE3AF19DA04BF457464DAE8942565EF4DAB44E
          DE9336AD8AF4DB9E97B565A697F288AAC00DED2EE968673976AB5A938C8A8E75
          5B0B6DB941ED698AC5E94D20D6A7545B1B4D49D0452BD1CE5F4C157406A108C3
          001D5441E0EACC0497645C03D6E922F01F074BBE5115262CE22106637AD58825
          07F7A526F584BD76883CF6A4B5A93B6A165801B5A5D866D4E80B4A372A38E2E7
          BE4A09BA1593AAED66E846CF57EE3119C2BF36B26DA19C9DE8A0AD3A92C86055
          0261A28E0C5272A0B9C26BB00E1185E320AC77158C949A5BAEB7823475A69627
          CC172D065E82ADA26ED0B6CD41E4A2E26000CC1C07010595CE2E2AD03A8F4900
          C3B19BA0DCA0F9D9564F8AB2C8A4DFB77548940DB20109C0B3BA9AB2F2233307
          6226B8B303F5D9A08EE2BA5C32228AE840ED2C05A5C15121FADBC5E965EE95A5
          CAEC2E6DF55E63F68E7BC2DA7F43BE77D0544E129616DD6D27120E9E7AB4B41B
          6AEC6867DB9F43A5599A7D25C7D6767374496134DD6D61A5B722474515649419
          98401713531E4D4D6174D9A550A288757AFA0EF6511661762271F544C3306C77
          1352F56981CDA346B69098B23A9325F45F9FD1FBA7CA2E89BF9E9AA6E5C064EA
          ABC8753F136D75616BCE3EC18F2B4C5768641177ACD85B93E41D6AF41D30BEA0
          88F464EAD5AF4F99BF69E3C0050F379B513D6D581640406569075397BD20C77B
          5AAD5F30B73C793F531E03C60CA04A586512B694782B333789B7532EFD0FC051
          FA3D7A6BA02CA4D324F135B5247A7F4D767334BAAF89B5D3C09BA478DAFD3DC5
          D8E12EFE1274F242E2899A41FF00A8CF31E92366BF223ECBC8A9CEA9CB9D3CD5
          9585C6AB9F7EF5A32ACC8DE92B5B74173349D8CED0BCE7BDEE228B22CB9D6E1D
          AF28E51C84F484C6CB6A5B7DFF0086AE5E93641C70ED86271F4E688C1D308129
          0BADD3FC9D3E98E7BFDC3C3DAE8B646AFC54FB5F1BC0DF4383E4A3ECBF9FDDFB
          C8F05EE742D5F906F73E2D46656E6769E68CF4F36BD4B590A3076668679E9889
          628063DE6E910BCFEF0FC25A556E28A10774B080839BB54BB3D487539EF7BE1E
          A931B130C0BF9F07103A4DC653572D5CC2DC617671AA39FA3D00CAD3E9D28DF6
          9FC8FADE8A646A7C8C7D13E7FF003C5E83022E63BC391ADF649F33FA455ED4F9
          5CFA77CDB9E832263A39E67DAC7E41792F53174BC7D6FB96ACA52FD67CDD16FF
          003DFBC2CC8DC44165640B5B86E242ACAF9E3A4FBAFCEA5EBEE7C68E263CCC76
          F116E03D1F9DB080CFBACC947CF7A0A76A664F84A61C8D6ADAEC38D8DAFD2FC6
          D7E797AEF2A84EFE0E3EE6D70B6FA1DE5BD401195966F4DE6D61D0CF06EBE561
          3016ECED1A0B0BF0D723596E28B0D6C68ACB5A061EDC4DA9A4DB811DC6B5B86A
          971D3C84FD6F6E8E2594702FA31CCAE7F30BAF797A57F49DAF0EFB54B537A42B
          6A86AF4DC7925634739BACED1EE2E16E5AD661A8B557398D425068C2E863E83A
          99DA37655A60CC10F32B0D9B5696F23CC02897E7141E7749509715988141E1C0
          4A211905B5B0EAB6BBB6A678B4E4C592962104A5C89999884B4532630DAB1A4A
          5748306DE80EBD269C4CA0CADA2063AC8B9DB9CDD268E396E28EA241884A3504
          A2B1AE7E93E16EB5D352BB0BC4B4A80DA5848706589AB8EE1FB40AED55904615
          8883E09478320CE84A4EB656CD648168C0B9BCC5AA5315A9AFE2535E630CC609
          8952537ED45F96688860362FA3E6B34951B2E44B925193A6395D9CF99DA580F4
          BB0651F6332754DB9DA1D1B7535E5B4D7D6D55B9C5028C2D5B9E1E089A1D2B78
          0EB02E7140CA3101AB74B385B3935D1DEB94BD7877AA52F8FBB7ED1276AD8AF4
          82A5B7E6256F13B6A5A894289452D71DFCA22094446E9B452DEF3DB51383A2B5
          7AE84D58655AFA2CF23EB2E432031A59686D35F1C557C6955B5B50464A4EF701
          C4459946D7E51A1400F0B5B75B37F060C0C0204515AE6AD52F396AFEEE97B57C
          4F78E9CDD1296AD9EF4BE945316AD82D4BA10769252FB6AEE5EBB113E9DD1131
          1559DCB45FA96EA1E2ED7713CD7A31E144BE36A811A5426CACB838A2F2D294DB
          D558AD85603AEAA361C598A388BF431E8BCFAFE3B80C260C2ECC5D673F461E9D
          A98FDDD2331296899B56D8414F5A93B6ACDDEB68BD2E04A5A7BB5AD5898EF1D3
          B931FBA31F4CB449B973F7DFCB7A877B3344607084195C04D28B13A9ABCF2437
          285472515E59A1C84C255CD055B7FFDA0008010200010500720138FA342010F4
          010F5E10F74D08051B792C627FBAC8B7968F62D72F9045C814D4CF73104D2A26
          7B3D3C29022CE54A784F249727221709E792D450410F403D381C203D004026B5
          411FB81C28DDCAB47953B787B5E8C883934A6A60517F1134A1FC38F09C8B148E
          E13D3939382E7D0AFF00425350287A347A0402082684C6A63140C533804E9086
          9772AF0F7F92F92E534A8C28D302887B729C88E54AFE13D3C27272E395C2E113
          EEE2895CA0502BE49A50FF00A1A135A98D4C6A27812BFF00DD2CBCA322B27E48
          943D1A130A8800A1F7511E5121388534E13E445C13DC89447A387A37F92115C2
          03D035C43896A1226C89B220EE53130263546D523FDE793DDEF4E9B94F722814
          D4D2A3298FE5367050B613AEA92D128C85125128A289F42B840270F7E15687E6
          F6E0E20198D8DA8E35AE69C4F32D9D45E04B85B0C46B4AD4D710A395325E1432
          85F301B2C9C2B13FBBE65F622F44FA040A6724C55A572651914540218D694CA0
          01341ABFAF614EC5353F149F1F04B51088F41FC2016387F9DAD518F667FB4D56
          44E7DFB25EF6DB7802B32689B46371B1AF57026C04413F1D23117BDA2793DA79
          136A021B45A8636353D18DAD40A87E0226B8930C5CAFA400D8632A3A90150D3A
          A5AEA3591C4B1CA6A4C60B16226A91FC973973E9C2E1708AC77FE767F0EF63F2
          25381E422153B6623F7B88B96BEC2F6A94952CC5D1CCEF694FBD5A21CC6E2985
          3712C590A2C6465055C7F8E26A847BBDA48FA9DCFD0E01A0025BC22C2A6A8499
          2A39382F8945A885C22170BE2A873F70F922DF74E6F27E2B85F047FED60710F6
          1E266A959FEDB253FF009C4F2631185F0F6CE378840402AF19FAA30A21EEC809
          1235817C1840A8E42ABC26D5213D802B65A038228AE170883CF0B858F1FE6F8F
          239E431DC8A1087BAC56F8A633DEBD4E44527BDBA5F04F80A9A03CDA83886C84
          F1EF86AC0C5F8C4A159E16C30B9B558D4E62A5017566C0E2AB42E26EC6D8AB92
          8A6A23D80F8A9D87991AE4E28B973EA1BEEBE2A87B4AC7A694E08DA2D99F6E07
          B3FB0A6D5733B139ACBF131EFDA181926D4D2AC675EF4F9A4915B67BC8162F3E
          C858DDC6BF1FF328966B3EDB31C6D463E450CC08A3873EC060D8A15672D14C3E
          1111F8B0045C0BD483FDA5813E20AD463E6589CD442E115FE87F96C8585B9CB0
          147B03827676372B979AE3F96F2BED72E570B9F8A0F05576B5CEAD231E2E3985
          4F1F04B5062F8A6B394D670A36B5CAD46396B935E54729514CE0A3BB2850D801
          0BD1A7E41A43B22F2A4BB295239C4908A3E85A780C419EF205C22D2846844BEA
          4214214D853ABF2BF0811569B63757AE5825C5464D9C68739D8E772DA257F5E0
          A651E13E90708A834365C634292BFC5CD8D471F0238D3635F4F28C2506145A50
          1CAF827351622C5F15F5A11FB960E7EAF7F8211A6B38419CAFAD06A0D402E107
          10E8ED39AAB48E73591BDCF9A49836391FC3CF31B2569313E6E493F37C930113
          E40DB313DC184A614C726151A6808C01183942BF09F0F04B53989CD5F04589AD
          E116FB0684472B85F14020BFD78F401709A814D40A77F1F10880B84020C4429A
          2045987E0E6B931C98E4C728DC9AE450F74F09F1A73794E5CAF829004F670885
          C2F87BF1EFC22B84420106A0DE10080E104DF7447B2F885C0F4F74027857EAFC
          81F62D7263D36551CA98F4C72053CA714F6FBBC72BE21170418797845ABE280E
          006FA00805F14D6A0DE100804020D4023EBC2E3D0A2A4008C857E0B5C9AF4C72
          63944F4D2814E1CA213D382F82FFDA00080103000105006FF05347B225147D0A
          3E80A251F644A253DDC07C898B1EEE09F70E0BE2835109CA41C290A7295FEEC4
          C3CA8CA0EE144394C0006943D58380EF53E8423E9C9E515FEAE2894E729E4F67
          1E5483855870A03CB1CD41888442704F2A5FE65700BFD5A394D41CA36F2A34D4
          D4DF5017FA845147D09F425728944A714E727B94EFF78984A1182E0DE1523EDF
          15C2F8A705227A71529F7E13103C28D9CA6261E13505EE103E807B00805C2217
          C5108845708A25129C539CA47A0393147ED1C69AC55C71EA5393C294A9548384
          02682A180A6C6834A6B50082E134AE51287A12B9F425BCB787231A31A7C68B53
          D3CA73948E51B3DA18FD991FB362F660F71E8E4E0A409EC4E8485F8A50A6A3AA
          020C080080402080FF00A0940FB72AC4DF063B35212FC8C8E4324F6B865788AB
          ED8C262CCC0E42C44E4E6029F127C5CA9A22BE1FEE8A355E0F6642BEB418B844
          2722D4FE0096C44D4EBB1A92F147224175E240BA57E73826E4DC133289927239
          40FA72513EE895903FE0714FFE641F2169D2B5946B8631D5584FE4BE295D7646
          8AFB058261CF4A99908DE8318E3047EF033D9D6C82EBAE47232282EBDCE4429B
          E6642D004D2F0BEE24BA6913ED4E14D72C822ED85FDA39AA1BCF7982095CA367
          01A101EA113E990FFC2E43DC7C785C8E09F4B754483F1DA0D3ABF5863946028A
          202485BEF10F6B578B5EECAB827659EA85D73DFE939FF24A54DFC30F07E63812
          825C7901C0A04286D8019698534A0F41DEA0AE57C95EE3E93F141DEC83B81CAE
          57C826F1F277C416380313944EFF00756099FC65780F2F45C1615DFE53E93C83
          ED7B94A53AC0E58F795F37826D351B2C28D904B1C4AAAD712D3E8D40FA73E9EE
          AF9FF0F3C1FE0B9BC1C84A58DAF63E49CFF69ED706567B54B9F34C9C28A71C55
          9F996B14D597B24482C004D961180998EB4E726BD5C9836CBE66856666854DEE
          96C0082721CF3FF7281EDE23734A68E506A1EA5DEC0AF92BFF00F8DCD4E40AFC
          60E89B56763FF02DB954C1CAD73E8CAF6B759717B35872AF836469B0C71AA6FF
          0068CFB65304F99E7519C9FF00884AB0F8275791EE4D93DEF620C924D827F136
          BD32AF8B96141F2826D4E4B5A4309519F70E2992155A425AD7A0E4D77A05C7B8
          4E8C3C3B0B5CA9302D2998491AAA527347E2B02FADA17C42E571CA7308561CE6
          B6CC4F61A61E0C2FE47CD17AF9273F84F7F2A47106B3CF0E09CC0A4882921695
          25288A9AB928D1913283B96D0604CA5104C6801AB9F4F75F21CFCD39EA3FE394
          1C11917DA84A8CC8CC8CC50B1C2FCD20D9B8E904D6438C5947815F245A199105
          3AEAFCF4FB9C865D2D52DE7174792714C9FE4D322924E4BDE9CF5F77084C392F
          083C22785F341FEE1C8397CD7CD17FB079E048BE68C89CF45FC2FB17C9177B12
          B95F105B2D56B9598C35CE918D6C31C25CF633960E247C6E0256C3C0003191C2
          4C8D67CAB4AD69701CBDA9ED29C1481389427284FC2FBF94C9B901C9AF4D72F9
          20F4E77283BDCB8AE785CAF922573EEB9F4E5129C884E4537F9F9140FA128BD7
          2A197835A5F9B5C13DA9ED4E6A91A9C394114D298F4D29BE9F3511298E40AE57
          CBDB9F6E7841728144A2E45DCA2E4E3CFA140FA725727D4A61542CFC4FF21CD5
          2313A34F8D3E34F6A21302684C7A69E172506945FECC28397C91F725DE84A257
          C939C8BC144A2894E72287AF2B93E8020146783427E439A9CC4F627B548C4F6A
          E134F09A410D4D5F25FFDA0008010100010500CBC920B7461739662DBAC5E204
          9352ACF78A71FE3D6A31FD7131ED105685CD54A36CB62564A229A382B4915387
          EAAED92F4B8CAA5A2953120D530B35DBFAC6ADF68D031475CC27865999B5FD9F
          20D82EE37338B686C585B7665AD836D483238F738E5A3308D980AD4B76B8B2B1
          7E4C9DBBB3587479F0F75AD931F1D5AFB8C5699258D79D903BCD9AD86AFB4DDB
          B6EF66E3FF0025E7422195A6477D0E5B35E19ACEE1E2F9C931021ACCFBA4A63E
          A0D1C1866FAEBD3898E716999435687F551CB0FCE9C4D334118AF4F174FED971
          D8F7FCF078677D9D55A7BACE5343D5CC99DDBF1ADC6BFA1EAFF4B63A9B2A364E
          BBC96045854B596C2FBF8F0164E8B1B0E66189AFD9EC0B0FEC1FBECDCDEB358F
          A906ED2D8B391CED98716B2D34F61B6F5F865B7B7652A6063D9E79679F3F1B1B
          1E5FE2E1966588539FF21F256AB4B1BE0C3CCDC6D9C1DA7C5435AB41D0626C83
          5718F4637F342A08A37BFEE75284410C75848CA95F996A41207E1687D2CC2624
          BC6B5AFB8B3A975289B8FEADD46DD8B38DD2B1399DD31D8BA58D8FC55B92BB04
          FC3C643F16C8E17639EC93335487EED3BC2DA498AAEC1918CB77CBD6A5BDB05B
          8B18CCF7CC59B342CDE9772CD478AAFB1D29279F64C1496966AA4AE591C6C91A
          968B2F45671F255B3F873A675ADBB37E2EA86BA4A1D251DB55FC78FCF91FE2CD
          C91B91F1573719CA78EFB26354DD4D9CA463D2B26C9ACE12CB4B68BC3C55961A
          F8CA127CF098D6976BF8A88C9AA6BE6EC9D77AAC18DC2E8BA9591ABE97A53A9D
          6C5EA11B974CE3A6D6628A06C95ECB0933B5A066E76BCEC740BA2EC2B772ED9E
          C67B2BCDD81426D7A1B5AF6418EB5D736AD5ADB35ACA5B367A572F6597FA1A78
          DDB6748D99A4CF749E47E597E8FCA7D377AAEFD63B07595AF9FF00C0B22B58C2
          E15D6AA60715F8F43134629306CAB0AC0E5F1114980C9E8578627AAF46DD0E4F
          F5F597D82BE73C0CA32C9B2F80597AECD93C3ED9B112667A5761C68C5E8590AE
          EC3EAB6DCEC2EB521668B810DB1A6EAA6B63FAA74B82D61F5AD4ACC55703D662
          957D730CE65BC637FF00836ABB8B32FF00189999AD3599772A5627ABB26A7354
          833BD5D93A366CF8E792B96E8F8BF1C526C7D35AFB1B6BAAF4FC63333A76B900
          CDEA38899D9AEBFC4B965FADB10D767FAFB13C67F42C27C763D0F0A64FF81E35
          62366B70C27B02DC390C4F6A5D6CBA77693B2D99D873F82C453A7DA0CC4CBE3B
          798B9BEBBCDE83DFFABED1A76B7E5178F37F23AD6A9E23F6941B2F827AC6C107
          68FEB7FB220837EF122E69B90C578AE4C0EF1D32F811D79A158AF95D0750FCD9
          3A87AB207E3F5BEADA8D97FE1117C28EAF15454AA3A053B58C664E296574D8AE
          21D89FAA6BC76EED3E9DD6EAEDFE5074F6061EC5FD866A427CE7EC6F6CC0E7F6
          FF0033B2F7B2F73CC6DCA7357CC9D9320A2F2AAC588A977A3728B31D99624666
          37F965767769CA1765B277E77FD96153A2D8E836ABA392AE31C20D22B3DBBCE7
          A67FE462EC4BF8F86BEFC45AE93F2BAF61345ECCEE6D8337B2EA3E56F696A6DF
          153CBEDC371B373B9771C0E3B25FB3ECF69593D4FCD4F1CFB09B07FE95DDF1F6
          BAB31D1647AAF5011657A9B5783F0B21D9590C364727DE5B15365EF29772A4B4
          7F29B71DAFB0E42D9597AA344BDEBDDFBD59EF2DCBC80DA2854EC7F28B716BB6
          AF217659A3C7EC9AAED8DC5681E245C588EB2F0EB2943FFCE1E3ADE17BC45D02
          F9D7BC24B766A53F15E0D69AEE9B744CC8F47CA2A64FA530187833BD7B8FAE3F
          E31457D11360869FDA648398F50AB0BB6BD83FFB569D1D3B2EC84D61BF46463B
          D1451C31F242EB6EC9C9F5FE5709DABB7D5CC763F68DFDEF2FA26C77AA5EF1B7
          79CBDAAFD63B5DCC96FDD7387FBF21A1D36D5C5F92DFB01EC0EA3ED3BFFB7ADD
          E519AFDB376CD893C2BF397B83B73C846FFB0D96F07BDEC86790FD8D70FE1F67
          DC79CBEC0C9EC53FEB32AFB92EB593860A35E0A976C529EBB31314EC9FA7BB2B
          5BC6D3D4BB2753C93F21B16100B7BE6ADC6DDBB55CCAD9B2F8A6AFCDC6291A1C
          C1558D5256AF5C6BCE7B362DA1D9C8AFC951ADBAA7AAEB169D5666A11C8E4DA5
          65CAD09DF86A2CCDDA8759AF7249BC74C98AF53A4F2C65EE0E90A05F6757635B
          4BF69153255BBAF3398CB0C9D2CCE6A63FA9DBD943E58589846EB9345241DF51
          88FC86EC892314BB2E02724DD4A6962CA51C0D48EB60F5ACA455FAF328F5068B
          9F81D81EA5CE166A5E377645A661BA5F7AD62CE535FCBB62BD47321F97665B8C
          D57C996FC2E2B1526FB5D039967ACBB034EEBCABAF556499FDAEB0BA5EF75EA5
          42EB6F57E8CEB7B1BBC3B96992E264A58F3258EB4E9DCBEEB63AC684DB66F3D9
          FD376B4BBB84D2B2D25BE8DD2B3B0DFE9ED2F2387DFBA32FC566C6B363E55BF6
          97A18C8768EC7D7B90B36319D7BB554B9FAA9D0B67A5DF79FCB1821C3EC22C4D
          E4FEB3B9D0EF1DC2D6C9763CF61F3D98BFFF00A564ABD2D34CE52989CFA47E70
          C8DAD241ABB6B632F7516CFA17FC6B5CC6EBB9413758BA78339D639261CCF5D5
          E85DB3EA772A1FE82454F033D9CB1C34D3D866992D9A7AA6992306C1AC5C8E7A
          F82B95A61AB5DC8DBF067C44873BA26EFE0CED1B8B347FD6965B3B5BA53C26DC
          F4376B7E0EEB5A26EFDA7FAEFB599D7A97EBA7AE7559A0F1FF00A6B48A3BEED3
          AB53B9E376D1526C7EA177EFA9E48785797EE5D82C7EA13607DDBFFA9F9B0CDF
          1C7C4C93A7762DAF33F4438DDC9F4F62EC9E87C376A6D92FEBF6B64AC6E1FAD4
          BAE935FF0014F68D47179AF157A8311AFEE9E317883B5B3CC5EA7D2B42EF1FF8
          C5A0AF6BF79947556EC350E85B76E5465D67B373D5F013F6D5811DDED7A13336
          8DB7076A2FECB5F4CD3E79A4C5F5DC0CC7D5D1316CB9FD252D76ADFD836CB71E
          275016CF5DF50E915739E31F6D751F4CD5C37989AC6B16351F2EFB931D8E6793
          7DEF61B6FB5375B773B7FC91EAFEAAA94BF635E3A569319FB14EA8DDF6BD0BCE
          FD2BBEA0E9AFDA3F8F1D4B15DFD8978FBD53BC6D7FB43F1F749CA75CF79EB1DB
          7A577779BBA1F482EACF37FA93BAF61F28BCC3EA7F1FF0F80F3FFA8F7CBDE1EF
          EC53A43B9369D1FF00625E267900CC46EFD75BEE5749DBB4EEDEEA8CBEA96F19
          AC652D61D953C81F02F5EEF9ECCC9FEB6B43C51CBF84DD738B6E27A3754C1CAF
          D462C2CF94C1D19DB9BD56888B33A77C64CDE0EDB07F5B32ABB847FD447B9577
          CD84CFB24C8DBC8BF2591D7ABE0A39AB6C1AEE1248FBB757C6CD90F2268ABFE4
          8D781EEF267EA377CA49DE2C793D6661DB7BD5FED35B7759D5DF75CE91E8CD23
          A4B69EA5EA4CD6898AAFE01F4DE7762C6E4B6C97B632B8BB1BEDAEB1EDFD97AC
          B5DEE8C7F5C7743B51C8F6F6AFB7799BD5BA2F98FA76B5E1B750F56757787BE0
          FF004C742F90DD41FA5AF112CE63B1BC3FED03DC9D4FA56B5E3BF49ED5B81F86
          776D3F967B37FAFBB2765632E5CDB26A584CC6CD4F1D69998B5532516573B631
          CCC8764B6B437FB52B019DEC5C718FFF0060E3D4794C88AF8BC8DBB395836EAC
          DCA51DF676C967B9AD7D373B772F724ADD87902C8F72CAE6AE5CCCE4E49DDB15
          F6C1065EDCF3C19292C93909DD3373F99C5EFBA577C6D3AA8E91DB765DA34AD4
          B05D9BB47606FF00DCFE4F56D03A8BBEBC9ED2F4BEC7F2B761DD7A674FF2A347
          EC0D8FACFC86F3229ECBB8F909B6DCEF0DC7B6BCCC875CE87F227BD356D57F57
          BE5777C6CBBC7596B9E776ADE2F6CB8F793B4E2ECC4360A9358ADB954B624CCD
          DC846FCC762E6EDE11FBF5CCB09761B9561DF725908B279EDA2ECEB3B9DB9CE6
          763B0F3FDBDD563052FE561F192E22B5D865AF80A8CAB0559E4BB908D867867F
          EBDD35782031471C1661A0F124B622A45AD8D81D6E2C7CD56DC35E51360E0C43
          2BD3BB3118B6592DC6645951D81C93AC659D9BC8B6C4390B533629E52AF59AD5
          859DB6670AF97636E75A6FF730B98E8BEC4A7D9FA36770E1ECD9700E963DB302
          FAD26C783059B7E161969ECD809B286AD3755BD99823A316C903E27ED1AFB5B3
          66298B76F2F66585FF0091126EBB14953B574AA1AF60B62D75B563BF51CC9590
          4FF89FD0D9932C6A366C94747F2E4B20D8231E7E8B10964D4A83E3357171C75A
          86320A06AE35D0B71904545432B22663DAFB8ED72AB4E4EA19580E43211B25CC
          5CFA9F7D81192C4A6B4124516AB6BE97F88BDF53697B0D77D4CE62B35860E3B5
          EB2E7B333A5492C5B5E973C8DD8357AB5A7DA70923E7CDE36CDEA3B6DE1058CB
          DB82CB765C23E1BB9DAF2E49FF00D763D62F43B4C977C82EE6B7CD9B1530827C
          3B2484E31D5DB0C7161B094F12F31B837E8AB4E4B16AB63B971C588A1C6630BC
          D7D7ED62DF4EAB201559231D5684AD58DC4811D1A402C5DCAF8E8EB885F1B9D2
          C8F657B1CC75A1F83591875B98B598A8EC3A6D1ADDFC7E43C40EDF8B3585CA61
          E37479CD7A27B760C0084EC784642379D59B6DD9BC7C7132CE3229EEF62EB566
          BDDC8D3B956D67CCD20CD57BC60FE802FFDA0008010202063F00C41A2C80C37C
          37C1182FAE074DD77E5DBB6E08EFC7A68B76865C20069BA72B64658F453C2381
          3D16C516EB5AD4804CBE2C9ED54530A78D25F9929AAA988D21229B02DDF06D50
          379A85F52991B983A9DAA725F5B93BBA6B834417555528904B88D8D6876196C8
          BA0F70F153BFC597E80E2A5778852B97DAF00F7DABF611C0B37C1D4933C762FB
          12D1AA20C41614540BF215C4011B770F2D068C9553BA3836B6B4107D23B957C1
          560636CF25B60651B370F2804E84C735FA1CC2331CC755323FF43AA671CC7553
          B87309DC73C1B77C1C42E06AC3D62E64105F214893DEB1B4B643C951495C4B46
          C2C3F23C9513322E6674650A60DA76C0C04D392C77A74C0B274455480520A748
          804D02F62BD91B446D1A822E1520EF9A77F128B51DBC2062700105885507781D
          14EC079F54DF1238BFA206C278AAAAE8B7A141819EC3E6CC8D65B0E5C131AE8C
          D1D9B0AF631AAAAAAFB55DD509E3EC985A3C54801C3ABAFD36E97927333D8753
          22E4CF765C138F21E802005E58652E8897A97A5B9F04EE42AC0ED553E1D136AE
          F9A2323BBD0271E43D004CABA2E9F06589739B86A60F90D850F9BCC0C8D66F41
          B939D679396F057FD880FB350D60AB2AE44E59CBFC6EDB9206E721F51A37FA8C
          F62BBE0EE06A23CC4D300791E883B9A65FF1EAAE06EB831C83E43615699D0659
          CDFF00B4EA1966AD373B4F2DB2C9E9B02073027BFBBD34DF049FE21936A8B766
          6EC2CB7F66718BFFDA0008010302063F00C43A44E1B42582D82705B54069B2EF
          CFB76CC13DF875EDAEB8C0E9B260B6C5CE3B3A9610C09762376A84C94EBE40A6
          B95548A9634D37CA6A4A8A463584C27C0BB741E1F1145F64E85AF252B9D4B25F
          6B5310C9ED2F121A8A81502018318DCF716739EDD095A7C14ADF075F92787453
          B7C0A9DABEB6123BEC5F8239218176E8329A768ED5F501E34408890E6AAA57E8
          AB4398DDBCE83A68D133218376E816D20EBDD52022659A9094008DDBCF9C5910
          C792FC9E450AF23D1481E47A2A1E47A2A1E45331E58376E8342D2293F48B0994
          57C4D62077A46E0F998DA013DC46F13FD1F3554EE864068CD055C12364040CB3
          4C038DC99390E9903453254CA956248CCAF70BDC2171892D5284D560CD9266F0
          41EACFA2300821C15423713D54AF2391F44FF207837AA22F6E0A8A9A2FEA1172
          25B47957C10A4F68CF8A71A32436ED0A7E7A140A8BEB401540E1EE9CDC7C14C9
          3C7A32FCBEF9F9A614EC3AD0614DF9F14C7CCFA9289360739CFAA0354AB765C5
          332A402A0F1EB00731BFD4AFEBEA53AA68B614F12D616994DCB6676847E0D227
          3149354EF4C350E6D3F156FD4196DD67510AFA48CA794FFC86CCCA22D612D62A
          FF00EC72DAAD173313AC1F2324E48E63AA2CC2B9FF00DFA2B4800B8CCB667685
          752A73CA4DFDC359570B59E59EC9E6D5DA5100C8996EEED5EC007F10E9E2FF00
          C46EECCC717FFFDA0008010101063F00BE4957B205D113C54A106D1040011E47
          51C0816A9F53345B7B95CABDC9351E9E5A46372BBCC89EE2491079AEBA0C2064
          235484823D2871DE03B8A439D2299E9A3006BE669853F89A6D6583D0D722A1BE
          DA6246921EE316555AE7501148EB896E3B67582C4C44D4124815A79E5894EB25
          5AA4A5280746A7ED15C2B494EDE4642C2B5007AE19628889B7265B41129A0D0A
          415CBD4D2BE9899231DC8C52147399740D427EF209AFA8C6CF662DA4335B23DE
          EED25C392659E535AE91ED1122280BE649C7D521664B8AB46EEC559547B4211E
          94C421E3A18496B7619D643D09C4748C771CB492B814A48B4D4C7CC0A8A0C59C
          491175D41BDAA0A9A9FC5D32AF9636FDB8232463B65E5545234FB5D87DFA698D
          E774D1F4EA96526D3080C74ACFB8491C6AAA3A55630C683A53169756F3147DC2
          48FB4B1D569042C031000CB29287EEC417502064B8459BB8B4F782DA73EBD312
          00BA59B2563E94E981DB8AAE48504F867438D290942682566CCB11D70D542DA3
          A0E805461E95129A4511415A548D59FECC4CE6A2572168FF00C4B9529E99E786
          79C8D49A98B000AA9255751AF92938BCBEBA325A5AD996BCDC774B6A334703BA
          C71DA2A93533DC11953A0AB1E830DB3D9C436E0F95DDBD9C8730529F4E2419BA
          8534666EA6B5C245123DDCD71A5624419492B215ED107A5348AB78E5E58B59B7
          35956E590B4B651D1A4D11B0594295FE4D6B427EEC4AF24AA6F6CCB4F7B64C15
          214034310A1323515D2A052A3134B73005B296851100EE3D686A41C956AB90F2
          C4924AEB25CBAA4B6B648A2BA45000481D2A2B87B8BF62934AE6678C12C154E5
          954F8839E03474A1259CA80095A0A16F3A532C0322EB35200A7D99E785029A73
          0093418FE1E94EBE3E78DDF7410765779BCBADCE2890FB512E6E1A544A741402
          94C473BE955896FF007B6D5901F4D6ADA07DACE401EB80E1ABDB5A306F0273FF
          001AE35034203CA4B0AD688716A1406AAB190532F739F4F4180AB40B4D204796
          54E98D5F8A46A0D07A0A0A7F86103166E93C9FF0AB0D4BF7D713C8D1958A461D
          98D28B95568B9742699E38FDBDA8AEE172F35D6FF7649082179047046A074D2B
          192DE7AB1B85C69CE046B3DACA66119885695ABFC91EBA7A9C2DC69088C50DA5
          B667DA17D8483D0FB7A0E870D6CBEDB99C6A9B49A2942E5C834CB326A70A23A9
          321FE3CCD5852A6BF660A1D2DD801198642AD5E94F114C46B9B777FF00C8B40A
          E3A1CBC0D4D716F33C4AE96ED4912246D25DEB4242D0119636E87B6D585642E2
          38C8FC4A456ADE5414C6DBC42D4036FC6A9B96F6905584BB8CC81A42C7C7B2A5
          516BEB4C5C6E0D58E4DAB6EB3DB6CE365F76A65B792792BE659E9F763679DD81
          9E0548CE752542027F7E0855AA83504F8540F4C49AFC74B25331515F4C688D49
          AE4D4F0F2A530FA94823DCDA7AE2E6571A604F6369A000903FD5890BA948E35D
          09235282857106D566897375BA335AA5B3B14568F4EA76771F811141767F00B9
          6670D1DA36AB4494CD63B84F1C80EE177FD29373956120450226A8EDE3F1CDBA
          E2E6CC2B4975744C76CD21A98E28A849247869A124E79FDB87B2866696E5632D
          2DE004CAF406408BFCAA01AEA199008F1C476893AA4D7D277374962521E58588
          504B1FC102D08A0EA413E384B8B8D2CE2413BA8A801CE6347800B4C8E1ADD62E
          ECD2F704168082C241A029F2A679E1AF2F1C4D237B18466A8C01059175E6295F
          0C17882C970DA9445A436857A2AD75573CEB8ED12FD5637954E7D0022A3C2A30
          51011182754AD9D1453CFEDC642ABE04FEFC7E13FB302DD543C91BABC9366A4B
          2C4069A0F539E2F5941EEC76D6B046A5403AAEAEC4C48F500018955636424D49
          6074FB72E9EB881444CA5EA199853DA41F0FB311BBC6C0C6A63614342A09A103
          F6E16470000D92B1A1A78E58F6286D6FA63ED83AB2EBD70E199E377AA86969A7
          CFAAE6316D1C6C68A02868C64587E235EA7C3AE1E7553EFF00F271063400B0C8
          8F45A7EFC22123429114AA466642033D2BE01891F7603CD22B7619A525CB2E79
          31E9D6B4CF044CBA83E402E6428C8915F5188E740CCF52AA2200BB28E873EB4A
          E2365A2AB1AB24BA8BEA3E629407085D1997DA929282A411E74C7F7030E961ED
          2B3495A44B5CF4B8209CF2A6377BD82CA8D6B0DB41DD9A6A2A3DDCFA2D0EA142
          0BBA9341D00271BACD35D3CBB0EDACFBD6EB259D5BBF05B42912A02D9992E6E0
          D078FB8F962E6D1DE4B795A06B9DC26464522413412CA33F2D1A40F1A1F3C436
          B751B471EE319BAB7B69194F693B8E0280A0528053EEAE1528482A172F319D4E
          5D70F442CF9682474C3191490D4E95F0AD2986FE77C803F8401406A3EFC496B1
          8AA97074D326A0CEBFE8C4512E98632DDEBA92E4AA8A005F22DE401CBCBD698E
          4775F52A2DA6818F26BA99649A3B6B590A08B6D88C54F792524BB3F620CAB8BD
          B011AAEE5204325B3AAD2DCCB1965D7A3A554EBA78573C6EBB324E2E377BB8A7
          9F707B76A8B7686390AB57A1035B500F2A62E1AE1DAD2CE268EE2FE5054C92BA
          922348EA0FB9CD4123A69F5C4AB3535CCC17E9A260AB1F45D0A1280D14D4D7CB
          1FDB6C584FB94AA1595AAE54EAA573F69620547DF898BA34B3395591A53AA4EE
          820FBABD29E432C09E625C45ED3DC61552B4248AFDD4C11DA60B5D288D50C74E
          93AB31E2712070235FC4A806633F31D712811095C03F881A7DF5EBD31344C858
          13EDEA07DDD31FD3FF007BAF862699622ED2CEE88AABD5C1D2A73F035189FB30
          7E489A3810CA2A4FD244A84E7E04B023102BDBD480164623D49AE048B6A16770
          14845A2E42807ECC068ED0D5F4A008A72EA40140699E1845B7B8318119922515
          F78A93D3A8E982A36E90A8F628652B4D3E3ED1D4E1E47B26EDC435CCC41F69A7
          B4E7D4E1DE4B563248A56124103AD09F4398CF1696A96E521B540BEEA9FCE908
          F1FF00B39E35AA9D16B58509C8BB93EF7FFC44D7D310DB3B7E6B8335C1209A83
          928FBC0CF09248B53203A89EAAB5FDD8494C60244DA1090348560A4123CAB97D
          F88920A35BC0A96F248CC4EB98FB98807C6A68BF662D608A1EE34EC2DED55403
          2B483A800E45BD0FB40C6DFDB844B23855EE382E88F191AD519AA58E7E3F7636
          F96553A379DE1F7699AE456B6F6507D340A801E9AE5918FAD0E2302D5A79E792
          0DE3758919A9249081F4D1015C955D8C9A7CCD7AE37FDD370533D8D83A8BE9E1
          4A9BA9609633DA8FFE291C27AD08C6D11DD6AFAC58638E7B6CCF6959559454FA
          353EEC40EA4046456EE2D350F3CF12AAFE150B423FD38776514515634F2E98BB
          0A4EB190D5D33CFF00D189266F687218C872A00331F7E06D362AED6602B410FB
          505D5C2B2C823691854050ACC3C2A07A62CF876CD72F7B25BEBB8DCAF18A9965
          B92E1DEE7A690159E82BEE22B4F1C5CD9EDA80721BF599EEAF9C9594452210D2
          0152434A6B404E60678795E26612C8C92CA57DBA8339A92330482757AD309B88
          8A658E2281D2353D92EC095652DD08514AFDB892C762B3D4E0B473DD43A8C2AE
          E34300C732C3C7C0572EA71F996AD2ACD53207476620508A3780A1C5C4D7313C
          600091C56E8AF20197A7F8E184768EF18223FCC40AC4655AD053CB054DA19660
          C5110A9202A803C46787D70131200CAE45454935F0FBB0EA96AC00CD8A275A7A
          F875C33763DC9A8A4601F69700FBBCFA63FA43AF63F07FB3168D205021A5CB0A
          0240890C9E3FF06214AA774C492316D35D52BEA353F653112A50B814205284D4
          E2366515563A8103D30A2E1502C435B0A0F0CFC7005D2C26A0BB860B96AFB716
          F6DB5ED4773B9BA3A60836F81A691CD2B45112927A74C3AD8FC71B93CEEAD75F
          4E9B74ED70D0A81AA44882771912A35B2A90B51522A313A4169A668B542D1C8B
          42AC1A85581E84508F4387FA5DBCB2408650429EB5E869E429FBF0C7FB63A5B5
          AA3ABB2835E953FB6B893BF6AE9712E99645D27202AAA95F403A618DC5A12942
          181AD491FC3F67A62D635874A49EC1DB15FE35C989F0A8007956BE18B4B5452D
          2BEB49103356524AE55F0208201F427C716D6D14265927A5B5F18D00D6588D70
          A1CB4814198EB8B082387505405030563180992EA07365A9CFD71B02CB1BBC16
          AFA598F5D1249AD8024F895FDE7CF0B74F6CDFDCF70964DC268D2B4592570220
          99E4A89A7481D3C316764F08315876AF248CA8292CCB277159C789D726A24F88
          07AE088D2AD1BF60C86BEF90AA2B37EEC47086D450697FF1C01181A89F791E9D
          3A61D11733938502B4FF00A81C08ADE107BAC228D97267918540247F08A549F2
          0478E27876C4FA831A3343210023B0655790F805A8345F2C4529B6927DD3434B
          69B7924BCB3C9431A051980ABEE73D0D286B8AD8C42E77596588C77B0C9DD16F
          338D2B5750353A86CC741D3C3170F730B4B3DCCD24D784E6D2494D2EE49CC6AA
          0CBA658477B74917F1B4170A5C30A92431C881EB5CBAE24B18A54B6B62BDBBA9
          634CD8575685AE5A49AFFA7A0C76628228F4D05260A7578014E99D6A3CB13060
          9208808ED64CB4A85A2E9A79FAE2E52389022D1474CC50664F8D71204890C42A
          4A350D49A572C3489022B28C940198A67874489161A1241A000F8E2548151157
          DAE456BD7C6B8954223D01CE83EEC7E01FD7D3E1FEBC6E737734B2402D603539
          3DC4C23A8A79231C5FF69CC9044D2DBC4AB52498600AADF67B6B891E691888D5
          98106BEE06997DE71B3ED1773181772B84B691E3A1750E429D3ABC72389E5B73
          71712DBD2E24796525A4543A990AA05146029D3EFC0936EB386D5F21AE2401A8
          3A02695C6C36F26E7DFDA2FA7B5BDDC2DFBB268B775656EF288C160EB41AA809
          71ECCE8A5774E537F15AEED1CD670AED577368918472C8EF2A23782B694CD1BD
          D4F100625DB390F0DE3FB9CAB1CB62D06FDB75A19029A10B15DC0B1CD1D08FC6
          4B30EB9675BADCB6DDE6F385417B4876CDB76ABD4BCB650A2A6463BAC72CD22B
          3662922D573CAB88D788FC9DB0F23EF12F72391DB4FB53534FB74FD3FD786CFC
          C8C6E5B945F1A7F7DB6818B8B8E2771B7EE6D3019D63B7B495EE08FF00D2AFA6
          12C792711BFE2D7B37E6C369C86C6E6C2570722C16E5109E873A61AF61B40CD2
          8315BA015D2CC0091FD3D31F55F425E42FA2D94AD6811685FEDA1001C59C0F6E
          CC232216671A7DAA49A1F319E2DED22B658ADC2AD422A81E35A529FBB16D01B6
          2213A67B72546A52BFEBC59DCC96C02DAA2E88C014D42800A53A6582A220AD2F
          B8955029EE534E9E980F1A69515FC5E75AD7A60A0FC35A91F753058E5EA3122A
          369634AB1272F4FBF1269063966568918E45148F715CABA88C87FB30F63C877A
          DBF6B560B28B3DDAF2DED84F92A851DF656685481A89FC46AB98AE2F641CCEDF
          78DDE605AE375DBC4B7AA51D04BF91240AF1126A1168D45191A530B359DA4978
          F2D4CC9792C16FDB20EB0412EE47BBC00C5F43B1A5A6D5741CBC2F147AAE561D
          6D45633968DC78165415A654AE23E47C7B954D65BA5948D7364EAC924313B466
          1AAC1286845149A5132398CF3C6EB736D3A5BF7E5924306DF1C76F0C6EF23C8C
          238ADD51235F764A8A140A0000185A723BA4688868EB71215A0F0A13D3061BDD
          C0F7622D14903952400C6843155241EA08C2C723A91420915F135F3C0512A866
          FE2954BD2B4FF787EFC1AB3293511BA311E233C8F43EB865653A0EA0DAC6B258
          2D6A3578627A42DA0BB084AF88D5E3FB71DCEDB26AAEAA938FC3FC5ABF0E240A
          09779D235662412B1A6797A9C34C6560AF546232347C88A8A647C703B754695B
          B51AC872295AD73F5A638D38AAAC57B12E890548F754127D47EFC48A5B235143
          8FA599CBDCD81FA39DE4D5A9F481A5C93D752D0FDB87963FE8CD53244BE058D4
          91F79271BD71CBEDEE3BD5FCBB4B1FCD73710A46AF1B46E8481A051341CF2F6D
          6802ADE26C1BCCB651BFB371BAB3752146BCE31A837BD865D2AA0D6BD2B6D159
          EFD2F62D808E38C332D1169402869953FE873C5A43BBF2596147658993B86AB5
          C852B97A1C4977B772691DE040DA2632A67D00A3D093D3A57076AE4D7E0C75ED
          91338646068286A6847A1FF0C18B7AE11B1FD45E30B8B8BBDB6D62B1B8772D52
          5A6B0ED486BEADFB71BB5FD96E436A586495F6CB7B41F55125A0816880349DC6
          93B95AB9739654CAB8B29E1B5ED34A91DE7615A3661545A8AC795558D1879D3C
          08276DD4BAE18CFE7052DA5031FE253953D7A8C4728874A0A2C4C569A973A119
          74F238DCB6EB7B2B464DBEE26B2469525D44452B462B4906797961DA0DBB6F7D
          39812C77041FD930C307D97692BD41ECDDF4FBEE71B17129768DA96CB77B8B6B
          399ACADEF05C46B23B87218DD3AE4AB5CD72EA70D5CC655E98CD41539914EA7F
          D98F97F65DD392DFEF9B6F14E5BC9F68D876FDEAF2E2EADEC2087799E011DBC7
          3BBAC4A162550A800A003A0C4A61BD3190A6BA4935CBEDC5ED9FF7C958DB48F0
          3A46CCA1413AD00FB1586279AE3719A444EA0392C4921401523A938B097957CD
          DB4715B4B92925EDBDCD9725BABFB50C3DC556D76EECB48809A699C0AF46A678
          B86E49FAA4BDDED882D64BB35B6E3B2BA3D00AB3DF2DE135196401C5A43B6FCA
          F3ED5726DAD2596CEFB7FB00D156D92321A4DC2DD4B3550D4E409AE43A63FC8F
          EA02CAC89E9F53BDEC3747FEEC463FF1C37F60FD41EDB797295363F91692D24E
          AA0B437D5A13D683A605C5EFCA3B6EDB343ED9FF00BB422CE1AD2A195DAE1AA8
          DD54D0E5EB5C0693E45D8F7B9B4F721B7D825DC2ECC94CE81E2B531027D5C625
          0C0B895FB8C3C6869965E196177192D6B602B10B89348D54217DA18D4815A120
          5062B79693EEF7124115FCC2D6B0DBC0938050BBE92CD5D407F08AF89C7B61A2
          A7B9D6956233EA7C71FD01FD6A74FE1F2C3915D6A46A719B1A49DBAD7D74E005
          8A91160FEEE868E5287D28D5C5AC0A8A0C69D857201AB8D52331AF8501518E34
          5118C91CF14B74EE32EEEA2E40F4A11893ED3886F9A891CDA2C6EE42694D4D48
          89C8D7DEDA7FED57C3132EDB6AD348B558EE6E3F2EDF550106A7DCC0D722A083
          E601071F4ABB8FD047019AE2E21DB8959275B860E0BBD750018B81E3E3848A24
          091C634A2AF403191C25DDB48DD82C1D8466854835A8C6CBC877BE51B86E9FD8
          EEEDB7A2D7F777131FF2B32CFF00F98E7F9712DDBBB087599135F539E2068AE1
          9082055188FF000C5A5A8DCE5992D2595AF6562407945C310054F9824D3D31C4
          769BA9DE48AECDDB35188CE2DBA79478F9AF8E2C04ABDC5359DBB79114A00053
          C49FF0C5A45913128EE9A7F15057EECF1F2871DB7E597DF41B0721DEF68B2B64
          BC9E2ED456DB94D0A228570BA542803A658956DF9F6E71B21D2EA370BC4653E4
          477011822D3E54DF6DEB928B7DE7704FF09B1F17F1BDE7E52E41BAECDBDEF7B5
          58DCED9B8EF5B84F04F14974124578E499959482010453D30EA47D986627DC48
          542D4A0FF663F50E01AD39D72E151FFF00417789857F84E37184280A123B92E3
          AB3397435FB020C5D470219266D2634040248707AB103C31059C96A616B84795
          6695A3318ED90349EDB31A9AD465E0717173276CC7023CDF96CE4B6852D4CD00
          F0F3C4A8135EA6FA2372D5D692333DD005DB3A113501AD6B812DADCDC441414B
          8292995BB6732477BB99AD32A0AF503AE2393FBCCF246E3486AC2C0A91910425
          2BEA33C6DB63B85ABB7D34496C240C1CD4000B7E61AD4D3C4E1ADEDF5412C411
          9BBC231A838EA0AB13414C2B24A1147B4B1A54F4E98BABB8E426F6E2DA2B3B48
          3B7A4DA3C5188C34526BA0151AB24A9E9966711C5737864B785224FA6924C8BC
          512465CD295626A6A7315A624AB53AAA9AF5A63F11FEB77BC3F67DB84A232B31
          6666342A49069F666090316F0FD3F72690B0544248906716935F365343E7810C
          B6EAE12430CB29A1348AABA41AE756A9F5C6C82DC2DBDCCD3A90580758C39CB5
          2A9524ABB01427A02310AADD5B18259192698C0E0A820E914330199A0C58CD7D
          70D74F3136F0C2411089553BC18254804089B3353534AD3FFA1302069228C19F
          48F705663A2A40E9ED6A60D53A6440EB834426991CBA60E988B53CA87FC31BA2
          5B0D572D04CB6EA456AE6221722478FAE23717491BA0549927B291255728090C
          A66C8D181CB10C7717CD049AAACF6082234F2FCCEE1FD94C470338EEDBC8C93E
          935F737E602480332AC0F4C70140C4E7B8E59F86CF74716CCFABBB1C1F51D965
          275167AAB0692B4D20E54F3C4401D545153D3D698F9AEE6C772890CDCAB9284D
          3113466DE2E4D0FBC7B940FF00661C5C6EE22BF8F508A2B51A2A0807DE8ECC58
          647C47EDA10AF32D1BF96194B0AFA17098FD3ECB71B76B866E49B7590170C58A
          879964D748AA3DBA0303ABA8CC5300E9A93E795305948247B48A79E3F509ACD3
          5738E5AC287CF7FBB3E589CAB7B80391FB29849D419166636B2A2F4018FB18D1
          49C8E5D40CEB89EE655582DA00669EE24A2A220152CCCF9000753E18B1BA5DFA
          C2E5A0B88898E1BEB725564AC2EFA63249D28E4D0625B6B7E5FB248F761ECD05
          C6F3B644A246F6519A69D15333996200EA72C6E70CB79B176A59E48EA9C978F3
          2B511518EA5BE23A82323E18861BEDDB60759088A3BE1C9B8DC6A4E82C03837F
          ED2749CFA5683A903125ADBEFDC6D8DBCAE9219797F15421A43DFF00E2DC16B9
          48331962DEE2DEF3616B794078E68F967187520D0D418EFCD71B66E3737BB7DD
          A46E2D6EADF67DDF6DBF93B4F43AB4D9DC4BD0819D3D308CB248A5739918D596
          A722474F0C33ACAEBA7AB92DEEFB0780C121C9924AE4A3AD287121ED97A8A820
          F43F663F09FC74F1EB8ECE4F46372E221EC0F20A022BE869E98B781EAB25AC51
          DA93FCAF192E5FFEF2927CC9AE3E56B7E4BF0EF1FF00958FC91C3EFF00E37E31
          2F38675938AEE7773C3345BEED82307FCDC3DBA4617493AA85C21756D8A28642
          E90C9F50F2C806A2B0A87D458505599803414273CEB5C5C44A424A089ADE4615
          0B2C6C1D1A87C9803886F6D631F5706A9608A402A245051E324D29535527EFC7
          77B6609518C3716F250B4722F5534FDA3D31F25EE296C665D8A3D8D124A1200B
          8FEE26990C8D6227C7122F68A15272C1FA80228D3391E4F6AD078927C30B158E
          DFDBB2FC3F5B30D4D250956ED20E832A87626BE0A41071C378CDBC2D7326FDB9
          D86D261886A2567B948D8903A00A4927C0678BCDD1958DB5BA817F6EEABA5218
          F51D6B45D555A96A126A2B415A623EDDA398C11D55B2A1C470B5A482DEEA349E
          3D08400E8446DA8F990569F66388EFD246F0C562D76AD28F6E736DD3C34AD475
          D7E7894C510AE858E532518A88A9931D4DD7565842452B45507D00C7CA97876C
          8E7373BFEF3741A4894D4B6E13106A47AE25B63B71687554465080083911A7A1
          1E6316E96B6E9756E408D21DC0B47D9D3AA9431C6C5C660679E5D4938F86B74B
          CDA6D4C165BFD8497B3C52CA0AAACA1D5D11E3EA0D05091E7E982C26A3D74E95
          1D2BEB892CAE2E0BCAF568967A03965D07EEC7CE9B84DB6DA2DBDEF32E4F7B67
          2C57131D704BBE5D4B1B3030E4C632BA878356848C5E47358A2C96AD25BDC241
          23B9D40075C8A01EE5607AF8E2E6C67D97E961B86EC9B8DC4A3AE8A8527B71B1
          A9CCD0540F5F0C7CA7C86E0C9B84DB5F1ADDB736BBBBA5035BEDF2B02B1A058D
          3A7F0A8C12C73EA706403B539C84F1503F4A0AE543F61A8C496D24C638EDDE58
          9EDEDBD81B5D49AB5598D7554104509F31925B346C618D7B6A892CABEDA52874
          B0AFDF886DA18B45A5D36B1AB3D3201D2BE45465F67AE361B06DED2DAF21B78E
          2BEB77867359405073094CA98FFE3F7781A39F4A0476D195057F181F71F0C3C9
          0CE92C60148E4D5AAAB954039D701821294A00EBD00A7FAF0CF1DB97A023F0D0
          8E9D698987D215535A96197AE3FA4DFD6D3E3858A4717124A613332960B1AC47
          51415F20A3F6E2E2ED53B8D70D2C8C4D5828767A0A9E83A7EDC595DA3C334F71
          3CF631583480CF19B7852432BAA00046FAF4C7E743E589AF6DA12F034F6BB45A
          4C95F72C44CD2B67E152A3D4D712136EC33EB438DC8BA92B34E66887B800A624
          040049A7B81AD3A9A9F1C4096293457D72F1C282C80D5331650AAC0A9D59D00F
          1F0E84E3E5C1BB493C7C9ECAC768ED6EBB3DDEE1691ACF7B1EE2AE4C50CEAADD
          BD0150B1240AD08D46B717FB4EDB7FB735C5B1B8B7FEED7979AA03226B225FCD
          700A1CDA98DBB90DA6C89A770861BD82F9E10B351D03024B203500E60E63C462
          291F67FAB58C8D24AD34D3A787FD3F7625BFE07F176C9C2AEF96EDBFDBA76D93
          6EB1B0D276E65D11C4B6D1C79C893C8D2119B69AB1202E9E4BBBEED0B46A96D3
          C8DDB0A02EB52B53DC2A28A5AA7D3A0272C599DF77EDB766EF10A8BBBDDDADBE
          B2294A77590F8E3BFB6EEF6DBD6EDB394BDB5B6DAD3BCB2D014645942F66ACA4
          8FC63AF51E3656DB1D82595A5BB8FA4762A65327B935B11D051B4E915A6799CA
          9707B8AF717122BCE02D4D75518557C3A506207A8D2E2AA45478D3C49C720DCE
          0DA9268B73BBBABD5779ED143ACF2B3D692480E75E8461E73C722955892355EE
          DC29FB67AE2DEE2F3607A3B6911D868BB6040AE62C9A52A3D4D31C7371836C9D
          7E92EAD6F5249AD668FB4B15CAEAD4CC8A148084D0D09CA9D456565708EC000A
          3AE74CEB801670A914BEE35EBD2A31CAB73B0BFB5BC7DC372BD9EEE2B49A2919
          2692E19DE3758D8D181398398C7288E01DF782FB43073AF497B2B7934139D29A
          A82BE1960CF6B6A5594EA0D1A124118DC762DEB8D43C8B63DCA0976DDD36BDCE
          D927B6BAB6994A4914D0CC191D194D0AB0208C88232C5D6FB71FA74E3722EF3C
          8AD2FDDADF8C6D73E9B2FEE11592456F12D9B910CD0A29291019B96EB526FF00
          63BCF8838D71EBFDC4B5889F6251B54B6D3440B0CF6D920688AB251AB4A9F6B5
          6A4623D93E2EE1E789F175B1B7B1BADB56EF70BE47BB8C4CB34D14BB84B348C8
          F2444C67550A1A819E59DBB1FB41C5DB456CFAE3469108254A9515D40D3AAD2A
          3113411B820023235FDE3108A48172F3F0C5819CBEB6560DA8740256E9806ED1
          48029A9BC694EB83DC456240534CEA0E3FA2B460D4A0033CB1FD11FD6D7D0637
          5B9B6B322DE3ADBDA3B13F92B280A873F1658EB5C07920FCDB8956385E83AE92
          283CB33D4627B97D2B05BC684476E2A750D3104FB9896FB73C6D167617236FBE
          DA7B31C7B8F7FE98473893EAE5959D3DD40CC1050D72A6155FFB7DFA088113EE
          BB3ED1777126AA91AE59AD9A42C7FE2AD3C6B848AF7E37D9EF7EAE67BBB8B9B7
          3BADAC9AA791A52A8B0DD88D73397B0D3CB1B76F52FC757F19B5759554EEB15C
          244C1D7DCB19B484B11D06A7A67E7438E7526FFC5B7DBE3C9576C82DED768B4D
          B9D87D1FD5B307EFDEC429F9E3A571BCEDBC67E124DCB6A96EAF378DAB71DFB7
          74B49912E241318A4820B3B852E64776244BE386D9A2DB78AED96B6E6E1AC6F1
          F6EBEB8BC58DE4792282AF7BDB6281D514F6C01E54CB0ED75F27ADAC13B178ED
          EC36CD9222809274868ECC37B7A66C4FA9C43B86E7F2A6FB757916A36EEDBC5F
          46B1EB5D0DA12295550328A36902BE38E33BEFCAFBFEF7BEDC72DDD7FE4BE2B6
          7B1ECDC9F996EB7DB8FF006CBBDE5A38ACB8F59EE776DA6D76F9A567EDE9558C
          D48CABF213DCD872FE3D67F1ADAF0DDD37EBBE59F1FF0034DA6EEEA6E75BEDFF
          001ADA6DB6FDA370DB22DDAF267BBB1ED9686C9A3AC8811DD84A235E03C69B92
          6D7BF5DEDB79C923DB39D707E6BC48DD6DD61756767732DB49CA769DB92530CD
          7F6E1D6362C03834A678E13B971DD9F9A584BCF36FB5DFF638F95F02E5DB66DF
          05ADCD97F73512EED71B69DAC164A85963BB68E46A089E4D4A5B946F5CAB72E6
          2786F0B9B7AB1E69CD360F8C3E51DE38F6DF2F1CBB9ACB7463BAED7C76E2D248
          ECE4B39966992668C6863AA809C49F186F8FCE396735B5D936AF92773D8FE13F
          8A3E55F91576ED9F7CBDDC76CB09AF26F8F78EEF505B7D4CFB3DE2C4933ABB76
          9C85A678F84B6CDDF867CAD75FFF00BEEC3CE3E41E1B6FB07C2DF2BEE7BE59DA
          701DEF62D83704DDB8C58EC12724DBBBD372081ADA6B8DAD6DDD14B1957B96E2
          7D9FE41E296FBDECFB0EFE974D65B6FC99C639370BDF233697AF62FF0053B373
          2B0DAF72B6D4F0B18FBF6E9AD0AC89AA37563FAA9DC7985B8DD762FD27FC51B7
          7EAC79A6D3C3E5BBBAE4F73B2DDB73079238ED371B3B1DB46B4E2132D994DD1D
          E497B8B3C56B1A432DCDFF0016E17C7BE45D9375DBEC64E4335D7CBFF0F7CB7F
          1E6D8D6F15C416CE916E3CFB8D6CD672CE5A752B6F1CCD2B286708551CAF15DD
          3E43DCF776FF009FB781F1FF0008D9BE3EE2DCA798EEDB96F1FDA2FB7F6820DB
          7876DDBA5E368B3DAEE6777ECE8548C9661957E45FF951B96596EDF156DDB7F3
          9E69C67987C73F22F1DDF936BDD0EE22D2E6D369E41B1D95F6E0276DA2EA38D2
          CE1959DE3280172AA764F89A39F96712E5FCA7EA3FE4CB6F98BE39F91B81DA6E
          D73696B2DFC963B7DF737D8F6AB4BCBE16B04D73F496F2BCE6086698218A195D
          3E349B81F17F94B9A71FF94CED375F1CF38BEFD3A7CF96FC62F2DB7F109B1BF5
          DF374E150EDB0D8CD1CE92FD6CB7096EB11EE34823AB63E55E1DC3F7B379BCFC
          39BE43F17FC99B7DA437D6476CDEAF78BED1CC23B759648E1594B6DBBF594E25
          B76741DDD1A8488EABC0FE51F8BB944FC97E32F97360DAFE42E09C92E56FE296
          FB64E41B7C5B9D8DCAAEEC91DDC06582E15C2C8A92256842B0A0DBF8B4332DED
          9EC126DF258DCDFC16ED71A36F9E39E3899E248C32B7682B9235115F7026B80D
          B9701B2DCAFAB59AE76C9E4B18F503D7B6F1DD1E9FEF67E98DC3E4C4DC23D8ED
          1E44B47B2302CAF12BA3F6F5382A054BB2F4CF4824E668D1DCBDFDF4A0B00D0B
          C10C6DA48151F92F967D6B87B25E26F76920EDDC5D5E5CDC77402749A769D508
          272FC3D3A50E78B2B7B1E23B5C505D936D0C773696F2C8245FC2BAF70EE559BC
          06A15389618A05E3AFB61912FACADEDD2C64B7922610BA4D15B244E1D58D0823
          23519E9A9B999E4325C7FE6199BBD282428A9735D5E75EB894C655E2F6846600
          33E903AD3EDCEB86259915417B729929141E586D2DA94D7A9E84531FFA9A7135
          ABCE8679A6479D73D4046E61453E1ED504D0E63C7105A4522908ACC02E6C6466
          68C0A745D4749A8F5C59F72A6D59BFBA4EA3F8A2875698FD7530CBCEB86B691C
          CC518DB4BDB3F88AD6476A9F377A038B692EB418202B70F082492E13DA096F02
          48CBA678952E02F7A32B338F6AB0919438A819002B9530AD1DC2688C7E6F6486
          F7365D0F856987315C2D634A89247FE6CCB3039540A60917625D4DA032B549E9
          4D03C0B7EEA62431DC0508744B129CD001903E07A9C0315D9D0C74C7A1A872CF
          135CCB77A2DE11A85188D75F684503C4E3875F4BCEF76F8FF73F8F37B1CCF8A7
          24E1ABB33DC457D26CBB871E923ED6F961B95BBC46D375994830D6A4104118E7
          D67F22FCA9C8B9DDE7CB31718D9373DCF9745C2DEEEDECF82F219F926DF08DBE
          CB6082CFB26EEFE512ADD5BCCB22EA4A695C5E72AE3D7B1DC6EBB8D8CDB03429
          C63E3AD88AC13CF05C3133F14E37B45CB6702FB1E631F8942C14AF06E37B4FEA
          439A5CF0EF8F2DF6DD8F69E23B8DB7C7D35BB6D9B6C715BC3673CB17178EEDE0
          314223775B85900A90E18EAC729E4177BC4897FCB378DE79D5E36EFC23E17DF9
          5A7DF374B8DDA758EF795707DD2F658D25B822313CF2324744068A06376F96BE
          3CFD4D73AF82B92F2BE3BC6FE2CE5167F1659FC757563B958F15BFDEB78DB1A6
          8F9D713E44C93452722BC0CD13A2B061A9495071F0C7C850FEB13E4FE2FF0033
          FC41C7B9AFC6D1FCD7B158FC3EFBDEFF00B3F38DE764DF2EED379B6BFE0775B4
          FE4C9C72C92D9ED2C2DDD5233ADA467766DC38E72EF9C3947EA0777BEB89375B
          7E63F2D59F0BB3DD2DA292D6DE3165047C138F71BB36B78DA3322992D9A5D523
          5642BA153F538BCAF90EEFB749FAB1F8BB6EFD267C891ED57169035AF1BDACF2
          D68A7DBFBF67376EF0FF00CE579ADE5EEC674C548C697EE6D1BFF20FD6D7C93F
          2DED5B70B8FA8E07CFB6AF87ED366DC1A4B49218C4F2715E0DB35F288DD848BD
          ABA8EAEAA1F526A46E13C47E4EDE2EB6ADA782F228BE4EE3F0EDFB5F11DF2193
          714D8F73E3E22BBDBF9C6CBBFEDD711F6B7698A892D4B2C8B1BA32B2038F9F3E
          1FDAB7E9FF00B47EA3B619BE3AE6F36C1C57E2DE237B67B7DC6DF7FB6B344FF1
          FF0012D822965EDEE32143789384600A2A86903FC45FA80D83904E7967C3BB8D
          FEFF00C7ADF69E15F0CF168659774E3BB9718996EAEB82708D8AFE6885BEE92B
          087EAC466408ECAC5171F12FCBBB0736BB3B9FC67CAB8A7CBFB241C63E25FD29
          F11B86DD786F22B1E4F651BEEBC0BE24D8F7786DE4B9B18D275B5BE85E588BC4
          CFA5D81F91BE55F84BF5D3F23FE9DB6BF9B395D97CA3F38FC6DC3B60F88B7EDB
          6FEE6C3E3CDB780C27699F98F0EDDAF36F9DD361DAE595E59EE622B14C890234
          E2587E1DF80786DE5EEEBC3FE10E29C7FE23E25B8F2A96DE6DCA7DB78CECF6DB
          35ACB7725AC36F13CEF15BA991922452D52AAA320F354A2E4AE7235AFA624B74
          8DA31329ED96396A3420D4E27172C562B71F4976CF99D0CD47A00731986A7A63
          FB3EEB7F1C312B25BEDDB9CAC0460D4BEA62D5F6B8C8FF002E6C72071359DD2C
          5189E40527EE068E48A42141257A1AD2BE3979624495A263781F71B08E478C2D
          63D46600B824D0AD4625EFDC4B24D77FE5E695A4D52C8D40012EF52581A004F9
          7D9897F3DAB6DAE3632B2131696A383A7A953911FB30FDD9E8455F59350CBE06
          9F7F4C467B834D43091865A453C3EFC4CC2656690965A5299D3A01D31F807E2D
          5E1F8B105B3492209237B948C57F1CD214029EA284FA62DECF6D471757B2A58D
          A4C0E94650FDA5AD3A6A31935F0AD717B79605D36EB3ED5A6D8180D223B68A38
          D35D7A0321524FAE27492E923891A5B89DC10752DB977725DF2D2E750527A923
          134CB38B78F75918A9726468ED91D88D67A1049A1A790C44B3EE0B13CCB3DD9B
          CBF95D227AA33518A66A0E9001EA4918124B71AE28749912E0D03B3E990AB53D
          32FF00ACE2CED2D3DD79B84C2C2D5677ED431CB73288E3F737B7482C3533741D
          3C71716514C65097135A45770D7B73491D1498DD68194135A8CB31E58107D53A
          2C0BDC68117F148ED535F30453F66111259162854CF24A40F644A28CDF6FBBEF
          C4512BB1B6B45AC2D2D006504966FF0089ABFBB0B2A8ED691A6D557F855B23F7
          E3E531BEFC83F25F15B49378DBBFE4C8780712937ED9858FFCB7B5775D259F8B
          EF8097B95997B51CE8A195C940598B711DC3E705DFA18B9070AF8FEE9AEED788
          EF97E87976E977B8D9EEB04BFD8F6C9961B97964B28C5ABE9D2CCAB1202C418B
          7EE4F1DF59DF5C6FBCA46CD0722DB67DA2ECECD1728DC62DAF5595CC16D3AFFF
          001E907F5115CA51DAAE6A7E75DC47CE7CCFE39D86C792D941C438C6D365C4AE
          76D36238471E792E2D3FE6ED83779238DEEDEE158C3208CC8AE74773B85BF497
          B9ED5BFF0028D8F7EE53C1AE37DF9F26D8F8EC8D71172BFA2E36F0A5DAED3F1E
          73B92CE491E6BF6580D8C0B5561DC53188DB82F2EE6F7DCC794EC5B9FC9F7DB2
          729B6B6E07C9B75DE61E1ADF19DDBDB4773696DC078ADE4F1FF7E8E2912F2DB6
          A50A1D61699C2C831FA90DF7E15D9F99EC9F28F11E23C8371E070F29E01CBF67
          BB937D4D8AF1B6C5B2B5E57B4DA8BC905CDBAFE4A47280C555D7DE036D7C5768
          D9B9BDB6E1BBF7D76FBAE55F1A7C95C736CAC10C972E65DC3926C7696717B63A
          2F7265D4C422D59941F88F6FF9039E73EE717D7BBE713E3FCFACB6BE33BDED56
          37705D6F16765BA5E7D36F9FA7BD8D20B1852492E2589F7C8645854AADCF702B
          9FD446C375F3FF00CB7C1B6AE17C936DE35C2F63F857E30B0E5DB5C5613F03E3
          7BD4BAEEE3E01C9996EE4BCDC2E5D95AF832214F62A952DF0EEF3717BCFAC6F3
          78E09F17B738B3E1FC6ACA048F986F9B572BDC3925E6E6B0FC75CDEF966825DA
          2C2DDEDADACD1607B98CC82357071F0BF2CF9B9796EE1C6B70B7F93F8F73E161
          C2776DD37B3BBC1CEECE3E1F2CDB671FE31B6EE888DB2DADE1FA8FED56B13EA4
          69E38E578531F00FC6FF002649BEEDFB6F11F8BB79D93F560BCCF8AC9C7EC2E3
          E576BDE210EDB36DB7F7DB759C3B84616DF7FACBB34B2D951959CD1ED09FD20F
          EA5B9CFEA33E53F96FE6CF9153E0E93E7AFD31FC8DC27E2FB1D9F6F3F21720E3
          9B0F31FA8B1E25C1363DFACBFB05A6EF7D789AB705FA67B556BBEEC31CD1BB9A
          11A73932C9972C4A623EC96A5095C97A65D30F6F3B995A16EE0B90C6368430F0
          D273072AFD988DCC0F15F5AC6AA66B7034CC884867041FC415B3F3C0B12D2148
          0136AAF92C91B8571561E2749F6F9027A8185DB6E6E5D2EB66975EBB931A168D
          51638D8A91AAA82814A9E94AE23805F52F0CBAE33525252C0A16571415EBABC4
          56A70AED3CCED32D13464CEEA54B20A1A30CC515B203ECC6E9F44523B6DC661A
          63CC96AD5DC21FE10A493EA49AE26844456BDC2B71200922A85A0AAAE4331953
          AE19126267092FD3C4283530C857532E5848C4C559DCC2F0B52B58D8E60866AD
          6BFBB1D24FC3E9FB717D7515B3341B544B399A3F76858952D14D4F404BD4D3AE
          78DEF76922FF00F5968C96CC4B01DE99BB102FA1F7572F238448DCC8DBA5D776
          E649485A476C86454A7E122491D8D00A9D2298B75BA9C5CCD24925B7F6E68278
          D5AD563132DC34CA749EE4AC068EAA5057A8C6E5702DA49E2B65124B73106D30
          20AC481CC642C68CE412D42493978E23BA8A2134900D08B7118959A69141074A
          8A33254E91D3A1389A5B2B17876DD992DB6CBABDB897B92C934CEE35516A59DE
          47148D148C8D7C30DDDB4793E9D8C723CE0066ECAE9447560086AD5594A8A7DF
          8827BC90F73B05ECD1B23047ACD1569D01EB41896406A4AE845619269434A797
          5C1B4848D5214373330FC2BA4352BE409397AE2D6D6C2CCDD5650B159A2977B9
          958AC61555684B3B3054F522B960DBDF2AA5E5B48F05DC1A34E992291A120035
          22841073A541A6588E3540D2460449DB318D4D5CE9AAA4B50D001D7EEC6DF693
          5F49617A5EE9B7BDCEE6377B58214455B5B3B68D4EB334841124925402EA5694
          6C428CAD24F70AB3416D2AAB51400543835CEB5A7D98B6691B4B2D6579AE48F6
          1AEAA0A9F3C4572ECD6D337F98616EC54B16A2B6A0322A282A0F9E3688165FA7
          99E4891A6B595CA49DB7EE16AF50699118BCB8B4DC2E195A5B92AF14ACC18333
          1CEA72EB8ADC4AEF2D15E4EEBBD6A541CEB5F1C36960BDEF6766D97CFC483967
          8ADD4D4102D0DBEA05DC8E80AAD40C1ED55209AB1B0D44393D08AF50316FA3D8
          22F71514A00DFF00562C678A50155E30852869A5F3397DD8DBA6370ADB8D8A1B
          69E11A7569551EEFB72C1D29EC650A32CE99667EDC4C05468A1D07A53ECC3A22
          D6298149036448F6E551E18689210EF148A63EE12105457DCDD7C32C5CC16B6C
          6DF70B33F5B720911B44ABA4B30072D09406AB98049E95ACD25C136D76A0779A
          C82006600BB48FDB0340C8170BD2B55C88C09B777ED1B676372D22010DB33B88
          84922D3FA72336962056A73C862E204261B1B9AC524123D191C82D2C7AE24275
          86150DE4411D4E15AEB55F4776CB24A966C238BB90B8171A752AD58D5003E38B
          C96D5BEAED049A12DA6091B25AB3380AC9100BAB42B306EB51EB82B6D75F4D77
          08716324F564505519A29357F3061EE1983961166B568EE207286DAE0282B225
          7502C3F0FE2AD06471FF00BC8FA6BEA7F0F962EACED52B36E52476B731A2B32A
          DAB956A396F6D1A43515CA8298E34F6D7159F995CDFEF725A810B04DBECAF3FB
          6432D2DA46D1F512A4EE8AE0514023C7106D2C05BCBB0DB30BF0C1169753AADC
          3C65A30001A5E3403AD41C5EDCF684664D51DAC63B91C6A0DC771C00E6B4CA83
          C29D308AAADF4B6BAE66585C8EE32B970181C9A9969AD69962D762B329726265
          861920912E22692648E5698CC945A2890EA007B749AF5C5947B6CBAD76C556DA
          EED876A562B217372197342CD4207850618DDCD58A1796EEEA7B97691EE2ECBF
          7249199AA599CB5493993881676D49A0AA230A1D2294514F014E98FA8910C518
          219165CCC942050533F1C5C5BDBA183BF4691012D41A40D3ABD7C462368F5248
          023C32A0AE87074F5EA0A86245310CDDF5492495AC8D882E6E1218D5096602A0
          062D44A791C093BB19BF243C32495AC0AEA426823F14EE2A0039501AF862091D
          4172A62B78A521405A69E872634C803EB837091F71C1D7A64D23F3CE4A4F6F33
          4CEA3A56985138D7328D705B3385EC1241EF5C939B1198310C8541C3B4CA5639
          4B3827B9A7F2C2E44B93AA84D7EFC5ACEA0EB8D66B98FB6C57DDDB20B10A733E
          B801AE3B0C46B48E150AA2A33A69F13E270B1FD6B666A646084D17D5C627B74B
          F9642575C8DA94500233FCBA74C5C10A5A4908612B8A9C8646A7ED38CD4857A9
          7507204819FDF862DAC942A514139D4D0E2396593B747A85399143E23EFC595A
          5CDC0976F99BB374AEC685243A6B4268698B4DCACA75B9B3BB896E2291181A2B
          0A8189015F730A291D3CBFD38917B7A8664D07D94C4CED13B0C91E30321AA94F
          FEDC4E256324F6C639B6D43D52405415D5E1AF2CFC295C036E1589A2C131511B
          09141760ED912A6A081E7F6622B884C96BB948AEB0DC2669751B7B7B2CBD1986
          9A51B220E785B6BEB12375D9556DAFA68CAC7DCB44064491864BDC0ECB19248D
          2BFEE823106DF349F4893910FD728640B302240A02573A11A54B100820F8E255
          24C124A4CAA3B4AAA8E68E15906423D482A7CBED389A49A460B73FE72DEE23F7
          761A66574A2E6190B12A3C893E78D22C952E0345236A5A88C18F5E8915B27FC4
          749FB463F13F5ED7F497F17F2F4FC1FEEF4C7D5D85B9B8B4DB6DADA06054B472
          DCDD48B1409246329477E65EA0E617F97173671DBA7F6AD92D2D78ED9ACB16A0
          D65B64096C5C56B5695833B378339F2C25E3B3471CCD73CB2D45D00CCF04F705
          23775CF39A65E87F86307C70EEC19F51FF002C0F4F70644D44FF00330CFF006E
          16C1243D991A3B8496E07B5652AA0353D3583E870F7662482F7950961B599AAC
          F6DB589E5B49E4D27A1B96C947F22B1E8E6A9369315E6E40B494D344B44728ED
          51E325069FB31F4F6E18C68E5115945741C91A8723D0EA3F66232F18896BDA66
          CC4741D5ABD7FD1866566FCA63DB420C6485F1F6E58EFB28EF23194451FB8012
          7E224789341438945BB7651D0BDDCCD1B694859589F7A529520291D4D462352A
          BF550289520D69FE5FBA80F6A4D14F782D5FD9859142BCC03B56401B4BBE90FD
          7D5309136AB99E5218ACA34C6C5BD54D7EDC4725BB892E221DA470BA92335C8A
          B1CC9EB850CE6494126475CB5375A91E983AD8C9504BD7DA1A9E67C878E37336
          CA5CDBDB48DDFF00C3D6376D29E4A349CFC7C70BDC4A2255CAA7B64C908A0233
          02A33C4E0464AFB7423354A82A3A7DBE388F530855B277514A2D3A30F107C8E0
          6A6121A06D446914A9A6582A81994D3B841FD94A60A249A6704574B10299F88F
          DF88921BA5BA98D3B9125446093916240A8C5AC8B722E7B6F9C9129419152CA0
          28197A621E21BCDC6890523DB9A7F0017F0E7E1D2980D1A06D200202D4D6B5C3
          831291274214654A627852DFBE25D25A339290BE24FF00DAC5C2C56E2446D3F9
          C54569401837A532F5C35A7D1A4865150A42956D3F98B4F2D26B4FB70B1088DD
          5A286BAB84B956611C808CC0AD14D23EB4F1C47790C9D996D609ACE6D6DDC8FB
          17313685982D19519828047439F862797E89645BCB710DE44E59B5A4A9995EE5
          68EBA487A7E2EA732710DCA5C99B5848ADE6903B068964EE76DA8723EC22A7F9
          8F99C4D6A6882065863BB8B47E54CB377FB64A804072196BE74F2C431DCA16B4
          DBC18B6F99914343177356BD5D580672029FC20803A63FF6A7FA9DEFC7E3FB7F
          F163FFD9}
      end
      object Bevel18: TBevel
        Left = 16
        Top = 0
        Width = 9
        Height = 225
        Shape = bsLeftLine
      end
      object Bevel19: TBevel
        Left = 464
        Top = 0
        Width = 9
        Height = 225
        Shape = bsLeftLine
      end
      object Bevel35: TBevel
        Left = 234
        Top = 176
        Width = 167
        Height = 18
      end
      object Label26: TLabel
        Left = 238
        Top = 178
        Width = 36
        Height = 13
        Caption = '[forum]'
      end
      object Bevel37: TBevel
        Left = 86
        Top = 22
        Width = 35
        Height = 7
        Shape = bsTopLine
      end
      object Bevel36: TBevel
        Left = 270
        Top = 22
        Width = 131
        Height = 7
        Shape = bsTopLine
      end
      object Label27: TLabel
        Left = 126
        Top = 178
        Width = 79
        Height = 13
        Cursor = crHandPoint
        Caption = 'hellspawn.nm.ru'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = Label27Click
      end
      object Label28: TLabel
        Left = 278
        Top = 178
        Width = 119
        Height = 13
        Cursor = crHandPoint
        Caption = 'hellspawn.ucoz.ru/forum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = Label28Click
      end
      object StaticText2: TStaticText
        Left = 24
        Top = 209
        Width = 121
        Height = 18
        AutoSize = False
        BevelKind = bkTile
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Caption = ' DiE 0.65 by Hellsp@wn'
        ParentBiDiMode = False
        TabOrder = 0
      end
      object StaticText3: TStaticText
        Left = 360
        Top = 209
        Width = 97
        Height = 18
        AutoSize = False
        BevelKind = bkTile
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Caption = ' 25.04.2007 18:41'
        ParentBiDiMode = False
        TabOrder = 1
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Executables (*.exe)|*.exe|Libraries (*.dll)|*.dll|All Files (*.*' +
      ')|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 324
    Top = 248
  end
  object PE: TPEEditor
    EntryPoint = 0
    ImageBase = 0
    ImageSize = 0
    Left = 228
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 292
    Top = 248
    object menu1: TMenuItem
      Caption = 'Show DiE'
      Visible = False
      OnClick = menu1Click
    end
    object HideDiE1: TMenuItem
      Caption = 'Hide DiE'
      OnClick = HideDiE1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object menu2: TMenuItem
      Caption = 'Exit'
      OnClick = menu2Click
    end
  end
  object PopupMenu3: TPopupMenu
    OnPopup = PopupMenu3Popup
    Left = 196
    Top = 248
    object N4: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Caption = 'Copy'
      OnClick = Copy1Click
    end
    object CopyAll1: TMenuItem
      Caption = 'Copy All'
      OnClick = CopyAll1Click
    end
    object N561: TMenuItem
      Caption = 'Disassemble'
      OnClick = N561Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 260
    Top = 248
  end
  object HashManager1: THashManager
    OnProgress = HashManager1Progress
    Left = 164
    Top = 248
    Hash = 'THash_RipeMD256'
  end
  object PJExtFileFilter1: TPJExtFileFilter
    Left = 100
    Top = 248
  end
  object PJFormDropFiles1: TPJFormDropFiles
    ForegroundOnDrop = False
    Options = [dfoIncFolders, dfoIncFiles]
    OnFileFilter = PJFormDropFiles1FileFilter
    Left = 132
    Top = 248
  end
  object CoolTrayIcon1: TCoolTrayIcon
    CycleInterval = 0
    Icon.Data = {
      0000010001002020000001000800A80800001600000028000000200000004000
      0000010008000000000000000000000000000000000000010000000000000000
      0000FFFFFF00898A8900757B78007B7D7C00828D88007FAF9A007AA894005F83
      730082B29D0081B19C007CAA960077A3900069907F00486357007AA7930079A5
      920078A4910076A18E006B9281005D7F70007797890071887E0082B39E006A92
      810057786A00567769004762570084B5A00083B49F0081B19D0080B09C007EAD
      99007DAC98007CAA9700739E8C006E9786006C948300668C7C00658B7B005879
      6B004863580080AF9B00729C8A0070998800698F7F00678D7D00506D61004C68
      5C00596E650069777100626E690067736E005F6965007C7E7E00EEEEEE00DDDD
      DD00CCCCCC00BCBCBC00ABABAB009A9A9A00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B1B
      1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
      1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
      1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1C1C
      1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
      1C1D1D1D1D1D1D1D1D1C1C1C1D1D1D1D1D1C1C1D1D1D1D1D1D1D1D1C1C1C1C1D
      1D090A0A0A0A0A0A1E091D1D090A0A0A1E17171E0A0A0A0A0A0A091D1C1C1C17
      2A0B0C0C0C0C0C0C10222A0A0B0C0C0C0F21210F0C0C0C0C0C0C0B1F1D1C1D2A
      0C272929292929292F2E0C0B25292929192C2C192929292929290D0F0A1D1D20
      25360101010101013804140C290101013A28283A01010101010132232A1D1D20
      25360101010101010101042D290101013A28283A01010101010132232A1D1D20
      25360101013A390101013A28290101013A28283A01010101010132232A1D1D20
      253601010104330101013A28290101013A28283A010101350E290D0F0A1D1D20
      253601010136320101013A28290101013A28283A01010132230C0B1F1D1C1D20
      253601010136320101013A28290101013A28283A01010134182B0F1F1D1C1D20
      253601010136320101013A28290101013A28283A0101013C36051321171C1D20
      253601010136320101013A28290101013A28283A01010101013A2807091C1D20
      253601010136320101013A28290101013A28283A01010101013A2807091C1D20
      253601010136320101013A28290101013A28283A0101013C36051321171C1D20
      253601010136320101013A28290101013A28283A01010134182B0F1F1D1C1D20
      253601010136340101013A28290101013A28283A010101331A282C21171C1D20
      25360101013C3C0101013B14273636360513283A010101393A3A190F1E1D1D20
      253601010101010101010325193A3A3A0227283A010101010101290C0A1D1D20
      25360101010101013704080C290101013A28283A010101010101290C0A1D1D2A
      0C1532323232323130260C0B0D323232162424163232323232320D0B091D1C17
      060F232323232312110B2A1F0F232323112222112323232323230F1F1D1C1C1D
      1D0A2A2A2A2A2A1F0A091D1D0A2A2A2A0A09090A2A2A2A2A2A2A0A1D1C1C1C1C
      1C1D1D1D1D1D1D1D1D1C1C1C1D1D1D1D1D1C1C1D1D1D1D1D1D1D1D1C1C1C1C1C
      1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
      1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B1B
      1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
      1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
      1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
    IconIndex = 0
    PopupMenu = PopupMenu1
    OnDblClick = CoolTrayIcon1DblClick
    Left = 356
    Top = 248
  end
  object PopupMenu4: TPopupMenu
    Left = 68
    Top = 248
    object Copyoffset1: TMenuItem
      Caption = 'Copy offset'
      OnClick = Copyoffset1Click
    end
    object Copyselsize1: TMenuItem
      Caption = 'Copy selsize'
      OnClick = Copyselsize1Click
    end
    object Copyselstart1: TMenuItem
      Caption = 'Copy selstart'
      OnClick = Copyselstart1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Copyall2: TMenuItem
      Caption = 'Copy all'
      OnClick = Copyall2Click
    end
  end
end

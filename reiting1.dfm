object reiting_gr: Treiting_gr
  Left = 225
  Top = 117
  ActiveControl = SpinEdit2
  Caption = #1043#1088#1091#1087#1087#1086#1074#1086#1081' '#1088#1077#1081#1090#1080#1085#1075
  ClientHeight = 661
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 20
    Top = 589
    Width = 176
    Height = 17
    Caption = #1050#1086#1084#1087#1083#1077#1082#1089#1085#1099#1081' '#1088#1077#1081#1090#1080#1085#1075' '#1082#1091#1088#1089#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 15
    Top = 168
    Width = 930
    Height = 401
    ColCount = 8
    FixedCols = 0
    RowCount = 2
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    ParentFont = False
    TabOrder = 1
    ColWidths = (
      30
      113
      119
      92
      133
      124
      139
      144)
  end
  object Button1: TButton
    Left = 880
    Top = 611
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 929
    Height = 153
    TabOrder = 0
    object Label3: TLabel
      Left = 231
      Top = 76
      Width = 30
      Height = 17
      Caption = #1050#1091#1088#1089
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 18
      Width = 65
      Height = 17
      Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 671
      Top = 20
      Width = 87
      Height = 17
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1076#1072#1090#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 439
      Top = 77
      Width = 45
      Height = 17
      Caption = #1057#1077#1089#1089#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 12
      Top = 77
      Width = 112
      Height = 17
      Caption = #1053#1072#1095#1072#1083#1086' '#1091#1095#1077#1073'.'#1075#1086#1076#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object SpinEdit1: TSpinEdit
      Left = 311
      Top = 72
      Width = 41
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxValue = 6
      MinValue = 0
      ParentFont = False
      TabOrder = 0
      Value = 1
      OnChange = SpinEdit1Change
    end
    object raschet: TBitBtn
      Left = 304
      Top = 119
      Width = 313
      Height = 25
      Caption = #1056#1072#1089#1095#1077#1090' '#1075#1088#1091#1087#1087#1086#1074#1086#1075#1086' '#1088#1077#1081#1090#1080#1085#1075#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = raschetClick
    end
    object Edit1: TEdit
      Left = 784
      Top = 16
      Width = 121
      Height = 25
      Color = cl3DLight
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 91
      Top = 15
      Width = 337
      Height = 25
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 504
      Top = 64
      Width = 345
      Height = 41
      TabOrder = 2
      object RadioButton1: TRadioButton
        Left = 35
        Top = 13
        Width = 111
        Height = 17
        Caption = #1047#1080#1084#1085#1103#1103
        Checked = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 189
        Top = 12
        Width = 113
        Height = 17
        Caption = #1051#1077#1090#1085#1103#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object SpinEdit2: TSpinEdit
      Left = 140
      Top = 73
      Width = 58
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxValue = 3000
      MinValue = 2010
      ParentFont = False
      TabOrder = 5
      Value = 2010
      OnChange = SpinEdit1Change
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 91
      Top = 15
      Width = 184
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = 'pin'
      ListField = 'name'
      ListSource = DataModule1.DataSource_w34
      ParentFont = False
      TabOrder = 6
      OnClick = DBLookupComboBox1Click
    end
  end
  object Edit3: TEdit
    Left = 208
    Top = 584
    Width = 57
    Height = 25
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object Button2: TButton
    Left = 688
    Top = 611
    Width = 105
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
end

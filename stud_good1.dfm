object acc_good: Tacc_good
  Left = 340
  Top = 256
  Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1086#1086#1097#1088#1077#1085#1080#1103#1093'/'#1074#1079#1099#1089#1082#1072#1085#1080#1103#1093
  ClientHeight = 346
  ClientWidth = 651
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 143
    Height = 19
    Caption = #1057#1086#1075#1083#1072#1089#1085#1086' '#1087#1088#1080#1082#1072#1079#1072' '#8470' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 272
    Top = 24
    Width = 14
    Height = 17
    Caption = #1086#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 204
    Width = 62
    Height = 17
    Caption = #1054#1073#1098#1103#1074#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 260
    Width = 78
    Height = 17
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 184
    Top = 19
    Width = 73
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 296
    Top = 19
    Width = 89
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 24
    Top = 59
    Width = 609
    Height = 110
    TabOrder = 2
    object Label3: TLabel
      Left = 34
      Top = 29
      Width = 62
      Height = 19
      Caption = #1057#1090#1091#1076#1077#1085#1090#1091
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 355
      Top = 70
      Width = 97
      Height = 17
      Caption = #1051#1080#1095#1085#1086#1077' '#1076#1077#1083#1086' '#8470
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 39
      Top = 65
      Width = 41
      Height = 17
      Caption = #1075#1088#1091#1087#1087#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 112
      Top = 25
      Width = 481
      Height = 25
      Color = clMenuBar
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 113
      Top = 65
      Width = 121
      Height = 24
      Color = clMenuBar
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 488
      Top = 65
      Width = 105
      Height = 24
      Color = clMenuBar
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 136
    Top = 200
    Width = 153
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    KeyField = 'pin'
    ListField = 'name'
    ListSource = DataModule1.DataSource_w23
    ParentFont = False
    TabOrder = 3
    OnClick = DBLookupComboBox1Click
  end
  object BitBtn1: TBitBtn
    Left = 488
    Top = 307
    Width = 65
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 573
    Top = 307
    Width = 65
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object Edit4: TEdit
    Left = 128
    Top = 256
    Width = 505
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end

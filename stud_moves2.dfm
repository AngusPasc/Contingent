object new_stud: Tnew_stud
  Left = 169
  Top = 166
  Width = 675
  Height = 510
  Caption = #1047#1072#1095#1080#1089#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1089#1090#1091#1076#1077#1085#1090#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
    Left = 34
    Top = 192
    Width = 60
    Height = 19
    Caption = #1057#1095#1080#1090#1072#1090#1100' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 56
    Top = 418
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
    Left = 32
    Top = 51
    Width = 609
    Height = 126
    TabOrder = 2
    object Label3: TLabel
      Left = 34
      Top = 29
      Width = 63
      Height = 19
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 39
      Top = 57
      Width = 28
      Height = 19
      Caption = #1048#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 34
      Top = 85
      Width = 64
      Height = 19
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 152
      Top = 19
      Width = 345
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 152
      Top = 51
      Width = 345
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 152
      Top = 83
      Width = 345
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 112
    Top = 192
    Width = 409
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    KeyField = 'pin'
    ListField = 'name'
    ListSource = DataModule1.DataSource_w26
    ParentFont = False
    TabOrder = 3
    OnClick = DBLookupComboBox1Click
  end
  object Panel2: TPanel
    Left = 32
    Top = 249
    Width = 609
    Height = 145
    TabOrder = 4
    object Label7: TLabel
      Left = 24
      Top = 22
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
    object Label8: TLabel
      Left = 323
      Top = 22
      Width = 103
      Height = 17
      Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 24
      Top = 65
      Width = 94
      Height = 17
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 78
      Top = 106
      Width = 43
      Height = 17
      Caption = #1043#1088#1091#1087#1087#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 302
      Top = 106
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 129
      Top = 16
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
      TabOrder = 0
      OnClick = DBLookupComboBox2Click
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 443
      Top = 15
      Width = 150
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = 'pin'
      ListField = 'name'
      ListSource = DataModule1.DataSource_w33
      ParentFont = False
      TabOrder = 1
      OnClick = DBLookupComboBox3Click
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 128
      Top = 55
      Width = 401
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = 'spspec'
      ListField = 'spec_p'
      ListSource = DataModule1.DataSource_w36
      ParentFont = False
      TabOrder = 2
      OnClick = DBLookupComboBox4Click
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 128
      Top = 100
      Width = 145
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = 'pin'
      ListField = 'name'
      ListSource = DataModule1.DataSource_w37
      ParentFont = False
      TabOrder = 3
      OnClick = DBLookupComboBox5Click
    end
    object SpinEdit1: TSpinEdit
      Left = 344
      Top = 102
      Width = 33
      Height = 24
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxValue = 10
      MinValue = 1
      ParentFont = False
      TabOrder = 4
      Value = 1
      OnChange = SpinEdit1Change
    end
  end
  object Edit4: TEdit
    Left = 162
    Top = 407
    Width = 225
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 488
    Top = 432
    Width = 65
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 573
    Top = 432
    Width = 65
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object CheckBox1: TCheckBox
    Left = 40
    Top = 224
    Width = 97
    Height = 17
    Caption = #1089#1083#1091#1096#1072#1090#1077#1083#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
end

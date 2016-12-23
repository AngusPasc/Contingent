object Form1: TForm1
  Left = 3
  Top = 50
  Width = 1017
  Height = 689
  Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 16
    Width = 977
    Height = 177
    TabOrder = 0
    object Label2: TLabel
      Left = 330
      Top = 60
      Width = 55
      Height = 17
      Caption = #1057#1077#1084#1077#1089#1090#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 517
      Top = 60
      Width = 31
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
      Width = 67
      Height = 17
      Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 10
      Top = 60
      Width = 44
      Height = 17
      Caption = #1043#1088#1091#1087#1087#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 96
      Width = 73
      Height = 17
      Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 84
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
    end
    object Edit1: TEdit
      Left = 85
      Top = 16
      Width = 295
      Height = 25
      Color = cl3DLight
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 125
      Top = 53
      Width = 150
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
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 575
      Top = 55
      Width = 41
      Height = 25
      Color = cl3DLight
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '1'
    end
    object SpinEdit2: TSpinEdit
      Left = 431
      Top = 55
      Width = 50
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxValue = 12
      MinValue = 1
      ParentFont = False
      TabOrder = 2
      Value = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 122
      Top = 92
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
      TabOrder = 5
    end
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 200
    Width = 977
    Height = 361
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentFont = False
    TabOrder = 1
    ColWidths = (
      30
      467
      100
      287
      62)
  end
end

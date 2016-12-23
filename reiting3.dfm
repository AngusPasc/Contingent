object reiting_acc: Treiting_acc
  Left = 214
  Top = 99
  Caption = #1048#1090#1086#1075#1086#1074#1099#1081' '#1088#1077#1081#1090#1080#1085#1075'-'#1083#1080#1089#1090
  ClientHeight = 675
  ClientWidth = 993
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
  object Label7: TLabel
    Left = 29
    Top = 58
    Width = 68
    Height = 17
    Caption = #1043' '#1088' '#1091' '#1087' '#1087' '#1072' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 30
    Top = 14
    Width = 103
    Height = 17
    Caption = #1060' '#1072' '#1082' '#1091' '#1083' '#1100' '#1090' '#1077' '#1090' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 320
    Top = 58
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
  object Label4: TLabel
    Left = 462
    Top = 57
    Width = 65
    Height = 17
    Caption = #1057' '#1077' '#1089' '#1089' '#1080' '#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 580
    Top = 19
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
  object BitBtn7: TBitBtn
    Left = 856
    Top = 573
    Width = 137
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn7Click
  end
  object StringGrid1: TStringGrid
    Left = 14
    Top = 96
    Width = 831
    Height = 553
    ColCount = 6
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentFont = False
    TabOrder = 1
    ColWidths = (
      31
      256
      127
      140
      134
      110)
  end
  object BitBtn2: TBitBtn
    Left = 856
    Top = 622
    Width = 137
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 148
    Top = 52
    Width = 156
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
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object Edit1: TEdit
    Left = 149
    Top = 13
    Width = 337
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
  end
  object SpinEdit2: TSpinEdit
    Left = 388
    Top = 52
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
    TabOrder = 5
    Value = 1
    OnChange = SpinEdit2Change
  end
  object SpinEdit1: TSpinEdit
    Left = 711
    Top = 16
    Width = 56
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    MaxValue = 9999
    MinValue = 1
    ParentFont = False
    TabOrder = 6
    Value = 2008
    OnChange = SpinEdit1Change
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 548
    Top = 52
    Width = 281
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    KeyField = 'pin'
    ListField = 'name'
    ListSource = DataModule1.DataSource_w11
    ParentFont = False
    TabOrder = 7
    OnCloseUp = DBLookupComboBox2CloseUp
  end
  object Button3: TButton
    Left = 856
    Top = 526
    Width = 137
    Height = 27
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080#1090#1086#1075#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button3Click
  end
end

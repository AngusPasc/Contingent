object reiting_stud: Treiting_stud
  Left = 280
  Top = 148
  Caption = #1056#1077#1081#1090#1080#1085#1075' '#1089#1077#1089#1089#1080#1080' '#1087#1086' '#1089#1090#1091#1076#1077#1085#1090#1072#1084
  ClientHeight = 681
  ClientWidth = 847
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
    Left = 5
    Top = 56
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
    Left = 6
    Top = 12
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
    Left = 296
    Top = 56
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
    Left = 379
    Top = 653
    Width = 140
    Height = 17
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 438
    Top = 55
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
    Left = 556
    Top = 17
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
  object Label6: TLabel
    Left = 19
    Top = 651
    Width = 113
    Height = 17
    Caption = #1056#1077#1081#1090#1080#1085#1075' '#1087#1086' '#1075#1088#1091#1087#1087#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 704
    Top = 638
    Width = 107
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 116
    Top = 50
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
    TabOrder = 2
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object Edit1: TEdit
    Left = 117
    Top = 11
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
    TabOrder = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 364
    Top = 50
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
    TabOrder = 3
    Value = 1
    OnChange = SpinEdit2Change
  end
  object Edit2: TEdit
    Left = 552
    Top = 648
    Width = 49
    Height = 25
    Color = cl3DLight
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Button2: TButton
    Left = 688
    Top = 390
    Width = 153
    Height = 27
    Caption = #1056#1072#1089#1095#1077#1090' '#1088#1077#1081#1090#1080#1085#1075#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button2Click
  end
  object SpinEdit1: TSpinEdit
    Left = 687
    Top = 14
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
    TabOrder = 1
    Value = 2010
    OnChange = SpinEdit1Change
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 524
    Top = 50
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
    TabOrder = 4
    OnCloseUp = DBLookupComboBox2CloseUp
  end
  object StringGrid1: TStringGrid
    Left = 18
    Top = 96
    Width = 647
    Height = 537
    ColCount = 4
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentFont = False
    TabOrder = 5
    ColWidths = (
      293
      133
      125
      65)
  end
  object Button3: TButton
    Left = 688
    Top = 342
    Width = 153
    Height = 27
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1088#1077#1081#1090#1080#1085#1075#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button3Click
  end
  object Edit3: TEdit
    Left = 144
    Top = 648
    Width = 49
    Height = 25
    Color = cl3DLight
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object Button4: TButton
    Left = 688
    Top = 439
    Width = 153
    Height = 27
    Caption = #1055#1077#1095#1072#1090#1100'  '#1088#1077#1081#1090#1080#1085#1075#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 688
    Top = 495
    Width = 153
    Height = 26
    Caption = #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button5Click
  end
end

object stud_usp: Tstud_usp
  Left = 224
  Top = 124
  Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
  ClientHeight = 701
  ClientWidth = 1003
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
  object Panel1: TPanel
    Left = 13
    Top = 16
    Width = 977
    Height = 217
    TabOrder = 0
    object Label2: TLabel
      Left = 614
      Top = 18
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
    object Label7: TLabel
      Left = 30
      Top = 18
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
    object Label1: TLabel
      Left = 31
      Top = 103
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
    object Label4: TLabel
      Left = 31
      Top = 143
      Width = 96
      Height = 17
      Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 61
      Width = 137
      Height = 17
      Caption = #1057#1077#1089#1089#1080#1103' ( '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1103' )'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 374
      Top = 17
      Width = 97
      Height = 17
      Caption = #1053#1072#1095#1072#1083#1086' '#1091#1095'.'#1075#1086#1076#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 776
      Top = 17
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
    object Label9: TLabel
      Left = 572
      Top = 61
      Width = 124
      Height = 17
      Caption = #1057#1088#1086#1082#1080' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1089
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 801
      Top = 61
      Width = 18
      Height = 17
      Caption = #1087#1086' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 575
      Top = 103
      Width = 84
      Height = 17
      Caption = #1042#1080#1076' '#1082#1086#1085#1090#1088#1086#1083#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 574
      Top = 144
      Width = 71
      Height = 17
      Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object SpinEdit2: TSpinEdit
      Left = 706
      Top = 15
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
      OnChange = SpinEdit2Change
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 160
      Top = 101
      Width = 393
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = 'spdisc'
      ListField = 'discip'
      ListSource = DataModule1.DataSource_w10
      ParentFont = False
      TabOrder = 4
      OnCloseUp = DBLookupComboBox2CloseUp
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 160
      Top = 12
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
      TabOrder = 0
      OnCloseUp = DBLookupComboBox4CloseUp
    end
    object Edit1: TEdit
      Left = 159
      Top = 142
      Width = 393
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 160
      Top = 57
      Width = 393
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
      TabOrder = 3
      OnCloseUp = DBLookupComboBox3CloseUp
    end
    object SpinEdit1: TSpinEdit
      Left = 486
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
      Value = 2000
      OnChange = SpinEdit1Click
    end
    object Edit3: TEdit
      Left = 831
      Top = 16
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
      TabOrder = 7
      Text = '1'
    end
    object Edit4: TEdit
      Left = 706
      Top = 58
      Width = 87
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
      TabOrder = 8
    end
    object Edit5: TEdit
      Left = 829
      Top = 58
      Width = 84
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
      TabOrder = 9
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 705
      Top = 101
      Width = 169
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = 'pin'
      ListField = 'name'
      ListSource = DataModule1.DataSource_w11k
      ParentFont = False
      TabOrder = 5
      OnCloseUp = DBLookupComboBox1CloseUp
    end
    object BitBtn6: TBitBtn
      Left = 397
      Top = 184
      Width = 196
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1075#1088#1091#1087#1087#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn6Click
    end
    object Dataekz: TDateTimePicker
      Left = 705
      Top = 141
      Width = 100
      Height = 24
      Date = 39814.413173645840000000
      Time = 39814.413173645840000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnCloseUp = DataekzCloseUp
      OnChange = DataekzChange
    end
    object Edit2: TEdit
      Left = 160
      Top = 101
      Width = 374
      Height = 25
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      Visible = False
    end
    object Edit6: TEdit
      Left = 706
      Top = 101
      Width = 149
      Height = 25
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Visible = False
    end
  end
  object BitBtn2: TBitBtn
    Left = 877
    Top = 651
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
    OnClick = BitBtn2Click
  end
  object Peresdacha: TBitBtn
    Left = 848
    Top = 518
    Width = 160
    Height = 25
    Caption = #1055#1077#1088#1077#1089#1076#1072#1095#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = PeresdachaClick
  end
  object Vvod: TBitBtn
    Left = 848
    Top = 300
    Width = 161
    Height = 25
    Caption = #1042#1074#1086#1076' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = VvodClick
  end
  object BitBtn5: TBitBtn
    Left = 848
    Top = 559
    Width = 161
    Height = 25
    Caption = #1048#1089#1090#1086#1088#1080#1103
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn5Click
  end
  object StringGrid1: TStringGrid
    Left = 10
    Top = 240
    Width = 831
    Height = 433
    ColCount = 7
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
    OnDblClick = StringGrid1DblClick
    ColWidths = (
      31
      256
      125
      144
      124
      121
      64)
  end
  object BitBtn1: TBitBtn
    Left = 848
    Top = 594
    Width = 163
    Height = 25
    Caption = #1048#1084#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 848
    Top = 362
    Width = 163
    Height = 25
    Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1080#1077' ( '#1101#1082#1079'/'#1079#1072#1095')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 848
    Top = 399
    Width = 163
    Height = 25
    Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1080#1077' ( '#1079#1072#1095')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn4Click
  end
  object BitBtn7: TBitBtn
    Left = 848
    Top = 434
    Width = 163
    Height = 25
    Caption = #1044#1086#1087'. '#1074#1077#1076#1086#1084#1086#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn7Click
  end
end

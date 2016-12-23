object stat_godpr: Tstat_godpr
  Left = 235
  Top = 143
  Caption = #1040#1085#1072#1083#1080#1079' '#1082#1086#1085#1090#1080#1085#1075#1077#1085#1090#1072' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1087#1086' '#1075#1086#1076#1091' '#1087#1088#1080#1077#1084#1072
  ClientHeight = 574
  ClientWidth = 757
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
  object Label1: TLabel
    Left = 377
    Top = 9
    Width = 127
    Height = 17
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1075#1086#1076' '#1087#1088#1080#1077#1084#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 73
    Top = 9
    Width = 202
    Height = 17
    Caption = #1053#1072#1095#1072#1083#1086' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1075#1086#1076#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object SpinEdit1: TSpinEdit
    Left = 521
    Top = 6
    Width = 57
    Height = 24
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    MaxValue = 9999
    MinValue = 1960
    ParentFont = False
    TabOrder = 1
    Value = 1990
    OnChange = SpinEdit1Change
  end
  object DBGrid1: TDBGrid
    Left = 11
    Top = 40
    Width = 734
    Height = 472
    DataSource = DataModule1.DataSource_w1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'fio'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103' '#1080#1084#1103' '#1086#1090#1095#1077#1089#1090#1074#1086
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 316
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kurs'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1050#1091#1088#1089
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gruppa'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1043#1088#1091#1087#1087#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sost'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 124
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 330
    Top = 532
    Width = 169
    Height = 25
    Caption = #1055#1088#1080#1082#1072#1079#1099' '#1087#1086' '#1089#1090#1091#1076#1077#1085#1090#1091' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 123
    Top = 532
    Width = 169
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1075#1086#1076#1072' '#1087#1088#1080#1077#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 632
    Top = 532
    Width = 101
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object SpinEdit2: TSpinEdit
    Left = 289
    Top = 6
    Width = 57
    Height = 24
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    MaxValue = 9999
    MinValue = 1900
    ParentFont = False
    TabOrder = 0
    Value = 2011
    OnChange = SpinEdit2Change
  end
end

object sprav_acc: Tsprav_acc
  Left = 293
  Top = 227
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077'  '#8470' '#1087#1088#1080#1082#1072#1079#1072' '#1086' '#1079#1072#1095#1080#1089#1083#1077#1085#1080#1080' '#1076#1083#1103' '#1089#1087#1088#1072#1074#1082#1080
  ClientHeight = 357
  ClientWidth = 845
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
  object Label29: TLabel
    Left = 16
    Top = 21
    Width = 137
    Height = 17
    Caption = #1055#1088#1080#1082#1072#1079#1099' '#1085#1072' '#1089#1090#1091#1076#1077#1085#1090#1072' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label30: TLabel
    Left = 479
    Top = 21
    Width = 44
    Height = 17
    Caption = #1075#1088#1091#1087#1087#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 26
    Top = 60
    Width = 799
    Height = 237
    DataSource = DataModule1.DataSource_w6
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'mvnum'
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087#1088#1080#1082#1072#1079#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mvdate'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'event'
        Title.Alignment = taCenter
        Title.Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
        Width = 296
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gruppa'
        Title.Alignment = taCenter
        Title.Caption = #1043#1088#1091#1087#1087#1072' '#1087#1086#1089#1083#1077' '#1087#1088#1080#1082#1072#1079#1072
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mvosn'
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 171
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 316
    Top = 315
    Width = 137
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button1: TButton
    Left = 496
    Top = 315
    Width = 93
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 168
    Top = 16
    Width = 289
    Height = 25
    Color = clMenuBar
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
  object Edit2: TEdit
    Left = 537
    Top = 16
    Width = 80
    Height = 25
    Color = clMenuBar
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
  object Button2: TButton
    Left = 192
    Top = 316
    Width = 108
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object newdoc: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 664
    Top = 16
  end
  object WordApp: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 712
    Top = 16
  end
end

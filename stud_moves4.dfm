object stud_moves: Tstud_moves
  Left = 201
  Top = 115
  Caption = #1055#1088#1080#1082#1072#1079#1099' '#1087#1086' '#1089#1090#1091#1076#1077#1085#1090#1091
  ClientHeight = 587
  ClientWidth = 972
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
    Top = 20
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
  object Edit7: TEdit
    Left = 168
    Top = 16
    Width = 289
    Height = 21
    Color = clMenuBar
    Enabled = False
    ReadOnly = True
    TabOrder = 0
  end
  object Edit16: TEdit
    Left = 537
    Top = 16
    Width = 80
    Height = 21
    Color = clMenuBar
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 56
    Width = 809
    Height = 497
    DataSource = DataModule1.DataSource_w6
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
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
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'event'
        Title.Alignment = taCenter
        Title.Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
        Width = 295
        Visible = True
      end
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'gruppa'
        Title.Alignment = taCenter
        Title.Caption = #1043#1088#1091#1087#1087#1072
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mvosn'
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 206
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 834
    Top = 400
    Width = 137
    Height = 25
    Caption = #1053#1086#1074#1099#1081' '#1087#1088#1080#1082#1072#1079
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 834
    Top = 448
    Width = 137
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1088#1080#1082#1072#1079#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 834
    Top = 495
    Width = 137
    Height = 25
    Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1087#1088#1080#1082#1072#1079#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button1: TButton
    Left = 834
    Top = 535
    Width = 137
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
end

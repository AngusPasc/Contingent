object abituz: Tabituz
  Left = 8
  Top = 50
  Width = 1001
  Height = 670
  Caption = #1057#1087#1080#1089#1086#1082' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074', '#1079#1072#1095#1080#1089#1083#1077#1085#1085#1099#1093' '#1085#1072' '#1079#1072#1086#1095#1085#1086#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 208
    Top = 16
    Width = 158
    Height = 17
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 132
    Height = 17
    Caption = #1057#1086#1075#1083#1072#1089#1085#1086' '#1087#1088#1080#1082#1072#1079#1072' '#8470' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 288
    Top = 64
    Width = 22
    Height = 17
    Caption = ' '#1086#1090' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 456
    Top = 64
    Width = 380
    Height = 17
    Caption = #1089#1083#1077#1076#1091#1102#1097#1080#1093' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074' '#1089#1095#1080#1090#1072#1090#1100' '#1079#1072#1095#1080#1089#1083#1077#1085#1085#1099#1084#1080' '#1074' '#1080#1085#1089#1090#1080#1090#1091#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 472
    Top = 568
    Width = 239
    Height = 17
    Caption = #1042#1089#1077#1075#1086' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074' '#1085#1072' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 472
    Top = 603
    Width = 244
    Height = 17
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object nompr: TEdit
    Left = 152
    Top = 61
    Width = 121
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object datpr: TEdit
    Left = 320
    Top = 62
    Width = 121
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 96
    Width = 960
    Height = 441
    DataSource = DataModule1.DataSource_ab1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'pr'
        Title.Caption = ' '
        Width = 16
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VORNAME'
        Title.Alignment = taCenter
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fo'
        Title.Alignment = taCenter
        Title.Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'spec'
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zach'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 20
    Top = 576
    Width = 181
    Height = 25
    Hint = #1042#1099#1093#1086#1076
    Caption = #1055#1077#1088#1077#1076#1072#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Edit1: TEdit
    Left = 728
    Top = 568
    Width = 57
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 728
    Top = 600
    Width = 57
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
    Left = 820
    Top = 600
    Width = 75
    Height = 25
    Hint = #1042#1099#1093#1086#1076
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
end

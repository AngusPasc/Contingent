object abitudn: Tabitudn
  Left = 232
  Top = 105
  Caption = #1057#1087#1080#1089#1086#1082' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074' '#1076#1083#1103' '#1079#1072#1095#1080#1089#1083#1077#1085#1080#1103
  ClientHeight = 698
  ClientWidth = 896
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
    Left = 8
    Top = 124
    Width = 131
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
    Top = 124
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
    Top = 124
    Width = 379
    Height = 17
    Caption = #1089#1083#1077#1076#1091#1102#1097#1080#1093' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074' '#1089#1095#1080#1090#1072#1090#1100' '#1079#1072#1095#1080#1089#1083#1077#1085#1085#1099#1084#1080' '#1074' '#1080#1085#1089#1090#1080#1090#1091#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 408
    Top = 663
    Width = 243
    Height = 17
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 51
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
  object Label6: TLabel
    Left = 408
    Top = 628
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
  object Label7: TLabel
    Left = 744
    Top = 560
    Width = 4
    Height = 17
    Color = clCream
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
    Top = 16
    Width = 130
    Height = 17
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1082#1091#1083#1100#1090#1077#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 88
    Width = 108
    Height = 17
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1075#1088#1091#1087#1087#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 528
    Top = 16
    Width = 101
    Height = 17
    Caption = #1092#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 164
    Width = 880
    Height = 441
    DataSource = DataModule1.DataSource_ab1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
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
        Width = 228
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
        Width = 259
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'otch'
        Title.Alignment = taCenter
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_ro'
        Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 756
    Top = 660
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
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object nompr: TEdit
    Left = 152
    Top = 121
    Width = 121
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object datpr: TEdit
    Left = 320
    Top = 122
    Width = 121
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn2: TBitBtn
    Left = 20
    Top = 636
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
    TabOrder = 8
    OnClick = BitBtn2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 192
    Top = 48
    Width = 457
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
    OnClick = DBLookupComboBox1Click
  end
  object Edit1: TEdit
    Left = 664
    Top = 628
    Width = 57
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object Edit2: TEdit
    Left = 664
    Top = 660
    Width = 57
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 192
    Top = 8
    Width = 321
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
    Left = 192
    Top = 80
    Width = 249
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
    OnClick = DBLookupComboBox3Click
  end
  object BitBtn3: TBitBtn
    Left = 20
    Top = 668
    Width = 181
    Height = 25
    Hint = #1042#1099#1093#1086#1076
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn3Click
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 648
    Top = 8
    Width = 217
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
    OnClick = DBLookupComboBox4Click
  end
end

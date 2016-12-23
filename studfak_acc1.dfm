object Form1: TForm1
  Left = 2
  Top = -1
  Width = 1013
  Height = 733
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label35: TLabel
    Left = 204
    Top = 13
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
  object PageControl3: TPageControl
    Left = 9
    Top = 41
    Width = 985
    Height = 617
    ActivePage = TabSheet5
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object Label24: TLabel
        Left = 573
        Top = 551
        Width = 142
        Height = 17
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 72
        Width = 737
        Height = 465
        DataSource = DataModule1.DataSource_w1
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Times New Roman'
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
      object Panel1: TPanel
        Left = 18
        Top = 24
        Width = 737
        Height = 33
        TabOrder = 1
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 380
          Top = 5
          Width = 105
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
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 488
          Top = 5
          Width = 97
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          KeyField = 'pin'
          ListField = 'name'
          ListSource = DataModule1.DataSource_w25
          ParentFont = False
          TabOrder = 1
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 588
          Top = 5
          Width = 117
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          KeyField = 'pin'
          ListField = 'name'
          ListSource = DataModule1.DataSource_w24
          ParentFont = False
          TabOrder = 2
        end
        object SpinEdit1: TSpinEdit
          Left = 336
          Top = 6
          Width = 41
          Height = 24
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          MaxValue = 7
          MinValue = 0
          ParentFont = False
          TabOrder = 3
          Value = 0
        end
        object BitBtn1: TBitBtn
          Left = 709
          Top = 6
          Width = 25
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000130B0000130B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888888888888888881F88881F8888888888888991F8888889F8888191F888881
            F888888199F88891F8888888191F819F88888888819199F88888888888919F88
            88888888891911F888888888191F89F88888889191F88819F88881919F888881
            9F88891F8888888819F88888888888888888}
        end
        object Edit37: TEdit
          Left = 8
          Top = 4
          Width = 313
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object Edit1: TEdit
        Left = 720
        Top = 547
        Width = 33
        Height = 20
        BorderStyle = bsNone
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1089#1090#1091#1076#1077#1085#1090#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label3: TLabel
        Left = 307
        Top = 8
        Width = 56
        Height = 17
        Caption = #1060#1072#1084#1080#1083#1080#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 307
        Top = 42
        Width = 28
        Height = 17
        Caption = #1048#1084#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 307
        Top = 78
        Width = 61
        Height = 17
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 21
        Top = 313
        Width = 95
        Height = 17
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 21
        Top = 344
        Width = 105
        Height = 17
        Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 24
        Top = 99
        Width = 83
        Height = 17
        Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
      end
      object Label16: TLabel
        Left = 24
        Top = 127
        Width = 94
        Height = 17
        Caption = #1057#1086#1094'.'#1087#1086#1083#1086#1078#1077#1085#1080#1077
      end
      object Label17: TLabel
        Left = 439
        Top = 342
        Width = 87
        Height = 17
        Caption = #1057#1086#1089#1090#1072#1074' '#1089#1077#1084#1100#1080
      end
      object Label18: TLabel
        Left = 682
        Top = 49
        Width = 114
        Height = 17
        Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1087#1088#1080#1077#1084#1072
      end
      object Label21: TLabel
        Left = 20
        Top = 493
        Width = 91
        Height = 17
        Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
      end
      object Label22: TLabel
        Left = 23
        Top = 526
        Width = 69
        Height = 17
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      end
      object Label23: TLabel
        Left = 286
        Top = 526
        Width = 79
        Height = 17
        Caption = #1056#1072#1073'.'#1090#1077#1083#1077#1092#1086#1085
      end
      object Label28: TLabel
        Left = 680
        Top = 83
        Width = 118
        Height = 17
        Caption = #1048#1085#1086#1089#1090#1088#1072#1085#1085#1099#1081' '#1103#1079#1099#1082
      end
      object Label46: TLabel
        Left = 683
        Top = 16
        Width = 73
        Height = 17
        Caption = #1043#1086#1076' '#1087#1088#1080#1077#1084#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 16
        Top = 8
        Width = 201
        Height = 73
        TabOrder = 3
        object Label1: TLabel
          Left = 10
          Top = 8
          Width = 79
          Height = 17
          Caption = #1051#1080#1095#1085#1086#1077' '#1076#1077#1083#1086
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 45
          Width = 67
          Height = 17
          Caption = #8470' '#1079#1072#1095#1077#1090#1082#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 96
          Top = 8
          Width = 89
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 96
          Top = 40
          Width = 87
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object Edit4: TEdit
        Left = 379
        Top = 8
        Width = 233
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
        Left = 379
        Top = 40
        Width = 233
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
        Left = 380
        Top = 73
        Width = 230
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Panel3: TPanel
        Left = 16
        Top = 158
        Width = 481
        Height = 123
        TabOrder = 6
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 123
          Height = 17
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1083#1080#1095#1085#1086#1089#1090#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 18
          Top = 49
          Width = 42
          Height = 17
          Caption = #1053#1086#1084#1077#1088
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 241
          Top = 48
          Width = 82
          Height = 17
          Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
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
          Width = 67
          Height = 17
          Caption = #1050#1090#1086' '#1074#1099#1076#1072#1083
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Edit8: TEdit
          Left = 87
          Top = 43
          Width = 123
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object Edit9: TEdit
          Left = 349
          Top = 45
          Width = 121
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object Edit10: TEdit
          Left = 141
          Top = 83
          Width = 332
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBLookupComboBox14: TDBLookupComboBox
          Left = 136
          Top = 10
          Width = 169
          Height = 25
          KeyField = 'pin'
          ListField = 'name'
          ListSource = DataModule1.DataSource_w14
          ReadOnly = True
          TabOrder = 3
        end
      end
      object Edit11: TEdit
        Left = 149
        Top = 307
        Width = 121
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object Edit12: TEdit
        Left = 149
        Top = 340
        Width = 276
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object Panel4: TPanel
        Left = 8
        Top = 373
        Width = 489
        Height = 105
        TabOrder = 9
        object Label12: TLabel
          Left = 12
          Top = 16
          Width = 100
          Height = 17
          Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 12
          Top = 44
          Width = 120
          Height = 17
          Caption = #1040#1076#1088#1077#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 12
          Top = 76
          Width = 53
          Height = 17
          Caption = #1058#1077#1083#1077#1092#1086#1085
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Edit13: TEdit
          Left = 141
          Top = 8
          Width = 340
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object Edit14: TEdit
          Left = 141
          Top = 40
          Width = 340
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object Edit15: TEdit
          Left = 140
          Top = 74
          Width = 121
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object GroupBox1: TGroupBox
        Left = 537
        Top = 382
        Width = 129
        Height = 73
        Caption = #1055#1086#1083
        Enabled = False
        TabOrder = 13
        object RadioButton1: TRadioButton
          Left = 16
          Top = 24
          Width = 89
          Height = 17
          Caption = #1084#1091#1078#1089#1082#1086#1081
          TabOrder = 0
        end
        object RadioButton2: TRadioButton
          Left = 16
          Top = 48
          Width = 89
          Height = 17
          Caption = #1078#1077#1085#1089#1082#1080#1081
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 535
        Top = 246
        Width = 129
        Height = 73
        Caption = #1041#1088#1072#1082
        Enabled = False
        TabOrder = 14
        object RadioButton3: TRadioButton
          Left = 13
          Top = 24
          Width = 87
          Height = 17
          Caption = #1089#1086#1089#1090#1086#1103#1083
          TabOrder = 0
        end
        object RadioButton4: TRadioButton
          Left = 12
          Top = 48
          Width = 90
          Height = 17
          Caption = #1085#1077' '#1089#1086#1089#1090#1086#1103#1083
          TabOrder = 1
        end
      end
      object Edit18: TEdit
        Left = 537
        Top = 334
        Width = 128
        Height = 25
        ReadOnly = True
        TabOrder = 15
      end
      object Panel5: TPanel
        Left = 536
        Top = 143
        Width = 417
        Height = 97
        TabOrder = 20
        object Label19: TLabel
          Left = 16
          Top = 16
          Width = 4
          Height = 17
        end
        object Label20: TLabel
          Left = 10
          Top = 11
          Width = 54
          Height = 17
          Caption = #1054#1082#1086#1085#1095#1080#1083
        end
        object Label25: TLabel
          Left = 71
          Top = 49
          Width = 14
          Height = 17
          Caption = #8470
        end
        object Label26: TLabel
          Left = 227
          Top = 49
          Width = 11
          Height = 17
          Caption = #1074' '
        end
        object Label27: TLabel
          Left = 319
          Top = 50
          Width = 28
          Height = 17
          Caption = #1075#1086#1076#1091
        end
        object Edit24: TEdit
          Left = 104
          Top = 45
          Width = 81
          Height = 25
          ReadOnly = True
          TabOrder = 0
        end
        object Edit25: TEdit
          Left = 257
          Top = 45
          Width = 54
          Height = 25
          ReadOnly = True
          TabOrder = 1
        end
        object DBLookupComboBox19: TDBLookupComboBox
          Left = 104
          Top = 8
          Width = 297
          Height = 25
          KeyField = 'pin'
          ListField = 'pname'
          ListSource = DataModule1.DataSource_w19
          ReadOnly = True
          TabOrder = 2
        end
      end
      object Edit20: TEdit
        Left = 152
        Top = 487
        Width = 345
        Height = 25
        ReadOnly = True
        TabOrder = 10
      end
      object Edit21: TEdit
        Left = 152
        Top = 520
        Width = 121
        Height = 25
        ReadOnly = True
        TabOrder = 11
      end
      object Edit22: TEdit
        Left = 375
        Top = 520
        Width = 121
        Height = 25
        ReadOnly = True
        TabOrder = 12
      end
      object Panel6: TPanel
        Left = 743
        Top = 312
        Width = 201
        Height = 225
        Caption = #1060' '#1054' '#1058' '#1054' '#1043' '#1056' '#1040' '#1060' '#1048' '#1071
        TabOrder = 21
      end
      object RadioGroup1: TRadioGroup
        Left = 538
        Top = 469
        Width = 129
        Height = 76
        Caption = #1054#1073#1097#1077#1078#1080#1090#1080#1077
        Enabled = False
        TabOrder = 16
      end
      object RadioButton5: TRadioButton
        Left = 559
        Top = 494
        Width = 105
        Height = 17
        Caption = #1085#1091#1078#1076#1072#1102#1089#1100
        TabOrder = 17
      end
      object RadioButton6: TRadioButton
        Left = 559
        Top = 517
        Width = 105
        Height = 17
        Caption = #1085#1077' '#1085#1091#1078#1076#1072#1102#1089#1100
        TabOrder = 18
      end
      object DBLookupComboBox18: TDBLookupComboBox
        Left = 152
        Top = 92
        Width = 145
        Height = 25
        KeyField = 'pin'
        ListField = 'name'
        ListSource = DataModule1.DataSource_w18
        ReadOnly = True
        TabOrder = 4
      end
      object DBLookupComboBox17: TDBLookupComboBox
        Left = 152
        Top = 120
        Width = 145
        Height = 25
        KeyField = 'pin'
        ListField = 'name'
        ListSource = DataModule1.DataSource_w17
        ReadOnly = True
        TabOrder = 5
      end
      object DBLookupComboBox16: TDBLookupComboBox
        Left = 816
        Top = 48
        Width = 145
        Height = 25
        KeyField = 'pin'
        ListField = 'name'
        ListSource = DataModule1.DataSource_w16
        ReadOnly = True
        TabOrder = 19
      end
      object BitBtn3: TBitBtn
        Left = 848
        Top = 552
        Width = 97
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100'  '
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        Glyph.Data = {
          26050000424D26050000000000003604000028000000100000000F0000000100
          080000000000F0000000CE0E0000CE0E00000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0202A4FFFFFFFFFFFFFFFFFFFFFFFF02020202FFFFFFFFFFFFFFFFFFFFFF02
          0202020202FFFFFFFFFFFFFFFFFF020202FFFF0202A4FFFFFFFFFFFFFF020202
          FFFFFF020202FFFFFFFFFFFFFF0202FFFFFFFFFF0202A4FFFFFFFFFFFFFFFFFF
          FFFFFFFF020202FFFFFFFFFFFFFFFFFFFFFFFFFFFF0202A4FFFFFFFFFFFFFFFF
          FFFFFFFFFF020202FFFFFFFFFFFFFFFFFFFFFFFFFFFF0202FFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
      end
      object DBLookupComboBox15: TDBLookupComboBox
        Left = 816
        Top = 80
        Width = 145
        Height = 25
        KeyField = 'pin'
        ListField = 'name'
        ListSource = DataModule1.DataSource_w15
        ReadOnly = True
        TabOrder = 23
      end
      object Edit38: TEdit
        Left = 816
        Top = 10
        Width = 121
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1088#1080#1082#1072#1079#1099' '#1087#1086' '#1089#1090#1091#1076#1077#1085#1090#1091
      ImageIndex = 2
      object Label29: TLabel
        Left = 16
        Top = 21
        Width = 138
        Height = 17
        Caption = #1055#1088#1080#1082#1072#1079#1099' '#1085#1072' '#1089#1090#1091#1076#1077#1085#1090#1072' '
      end
      object Label30: TLabel
        Left = 479
        Top = 21
        Width = 44
        Height = 17
        Caption = #1075#1088#1091#1087#1087#1099
      end
      object DBGrid2: TDBGrid
        Left = 8
        Top = 56
        Width = 801
        Height = 497
        DataSource = DataModule1.DataSource_w6
        ReadOnly = True
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
            Width = 210
            Visible = True
          end>
      end
      object Edit7: TEdit
        Left = 168
        Top = 16
        Width = 289
        Height = 25
        Color = clMenuBar
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object Edit16: TEdit
        Left = 537
        Top = 16
        Width = 80
        Height = 25
        Color = clMenuBar
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
      object Button11: TButton
        Left = 824
        Top = 535
        Width = 137
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        TabOrder = 3
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1057#1084#1077#1085#1072' '#1092#1072#1084#1080#1083#1080#1080' ('#1087#1072#1089#1087#1086#1088#1090#1072')'
      ImageIndex = 3
      object Label31: TLabel
        Left = 35
        Top = 21
        Width = 53
        Height = 17
        Caption = #1057#1090#1091#1076#1077#1085#1090
      end
      object Label32: TLabel
        Left = 417
        Top = 21
        Width = 44
        Height = 17
        Caption = #1075#1088#1091#1087#1087#1099
      end
      object Edit17: TEdit
        Left = 107
        Top = 16
        Width = 289
        Height = 25
        Color = clMenuBar
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object Edit19: TEdit
        Left = 475
        Top = 16
        Width = 80
        Height = 25
        Color = clMenuBar
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBGrid3: TDBGrid
        Left = 8
        Top = 64
        Width = 801
        Height = 465
        DataSource = DataModule1.DataSource_w4
        TabOrder = 2
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'prnum'
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1087#1088#1080#1082#1072#1079#1072
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prdate'
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
            Width = 94
            Visible = True
          end
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'Fio'
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1077' '#1060#1048#1054
            Width = 337
            Visible = True
          end
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'password'
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1077' '#1076#1072#1085#1085#1099#1077' '#1087#1072#1089#1087#1086#1088#1090#1072
            Width = 258
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = ' '#1055#1086#1086#1097#1088#1077#1085#1080#1103' / '#1074#1079#1099#1089#1082#1072#1085#1080#1103
      ImageIndex = 4
      object Label33: TLabel
        Left = 32
        Top = 21
        Width = 53
        Height = 17
        Caption = #1057#1090#1091#1076#1077#1085#1090
      end
      object Label34: TLabel
        Left = 415
        Top = 21
        Width = 44
        Height = 17
        Caption = #1075#1088#1091#1087#1087#1099
      end
      object Edit23: TEdit
        Left = 105
        Top = 16
        Width = 297
        Height = 25
        Color = clMenuBar
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object Edit26: TEdit
        Left = 473
        Top = 16
        Width = 80
        Height = 25
        Color = clMenuBar
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBGrid4: TDBGrid
        Left = 32
        Top = 64
        Width = 777
        Height = 465
        DataSource = DataModule1.DataSource_w5
        TabOrder = 2
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'prnum'
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1087#1088#1080#1082#1072#1079#1072
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prdate'
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
            Width = 102
            Visible = True
          end
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'good'
            Title.Alignment = taCenter
            Title.Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prosn'
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Width = 192
            Visible = True
          end>
      end
    end
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 360
    Top = 10
    Width = 225
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    KeyField = 'pin'
    ListField = 'name'
    ListSource = DataModule1.DataSource_w25
    ParentFont = False
    TabOrder = 1
  end
end

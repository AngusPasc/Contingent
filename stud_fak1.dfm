object stud_fak: Tstud_fak
  Left = 222
  Top = 12
  Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1092#1072#1082#1091#1083#1100#1090#1077#1090#1072
  ClientHeight = 688
  ClientWidth = 1005
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label38: TLabel
    Left = 216
    Top = 9
    Width = 99
    Height = 17
    Caption = #1060' '#1072' '#1082' '#1091' '#1083' '#1100' '#1090' '#1077' '#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object PageControl3: TPageControl
    Left = 3
    Top = 44
    Width = 998
    Height = 601
    ActivePage = TabSheet1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl3Change
    object TabSheet1: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object Label24: TLabel
        Left = 544
        Top = 535
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
      object DBGrid1: TDBGrid
        Left = 16
        Top = 64
        Width = 742
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
            Width = 325
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
        Left = 15
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
          TabOrder = 1
          OnClick = DBLookupComboBox1Click
          OnDropDown = DBLookupComboBox1DropDown
          OnEnter = DBLookupComboBox1Enter
          OnKeyDown = DBLookupComboBox1KeyDown
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
          TabOrder = 2
          OnClick = DBLookupComboBox2Click
          OnDropDown = DBLookupComboBox2DropDown
          OnEnter = DBLookupComboBox2Enter
          OnKeyDown = DBLookupComboBox2KeyDown
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
          TabOrder = 3
          OnClick = DBLookupComboBox3Click
          OnDropDown = DBLookupComboBox3DropDown
          OnEnter = DBLookupComboBox3Enter
          OnKeyDown = DBLookupComboBox3KeyDown
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
          TabOrder = 4
          Value = 0
          OnChange = SpinEdit1Change
          OnKeyDown = SpinEdit1KeyDown
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
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000130B0000130B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888888888888888881F88881F8888888888888991F8888889F8888191F888881
            F888888199F88891F8888888191F819F88888888819199F88888888888919F88
            88888888891911F888888888191F89F88888889191F88819F88881919F888881
            9F88891F8888888819F88888888888888888}
          ParentFont = False
          TabOrder = 5
          OnClick = BitBtn1Click
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
          TabOrder = 0
          OnChange = Edit37Change
          OnKeyPress = Edit37KeyPress
        end
      end
      object Edit1: TEdit
        Left = 707
        Top = 539
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
      object Button3: TButton
        Left = 768
        Top = 191
        Width = 209
        Height = 25
        Caption = #1057#1087#1080#1089#1086#1082' '#1075#1088#1091#1087#1087#1099
        TabOrder = 3
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 768
        Top = 229
        Width = 209
        Height = 25
        Caption = #1051#1080#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        TabOrder = 4
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 768
        Top = 336
        Width = 209
        Height = 26
        Caption = #1057#1087#1088#1072#1074#1082#1072' '#1087#1086' '#1089#1090#1091#1076#1077#1085#1090#1091
        TabOrder = 5
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 768
        Top = 372
        Width = 209
        Height = 26
        Caption = #1057#1087#1088#1072#1074#1082#1072' '#1086' '#1089#1090#1080#1087#1077#1085#1076#1080#1080
        TabOrder = 6
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 768
        Top = 406
        Width = 209
        Height = 25
        Caption = #1057#1084#1077#1085#1072' '#1075#1088#1091#1087#1087#1099
        TabOrder = 7
        OnClick = Button7Click
      end
      object Button11: TButton
        Left = 768
        Top = 301
        Width = 209
        Height = 26
        Caption = #1057#1087#1088#1072#1074#1082#1072' '#1076#1083#1103
        TabOrder = 8
        OnClick = Button11Click
      end
      object Button12: TButton
        Left = 768
        Top = 267
        Width = 209
        Height = 25
        Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
        TabOrder = 9
        OnClick = Button12Click
      end
      object Button13: TButton
        Left = 768
        Top = 440
        Width = 209
        Height = 26
        Caption = #1042#1099#1087#1080#1089#1082#1072' '#1086' '#1087#1077#1088#1077#1074#1086#1076#1077' '#1085#1072' '#1082#1091#1088#1089
        TabOrder = 10
        OnClick = Button13Click
      end
      object Button14: TButton
        Left = 768
        Top = 480
        Width = 209
        Height = 25
        Caption = #1057#1087#1088#1072#1074#1082#1072' '#1076#1083#1103' '#1089#1091#1073#1089#1080#1076#1080#1080
        TabOrder = 11
        Visible = False
        OnClick = Button14Click
      end
      object Button15: TButton
        Left = 768
        Top = 303
        Width = 209
        Height = 25
        Caption = #1050#1085#1086#1087#1082#1072' '#1076#1083#1103' '#1058#1060
        TabOrder = 12
        Visible = False
        OnClick = Button15Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1089#1090#1091#1076#1077#1085#1090#1077
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
        Width = 82
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
      object Label18: TLabel
        Left = 682
        Top = 48
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
        Width = 72
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
        Left = 24
        Top = 8
        Width = 201
        Height = 73
        TabOrder = 3
        object Label2: TLabel
          Left = 10
          Top = 45
          Width = 66
          Height = 17
          Caption = #8470' '#1079#1072#1095#1077#1090#1082#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
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
          Width = 81
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
          Width = 66
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
        Width = 564
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
        Width = 753
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
          Width = 150
          Height = 17
          Caption = #1040#1076#1088#1077#1089' '#1092#1072#1082#1090'.'#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
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
          Width = 52
          Height = 17
          Caption = #1058#1077#1083#1077#1092#1086#1085
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 308
          Top = 76
          Width = 102
          Height = 17
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083'.'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Edit13: TEdit
          Left = 168
          Top = 8
          Width = 569
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
          Left = 168
          Top = 40
          Width = 569
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
        object Edit30: TEdit
          Left = 420
          Top = 72
          Width = 229
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox1: TGroupBox
        Left = 564
        Top = 246
        Width = 129
        Height = 73
        Caption = #1055#1086#1083
        Enabled = False
        TabOrder = 13
        object RadioButton1: TRadioButton
          Left = 26
          Top = 24
          Width = 89
          Height = 17
          Caption = #1084#1091#1078#1089#1082#1086#1081
          TabOrder = 0
        end
        object RadioButton2: TRadioButton
          Left = 26
          Top = 48
          Width = 89
          Height = 17
          Caption = #1078#1077#1085#1089#1082#1080#1081
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Left = 536
        Top = 143
        Width = 417
        Height = 97
        TabOrder = 18
        object Label19: TLabel
          Left = 16
          Top = 16
          Width = 4
          Height = 17
        end
        object Label20: TLabel
          Left = 10
          Top = 11
          Width = 53
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
          ListField = 'name'
          ListSource = DataModule1.DataSource_ab3
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
        Left = 808
        Top = 344
        Width = 145
        Height = 183
        Caption = #1060' '#1054' '#1058' '#1054' '#1043' '#1056' '#1040' '#1060' '#1048' '#1071
        TabOrder = 19
      end
      object RadioGroup1: TRadioGroup
        Left = 825
        Top = 245
        Width = 129
        Height = 76
        Caption = #1054#1073#1097#1077#1078#1080#1090#1080#1077
        Enabled = False
        TabOrder = 14
      end
      object RadioButton5: TRadioButton
        Left = 847
        Top = 270
        Width = 105
        Height = 17
        Caption = #1085#1091#1078#1076#1072#1102#1089#1100
        TabOrder = 15
      end
      object RadioButton6: TRadioButton
        Left = 847
        Top = 293
        Width = 105
        Height = 17
        Caption = #1085#1077' '#1085#1091#1078#1076#1072#1102#1089#1100
        TabOrder = 16
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
        TabOrder = 17
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
        TabOrder = 20
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
        TabOrder = 21
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1088#1080#1082#1072#1079#1099' '#1087#1086' '#1089#1090#1091#1076#1077#1085#1090#1091
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label29: TLabel
        Left = 16
        Top = 21
        Width = 137
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
    end
    object TabSheet4: TTabSheet
      Caption = #1057#1084#1077#1085#1072' '#1092#1072#1084#1080#1083#1080#1080' ('#1087#1072#1089#1087#1086#1088#1090#1072')'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label31: TLabel
        Left = 35
        Top = 21
        Width = 52
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label33: TLabel
        Left = 32
        Top = 21
        Width = 52
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
    object TabSheet6: TTabSheet
      Caption = #1057#1087#1088#1072#1074#1082#1072' - '#1074#1099#1079#1086#1074
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 32
        Top = 21
        Width = 52
        Height = 17
        Caption = #1057#1090#1091#1076#1077#1085#1090
      end
      object Label35: TLabel
        Left = 415
        Top = 21
        Width = 44
        Height = 17
        Caption = #1075#1088#1091#1087#1087#1099
      end
      object Edit28: TEdit
        Left = 105
        Top = 16
        Width = 297
        Height = 25
        Color = clMenuBar
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object Edit29: TEdit
        Left = 473
        Top = 16
        Width = 80
        Height = 25
        Color = clMenuBar
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBGrid5: TDBGrid
        Left = 24
        Top = 56
        Width = 761
        Height = 481
        DataSource = DataModule1.DataSource_w8
        TabOrder = 2
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'numout'
            Title.Alignment = taCenter
            Title.Caption = #8470
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dateout'
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mesjob'
            Title.Alignment = taCenter
            Title.Caption = #1050#1091#1076#1072
            Width = 391
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datebegin'
            Title.Alignment = taCenter
            Title.Caption = #1057' '#1082#1072#1082#1086#1075#1086' '#1095#1080#1089#1083#1072
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dateend'
            Title.Alignment = taCenter
            Title.Caption = #1087#1086' '#1082#1072#1082#1086#1077' '#1095#1080#1089#1083#1086
            Width = 96
            Visible = True
          end>
      end
      object Button8: TButton
        Left = 824
        Top = 367
        Width = 137
        Height = 25
        Caption = #1053#1086#1074#1072#1103' '#1089#1087#1088#1072#1074#1082#1072
        TabOrder = 3
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 824
        Top = 415
        Width = 137
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
        TabOrder = 4
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 824
        Top = 462
        Width = 137
        Height = 25
        Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '
        TabOrder = 5
        OnClick = Button10Click
      end
      object Button2: TButton
        Left = 824
        Top = 502
        Width = 137
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        TabOrder = 6
        OnClick = Button2Click
      end
    end
  end
  object Button1: TButton
    Left = 880
    Top = 652
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 336
    Top = 5
    Width = 273
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
    TabOrder = 2
    OnClick = DBLookupComboBox4Click
  end
  object Edit27: TEdit
    Left = 336
    Top = 5
    Width = 273
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end

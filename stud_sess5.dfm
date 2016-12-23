object stud_spsessia: Tstud_spsessia
  Left = 205
  Top = 102
  Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1080' '#1089#1088#1086#1082#1080' '#1089#1077#1089#1089#1080#1081
  ClientHeight = 702
  ClientWidth = 700
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
    Left = 16
    Top = 8
    Width = 681
    Height = 305
    TabOrder = 0
    object Label6: TLabel
      Left = 8
      Top = 54
      Width = 103
      Height = 17
      Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 18
      Width = 65
      Height = 17
      Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 52
      Top = 100
      Width = 59
      Height = 17
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 49
      Top = 147
      Width = 139
      Height = 17
      Caption = #1053#1072#1095#1072#1083#1086' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1075#1086#1076#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 49
      Top = 187
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
    object Label4: TLabel
      Left = 49
      Top = 228
      Width = 81
      Height = 17
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 337
      Top = 228
      Width = 98
      Height = 17
      Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 125
      Top = 50
      Width = 196
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
      TabOrder = 0
      OnClick = DBLookupComboBox2Click
    end
    object Edit2: TEdit
      Left = 122
      Top = 49
      Width = 195
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
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 124
      Top = 16
      Width = 333
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
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 124
      Top = 16
      Width = 333
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
      TabOrder = 3
      OnClick = DBLookupComboBox1Click
    end
    object god: TSpinEdit
      Left = 236
      Top = 144
      Width = 57
      Height = 27
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxValue = 9999
      MinValue = 1900
      ParentFont = False
      TabOrder = 4
      Value = 2008
      OnChange = godChange
    end
    object kurs: TSpinEdit
      Left = 236
      Top = 184
      Width = 57
      Height = 27
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 1
      MaxValue = 6
      MinValue = 0
      ParentFont = False
      TabOrder = 5
      Value = 0
      OnChange = kursChange
    end
    object BeginDate: TDateTimePicker
      Left = 190
      Top = 222
      Width = 111
      Height = 24
      Date = 39448.413173645840000000
      Time = 39448.413173645840000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Enddate: TDateTimePicker
      Left = 480
      Top = 222
      Width = 109
      Height = 24
      Date = 39448.413173645840000000
      Time = 39448.413173645840000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      Left = 287
      Top = 264
      Width = 115
      Height = 25
      Caption = #1042#1085#1077#1089#1090#1080' '#1075#1088#1072#1092#1080#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 128
      Top = 95
      Width = 257
      Height = 25
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnChange = ComboBox1Change
      OnCloseUp = ComboBox1CloseUp
      Items.Strings = (
        #1040#1090#1090#1077#1089#1090#1072#1094#1080#1103' 1'
        #1047#1080#1084#1085#1103#1103' '#1089#1077#1089#1089#1080#1103
        #1040#1090#1090#1077#1089#1090#1072#1094#1080#1103' 2'
        #1051#1077#1090#1085#1103#1103' '#1089#1077#1089#1089#1080#1103
        #1043#1086#1089'.'#1072#1090#1090#1077#1089#1090#1072#1094#1080#1103)
    end
  end
  object ControlBar1: TControlBar
    Left = 16
    Top = 320
    Width = 681
    Height = 29
    TabOrder = 1
    object SpeedButton4: TSpeedButton
      Left = 46
      Top = 2
      Width = 22
      Height = 22
      Hint = #1059#1076#1072#1083#1080#1090#1100' '
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888888888881F88881F8888888888888991F8888889F8888191F888881
        F888888199F88891F8888888191F819F88888888819199F88888888888919F88
        88888888891911F888888888191F89F88888889191F88819F88881919F888881
        9F88891F8888888819F88888888888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 11
      Top = 2
      Width = 22
      Height = 22
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Glyph.Data = {
        12010000424D12010000000000007600000028000000140000000D0000000100
        0400000000009C00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF0F0F0F0F
        FFFFFFFF0000FFFFFFFFFF00FFFFFFFF0000FFFFFFFFFF000FFFFFFF0000FFFF
        FFFFFF0B70FFFFFF0000000000FFFF0B80FFFFFF00000FFFF0FFFFF0B70FFFFF
        00000F88F0FFFFF0B80FFFFF00000FFFF00000FF0B70FFFF0000444444FFF0FF
        0B00FFFF000044444488F0FFF0110FFF0000FFFF0FFFF0FFF000FFFF0000FFFF
        444444FFFFFFFFFF0000FFFF444444FFFFFFFFFF0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton2: TSpeedButton
      Left = 81
      Top = 2
      Width = 23
      Height = 22
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000F0000000E0000000100
        04000000000070000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8880888888888888888088888888888888808888880008888880888888070888
        8880888888070888888088800007000088808880777777708880888000070000
        8880888888070888888088888807088888808888880008888880888888888888
        88808888888888888880}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
  end
  object BitBtn2: TBitBtn
    Left = 319
    Top = 657
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
  object DBGrid1: TDBGrid
    Left = 16
    Top = 352
    Width = 681
    Height = 273
    DataSource = DataModule1.DataSource_w11
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SpeedButton5Click
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'goduch'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Caption = #1053#1072#1095#1072#1083#1086' '#1091#1095'.'#1075#1086#1076#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'spec'
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 101
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kurs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Caption = #1050#1091#1088#1089
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 41
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'begdate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 99
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'enddate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 105
        Visible = True
      end>
  end
end

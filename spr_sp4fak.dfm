object stud_sp4fak: Tstud_sp4fak
  Left = 296
  Top = 114
  Caption = #1055#1083#1072#1085' '#1087#1088#1080#1077#1084#1072
  ClientHeight = 586
  ClientWidth = 710
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
    Top = 95
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 155
    Width = 697
    Height = 342
    DataSource = DataModule1.DataSource_w36
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'shifr'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1089#1087#1077#1094'-'#1090#1080
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
        FieldName = 'spec_p'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 431
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'period'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1055#1077#1088#1080#1086#1076' '#1086#1073#1091#1095#1077#1085#1080#1103
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 121
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 127
    Top = 88
    Width = 282
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    KeyField = 'name'
    ListField = 'name'
    ListSource = DataModule1.DataSource_w34
    ParentFont = False
    TabOrder = 1
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 125
    Top = 50
    Width = 220
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
  object ControlBar1: TControlBar
    Left = 16
    Top = 119
    Width = 689
    Height = 29
    TabOrder = 3
    object SpeedButton5: TSpeedButton
      Left = 48
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
      Left = 11
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
    Left = 327
    Top = 532
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
end

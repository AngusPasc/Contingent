object spr_spspec: Tspr_spspec
  Left = 335
  Top = 305
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1077#1081
  ClientHeight = 260
  ClientWidth = 415
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
  object DBGrid1: TDBGrid
    Left = 9
    Top = 41
    Width = 400
    Height = 177
    DataSource = DataModule1.DataSource_w35
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'pr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = ' '
        Width = 12
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 310
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sname'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Caption = ' '
        Width = 37
        Visible = True
      end>
  end
  object ControlBar1: TControlBar
    Left = 11
    Top = 4
    Width = 398
    Height = 33
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 47
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
    object SpeedButton4: TSpeedButton
      Left = 83
      Top = 2
      Width = 23
      Height = 22
      Hint = #1059#1076#1072#1083#1080#1090#1100
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
      Width = 23
      Height = 22
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '
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
  end
  object BitBtn1: TBitBtn
    Left = 196
    Top = 232
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
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end

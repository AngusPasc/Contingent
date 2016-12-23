object spr_spgrup: Tspr_spgrup
  Left = 319
  Top = 179
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1075#1088#1091#1087#1087
  ClientHeight = 464
  ClientWidth = 599
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
  object ControlBar1: TControlBar
    Left = 3
    Top = 4
    Width = 590
    Height = 33
    TabOrder = 0
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
      Left = 119
      Top = 2
      Width = 23
      Height = 22
      Hint = #1055#1086#1080#1089#1082' '#1085#1072' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF00000FFFFF00000F0F000FFFFF0F000F0F000FFFFF0F000F0000000F0000
        000F00F000000F00000F00F000F00F00000F00F000F00F00000FF00000000000
        00FFFF0F000F0F000FFFFF00000F00000FFFFFF000FFF000FFFFFFF0F0FFF0F0
        FFFFFFF000FFF000FFFFFFFFFFFFFFFFFFFF}
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
    object SpeedButton1: TSpeedButton
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
  end
  object DBGrid1: TDBGrid
    Left = 249
    Top = 41
    Width = 344
    Height = 360
    DataSource = DataModule1.DataSource_w37
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'pr'
        Title.Caption = ' '
        Width = 17
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
        Title.Caption = #1043#1088#1091#1087#1087#1099
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
        FieldName = 'grup'
        Title.Caption = #1050#1086#1076' '#1080#1079' '#1059#1052#1054
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 388
    Top = 432
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
  object TreeView1: TTreeView
    Left = 8
    Top = 40
    Width = 225
    Height = 361
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    HideSelection = False
    Images = ImageList1
    Indent = 19
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    OnClick = TreeView1Click
  end
  object Edit1: TEdit
    Left = 552
    Top = 404
    Width = 41
    Height = 23
    Color = clMenu
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object ImageList1: TImageList
    Left = 36
    Top = 634
  end
end

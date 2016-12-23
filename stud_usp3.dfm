object stud_hissessia: Tstud_hissessia
  Left = 327
  Top = 194
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1089#1076#1072#1095#1080
  ClientHeight = 441
  ClientWidth = 261
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
    Left = 51
    Top = 384
    Width = 178
    Height = 16
    Caption = #1047#1085#1072#1095#1077#1085#1080#1077' -1   '#1101#1090#1086'     '#39#1085#1077#1103#1074#1082#1072#39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn2: TBitBtn
    Left = 97
    Top = 413
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn2Click
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 8
    Width = 248
    Height = 361
    DataSource = DataModule1.DataSource_w12h
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'datesd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080
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
        FieldName = 'ball'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 112
        Visible = True
      end>
  end
end

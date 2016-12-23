object spis_gr: Tspis_gr
  Left = 360
  Top = 202
  BorderIcons = [biMinimize, biMaximize]
  Caption = #1057#1087#1080#1089#1086#1082' '#1075#1088#1091#1087#1087
  ClientHeight = 442
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 17
  object Button3: TButton
    Left = 28
    Top = 399
    Width = 137
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 18
    Top = 23
    Width = 263
    Height = 352
    DataSource = DataModule1.DataSource_w37
    TabOrder = 1
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    OnDblClick = Button3Click
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1043#1088#1091#1087#1087#1099
        Width = 220
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 192
    Top = 399
    Width = 93
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end

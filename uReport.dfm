object fReportForm: TfReportForm
  Left = 178
  Top = 127
  Width = 974
  Height = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PreviewReport: TfrxPreview
    Left = 0
    Top = 0
    Width = 966
    Height = 724
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
  end
  object ReportForm: TfrxReport
    Version = '5.4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = PreviewReport
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42489.689688217600000000
    ReportOptions.LastChange = 42489.689688217600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 40
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Left = 3.779530000000000000
        Top = 3.779530000000000000
        Width = 710.551640000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8 = (
          
            #1056#1119#1057#1026#1056#1105#1056#1030#1056#181#1057#8218', '#1057#8225#1056#181#1056#187#1056#1109#1056#1030#1056#181#1056#1108', '#1056#1108#1056#1109#1057#8218#1056#1109#1057#1026#1057#8249#1056#8470' '#1056#1029#1056#176' '#1056#1112#1056#181#1056#1029#1057#1039' '#1057#1027#1056#1112#1056 +
            #1109#1057#8218#1057#1026#1056#1105#1057#8218'!')
        ParentFont = False
      end
    end
  end
end

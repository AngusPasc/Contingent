object fgorod: Tfgorod
  Left = 248
  Top = 311
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1043#1086#1088#1086#1076#1072
  ClientHeight = 203
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 548
    Height = 29
    Caption = 'ToolBar1'
    DisabledImages = ImageList1
    Images = ImageList1
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      AutoSize = True
      Caption = 'ToolButton1'
      Enabled = False
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 31
      Top = 2
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      AutoSize = True
      Caption = 'ToolButton3'
      Enabled = False
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 54
      Top = 2
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 62
      Top = 2
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      AutoSize = True
      Caption = 'ToolButton5'
      Enabled = False
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
    object ToolButton10: TToolButton
      Left = 85
      Top = 2
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 93
      Top = 2
      Caption = 'ToolButton9'
      Enabled = False
      ImageIndex = 5
      OnClick = ToolButton9Click
    end
    object ToolButton6: TToolButton
      Left = 116
      Top = 2
      Width = 36
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 152
      Top = 2
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1091#1076#1072#1083#1077#1085#1080#1077
      Caption = 'ToolButton8'
      Enabled = False
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton8Click
    end
    object ToolButton7: TToolButton
      Left = 175
      Top = 2
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1092#1080#1079#1080#1095#1077#1089#1082#1080
      Caption = 'ToolButton7'
      Enabled = False
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton7Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 272
    Top = 32
    Width = 265
    Height = 120
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = DBGrid1Exit
    OnMouseUp = DBGrid1MouseUp
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1043#1086#1088#1086#1076
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 229
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 365
    Top = 160
    Width = 92
    Height = 28
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Enabled = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000C8C8C8C8C8C8
      C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C5C5C5B9B9B9A5A5A59797979191919090
      90959595A3A3A3B6B6B6C4C4C4C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
      C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C6C6C6AEADAD8C756FA55643C04E31
      D24D2CD44D2CD34D2BC04C2FA34F397B5A51817F7FAAAAAAC4C4C4C8C8C8C8C8
      C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BFBFBF957D77C35134DA
      522FE26542E76E4BEA7451EA7652E97450E76F4CE36542DB5631C64C2E7C564C
      8B8B8BBCBCBCC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BAB9B9A764
      54DA512EE87451F48E6AF7906CFAAF94F8916DF8926DF68D69F28460EB7955EB
      7753E56C49DB532FA14D387A7877B6B6B6C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
      C1C1C0B9614BDF5F3CF79773F99A76F89772F8AF8DFFE9D5F9B49BF9936FF994
      6FF9936FF9926EF38763EA7753EA7652DD5B37B44D327B7A79BDBDBDC8C8C8C8
      C8C8C8C8C8C7C7C7A97062DF5F3BF99E7AFA9D79FA9D78F49571FCDAC0FFD5B3
      FDE4D6F8936DF99672F9936FF9926FF9926EF88F6BEC7A56EB7753DD5B379D4D
      398F8F8FC5C5C5C8C8C8C8C8C8A89B98D85430F79F7AFAA17DFAA07DFAA17BF2
      A98DFFE7D1FFDDC3FFE6D0F9AF93F89773F99571F9956FF9926EF9926EF8916D
      EC7A56EA7551DA522E775951B0B0B0C8C8C8C8C8C8C86247EC9873FAA682FAA6
      80FAA681F59973F8DDCDFFE8D8FFE2CEFFDDC2FDDACBF89771F89975F99873F9
      9471F9946EF9926EF78F6BEA7753E56C48BC4C30878787C5C5C5B1A8A5D95633
      FBC29DF9A985F9AB87FAAB86F3AE92FFF6ECFFEEE0FFE9D7FFE2CCFEE9D8F9A8
      88FA9B76F89874F99773F99471F9926EF9926EF38662EB7753DA532F795F59BB
      BBBBB68174E48662FCBF9AFBB08BFBB18CF9A782F7DACEFFF5EDFEF2E8FEEDDF
      FFE7D7FFE5CEFBD1BFF99B76FA9C78F89874F99771F99571F9926EF9926EEB79
      55E1623F95503EA9A9A9C86C54EFB08AFBBB96FBB590FBB790F5B79DFEFCFBFF
      FAF6F5BDA4F2C2AFFFEEE0FFE7D6FEEBDDF9A785FA9E79FA9C78F89975F99571
      F9936FF9936FF1835FE66D4AB94D329C9C9CCB5C41F5C8A1FBBE99FBBD97F8B5
      8FFAE9E4FEFCFBFACFB8FAB58EE58463FEF4EBFFECDEFFE9D8FBD1BCF99E78FA
      9E78F89B77F99874F99470F9946FF58B67E8714EC64D2F949494CE5436F5CBA4
      FCC8A3FCC19BF9D4C3FBEBE7F8C3A6FBBD97FBBC96F2A079F0BBA8FFF4EAFFEB
      DEFEECDFF9A886FAA07BFA9C77F89A74F99773F99570F7906CE8724ED44C2B94
      9494CC5D41F5CCA6FDD5AFF3AF8BF3C0A8FAC19BFCC7A1FCC39FFCC09CFBC09B
      E98864FBE9E1FFF1E6FFEDE0FDD5C3F99F7AFA9F7AF89A77F99774F99671F892
      6EE9734FC74F2F9C9C9CCC6E57F0B690FEE4BDFCCDA7FDD2ACFCD0AAFBCEA8FC
      CBA5FCC7A1FAC29BFABD96E88F70FDF7EFFFF0E5FFF0E5FAB192F99F7BFA9D77
      F89A75F99572F8936EE66E4BBB4E32A9A9A9CD8D7CE38965FEF3CCFDD8B2FDD9
      B1FDD7B1FDD5ADFBD1ABFCCCA6FCC5A1FCC19BF8B48EEB9D83FEF7F1FFF1E6FD
      E2D3F9A07AFA9F7AF89975F99773F7926EE1623E9C5847BBBBBBB8AEABD95633
      FDF2CBFCE9C2FCDFB8FCDEB8FDDBB5FDD6AEFBCFA9FCCBA5FCC59FFBBE99F9B4
      8DEFA68AFDF2EBFFF4E9FBC7AEF99D78FA9B77F99874F48E6ADA522F8D7872C5
      C5C5C8C8C8D2694FEDB08BFFF8D0FDE9C2FEE6BFFCE1BAFDDBB4FDD5AFFBCEA8
      FCC6A2FCC19CFBBA95FBB48DF3A483F9E2D7FEF4ECF9A987FA9B76F99A75E976
      52C05135AFAEAEC8C8C8C8C8C8B4A6A3D8542FFAECC7FFF8D0FDECC5FEE6BFFC
      DFB8FDD6B1FBCFAAFCCAA4FCC19DFABC97FBB691FBB08CF7A680F9C4ACFDE1D2
      FA9E79F79874DB532F947B74C6C6C6C8C8C8C8C8C8C8C8C8D18774DE714EFDFA
      D7FFF8D1FDE9C2FCE0B9FDD9B3FDD2AAFBCBA5FCC49CFABD97FBB790FBB18CFA
      AB86FAA480F9A27DFAA480E26542A9614EBEBEBEC8C8C8C8C8C8C8C8C8C8C8C8
      C8C8C8D1735ADE7451FBF3CEFFF8D0FCE8C1FCD9B2FDD0AAFBCAA4FCC39CFABC
      97FBB790FBB08BF9AA85FAA581F9A17DE16642BF5C42B6B5B5C8C8C8C8C8C8C8
      C8C8C8C8C8C8C8C8C8C8C8C7C7C7D1836FD95835F1C19BFEF7D0FEF0C8FDDFB8
      FCD0A9FCC49EFBBC96FBB691FBB691FBBF99F2A681DC5D39B96550B9B8B8C8C8
      C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BB9F98D25B3FDD
      633EEBA47EF6D0AAFADFB8FDE6BFFADBB3F6C9A2EBA07ADE6945CF5333AA8980
      C5C5C5C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
      C8C8C8C8C7C7C7AC9A96CE7862CE5C40D2502ED3502FD3502ECC583BC56E58AB
      9089C0BFBFC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8}
  end
  object Tree1: TTreeView
    Left = 0
    Top = 30
    Width = 257
    Height = 169
    HideSelection = False
    Indent = 19
    ReadOnly = True
    TabOrder = 3
    OnChange = TreeChange
  end
  object Tree: TTreeView
    Left = 1
    Top = 31
    Width = 257
    Height = 169
    HideSelection = False
    Indent = 19
    ReadOnly = True
    SortType = stText
    TabOrder = 4
    OnChange = TreeChange
  end
  object ImageList1: TImageList
    Left = 200
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C9C8C800ADB2B500B2BC
      BF00CBD0D100D2CFCD00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7C7C700C7C6C600C8CBCC009F7365009275
      6D00968D8D00ACB2B400C9C7C700C7C7C7000000000000000000FBFCFD00FFFF
      FF00FFFFFA00FBF8EC00FFFCF100FEFFFF00FBFAFB00FDFDFC00FBFBFB00FBFB
      FD00FBFBFC00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7C7C700C6C6C600CBCACA00B9B9BA00F5997200EE94
      7100FFAF8800F79570008B807D00C0C3C50000000000FCFDFD00FFFFFE00F8F5
      F400C4C9E8007D8CDE00AFB3D500FEFDF100FBFCFE00F9FAFB00FDFDFD00FFFF
      FD00FFFFFE00FCFCFE00FBFBFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C7C7C7000000
      0000C7C7C700C7C7C700C9CBCB00C9C9C900CBCBCB00B8B7B800FBAA8100E380
      5D00DE6E4A00F3977300A05E4A009E9B9C0000000000FEFDFC00EBECF20098A8
      E4003057F3000B3FFF003D5BE000C4C3D100FFFFF900FCFDFE00FFFFF900F0EF
      F100EBEAE900FFFEFA00FCFCFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7C7C70000000000C7C7
      C700C6C5C500CBCBCA00B4AFAF00ADACAC00C4C4C300C3C9CA00E58E6C00EC90
      6A00DD674300DA5F3C00E17755009E8A840000000000FAF7F800B9C3EA007AAD
      FA00376EFE00093DFB00144AFD00556DD900D8D4D500F8F6F100C4C9E8006A81
      E9005D71D600D4D4D900FFFFFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7C7C70000000000C6C6C600C9C6
      C500CACECE00B8BBBC00B8826B008F685900ACABAC00C8C8C700BFB2AF00D582
      6700E16C4700D9593700EB7E5A00A18C850000000000FDFCFB00DCE0F200ABCF
      F30081BBFB002F63F8001951FD002155F7006275D1007E8DDA00325AF400083C
      FD000438FF006072D300E8E6E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7C7C700C7C7C700ACB3B500AD81
      7600C7755800F48E6600FDC9A900B7725A00837B7B00928C8D00AF7F7000CA81
      6600EF926D00FA9E7900EF845B009D857D0000000000FEFEFC00FFFCFA00CED3
      EC009AC8F6006CA9FD002A5FF900295FFD002055F9001548F900154AFF000D41
      FB000C40FD004865EE00D3D2DF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAC9C800BEC4C600B9685200DD70
      4B00F5936D00F9BC9D00FED7BF00EAA68400D5967600D89B7C00F0A07900FFA5
      7B00FBA78300F9B79900EF8C65009E857E0000000000FCFCFB00FBFBFC00F7F6
      F900BFCCEF005A8BF7003067FC00366AFA003067FD002A5EFD002154FB001F53
      FE005F7BF000C7CBED00F7F7F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBEBE00AE756600E36F4A00F6A0
      7C00FBCDAD00FEDBBD00FDD1B800FFC59F00FFC19800FFBB9500FCC1A600FAD6
      C800FCEDE500FEE5D100F3936B00A38C84000000000000000000FCFCFD00FFFF
      FA00C9CCE900456EF1003C75FE00457BF9003A6FFA00376CFB001E55FC005E77
      E000DBDDEA00FFFFF800FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B18D8300DA512D00FAB89400FED7
      B600FED8B900FED8BB00FEDEC500FCD2BA00FBD9C600FCE4D500FEF8F400FEFD
      FC00FEFBF800FCE4D300DA8B6900AD9B960000000000FDFEFD00FAF8F800C8CA
      E700809FEE005F93FB00568DFA004E85FB004076FA003B71FA002860FF005C72
      D200E1DEDD00FDFDFE00F9F9FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E18C6E00FFDDB500FDCEAA00FFD3
      B000FED5B500FED8BA00FEDEC500FEE0CB00FEE5D200FEEAD900FEF3EA00FEFC
      F900FFFFFF00F3CFBE00BDB6B600C9CBCC0000000000FDFBFA00C5CDEC007CA2
      F200669EFB00649EFA005F9BFC005492FF00558EFC00457BF9003469FB002B5E
      F6007C8ACD00F2EEE700FEFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3A59E00E2997C00FFD5B100FED3
      B000FED4B400FED7B900FFDDC500FFE4CE00FFE8D400FFEBDA00FFFAF100F9DD
      D500D89F9200B69D9700C9CDCE00C6C5C50000000000FCFBFB00C3CDED008DBC
      FA0085C2FE0075B0FD007DAAF40088A5E80089B9F600649FFC00396EF9002962
      FF002E5BF0009EA3CE00FAF8F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C8CA00C3BBBA00EEAB8900FED1
      AC00FFD9B700FDD7B800FEDDC300F7CFB700F1C9B200EDBEA900C0938500B6A5
      A100C4BAB800C3C5C600C7C6C600C7C8C80000000000FFFEFD00F5F4F700BDCD
      ED009AC6F600A3C2EF00C9D2EB00EAE6ED00B8C8EE0073A6F900477FFC002C60
      F7002059FF004767E500D3D1DC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7C7C700C7C8C900B9A6A300D498
      8100F7BE9B00FFD8B700FDD6B900AC6A5700A7979500C0BFBF00C6C6C600C6C7
      C700C8CACB00C9C9C80000000000000000000000000000000000FFFEFD00EFEE
      F600D3D8ED00E9E9F300FBF9FA00FFFFFE00EDEAF30099B0EE004B7FFB003165
      FE00436EF6008D9EEB00E9E8EE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7C7C700C7C7C700C7C6C600C8C7
      C700C5CDD000BDB0AE00DC826300B4A19B00C3C8C900C8C7C700C8C8C700C7C7
      C700000000000000000000000000000000000000000000000000FCFDFD00FEFE
      FE00FEFBFB00FFFEFD00FEFEFD00F9FAFC00FFFFFD00E2E4F200859EF1007993
      F200C1C5EA00F8F7F500FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C700C8C6C500C9CECF00C3ACA700C5C3C300C8C8C900C7C7C700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005FA066003A9C4A003273380044654300676D64000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C6C60095908F009C9A9900BDBDBD00C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000C1897C00D8C1A900FDEC
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDECD600D8C1A900C1897C000000000000000000FFFFFF00DABEA6003F3F
      0000000000000000000000000000000000000000000000000000000000000000
      00002F3B7C00C9D7FF00FFFFFF00606060000000000000000000000000000000
      0000000000005FA1620041D15F005AFA8A004BEB780043D86B00229436005C6A
      5B00000000000000000000000000000000000000000000000000000000000000
      000000000000FFEDE300FFF6F000FCC9B800C592820085615700765D5600847D
      7C0099989800BDBDBD000000000000000000C1897C00E6D6D600FFFFFF00FFFF
      FF00FDECD600E6D6D600E6D6D600FEB4BB00D8C1A900E9C7DC00F8E6C900F2DE
      EE00FFFFFF00FFFFFF00E6D6D600C1897C000000000000000000A0877F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000003900C9D7FF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000BBB9B900B2AA
      B1009CA59B0036B84A0050EA77004BE5740052ED7F0064FF980044DD6E004E6D
      4D00000000000000000000000000000000000000000000000000BFBEBE008177
      7500AAAAAA00FFE9DC00FFF8EC00FAEEDF00C9BEB500C0ADA600BAA09700D18D
      7A00B16E5D007A666100ACACAC0000000000D8C1A900FFFFFF00FBF1EB00D8C1
      A900D1A48C00FBB49200D1A48C00D4AAA700D4AAA700FBB49200D1A48C00D1A4
      8C00FBB49200F2DEEE00FFFFFF00D8C1A9000000000000000000000000006060
      6000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009F9D9D00000000000000000000000000000000009BAD9A00399440003885
      3F00336833003BC157004DEE790042E069004AE6740055F384003BCF60005270
      52000000000000000000000000000000000000000000BEBBBA00C85E4200FC96
      7100FB896200FAE3D800FFFDF600937F7900BD9E9000FFCAAC00FFDCBE00FFE6
      D100FFF0E100E0A79500887D7B0000000000FDECD600FFFFFF00FBD2B300FFBE
      B500FFBEB500FFBEB500FFBEB500FFBEB500FFBEB500FFBEB500FFBEB500D8C1
      A900FBB49200FBB49200FFFFFF00FDECD6000000000000000000000000000000
      000062625100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F3B
      7C00000000000000000000000000000000000000000021952A0021CA3B0028D0
      440022C13C0033D053003CDD61003EDE640044E26C0051EF7E0037CD5A00455E
      4300B7AAB60000000000000000000000000000000000A98C8400E35E3800F194
      7000F4967000FCEEE700FFF9F000C6AEAE00875A5700FFC9AA00FFE1C400FFEE
      E100FFFAF600E4AA96008B7E7B0000000000FFFFFF00FBF1EB00FBD2B300FFBE
      B500FBD2B300FFBEB500FBD2B300FBD2B300FBD2B300FFBEB500FBD2B300E1D5
      B300FEB4BB00D1A48C00F2DEEE00FFFFFF00000000000000000000000000CECE
      CE00FFFFFF00FFFFFF00FFFFFF00D797990000000000FFFFFF00FFFFFF00FFFF
      FF00C9D7FF0000003900000000000000000006810D0024C83F0020C5390021C4
      3A0029CE47002DD04C0032D4530039DA5D003FDE650047E5700044E16D00247C
      2E0040593A00A7A59C00000000000000000000000000DD6C4B00E6765000EE94
      7000F5A77E00FFFEFB00FFF3E900CDA49D00B46C74000F0207005D473F00FEB4
      9300FDC09D00C18F81009D9C9C0000000000FFFFFF00FBF1EB00E6D6D600FFBE
      B500FFBEB500FFBEB500FFBEB500FFBEB500FEB4BB00FFBEB500FFBEB500FEB4
      BB00FEB4BB00D4AAA700F8E6C900FFFFFF00000000003F3F0000C9D7FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00949DD200DABEA600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000303E00000000001991250038D55B0017BE2E0019BF
      300021C53B0027CA44002DD04C0033D5550039DA5D003FDE650047E6710048E8
      720038CE5B0041B958004AA453000000000000000000ED785200E57D5800EC93
      6E00F6B48D00FFFEFD00FEEDE500BCAAA600A6636B0046282C0013070800FFDD
      C100FDD3B500B37563009290900000000000FFFFFF00FDECD600FFBEB500B1A6
      E6008C8CD400B1A6E6008C8CD4008C8CD400B1A6E6008C8CD4008C8CD400B1A6
      E600BA8CA000FEB4BB00FFBEB500FFFFFF00DABEA600F8E6C9009F9D9D000000
      390000000000FFFFFF00C9D7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00003F3F0000A0877F00949DD200CECECE001F972E0057EF85002BCD480011B8
      26001ABF310021C63B0027CB44002DD04D0033D555003ADA5E003FDF650047E4
      700051F07F0056F7870049F47E004BAC5B00C1B5B200F1906A00E98A6600EA91
      6900FCDBC400FFFDFC00FEF7F500FFF5F1009F9B9E00B16A710059363A009675
      6400FFFFEA00F0865D008A665C0000000000FFFFFF00FDECD600E6D6D6003E3E
      FF003E3EFF003E3EFF003E3EFF003E3EFF003E3EFF003E3EFF003E3EFF003E3E
      FF003E3EFF00D4AAA700FBD2B300FFFFFF000000390000000000000000000000
      000000000000FFCBFF00FFFFFF00A0877F00BEBEBE00C9D7FF00FFFFFF000000
      000000000000000000000000000000000000198B26004CE97B0052F783003CE0
      620029CD46001FC2370023C63E0028CB44002ED04D0034D555003ADA5E0040DF
      670046E36E004DE677004FF3800057B76B00B8A19C00ED967100EB926D00F19E
      7800FFF4E800FFE7DE00FEC2AD00FFD2C100E6BDAD00B86E770092585D002B2A
      2800E2DCD200E79972009467590000000000FFFFFF00FDECD600E6D6D6003E3E
      FF003E3EFF003E3EFF003E3EFF003E3EFF003E3EFF003E3EFF003E3EFF003E3E
      FF003E3EFF00D4AAA700FFBEB500FFFFFF000000000000000000A0877F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003434340000003900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000579F5E0035A4440020AF
      370019BB32000BBB200007BB1F0023C73E0027CB44002ED04D0034D5550037D7
      5B003EDD630045E26D0047ED75008BAA8600C68A7900F1A47E00F2A07A00C6A0
      8A00C2B3A900C2ACA500C1ACA700C1C5C600F1F7FA00867578009A5C62004F30
      31000C0205007A66D3009961570000000000FFFFFF00FDECD600E9C7DC00E9C7
      DC00D4AAA700E9C7DC00B1A6E600D4AAA700E9C7DC00D4AAA700E9C7DC00D4AA
      A700CECECE00FEB4BB00FBD2B300FFFFFF000000000000000000CECECE00FFFF
      FF00FFFFFF006A7DBB00297BFF00FFFFFF00FFFFFF006A7DBB006F7BF900FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000A4B0
      A2004791480036A9400077C5810019C1320022C73D0028CC45002FD24E0048E9
      72004DEA78004BE6730040EB6E0047A95500CF856F00F3AA8400F3A78100F2BF
      9E00F6D6C300E9B39E00E5A59100B18C8300EBF4F600B2B1B200955B61007346
      4A00331C1E00685DAB0061498A0000000000FFFFFF00FBF1EB00F8E6C900FBD2
      B300FFBEB500FFBEB500FBD2B300FFBEB500E6D6D600FFBEB500FBD2B300FFBE
      B500FFBEB500D8C1A900F8E6C900FFFFFF0000000000000000009F9D9D00FFFF
      FF002142D6000000FF000000FF00C9D7FF00FFFFFF000000FF000000FF000000
      FF00FFFFFF00CECECE000000000000000000000000000000000000000000DCD2
      DC009BB29B0057A65E00A1CBA80012BB29001CC2340023C83E0026C542003ACD
      5D004DEC7D005BFC92003DBC5A0000000000DF8C6D00FAC09900F8BA9400EFB4
      8D00F8D8B000FEEDDD00FFF3E400C0A9A000F9FEFF00FFFFFF00A09F9F00C476
      7E00814D4E001C0E0C00452E7C00A3A3A400FFFFFF00FEFFF400FDECD600E6D6
      D600FFBEB500E6D6D600FFBEB500FBD2B300FFBEB500E6D6D600FFBEB500FBD2
      B300FFBEB500FFBEB500FBF1EB00FFFFFF00000000000000000060606000F8E6
      C9000000FF000000FF000029CF00FFFFFF00FFFFFF003E3EFF000000FF000000
      FF00BFBFFF004D629C0000000000000000000000000000000000000000000000
      00009BAE9A001AB0310015C7300009B21B0017BD2D0020C83A0016AF2A003568
      34005F9C650064B272000000000000000000D7876F00F4AE8900F9BC9500F2A2
      7D00EE9B7400F2BBA400FFFBF400C1AAA200F8FFFF00FFFFFF00E9EEF000B569
      6A00A9676F0014139E0003059700ACACAE00E6D6D600FFFFFF00FDECD600FDEC
      D600FDECD600FBD2B300FBD2B300E9C7DC00FBD2B300FFBEB500E9C7DC00FBD2
      B300E9C7DC00FBD2B300FFFFFF00E6D6D600000000000000000000003900C9D7
      FF002142D6004D629C00C9D7FF00FFFFFF00FFFFFF00FFFFFF003E3EFF000000
      FF00F8E6C900582B2B0000000000000000000000000000000000000000000000
      00009AAD98002BBA450039DC5C0012B625000DB41F0014BD29000DAE21005772
      570000000000000000000000000000000000000000000000000000000000C9B7
      B300C8A8A000D0917E00D6876C00D1886A00E9B79800F6B99600F9BA95005F47
      9500785FBC00B36B6400B46D6A00C5C5C500D8C1A900FFFFFF00FFFFFF00FBF1
      EB00FDECD600FDECD600FDECD600FDECD600F8E6C900FDECD600F8E6C900FDEC
      D600FDECD600FBF1EB00FFFFFF00D8C1A900000000000000000000000000CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F8E6C9000000000000000000000000000000000000000000000000000000
      0000A3B1A2001DA7330043EA710050F3810050F17F003EE668000D951C008697
      8500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C8C5C400CC897700F7B28B00FABC9400F8B79000C07D
      7C0055314100714E52008B7E800000000000C1897C00FDECD600FFFFFF00FFFF
      FF00FFFFFF00FBF1EB00FBF1EB00FBF1EB00FBF1EB00FBF1EB00FBF1EB00FEFF
      F400FFFFFF00FFFFFF00F8E6C900C1897C000000000000000000000000000000
      0000949DD200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000083A8840055A15D0049B25D0050D1750042BC60007B987B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C8C5C400CAA59C00D18E7900DD8F7400AAA4
      A3000000000000000000000000000000000000000000C1897C00D8C1A900FDEC
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E6D6D600D8C1A900C1897C00000000000000000000000000000000000000
      00000000000000000000000000003F3F00001E1B3C0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF01FFFF00000000FE00C00300000000
      FC00800100000000D000800100000000A0008001000000004000800100000000
      000080010000000000008001000000000000C001000000000000800100000000
      0000800100000000000080010000000000008001000000000003C00100000000
      000FC00100000000E03FFFFF00000000FC1FF07F80018000F80FF80300000004
      C00FC00100000000800F80010000000080078001000000800003800100000000
      0001800100000000000000010000000000000001000000048000000100000000
      E000000100000000E001000000000000F003000000000000F00FE00000000000
      F00FFC0100000000F81FFE0F8001000000000000000000000000000000000000
      000000000000}
  end
end

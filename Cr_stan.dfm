object cr_stanF: Tcr_stanF
  Left = 187
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088' '#1089#1090#1072#1085#1076#1072#1088#1090#1072
  ClientHeight = 482
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 16
    Width = 187
    Height = 16
    Caption = #1056#1072#1079#1088#1072#1073#1072#1090#1099#1074#1072#1102#1097#1072#1103' '#1082#1072#1092#1077#1076#1088#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 106
    Top = 48
    Width = 90
    Height = 16
    Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label51: TLabel
    Left = 8
    Top = 8
    Width = 5
    Height = 13
    Caption = '/'
    Visible = False
  end
  object Label55: TLabel
    Left = 448
    Top = 56
    Width = 38
    Height = 13
    Caption = 'Label55'
    Visible = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 202
    Top = 8
    Width = 313
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    KeyField = 'cod'
    ListField = 'naim'
    ListSource = DataModule1.DataSource1
    ParentFont = False
    TabOrder = 0
    OnClick = DBLookupComboBox1Click
    OnDropDown = DBLookupComboBox1DropDown
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 202
    Top = 40
    Width = 313
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    KeyField = 'fio'
    ListField = 'fio'
    ListSource = DataModule1.DataSource22
    ParentFont = False
    TabOrder = 1
    OnClick = DBLookupComboBox2Click
    OnDropDown = DBLookupComboBox2DropDown
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 72
    Width = 633
    Height = 409
    ActivePage = TabSheet5
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1072#1103
      object Label3: TLabel
        Left = 56
        Top = 18
        Width = 185
        Height = 16
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099':'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 128
        Top = 45
        Width = 113
        Height = 16
        Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103':'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object kaf: TLabel
        Left = 8
        Top = 344
        Width = 5
        Height = 13
        Caption = '/'
        Visible = False
      end
      object raz: TLabel
        Left = 64
        Top = 344
        Width = 5
        Height = 13
        Caption = '/'
        Visible = False
      end
      object dis: TLabel
        Left = 120
        Top = 344
        Width = 5
        Height = 13
        Caption = '/'
        Visible = False
      end
      object fob: TLabel
        Left = 176
        Top = 344
        Width = 5
        Height = 13
        Caption = '/'
        Visible = False
      end
      object prv: TLabel
        Left = 8
        Top = 360
        Width = 5
        Height = 13
        Caption = '/'
        Visible = False
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 248
        Top = 10
        Width = 313
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        KeyField = 'allpar'
        ListField = 'allpar'
        ListSource = DataModule1.DataSource14_1
        ParentFont = False
        TabOrder = 0
        OnClick = DBLookupComboBox3Click
        OnDropDown = DBLookupComboBox3DropDown
      end
      object Panel1: TPanel
        Left = 56
        Top = 64
        Width = 505
        Height = 145
        BorderStyle = bsSingle
        TabOrder = 1
        object RadioButton1: TRadioButton
          Left = 8
          Top = 2
          Width = 145
          Height = 17
          Caption = #1042#1074#1086#1076#1080#1090#1089#1103' '#1074#1087#1077#1088#1074#1099#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 22
          Width = 129
          Height = 17
          Caption = #1042#1074#1086#1076#1080#1090#1089#1103' '#1074#1079#1072#1084#1077#1085
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadioButton2Click
        end
        object ListBox1: TListBox
          Left = 272
          Top = 40
          Width = 217
          Height = 97
          Style = lbOwnerDrawFixed
          ItemHeight = 13
          TabOrder = 2
          OnClick = ListBox1Click
          OnDrawItem = ListBox1DrawItem
        end
        object Button2: TButton
          Left = 224
          Top = 48
          Width = 41
          Height = 25
          Caption = '>>'
          TabOrder = 3
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 224
          Top = 80
          Width = 41
          Height = 25
          Caption = '<<'
          TabOrder = 4
          OnClick = Button3Click
        end
        object ListBox2: TListBox
          Left = 8
          Top = 40
          Width = 209
          Height = 97
          ItemHeight = 13
          TabOrder = 5
        end
      end
      object Panel2: TPanel
        Left = 56
        Top = 216
        Width = 505
        Height = 121
        BorderStyle = bsSingle
        TabOrder = 2
        object Label4: TLabel
          Left = 320
          Top = 8
          Width = 162
          Height = 16
          Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1089#1090#1072#1085#1076#1072#1088#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 26
          Top = 94
          Width = 103
          Height = 15
          Caption = #1080#1083#1080' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103#1084
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 312
          Top = 8
          Width = 177
          Height = 97
        end
        object Label6: TLabel
          Left = 318
          Top = 51
          Width = 4
          Height = 17
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RadioButton3: TRadioButton
          Left = 8
          Top = 16
          Width = 289
          Height = 17
          Caption = #1057#1090#1072#1085#1076#1072#1088#1090' '#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1086#1076#1085#1086#1081' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = RadioButton3Click
        end
        object RadioButton4: TRadioButton
          Left = 8
          Top = 48
          Width = 289
          Height = 17
          Caption = #1057#1090#1072#1085#1076#1072#1088#1090' '#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1102' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          OnClick = RadioButton4Click
        end
        object RadioButton5: TRadioButton
          Left = 8
          Top = 78
          Width = 297
          Height = 17
          Caption = #1057#1090#1072#1085#1076#1072#1088#1090' '#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082#1086' '#1084#1085#1086#1075#1080#1084' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = RadioButton5Click
        end
      end
      object Button1: TButton
        Left = 496
        Top = 344
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077'>>'
        TabOrder = 3
        OnClick = Button1Click
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 248
        Top = 40
        Width = 145
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        KeyField = 'naim'
        ListField = 'naim'
        ListSource = DataModule1.DataSource4
        ParentFont = False
        TabOrder = 4
        OnClick = DBLookupComboBox4Click
        OnDropDown = DBLookupComboBox4DropDown
      end
      object Edit7: TEdit
        Left = 248
        Top = 10
        Width = 294
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Visible = False
      end
      object Edit8: TEdit
        Left = 248
        Top = 40
        Width = 126
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1042#1074#1077#1076#1077#1085#1080#1077
      ImageIndex = 1
      object Label38: TLabel
        Left = 208
        Top = 16
        Width = 38
        Height = 13
        Caption = 'Label38'
        Visible = False
      end
      object RadioButton6: TRadioButton
        Left = 40
        Top = 8
        Width = 145
        Height = 17
        Caption = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1074#1074#1077#1076#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = RadioButton6Click
      end
      object RadioButton7: TRadioButton
        Left = 40
        Top = 32
        Width = 137
        Height = 17
        Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1074#1074#1077#1076#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton7Click
      end
      object Panel3: TPanel
        Left = 40
        Top = 56
        Width = 489
        Height = 49
        BorderStyle = bsSingle
        TabOrder = 2
        Visible = False
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 360
          Height = 13
          Caption = 
            #1056#1072#1079#1076#1077#1083' "'#1042#1074#1077#1076#1077#1085#1080#1077'" '#1086#1073#1088#1072#1073#1086#1090#1072#1085' '#1080' '#1073#1091#1076#1077#1090' '#1074#1082#1083#1102#1095#1077#1085' '#1074' '#1089#1090#1088#1091#1082#1090#1091#1088#1091' '#1089#1090#1072#1085#1076#1072#1088#1090 +
            #1072'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 24
          Width = 358
          Height = 13
          Caption = #1042#1099' '#1084#1086#1078#1077#1090#1077' '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1091' '#1089#1090#1072#1085#1076#1072#1088#1090#1072' '#1085#1072#1078#1072#1074' '#1082#1085#1086#1087#1082#1091' '#1044#1072#1083#1077#1077'>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object Button4: TButton
        Left = 496
        Top = 344
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077'>>'
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button18: TButton
        Left = 40
        Top = 344
        Width = 75
        Height = 25
        Caption = '<<'#1053#1072#1079#1072#1076
        TabOrder = 4
        OnClick = Button18Click
      end
      object Button30: TButton
        Left = 264
        Top = 112
        Width = 89
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        Visible = False
        OnClick = Button30Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1054#1073#1083#1072#1089#1090#1100' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 2
      object Label20: TLabel
        Left = 24
        Top = 64
        Width = 168
        Height = 13
        Caption = #1043#1086#1076' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1087#1083#1072#1085#1072
      end
      object Label35: TLabel
        Left = 216
        Top = 352
        Width = 38
        Height = 13
        Caption = 'Label35'
        Visible = False
      end
      object Label39: TLabel
        Left = 24
        Top = 88
        Width = 159
        Height = 13
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' '#1080' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103':'
        Visible = False
      end
      object Label40: TLabel
        Left = 304
        Top = 88
        Width = 62
        Height = 13
        Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077':'
        Visible = False
      end
      object Label50: TLabel
        Left = 24
        Top = 320
        Width = 240
        Height = 13
        Caption = #1044#1072#1090#1072' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103' '#1043#1054#1057' '#1042#1055#1054' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      end
      object Label52: TLabel
        Left = 504
        Top = 88
        Width = 76
        Height = 13
        Caption = #1044#1072#1090#1072' '#1043#1054#1057' '#1042#1055#1054
        Visible = False
      end
      object godc: TLabel
        Left = 144
        Top = 352
        Width = 5
        Height = 13
        Caption = '/'
        Visible = False
      end
      object ListBox11: TListBox
        Left = 416
        Top = 80
        Width = 33
        Height = 129
        ItemHeight = 13
        TabOrder = 14
        Visible = False
      end
      object ListBox12: TListBox
        Left = 456
        Top = 80
        Width = 33
        Height = 129
        ItemHeight = 13
        TabOrder = 15
        Visible = False
      end
      object ListBox5: TListBox
        Left = 232
        Top = 80
        Width = 33
        Height = 129
        ItemHeight = 13
        TabOrder = 9
        Visible = False
      end
      object ListBox6: TListBox
        Left = 264
        Top = 80
        Width = 33
        Height = 129
        ItemHeight = 13
        TabOrder = 10
        Visible = False
      end
      object Panel4: TPanel
        Left = 24
        Top = 8
        Width = 505
        Height = 41
        BorderStyle = bsSingle
        TabOrder = 0
        object Label9: TLabel
          Left = 6
          Top = 3
          Width = 489
          Height = 13
          Caption = 
            #1042#1099#1073#1077#1088#1080#1090#1077' '#1075#1086#1076' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1087#1083#1072#1085#1072', '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1088 +
            #1072#1079#1088#1072#1073#1072#1090#1099#1074#1072#1077#1090#1089#1103' '#1089#1090#1072#1085#1076#1072#1088#1090','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 8
          Top = 16
          Width = 385
          Height = 13
          Caption = 
            #1079#1072#1090#1077#1084' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' '#1080' ('#1080#1083#1080') '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1076#1083#1103' '#1082#1086#1090#1086#1088#1099#1093' '#1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1089#1090 +
            #1072#1085#1076#1072#1088#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object ListBox3: TListBox
        Left = 24
        Top = 104
        Width = 201
        Height = 129
        ItemHeight = 13
        TabOrder = 1
        Visible = False
        OnClick = ListBox3Click
        OnDblClick = ListBox3DblClick
      end
      object ListBox4: TListBox
        Left = 304
        Top = 104
        Width = 201
        Height = 129
        ItemHeight = 13
        TabOrder = 2
        Visible = False
      end
      object Button5: TButton
        Left = 240
        Top = 136
        Width = 49
        Height = 25
        Caption = '>>'
        TabOrder = 3
        Visible = False
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 240
        Top = 176
        Width = 49
        Height = 25
        Caption = '<<'
        TabOrder = 4
        Visible = False
        OnClick = Button6Click
      end
      object Edit1: TEdit
        Left = 21
        Top = 280
        Width = 436
        Height = 21
        TabOrder = 5
        Visible = False
      end
      object Button7: TButton
        Left = 24
        Top = 240
        Width = 75
        Height = 25
        Caption = #1042#1099#1073#1088#1072#1090#1100
        TabOrder = 6
        Visible = False
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 496
        Top = 344
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077'>>'
        TabOrder = 7
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 152
        Top = 240
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 8
        Visible = False
        OnClick = Button9Click
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 200
        Top = 56
        Width = 113
        Height = 21
        KeyField = 'year'
        ListField = 'year'
        ListSource = DataModule1.DataSource10_1
        TabOrder = 11
        OnClick = DBLookupComboBox5Click
      end
      object Button19: TButton
        Left = 40
        Top = 344
        Width = 75
        Height = 25
        Caption = '<<'#1053#1072#1079#1072#1076
        TabOrder = 12
        OnClick = Button19Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 272
        Top = 312
        Width = 186
        Height = 21
        CalColors.BackColor = clWhite
        Date = 39441.387155486110000000
        Time = 39441.387155486110000000
        Color = clWhite
        TabOrder = 13
        OnChange = DateTimePicker1Change
        OnKeyPress = DateTimePicker1KeyPress
      end
      object ListBox13: TListBox
        Left = 504
        Top = 104
        Width = 97
        Height = 129
        Enabled = False
        ItemHeight = 13
        TabOrder = 16
        Visible = False
      end
      object Edit9: TEdit
        Left = 200
        Top = 56
        Width = 93
        Height = 21
        TabOrder = 17
        Visible = False
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1062#1077#1083#1080
      ImageIndex = 5
      object Label36: TLabel
        Left = 16
        Top = 88
        Width = 38
        Height = 13
        Caption = 'Label36'
        Visible = False
      end
      object Label21: TLabel
        Left = 64
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Label21'
        Visible = False
      end
      object Label22: TLabel
        Left = 16
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Label22'
        Visible = False
      end
      object Panel5: TPanel
        Left = 48
        Top = 8
        Width = 505
        Height = 49
        BorderStyle = bsSingle
        TabOrder = 0
        Visible = False
        object Label10: TLabel
          Left = 16
          Top = 8
          Width = 449
          Height = 13
          Caption = 
            #1056#1072#1079#1076#1077#1083' "'#1062#1077#1083#1080' '#1080' '#1079#1072#1076#1072#1095#1080' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099'" '#1086#1073#1088#1072#1073#1086#1090#1072#1085' '#1080' '#1073#1091#1076#1077#1090' '#1074#1082#1083#1102#1095#1077#1085' '#1074' '#1089#1090 +
            #1088#1091#1082#1090#1091#1088#1091' '#1089#1090#1072#1085#1076#1072#1088#1090#1072'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 16
          Top = 24
          Width = 358
          Height = 13
          Caption = #1042#1099' '#1084#1086#1078#1077#1090#1077' '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1091' '#1089#1090#1072#1085#1076#1072#1088#1090#1072' '#1085#1072#1078#1072#1074' '#1082#1085#1086#1087#1082#1091' '#1044#1072#1083#1077#1077'>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object Button10: TButton
        Left = 496
        Top = 344
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077'>>'
        TabOrder = 1
        OnClick = Button10Click
      end
      object Button20: TButton
        Left = 40
        Top = 344
        Width = 75
        Height = 25
        Caption = '<<'#1053#1072#1079#1072#1076
        TabOrder = 2
        OnClick = Button20Click
      end
      object Memo1: TMemo
        Left = 64
        Top = 88
        Width = 185
        Height = 89
        TabOrder = 3
        Visible = False
      end
      object Button28: TButton
        Left = 269
        Top = 64
        Width = 89
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 4
        Visible = False
        OnClick = Button28Click
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
      ImageIndex = 6
      object Label37: TLabel
        Left = 176
        Top = 352
        Width = 38
        Height = 13
        Caption = 'Label37'
        Visible = False
      end
      object GroupBox1: TGroupBox
        Left = 48
        Top = 8
        Width = 513
        Height = 129
        Caption = #1056#1072#1073#1086#1095#1072#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1072
        TabOrder = 0
        object Bevel3: TBevel
          Left = 232
          Top = 16
          Width = 9
          Height = 105
          Shape = bsLeftLine
        end
        object Label13: TLabel
          Left = 8
          Top = 46
          Width = 156
          Height = 15
          Cursor = crHandPoint
          Caption = #1042#1080#1076#1099' '#1080' '#1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1079#1072#1085#1103#1090#1080#1081
          Color = clBtnFace
          DragCursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsUnderline]
          ParentColor = False
          ParentFont = False
          OnClick = Label13Click
          OnMouseMove = Label13MouseMove
          OnMouseLeave = Label13MouseLeave
        end
        object Label14: TLabel
          Left = 240
          Top = 24
          Width = 167
          Height = 15
          Cursor = crHandPoint
          Caption = #1040#1090#1090#1077#1089#1090#1072#1094#1080#1103' '#1080' '#1080#1090#1086#1075#1086#1074#1072#1103' '#1086#1094#1077#1085#1082#1072
          Color = clBtnFace
          DragCursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsUnderline]
          ParentColor = False
          ParentFont = False
          OnClick = Label14Click
          OnMouseMove = Label14MouseMove
          OnMouseLeave = Label14MouseLeave
        end
        object Label15: TLabel
          Left = 8
          Top = 70
          Width = 189
          Height = 15
          Cursor = crHandPoint
          Caption = #1059#1095#1077#1073#1085#1086'-'#1084#1077#1090#1086#1076#1080#1095#1077#1089#1082#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099
          Color = clBtnFace
          DragCursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsUnderline]
          ParentColor = False
          ParentFont = False
          OnClick = Label15Click
          OnMouseMove = Label15MouseMove
          OnMouseLeave = Label15MouseLeave
        end
        object Label16: TLabel
          Left = 8
          Top = 94
          Width = 157
          Height = 15
          Cursor = crHandPoint
          Caption = #1059#1095#1077#1073#1085#1086'-'#1084#1077#1090#1086#1076#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072
          Color = clBtnFace
          DragCursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsUnderline]
          ParentColor = False
          ParentFont = False
          OnClick = Label16Click
          OnMouseMove = Label16MouseMove
          OnMouseLeave = Label16MouseLeave
        end
        object Label17: TLabel
          Left = 240
          Top = 46
          Width = 155
          Height = 15
          Cursor = crHandPoint
          Caption = #1054#1089#1086#1073#1077#1085#1085#1086#1089#1090#1080' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1085#1080#1103
          Color = clBtnFace
          DragCursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsUnderline]
          ParentColor = False
          ParentFont = False
          OnClick = Label17Click
          OnMouseMove = Label17MouseMove
          OnMouseLeave = Label17MouseLeave
        end
        object Label30: TLabel
          Left = 8
          Top = 24
          Width = 216
          Height = 13
          Caption = #1055#1072#1089#1087#1086#1088#1090' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099' ('#1072#1074#1090#1086#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 400
          Top = 47
          Width = 105
          Height = 13
          Caption = '('#1087#1088#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1080')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 240
          Top = 70
          Width = 105
          Height = 15
          Cursor = crHandPoint
          Caption = #1051#1080#1089#1090' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103
          Color = clBtnFace
          DragCursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsUnderline]
          ParentColor = False
          ParentFont = False
          OnClick = Label18Click
          OnMouseMove = Label18MouseMove
          OnMouseLeave = Label18MouseLeave
        end
        object Image1: TImage
          Left = 170
          Top = 44
          Width = 17
          Height = 17
          Picture.Data = {
            07544269746D6170EE000000424DEE0000000000000076000000280000000F00
            00000F0000000100040000000000780000000000000000000000100000000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0099999999999999909CCCCC0CCCCCCC909CFFF00FFFFFFC909CFFF000FFFF
            FC909CFF00F00FFFFC909CF000F00FFFFC909C000FFF00FFFC90900FFFFF00FF
            FC9090FFFFFFF00FFC900CFFFFFFFF00FC909CFFFFFFFF00FC909CFFFFFFFFF0
            0C909CFFFFFFFFFF0C909CCCCCCCCCCC00909999999999999990}
          Visible = False
        end
        object Image2: TImage
          Left = 202
          Top = 68
          Width = 17
          Height = 17
          Picture.Data = {
            07544269746D6170EE000000424DEE0000000000000076000000280000000F00
            00000F0000000100040000000000780000000000000000000000100000000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0099999999999999909CCCCC0CCCCCCC909CFFF00FFFFFFC909CFFF000FFFF
            FC909CFF00F00FFFFC909CF000F00FFFFC909C000FFF00FFFC90900FFFFF00FF
            FC9090FFFFFFF00FFC900CFFFFFFFF00FC909CFFFFFFFF00FC909CFFFFFFFFF0
            0C909CFFFFFFFFFF0C909CCCCCCCCCCC00909999999999999990}
          Visible = False
        end
        object Image3: TImage
          Left = 170
          Top = 92
          Width = 17
          Height = 17
          Picture.Data = {
            07544269746D6170EE000000424DEE0000000000000076000000280000000F00
            00000F0000000100040000000000780000000000000000000000100000000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0099999999999999909CCCCC0CCCCCCC909CFFF00FFFFFFC909CFFF000FFFF
            FC909CFF00F00FFFFC909CF000F00FFFFC909C000FFF00FFFC90900FFFFF00FF
            FC9090FFFFFFF00FFC900CFFFFFFFF00FC909CFFFFFFFF00FC909CFFFFFFFFF0
            0C909CFFFFFFFFFF0C909CCCCCCCCCCC00909999999999999990}
          Visible = False
        end
        object Image4: TImage
          Left = 410
          Top = 20
          Width = 17
          Height = 17
          Picture.Data = {
            07544269746D6170EE000000424DEE0000000000000076000000280000000F00
            00000F0000000100040000000000780000000000000000000000100000000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0099999999999999909CCCCC0CCCCCCC909CFFF00FFFFFFC909CFFF000FFFF
            FC909CFF00F00FFFFC909CF000F00FFFFC909C000FFF00FFFC90900FFFFF00FF
            FC9090FFFFFFF00FFC900CFFFFFFFF00FC909CFFFFFFFF00FC909CFFFFFFFFF0
            0C909CFFFFFFFFFF0C909CCCCCCCCCCC00909999999999999990}
          Visible = False
        end
        object Image5: TImage
          Left = 490
          Top = 44
          Width = 17
          Height = 17
          Picture.Data = {
            07544269746D6170EE000000424DEE0000000000000076000000280000000F00
            00000F0000000100040000000000780000000000000000000000100000000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0099999999999999909CCCCC0CCCCCCC909CFFF00FFFFFFC909CFFF000FFFF
            FC909CFF00F00FFFFC909CF000F00FFFFC909C000FFF00FFFC90900FFFFF00FF
            FC9090FFFFFFF00FFC900CFFFFFFFF00FC909CFFFFFFFF00FC909CFFFFFFFFF0
            0C909CFFFFFFFFFF0C909CCCCCCCCCCC00909999999999999990}
          Visible = False
        end
        object Image6: TImage
          Left = 349
          Top = 68
          Width = 17
          Height = 17
          Picture.Data = {
            07544269746D6170EE000000424DEE0000000000000076000000280000000F00
            00000F0000000100040000000000780000000000000000000000100000000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0099999999999999909CCCCC0CCCCCCC909CFFF00FFFFFFC909CFFF000FFFF
            FC909CFF00F00FFFFC909CF000F00FFFFC909C000FFF00FFFC90900FFFFF00FF
            FC9090FFFFFFF00FFC900CFFFFFFFF00FC909CFFFFFFFF00FC909CFFFFFFFFF0
            0C909CFFFFFFFFFF0C909CCCCCCCCCCC00909999999999999990}
          Visible = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 48
        Top = 136
        Width = 513
        Height = 65
        Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1086#1073#1091#1095#1077#1085#1080#1103' '#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
        TabOrder = 1
        object Label32: TLabel
          Left = 143
          Top = 30
          Width = 105
          Height = 13
          Caption = '('#1087#1088#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1080')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button13: TButton
          Left = 416
          Top = 36
          Width = 81
          Height = 21
          Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button13Click
        end
        object Panel6: TPanel
          Left = 16
          Top = 16
          Width = 385
          Height = 41
          BorderStyle = bsSingle
          TabOrder = 1
          Visible = False
          object Label24: TLabel
            Left = 5
            Top = 4
            Width = 363
            Height = 13
            Caption = #1056#1072#1079#1076#1077#1083' "'#1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1086#1073#1091#1095#1077#1085#1080#1103' '#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077'"'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 6
            Top = 19
            Width = 224
            Height = 13
            Caption = #1086#1073#1088#1072#1073#1086#1090#1072#1085' '#1080' '#1074#1082#1083#1102#1095#1077#1085' '#1074' '#1089#1090#1088#1091#1082#1090#1091#1088#1091' '#1089#1090#1072#1085#1076#1072#1088#1090#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object Button31: TButton
          Left = 416
          Top = 12
          Width = 81
          Height = 21
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          TabOrder = 2
          Visible = False
          OnClick = Button31Click
        end
      end
      object GroupBox3: TGroupBox
        Left = 48
        Top = 200
        Width = 513
        Height = 65
        Caption = #1057#1056#1057' '#1087#1086' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1077
        TabOrder = 2
        object Label33: TLabel
          Left = 145
          Top = 29
          Width = 105
          Height = 13
          Caption = '('#1087#1088#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1080')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button14: TButton
          Left = 416
          Top = 36
          Width = 81
          Height = 21
          Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button14Click
        end
        object Panel7: TPanel
          Left = 16
          Top = 16
          Width = 385
          Height = 41
          BorderStyle = bsSingle
          TabOrder = 1
          Visible = False
          object Label26: TLabel
            Left = 6
            Top = 3
            Width = 233
            Height = 13
            Caption = #1056#1072#1079#1076#1077#1083' "'#1057#1072#1084#1086#1089#1090#1086#1103#1090#1077#1083#1100#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#1089#1090#1091#1076#1077#1085#1090#1086#1074'"'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 6
            Top = 18
            Width = 224
            Height = 13
            Caption = #1086#1073#1088#1072#1073#1086#1090#1072#1085' '#1080' '#1074#1082#1083#1102#1095#1077#1085' '#1074' '#1089#1090#1088#1091#1082#1090#1091#1088#1091' '#1089#1090#1072#1085#1076#1072#1088#1090#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object Button32: TButton
          Left = 416
          Top = 12
          Width = 81
          Height = 21
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          TabOrder = 2
          Visible = False
          OnClick = Button32Click
        end
      end
      object GroupBox4: TGroupBox
        Left = 48
        Top = 264
        Width = 513
        Height = 65
        Caption = #1069#1083#1077#1084#1077#1085#1090#1099' '#1085#1072#1091#1095#1085#1086#1075#1086' '#1087#1086#1080#1089#1082#1072
        TabOrder = 3
        object Label34: TLabel
          Left = 144
          Top = 34
          Width = 105
          Height = 13
          Caption = '('#1087#1088#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1080')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button15: TButton
          Left = 416
          Top = 36
          Width = 81
          Height = 21
          Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button15Click
        end
        object Panel8: TPanel
          Left = 16
          Top = 16
          Width = 385
          Height = 41
          BorderStyle = bsSingle
          TabOrder = 1
          Visible = False
          object Label28: TLabel
            Left = 6
            Top = 3
            Width = 189
            Height = 13
            Caption = #1056#1072#1079#1076#1077#1083' "'#1069#1083#1077#1084#1077#1085#1090#1099' '#1085#1072#1091#1095#1085#1086#1075#1086' '#1087#1086#1080#1089#1082#1072'"'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 6
            Top = 18
            Width = 224
            Height = 13
            Caption = #1086#1073#1088#1072#1073#1086#1090#1072#1085' '#1080' '#1074#1082#1083#1102#1095#1077#1085' '#1074' '#1089#1090#1088#1091#1082#1090#1091#1088#1091' '#1089#1090#1072#1085#1076#1072#1088#1090#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object Button33: TButton
          Left = 416
          Top = 12
          Width = 81
          Height = 21
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          TabOrder = 2
          Visible = False
          OnClick = Button33Click
        end
      end
      object Button11: TButton
        Left = 496
        Top = 344
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077'>>'
        TabOrder = 4
        OnClick = Button11Click
      end
      object Button21: TButton
        Left = 40
        Top = 344
        Width = 75
        Height = 25
        Caption = '<<'#1053#1072#1079#1072#1076
        TabOrder = 5
        OnClick = Button21Click
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1103
      ImageIndex = 7
      object Label42: TLabel
        Left = 60
        Top = 88
        Width = 97
        Height = 13
        Caption = #1060#1072#1081#1083' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103':'
      end
      object Label53: TLabel
        Left = 400
        Top = 336
        Width = 38
        Height = 13
        Caption = 'Label53'
        Visible = False
      end
      object Button16: TButton
        Left = 496
        Top = 344
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077'>>'
        TabOrder = 0
        OnClick = Button16Click
      end
      object Button22: TButton
        Left = 40
        Top = 344
        Width = 75
        Height = 25
        Caption = '<<'#1053#1072#1079#1072#1076
        TabOrder = 1
        OnClick = Button22Click
      end
      object Edit3: TEdit
        Left = 160
        Top = 80
        Width = 241
        Height = 21
        TabOrder = 2
      end
      object Button25: TButton
        Left = 400
        Top = 80
        Width = 33
        Height = 20
        Caption = '...'
        TabOrder = 3
        OnClick = Button25Click
      end
      object Button26: TButton
        Left = 432
        Top = 80
        Width = 33
        Height = 20
        Caption = 'OK'
        TabOrder = 4
        OnClick = Button26Click
      end
      object ListBox7: TListBox
        Left = 56
        Top = 120
        Width = 105
        Height = 145
        BorderStyle = bsNone
        ItemHeight = 13
        TabOrder = 5
      end
      object ListBox8: TListBox
        Left = 160
        Top = 120
        Width = 289
        Height = 145
        BorderStyle = bsNone
        ItemHeight = 13
        PopupMenu = PopupMenu1
        TabOrder = 6
        OnClick = ListBox8Click
      end
      object BitBtn1: TBitBtn
        Left = 456
        Top = 176
        Width = 33
        Height = 25
        TabOrder = 7
        OnClick = BitBtn1Click
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000FF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FF000080008080000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FF0000C0C0C080008000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080008080000080008000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080000080008080000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080000080008080000080008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080008080000080008080000080008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000FF0000C0C0
          C080008080000080008080000080008080000080008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000FF0000C0C0
          C080000080008080000080008080000080008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FF0000C0C0C08000
          0080008080000080008080000080008080000080008080000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FF0000C0C0C08000
          8080000080008080000080008080000080008080000080008000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000FF0000C0C0C08000808000
          0080008080000080008080000080008080000080008080000080008000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000FF0000C0C0C08000008000
          8080000080008080000080008080000080008080000080008080000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF0000C0C0C08000008000808000
          0080008080000080008080000080008080000080008080000080008080000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF0000C0C0C08000808000008000
          8080000080008080000080008080000080008080000080008080000080008000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000FF0000C0C0C08000808000008000808000
          0080008080000080008080000080008080000080008080000080008080000080
          0080000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000FF0000C0C0C0800000800080800000FF00
          00C0C0C080008080000080008080000080008080000080008080000080008080
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080000080008080000080008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080008080000080008080000080008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080000080008080000080008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080008080000080008080000080008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080000080008080000080008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080008080000080008080000080008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080000080008080000080008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080008080000080008080000080008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080000080008080000080008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080008080000080008080000080008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080000080008080000080008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080008080000080008080000080008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080000080008080000080008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          8080000080008080000080008080000080008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object BitBtn2: TBitBtn
        Left = 456
        Top = 144
        Width = 33
        Height = 25
        TabOrder = 8
        OnClick = BitBtn2Click
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0080008080000080008080000080008080000080008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080000080008080000080008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080008080000080008080000080008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080000080008080000080008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080008080000080008080000080008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080000080008080000080008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080008080000080008080000080008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080000080008080000080008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080008080000080008080000080008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080000080008080000080008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080008080000080008080000080008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080000080008080000080008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080008080000080008080000080008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080000080008080000080008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF0000C0C0C08000008000808000
          00FF0000C0C0C080008080000080008080000080008080000080008080000080
          0080800000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF0000C0C0C08000808000008000
          8080000080008080000080008080000080008080000080008080000080008080
          0000800080000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000FF0000C0C0C08000808000
          0080008080000080008080000080008080000080008080000080008080000080
          0080000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000FF0000C0C0C08000008000
          8080000080008080000080008080000080008080000080008080000080008080
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FF0000C0C0C08000
          0080008080000080008080000080008080000080008080000080008080000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FF0000C0C0C08000
          8080000080008080000080008080000080008080000080008080000080008000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000FF0000C0C0
          C080008080000080008080000080008080000080008080000080008000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000FF0000C0C0
          C080000080008080000080008080000080008080000080008080000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080000080008080000080008080000080008080000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          00C0C0C080008080000080008080000080008080000080008000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080008080000080008080000080008000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000C0C0C080000080008080000080008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FF0000C0C0C080000080008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FF0000C0C0C080008080000080008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000FF0000C0C0C080008000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000FF000080008080000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FF000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object Panel10: TPanel
        Left = 64
        Top = 16
        Width = 385
        Height = 41
        BorderStyle = bsSingle
        TabOrder = 9
        object Label49: TLabel
          Left = 12
          Top = 12
          Width = 363
          Height = 13
          Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1081#1083#1099', '#1082#1086#1090#1086#1088#1099#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1087#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1074' '#1074#1080#1076#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1057#1089#1099#1083#1082#1080
      ImageIndex = 3
      object Label45: TLabel
        Left = 48
        Top = 120
        Width = 147
        Height = 13
        Caption = #1043#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1099#1077' '#1089#1090#1072#1085#1076#1072#1088#1090#1099
      end
      object Label46: TLabel
        Left = 48
        Top = 232
        Width = 123
        Height = 13
        Caption = #1057#1090#1072#1085#1076#1072#1088#1090#1099' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
      end
      object Button17: TButton
        Left = 496
        Top = 344
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077'>>'
        TabOrder = 0
        OnClick = Button17Click
      end
      object Button23: TButton
        Left = 40
        Top = 344
        Width = 75
        Height = 25
        Caption = '<<'#1053#1072#1079#1072#1076
        TabOrder = 1
        OnClick = Button23Click
      end
      object ListBox9: TListBox
        Left = 40
        Top = 136
        Width = 529
        Height = 89
        ItemHeight = 13
        TabOrder = 2
        OnKeyDown = ListBox9KeyDown
      end
      object GroupBox5: TGroupBox
        Left = 40
        Top = 8
        Width = 529
        Height = 105
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1090#1072#1085#1076#1072#1088#1090#1072
        TabOrder = 3
        object Label44: TLabel
          Left = 8
          Top = 56
          Width = 134
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1090#1072#1085#1076#1072#1088#1090#1072':'
        end
        object Label43: TLabel
          Left = 16
          Top = 24
          Width = 125
          Height = 13
          Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1089#1090#1072#1085#1076#1072#1088#1090#1072':'
        end
        object Edit4: TEdit
          Left = 144
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Edit5: TEdit
          Left = 144
          Top = 48
          Width = 377
          Height = 21
          TabOrder = 1
        end
        object RadioButton8: TRadioButton
          Left = 144
          Top = 80
          Width = 153
          Height = 17
          Caption = #1043#1086#1089#1091#1076#1072#1089#1090#1074#1077#1085#1085#1099#1081' '#1089#1090#1072#1085#1076#1072#1088#1090
          TabOrder = 2
          OnClick = RadioButton8Click
        end
        object RadioButton9: TRadioButton
          Left = 312
          Top = 80
          Width = 137
          Height = 17
          Caption = #1057#1090#1072#1085#1076#1072#1088#1090' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
          TabOrder = 3
          OnClick = RadioButton9Click
        end
        object Button27: TButton
          Left = 464
          Top = 72
          Width = 49
          Height = 27
          Caption = #1054#1050
          TabOrder = 4
          OnClick = Button27Click
        end
        object Button29: TButton
          Left = 440
          Top = 16
          Width = 75
          Height = 25
          Caption = #1060#1072#1081#1083' Word'
          TabOrder = 5
          OnClick = Button29Click
        end
      end
      object ListBox10: TListBox
        Left = 40
        Top = 248
        Width = 529
        Height = 81
        ItemHeight = 13
        TabOrder = 4
        OnKeyDown = ListBox10KeyDown
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1103
      ImageIndex = 4
      object Label23: TLabel
        Left = 336
        Top = 352
        Width = 38
        Height = 13
        Caption = 'Label23'
        Visible = False
      end
      object Label41: TLabel
        Left = 336
        Top = 328
        Width = 5
        Height = 13
        Caption = '/'
        Visible = False
      end
      object Label54: TLabel
        Left = 376
        Top = 280
        Width = 38
        Height = 13
        Caption = 'Label54'
        Visible = False
      end
      object Gauge1: TGauge
        Left = 40
        Top = 304
        Width = 529
        Height = 25
        ForeColor = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Progress = 0
        Visible = False
      end
      object Label56: TLabel
        Left = 40
        Top = 280
        Width = 5
        Height = 13
        Caption = '/'
        Visible = False
      end
      object Button12: TButton
        Left = 496
        Top = 344
        Width = 75
        Height = 25
        Caption = #1043#1086#1090#1086#1074#1086
        TabOrder = 0
        OnClick = Button12Click
      end
      object Button24: TButton
        Left = 40
        Top = 344
        Width = 75
        Height = 25
        Caption = '<<'#1053#1072#1079#1072#1076
        TabOrder = 1
        OnClick = Button24Click
      end
      object RadioButton10: TRadioButton
        Left = 48
        Top = 40
        Width = 265
        Height = 17
        Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1072#1079#1076#1077#1083' "'#1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103' '#1080' '#1089#1086#1082#1088#1072#1097#1077#1085#1080#1103'"'
        TabOrder = 2
        OnClick = RadioButton10Click
      end
      object RadioButton11: TRadioButton
        Left = 48
        Top = 16
        Width = 273
        Height = 17
        Caption = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1088#1072#1079#1076#1077#1083' "'#1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103' '#1080' '#1089#1086#1082#1088#1072#1097#1077#1085#1080#1103'"'
        TabOrder = 3
        OnClick = RadioButton11Click
      end
      object Panel9: TPanel
        Left = 40
        Top = 64
        Width = 465
        Height = 49
        BorderStyle = bsSingle
        TabOrder = 4
        Visible = False
        object Label47: TLabel
          Left = 16
          Top = 8
          Width = 422
          Height = 13
          Caption = 
            #1056#1072#1079#1076#1077#1083' "'#1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103' '#1080' '#1089#1086#1082#1088#1072#1097#1077#1085#1080#1103'" '#1086#1073#1088#1072#1073#1086#1090#1072#1085' '#1080' '#1074#1082#1083#1102#1095#1077#1085' '#1074' '#1089#1090#1088#1091#1082#1090#1091#1088 +
            #1091' '#1089#1090#1072#1085#1076#1072#1088#1090#1072'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 16
          Top = 24
          Width = 345
          Height = 13
          Caption = #1042#1099' '#1084#1086#1078#1077#1090#1077' '#1079#1072#1074#1077#1088#1096#1080#1090#1100' '#1089#1086#1079#1076#1072#1085#1080#1077' '#1089#1090#1072#1085#1076#1072#1088#1090#1072', '#1085#1072#1078#1072#1074' '#1082#1085#1086#1087#1082#1091' "'#1043#1086#1090#1086#1074#1086'"'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object BitBtn3: TBitBtn
    Left = 528
    Top = 8
    Width = 41
    Height = 41
    Hint = #1057#1074#1077#1088#1085#1091#1090#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077
    TabOrder = 3
    OnClick = BitBtn3Click
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      0800000000000004000000000000000000000001000000000000000000000000
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
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000404040404
      0404040404040404040404040404040404040404040404040400000400000000
      0000000000000000000000000000000000000000000000000400000400FEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000400000400040404
      0404040404040404040404040404040404040404040404000400000400070704
      0404040407070707070707070707070707070707070707000400000400070707
      0404040404070707070707070707070707070707070707000400000400070707
      0704040404040407070707070707070707070707070707000400000400070707
      0704040404040404040707070707070707070707070707000400000400070707
      0707040404040404040404070707070707070707070707000400000400070707
      0707040404040407040404070707070707070707070707000400000400070707
      0707040407040404070707070707070707070707070707000400000400070707
      0707070404070404040707070707070707070707070707000400000400070707
      0707070404070704040407070707070707070707070707000400000400070707
      0707070704040707040404070707070707070707070707000400000400070707
      0707070704040707070404040707070707070707070707000400000400070707
      0707070704040707070704040407070707070707070707000400000400070707
      0707070707070707070707040404070707070707070707000400000400070707
      0707070707070707070707070404040707070707070707000400000400070707
      0707070707070707070707070704040407070707070707000400000400070707
      0707070707070707070707070707040404070707070707000400000400070707
      0707070707070707070707070707070404040707070707000400000400070707
      0707070707070707070707070707070704040407070707000400000400070707
      0707070707070707070707070707070707040404070707000400000400070707
      0707070707070707070707070707070707070404040707000400000400070707
      0707070707070707070707070707070707070704040407000400000400070707
      0707070707070707070707070707070707070707040404000400000400070707
      0707070707070707070707070707070707070707070404000400000400070707
      0707070707070707070707070707070707070707070704000400000400000000
      0000000000000000000000000000000000000000000000000400000404040404
      0404040404040404040404040404040404040404040404040400000000000000
      0000000000000000000000000000000000000000000000000000}
  end
  object BitBtn4: TBitBtn
    Left = 576
    Top = 8
    Width = 41
    Height = 41
    Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = BitBtn4Click
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      0800000000000004000000000000000000000001000000000000000000000000
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
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F70000000000
      000000000000000000000000000000000000000000000000000000FBFBFBFB00
      00000000000000000000000000000000070700000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000070700000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000070700000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000070700000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000070700000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000070700000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000000000000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000000000000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000000000000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000000000000000FBFBFB0000FBFBFBFB00
      00000000000000000000000000000000000000000000FBFBFB0000FBFBFBFBFB
      FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB0000FBFBFBFBFB
      FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB0000FBFBFBFBFB
      FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB0000FBFBFBFBFB
      FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB0000FBFBFBFB00
      000000000000000000000000000000000000000000FBFBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      07070707070707070707070707070707070707070700FBFBFB0000FBFBFB0007
      070707070707070707070707070707070707070707000000000000FBFBFB0007
      070707070707070707070707070707070707070707000707070000FBFBFB0007
      070707070707070707070707070707070707070707000707070000FBFBFB0007
      0707070707070707070707070707070707070707070007070700000000000000
      0000000000000000000000000000000000000000000000000000}
    Layout = blGlyphRight
  end
  object Edit2: TEdit
    Left = 201
    Top = 8
    Width = 295
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object Edit6: TEdit
    Left = 200
    Top = 40
    Width = 296
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object WD: TWordDocument
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    Left = 36
    Top = 32
  end
  object WordApplication1: TWordApplication
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    AutoQuit = True
    OnQuit = WordApplication1Quit
    OnDocumentOpen = WordApplication1DocumentOpen
    OnDocumentBeforeClose = WordApplication1DocumentBeforeClose
    OnDocumentBeforeSave = WordApplication1DocumentBeforeSave
    Left = 4
    Top = 32
  end
  object WD1: TWordDocument
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    Left = 72
    Top = 32
  end
  object OpenDialog1: TOpenDialog
    OnCanClose = OpenDialog1CanClose
    Left = 300
    Top = 448
  end
  object PopupMenu1: TPopupMenu
    MenuAnimation = [maTopToBottom]
    Left = 260
    Top = 448
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N1Click
    end
  end
end

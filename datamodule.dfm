object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 738
  Width = 1002
  object Database1: TDatabase
    AliasName = 'work'
    DatabaseName = 'database1'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=work_adm')
    SessionName = 'Default'
    Left = 16
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 88
    Top = 8
  end
  object Table1: TTable
    DatabaseName = 'database1'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'cod'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'naim'
        Attributes = [faFixed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'naimk'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'fior'
        Attributes = [faFixed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'fiorin'
        Attributes = [faFixed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'codaud'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'prpod'
        DataType = ftInteger
      end
      item
        Name = 'tel'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'email'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'codpot'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'id'
        Options = [ixUnique]
      end
      item
        Name = 'cod'
        Fields = 'cod'
      end
      item
        Name = 'naim'
        Fields = 'naim'
      end
      item
        Name = 'naimk'
        Fields = 'naimk'
      end>
    IndexName = 'naim'
    StoreDefs = True
    TableName = 'podrazd'
    Left = 160
    Top = 8
  end
  object DataSource101: TDataSource
    DataSet = Table101
    Left = 232
    Top = 8
  end
  object Database2: TDatabase
    AliasName = 'work_ok'
    DatabaseName = 'database2'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=work_adm')
    SessionName = 'Default'
    Left = 16
    Top = 112
  end
  object DataSource_w1: TDataSource
    DataSet = Table_w1
    Left = 88
    Top = 112
  end
  object Table_w1: TTable
    OnCalcFields = Table_w1CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'fam'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'vname'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'spgrup'
        DataType = ftInteger
      end
      item
        Name = 'spotd'
        DataType = ftInteger
      end
      item
        Name = 'spfak'
        DataType = ftInteger
      end
      item
        Name = 'spspec'
        DataType = ftInteger
      end
      item
        Name = 'kurs'
        DataType = ftSmallint
      end
      item
        Name = 'spsost'
        DataType = ftInteger
      end
      item
        Name = 'spstatus'
        DataType = ftInteger
      end
      item
        Name = 'zachbook'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ls'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'godpr'
        DataType = ftInteger
      end
      item
        Name = 'codbar'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'r_vxod'
        DataType = ftInteger
      end
      item
        Name = 'pro'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'sl'
        DataType = ftInteger
      end
      item
        Name = 'deperson'
        DataType = ftInteger
      end
      item
        Name = 'lgota'
        DataType = ftInteger
      end
      item
        Name = 'datevv'
        Attributes = [faRequired]
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'idxaccfam'
        Fields = 'fam;name;pin'
      end
      item
        Name = 'idxaccgrup'
        Fields = 'spgrup'
      end
      item
        Name = 'idxaccotd'
        Fields = 'spotd'
      end
      item
        Name = 'idxaccfak'
        Fields = 'spfak'
      end
      item
        Name = 'idxaccspec'
        Fields = 'spspec'
      end
      item
        Name = 'idxaccsost'
        Fields = 'spsost'
      end
      item
        Name = 'idxaccstat'
        Fields = 'spstatus'
      end>
    IndexName = 'idxaccfam'
    StoreDefs = True
    TableName = 'acc'
    Left = 160
    Top = 112
    object Table_w1fio: TStringField
      FieldKind = fkCalculated
      FieldName = 'fio'
      ReadOnly = True
      Size = 50
      Calculated = True
    end
    object Table_w1pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w1fam: TStringField
      FieldName = 'fam'
    end
    object Table_w1name: TStringField
      FieldName = 'name'
      Size = 14
    end
    object Table_w1vname: TStringField
      FieldName = 'vname'
      Size = 16
    end
    object Table_w1spgrup: TIntegerField
      FieldName = 'spgrup'
    end
    object Table_w1spotd: TIntegerField
      FieldName = 'spotd'
    end
    object Table_w1spfak: TIntegerField
      FieldName = 'spfak'
    end
    object Table_w1spspec: TIntegerField
      FieldName = 'spspec'
    end
    object Table_w1kurs: TSmallintField
      FieldName = 'kurs'
    end
    object Table_w1spsost: TIntegerField
      FieldName = 'spsost'
    end
    object Table_w1spstatus: TIntegerField
      FieldName = 'spstatus'
    end
    object Table_w1zachbook: TStringField
      FieldName = 'zachbook'
      Size = 10
    end
    object Table_w1ls: TStringField
      FieldName = 'ls'
      Size = 10
    end
    object Table_w1priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w1gruppa: TStringField
      FieldKind = fkLookup
      FieldName = 'gruppa'
      LookupDataSet = Table_w37
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spgrup'
      Size = 10
      Lookup = True
    end
    object Table_w1sost: TStringField
      FieldKind = fkLookup
      FieldName = 'sost'
      LookupDataSet = Table_w25
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spsost'
      Size = 16
      Lookup = True
    end
    object Table_w1status: TStringField
      FieldKind = fkLookup
      FieldName = 'status'
      LookupDataSet = Table_w24
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spstatus'
      Size = 16
      Lookup = True
    end
    object Table_w1dom: TStringField
      FieldKind = fkLookup
      FieldName = 'dom'
      LookupDataSet = Table_w2
      LookupKeyFields = 'acc'
      LookupResultField = 'address'
      KeyFields = 'pin'
      Size = 46
      Lookup = True
    end
    object Table_w1tel: TStringField
      FieldKind = fkLookup
      FieldName = 'tel'
      LookupDataSet = Table_w2
      LookupKeyFields = 'acc'
      LookupResultField = 'phone'
      KeyFields = 'pin'
      Size = 10
      Lookup = True
    end
    object Table_w1spec: TStringField
      FieldKind = fkCalculated
      FieldName = 'spec'
      Size = 50
      Calculated = True
    end
    object Table_w1sp1: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'sp1'
      LookupDataSet = Table_w35
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spspec'
      Size = 255
      Lookup = True
    end
    object Table_w1sp2: TStringField
      FieldKind = fkLookup
      FieldName = 'sp2'
      LookupDataSet = Table_w35
      LookupKeyFields = 'pin'
      LookupResultField = 'shifr'
      KeyFields = 'spspec'
      Size = 15
      Lookup = True
    end
    object Table_w1godpr: TIntegerField
      FieldName = 'godpr'
    end
    object Table_w1fo: TStringField
      FieldKind = fkLookup
      FieldName = 'fo'
      LookupDataSet = Table_w33
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spotd'
      Lookup = True
    end
    object Table_w1fak: TStringField
      FieldKind = fkLookup
      FieldName = 'fak'
      LookupDataSet = Table_w34
      LookupKeyFields = 'pin'
      LookupResultField = 'mean'
      KeyFields = 'spfak'
      Size = 4
      Lookup = True
    end
    object Table_w1r_vxod: TIntegerField
      FieldName = 'r_vxod'
    end
    object Table_w1codbar: TStringField
      FieldName = 'codbar'
      Size = 12
    end
    object Table_w1spcitiz: TIntegerField
      FieldKind = fkLookup
      FieldName = 'spcitiz'
      LookupDataSet = Table_w2
      LookupKeyFields = 'acc'
      LookupResultField = 'spcitiz'
      KeyFields = 'pin'
      Lookup = True
    end
    object Table_w1sl: TIntegerField
      FieldName = 'sl'
    end
    object Table_w1deperson: TIntegerField
      FieldName = 'deperson'
    end
    object Table_w1pro: TStringField
      FieldName = 'pro'
      FixedChar = True
      Size = 2
    end
    object Table_w1lgota: TIntegerField
      FieldName = 'lgota'
    end
    object Table_w1NewSpecCode: TStringField
      FieldKind = fkLookup
      FieldName = 'NewSpecCode'
      LookupDataSet = Table_w35
      LookupKeyFields = 'pin'
      LookupResultField = 'NewCode'
      KeyFields = 'spspec'
      Lookup = True
    end
  end
  object Table_w2: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'acc'
        DataType = ftInteger
      end
      item
        Name = 'spcitiz'
        DataType = ftInteger
      end
      item
        Name = 'dat_ro'
        DataType = ftDate
      end
      item
        Name = 'mes_ro'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'spksiva'
        DataType = ftInteger
      end
      item
        Name = 'pasnum'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'paswho'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'pasdate'
        DataType = ftDate
      end
      item
        Name = 'registr'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'address'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'phone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'spschool'
        DataType = ftInteger
      end
      item
        Name = 'schoolpr'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'schoolgod'
        DataType = ftSmallint
      end
      item
        Name = 'hostel'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'sex'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'marry'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'famaly'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'spsoc'
        DataType = ftInteger
      end
      item
        Name = 'namefile'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'splang'
        DataType = ftInteger
      end
      item
        Name = 'spkat'
        DataType = ftInteger
      end
      item
        Name = 'mesjob'
        DataType = ftString
        Size = 24
      end
      item
        Name = 'doljob'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'teljob'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aregion1'
        DataType = ftInteger
      end
      item
        Name = 'aregion2'
        DataType = ftInteger
      end
      item
        Name = 'aregion3'
        DataType = ftInteger
      end
      item
        Name = 'aregion4'
        DataType = ftInteger
      end
      item
        Name = 'aul'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'mobphone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'svpens'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'papa'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'mama'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'papajob'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'mamajob'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'datevv'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'tipdoc_ob'
        DataType = ftInteger
      end
      item
        Name = 'doc_obraz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 26
      end>
    IndexDefs = <
      item
        Name = 'idxkadacc'
        Fields = 'acc'
        Options = [ixUnique]
      end
      item
        Name = 'idxkadcit'
        Fields = 'spcitiz'
      end
      item
        Name = 'idxkadksiv'
        Fields = 'spksiva'
      end
      item
        Name = 'idxkadsoc'
        Fields = 'spsoc'
      end
      item
        Name = 'idxkadscho'
        Fields = 'spschool'
      end
      item
        Name = 'idxkadlang'
        Fields = 'splang'
      end
      item
        Name = 'idxkadkat'
        Fields = 'spkat'
      end
      item
        Name = 'idxkaddatr'
        Fields = 'dat_ro'
      end>
    IndexName = 'idxkadacc'
    StoreDefs = True
    TableName = 'acckadr'
    Left = 295
    Top = 112
    object Table_w2acc: TIntegerField
      FieldName = 'acc'
    end
    object Table_w2spcitiz: TIntegerField
      FieldName = 'spcitiz'
    end
    object Table_w2dat_ro: TDateField
      FieldName = 'dat_ro'
    end
    object Table_w2mes_ro: TStringField
      FieldName = 'mes_ro'
      Size = 30
    end
    object Table_w2spksiva: TIntegerField
      FieldName = 'spksiva'
    end
    object Table_w2pasnum: TStringField
      FieldName = 'pasnum'
      Size = 12
    end
    object Table_w2paswho: TStringField
      FieldName = 'paswho'
      Size = 30
    end
    object Table_w2pasdate: TDateField
      FieldName = 'pasdate'
    end
    object Table_w2registr: TStringField
      FieldName = 'registr'
      Size = 46
    end
    object Table_w2address: TStringField
      FieldName = 'address'
      Size = 46
    end
    object Table_w2phone: TStringField
      FieldName = 'phone'
      Size = 10
    end
    object Table_w2spschool: TIntegerField
      FieldName = 'spschool'
    end
    object Table_w2schoolpr: TStringField
      FieldName = 'schoolpr'
      Size = 14
    end
    object Table_w2schoolgod: TSmallintField
      FieldName = 'schoolgod'
    end
    object Table_w2hostel: TStringField
      FieldName = 'hostel'
      FixedChar = True
      Size = 1
    end
    object Table_w2sex: TStringField
      FieldName = 'sex'
      FixedChar = True
      Size = 1
    end
    object Table_w2marry: TStringField
      FieldName = 'marry'
      FixedChar = True
      Size = 1
    end
    object Table_w2famaly: TStringField
      FieldName = 'famaly'
      Size = 12
    end
    object Table_w2spsoc: TIntegerField
      FieldName = 'spsoc'
    end
    object Table_w2namefile: TStringField
      FieldName = 'namefile'
      Size = 120
    end
    object Table_w2priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w2splang: TIntegerField
      FieldName = 'splang'
    end
    object Table_w2spkat: TIntegerField
      FieldName = 'spkat'
    end
    object Table_w2mesjob: TStringField
      FieldName = 'mesjob'
      Size = 24
    end
    object Table_w2doljob: TStringField
      FieldName = 'doljob'
      Size = 14
    end
    object Table_w2teljob: TStringField
      FieldName = 'teljob'
      Size = 10
    end
    object Table_w2citiz: TStringField
      FieldKind = fkLookup
      FieldName = 'citiz'
      LookupDataSet = Table_w18
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spcitiz'
      Size = 16
      Lookup = True
    end
    object Table_w2ksiva: TStringField
      FieldKind = fkLookup
      FieldName = 'ksiva'
      LookupDataSet = Table_w14
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spksiva'
      Size = 16
      Lookup = True
    end
    object Table_w2soc: TStringField
      FieldKind = fkLookup
      FieldName = 'soc'
      LookupDataSet = Table_w17
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spsoc'
      Size = 16
      Lookup = True
    end
    object Table_w2lang: TStringField
      FieldKind = fkLookup
      FieldName = 'lang'
      LookupDataSet = Table_w15
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'splang'
      Size = 16
      Lookup = True
    end
    object Table_w2kat: TStringField
      FieldKind = fkLookup
      FieldName = 'kat'
      LookupDataSet = Table_w16
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spkat'
      Size = 16
      Lookup = True
    end
    object Table_w2school: TStringField
      FieldKind = fkLookup
      FieldName = 'school'
      LookupDataSet = spschool
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spschool'
      Size = 50
      Lookup = True
    end
    object Table_w2mobphone: TStringField
      FieldName = 'mobphone'
    end
    object Table_w2svpens: TStringField
      FieldName = 'svpens'
      Size = 15
    end
    object Table_w2aregion1: TIntegerField
      FieldName = 'aregion1'
    end
    object Table_w2aregion2: TIntegerField
      FieldName = 'aregion2'
    end
    object Table_w2aregion3: TIntegerField
      FieldName = 'aregion3'
    end
    object Table_w2aregion4: TIntegerField
      FieldName = 'aregion4'
    end
    object Table_w2aul: TStringField
      FieldName = 'aul'
      Size = 25
    end
    object Table_w2papa: TStringField
      FieldName = 'papa'
      Size = 45
    end
    object Table_w2mama: TStringField
      FieldName = 'mama'
      Size = 45
    end
    object Table_w2papajob: TStringField
      FieldName = 'papajob'
      Size = 100
    end
    object Table_w2mamajob: TStringField
      FieldName = 'mamajob'
      Size = 100
    end
  end
  object Table_w14: TTable
    OnCalcFields = Table_w14CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 35
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'nrcoi'
        DataType = ftInteger
      end
      item
        Name = 'fis_code'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spksiva'
    Left = 304
    Top = 264
    object Table_w14pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w14name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w14priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w14pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object Table_w17: TTable
    OnCalcFields = Table_w17CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spsoc'
    Left = 160
    Top = 312
    object Table_w17pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w17name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w17priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w17pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object Table_w18: TTable
    OnCalcFields = Table_w18CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ASTU_Code'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spcitiz'
    Left = 304
    Top = 312
    object Table_w18pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w18name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w18priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w18pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object Table_w24: TTable
    OnCalcFields = Table_w24CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'codbar'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spstatus'
    Left = 614
    Top = 368
    object Table_w24pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w24name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w24priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w24pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object Table_w25: TTable
    OnCalcFields = Table_w25CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'codbar'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spsost'
    Left = 164
    Top = 419
    object Table_w25pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w25name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w25priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w25pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object Table_w33: TTable
    OnCalcFields = Table_w33CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 24
      end
      item
        Name = 'mean'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'codbar'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spotd'
    Left = 164
    Top = 472
    object Table_w33pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w33name: TStringField
      FieldName = 'name'
      Size = 24
    end
    object Table_w33mean: TStringField
      FieldName = 'mean'
      FixedChar = True
      Size = 3
    end
    object Table_w33priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w33pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object Table_w34: TTable
    OnCalcFields = Table_w34CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 52
      end
      item
        Name = 'mean'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'pinrod'
        DataType = ftInteger
      end
      item
        Name = 'mrod'
        DataType = ftSmallint
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'nameruk'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'codbar'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'IsActive'
        Attributes = [faRequired]
        DataType = ftSmallint
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'idxfakpinrod'
        Fields = 'pinrod;pin'
      end>
    StoreDefs = True
    TableName = 'spfak'
    Left = 304
    Top = 416
    object Table_w34pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
    object Table_w34pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w34name: TStringField
      FieldName = 'name'
      Size = 52
    end
    object Table_w34mean: TStringField
      FieldName = 'mean'
      Size = 5
    end
    object Table_w34pinrod: TIntegerField
      FieldName = 'pinrod'
    end
    object Table_w34mrod: TSmallintField
      FieldName = 'mrod'
    end
    object Table_w34priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w34nameruk: TStringField
      FieldName = 'nameruk'
    end
  end
  object Table_w35: TTable
    OnCalcFields = Table_w35CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sname'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'shifr'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'pinrod'
        DataType = ftInteger
      end
      item
        Name = 'qualif'
        DataType = ftString
        Size = 24
      end
      item
        Name = 'special'
        DataType = ftString
        Size = 44
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'codbar'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'normsrok'
        DataType = ftFloat
      end
      item
        Name = 'NewCode'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spspec'
    Left = 456
    Top = 416
    object Table_w35pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w35name: TStringField
      FieldName = 'name'
      Size = 44
    end
    object Table_w35sname: TStringField
      FieldName = 'sname'
      Size = 5
    end
    object Table_w35shifr: TStringField
      FieldName = 'shifr'
      Size = 8
    end
    object Table_w35pinrod: TIntegerField
      FieldName = 'pinrod'
    end
    object Table_w35qualif: TStringField
      FieldName = 'qualif'
      Size = 24
    end
    object Table_w35special: TStringField
      FieldName = 'special'
      Size = 44
    end
    object Table_w35priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w35pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
    object Table_w35NewCode: TStringField
      FieldName = 'NewCode'
    end
  end
  object Table_w37: TTable
    OnCalcFields = Table_w37CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'spfak'
        DataType = ftInteger
      end
      item
        Name = 'spotd'
        DataType = ftInteger
      end
      item
        Name = 'spspec'
        DataType = ftInteger
      end
      item
        Name = 'ngrup'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'grup'
        DataType = ftInteger
      end
      item
        Name = 'spfakold'
        DataType = ftInteger
      end
      item
        Name = 'AdmissionYear'
        DataType = ftInteger
      end
      item
        Name = 'ASTU_Code'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'idxgrfak'
        Fields = 'spfak'
      end
      item
        Name = 'idxgrotd'
        Fields = 'spotd'
      end
      item
        Name = 'idxgrspec'
        Fields = 'spspec'
      end
      item
        Name = 'grup'
        Fields = 'name;priz'
      end
      item
        Name = 'idxgrfos'
        Fields = 'spfak;spotd;spspec;name'
      end>
    StoreDefs = True
    TableName = 'spgrup'
    Left = 457
    Top = 471
    object Table_w37pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w37name: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 10
    end
    object Table_w37spfak: TIntegerField
      FieldName = 'spfak'
    end
    object Table_w37spotd: TIntegerField
      FieldName = 'spotd'
    end
    object Table_w37ngrup: TStringField
      FieldName = 'ngrup'
      FixedChar = True
      Size = 2
    end
    object Table_w37priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w37spspec: TIntegerField
      FieldName = 'spspec'
    end
    object Table_w37grup: TIntegerField
      FieldName = 'grup'
    end
    object Table_w37fak: TStringField
      FieldKind = fkLookup
      FieldName = 'fak'
      LookupDataSet = Table_w34
      LookupKeyFields = 'pin'
      LookupResultField = 'mean'
      KeyFields = 'spfak'
      Size = 5
      Lookup = True
    end
    object Table_w37otd: TStringField
      FieldKind = fkLookup
      FieldName = 'otd'
      LookupDataSet = Table_w33
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spotd'
      Size = 18
      Lookup = True
    end
    object Table_w37spec: TStringField
      FieldKind = fkLookup
      FieldName = 'spec'
      LookupDataSet = Table_w35
      LookupKeyFields = 'pin'
      LookupResultField = 'sname'
      KeyFields = 'spspec'
      Size = 5
      Lookup = True
    end
    object Table_w37pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
    object Table_w37spfakold: TIntegerField
      FieldName = 'spfakold'
    end
  end
  object DataSource_w2: TDataSource
    DataSet = Table_w2
    Left = 232
    Top = 112
  end
  object DataSource_w14: TDataSource
    DataSet = Table_w14
    Left = 232
    Top = 264
  end
  object DataSource_w17: TDataSource
    DataSet = Table_w17
    Left = 83
    Top = 312
  end
  object DataSource_w18: TDataSource
    DataSet = Table_w18
    Left = 232
    Top = 312
  end
  object DataSource_w24: TDataSource
    DataSet = Table_w24
    Left = 536
    Top = 368
  end
  object DataSource_w25: TDataSource
    DataSet = Table_w25
    Left = 83
    Top = 419
  end
  object DataSource_w33: TDataSource
    DataSet = Table_w33
    Left = 83
    Top = 472
  end
  object DataSource_w34: TDataSource
    DataSet = Table_w34
    Left = 232
    Top = 416
  end
  object DataSource_w35: TDataSource
    DataSet = Table_w35
    Left = 376
    Top = 416
  end
  object DataSource_w37: TDataSource
    DataSet = Table_w37
    Left = 376
    Top = 471
  end
  object DataSource_w36: TDataSource
    DataSet = Table_w36
    Left = 232
    Top = 471
  end
  object Table_w36: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'spotd'
        DataType = ftInteger
      end
      item
        Name = 'spfak'
        DataType = ftInteger
      end
      item
        Name = 'spspec'
        DataType = ftInteger
      end
      item
        Name = 'maxkurs'
        DataType = ftInteger
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'period'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'keyS4Fall'
        Fields = 'spfak;spotd;spspec'
        Options = [ixUnique]
      end
      item
        Name = 'idx4otd'
        Fields = 'spotd'
      end
      item
        Name = 'idx4fak'
        Fields = 'spfak'
      end
      item
        Name = 'idx4spec'
        Fields = 'spspec'
      end>
    IndexFieldNames = 'spfak;spotd;spspec'
    StoreDefs = True
    TableName = 'spec4fak'
    Left = 304
    Top = 471
    object Table_w36pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w36spotd: TIntegerField
      FieldName = 'spotd'
    end
    object Table_w36spfak: TIntegerField
      FieldName = 'spfak'
    end
    object Table_w36spspec: TIntegerField
      FieldName = 'spspec'
    end
    object Table_w36maxkurs: TIntegerField
      FieldName = 'maxkurs'
    end
    object Table_w36priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w36fak: TStringField
      FieldKind = fkLookup
      FieldName = 'fak'
      LookupDataSet = Table_w34
      LookupKeyFields = 'pin'
      LookupResultField = 'mean'
      KeyFields = 'spfak'
      Size = 5
      Lookup = True
    end
    object Table_w36spec: TStringField
      FieldKind = fkLookup
      FieldName = 'spec'
      LookupDataSet = Table_w35
      LookupKeyFields = 'pin'
      LookupResultField = 'sname'
      KeyFields = 'spspec'
      Size = 5
      Lookup = True
    end
    object Table_w36otd: TStringField
      FieldKind = fkLookup
      FieldName = 'otd'
      LookupDataSet = Table_w33
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spotd'
      Size = 17
      Lookup = True
    end
    object Table_w36spec_p: TStringField
      DisplayWidth = 44
      FieldKind = fkLookup
      FieldName = 'spec_p'
      LookupDataSet = Table_w35
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spspec'
      Size = 44
      Lookup = True
    end
    object Table_w36shifr: TStringField
      FieldKind = fkLookup
      FieldName = 'shifr'
      LookupDataSet = Table_w35
      LookupKeyFields = 'pin'
      LookupResultField = 'shifr'
      KeyFields = 'spspec'
      Size = 10
      Lookup = True
    end
    object Table_w36period: TFloatField
      FieldName = 'period'
    end
  end
  object DataSource_w15: TDataSource
    DataSet = Table_w15
    Left = 376
    Top = 264
  end
  object DataSource_w16: TDataSource
    DataSet = Table_w16
    Left = 535
    Top = 264
  end
  object Table_w15: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'pin'
    StoreDefs = True
    TableName = 'splang'
    Left = 456
    Top = 264
  end
  object Table_w16: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'upor'
        DataType = ftInteger
      end
      item
        Name = 'fis_code'
        DataType = ftInteger
      end
      item
        Name = 'ASTU_Code'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'upor'
        Fields = 'upor'
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'spkat'
    Left = 612
    Top = 264
  end
  object DataSource_w19: TDataSource
    DataSet = Table_w19
    Left = 376
    Top = 312
  end
  object Table_w19: TTable
    OnCalcFields = Table_w19CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'pname'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'spschool'
    Left = 457
    Top = 312
    object Table_w19pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w19name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w19priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w19pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
    object Table_w19pname: TStringField
      FieldName = 'pname'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource_w6: TDataSource
    DataSet = Table_w6
    Left = 232
    Top = 160
  end
  object Table_w6: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'acc'
        DataType = ftInteger
      end
      item
        Name = 'spevent'
        DataType = ftInteger
      end
      item
        Name = 'mvnum'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'mvdate'
        DataType = ftDate
      end
      item
        Name = 'mvosn'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'spgrup'
        DataType = ftInteger
      end
      item
        Name = 'spotd'
        DataType = ftInteger
      end
      item
        Name = 'spfak'
        DataType = ftInteger
      end
      item
        Name = 'spspec'
        DataType = ftInteger
      end
      item
        Name = 'kurs'
        DataType = ftSmallint
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'usrwrite'
        DataType = ftInteger
      end
      item
        Name = 'usraccept'
        DataType = ftInteger
      end
      item
        Name = 'mvfakt'
        DataType = ftDate
      end
      item
        Name = 'spstatus'
        DataType = ftInteger
      end
      item
        Name = 'datevv'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'sl'
        DataType = ftInteger
      end
      item
        Name = 'lgota'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'idxmovacc'
        Fields = 'acc;mvdate'
      end
      item
        Name = 'idxmovevent'
        Fields = 'spevent'
      end
      item
        Name = 'idxmovgrup'
        Fields = 'spgrup'
      end
      item
        Name = 'idxmovotd'
        Fields = 'spotd'
      end
      item
        Name = 'idxmovfak'
        Fields = 'spfak'
      end
      item
        Name = 'idxmovspec'
        Fields = 'spspec'
      end
      item
        Name = 'idxmovdat'
        Fields = 'mvdate'
      end>
    IndexName = 'idxmovdat'
    StoreDefs = True
    TableName = 'moves'
    Left = 295
    Top = 160
    object Table_w6pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w6acc: TIntegerField
      FieldName = 'acc'
    end
    object Table_w6spevent: TIntegerField
      FieldName = 'spevent'
    end
    object Table_w6mvnum: TStringField
      FieldName = 'mvnum'
      Size = 10
    end
    object Table_w6mvdate: TDateField
      FieldName = 'mvdate'
    end
    object Table_w6mvosn: TStringField
      FieldName = 'mvosn'
      Size = 24
    end
    object Table_w6spgrup: TIntegerField
      FieldName = 'spgrup'
    end
    object Table_w6spotd: TIntegerField
      FieldName = 'spotd'
    end
    object Table_w6spfak: TIntegerField
      FieldName = 'spfak'
    end
    object Table_w6spspec: TIntegerField
      FieldName = 'spspec'
    end
    object Table_w6kurs: TSmallintField
      FieldName = 'kurs'
    end
    object Table_w6priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w6usrwrite: TIntegerField
      FieldName = 'usrwrite'
    end
    object Table_w6usraccept: TIntegerField
      FieldName = 'usraccept'
    end
    object Table_w6gruppa: TStringField
      FieldKind = fkLookup
      FieldName = 'gruppa'
      LookupDataSet = Table_w37
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spgrup'
      Size = 15
      Lookup = True
    end
    object Table_w6mvfakt: TDateField
      FieldName = 'mvfakt'
    end
    object Table_w6event: TStringField
      FieldKind = fkLookup
      FieldName = 'event'
      LookupDataSet = Table_w26
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spevent'
      Size = 60
      Lookup = True
    end
    object Table_w6act: TIntegerField
      FieldKind = fkLookup
      FieldName = 'act'
      LookupDataSet = Table_w26
      LookupKeyFields = 'pin'
      LookupResultField = 'act'
      KeyFields = 'spevent'
      Lookup = True
    end
    object Table_w6datevv: TDateTimeField
      FieldName = 'datevv'
      Required = True
    end
    object Table_w6sl: TIntegerField
      FieldName = 'sl'
    end
    object Table_w6spstatus: TIntegerField
      FieldName = 'spstatus'
    end
    object Table_w6lgota: TIntegerField
      FieldName = 'lgota'
    end
  end
  object Table_w26: TTable
    OnCalcFields = Table_w26CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 115
      end
      item
        Name = 'vfort'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cause'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'spsost'
        DataType = ftInteger
      end
      item
        Name = 'spstatus'
        DataType = ftInteger
      end
      item
        Name = 'act'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'lgota'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'idxevsost'
        Fields = 'spsost'
      end
      item
        Name = 'idxevstat'
        Fields = 'spstatus'
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'spevent'
    Left = 616
    Top = 416
    object Table_w26pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w26name: TStringField
      FieldName = 'name'
      Size = 30
    end
    object Table_w26vfort: TStringField
      FieldName = 'vfort'
      FixedChar = True
      Size = 1
    end
    object Table_w26cause: TStringField
      FieldName = 'cause'
      FixedChar = True
      Size = 1
    end
    object Table_w26spsost: TIntegerField
      FieldName = 'spsost'
    end
    object Table_w26spstatus: TIntegerField
      FieldName = 'spstatus'
    end
    object Table_w26act: TStringField
      FieldName = 'act'
      FixedChar = True
      Size = 1
    end
    object Table_w26priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w26pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
    object Table_w26lgota: TIntegerField
      FieldName = 'lgota'
    end
  end
  object DataSource_w26: TDataSource
    DataSet = Table_w26
    Left = 536
    Top = 416
  end
  object Query1: TQuery
    DatabaseName = 'database2'
    Left = 667
    Top = 471
  end
  object Query2: TQuery
    DatabaseName = 'database2'
    Left = 744
    Top = 471
  end
  object DataSource_w3: TDataSource
    DataSet = Table_w3
    Left = 377
    Top = 112
  end
  object DataSource_w4: TDataSource
    DataSet = Table_w4
    Left = 534
    Top = 112
  end
  object Table_w3: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'acc'
        DataType = ftInteger
      end
      item
        Name = 'spmil1'
        DataType = ftInteger
      end
      item
        Name = 'milnum'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'mildate'
        DataType = ftDate
      end
      item
        Name = 'milwho'
        DataType = ftString
        Size = 24
      end
      item
        Name = 'katgodn'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'spmil2'
        DataType = ftInteger
      end
      item
        Name = 'kateg'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'grupuch'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'spmil3'
        DataType = ftInteger
      end
      item
        Name = 'specnum'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'speckod'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'spreg1'
        DataType = ftInteger
      end
      item
        Name = 'spreg2'
        DataType = ftInteger
      end
      item
        Name = 'spreg3'
        DataType = ftInteger
      end
      item
        Name = 'spreg4'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idxwaracc'
        Fields = 'acc'
        Options = [ixUnique]
      end
      item
        Name = 'idxwar1mil'
        Fields = 'spmil1'
      end
      item
        Name = 'idxwar2mil'
        Fields = 'spmil2'
      end
      item
        Name = 'idxwar3mil'
        Fields = 'spmil3'
      end>
    IndexName = 'idxwaracc'
    StoreDefs = True
    TableName = 'accwar'
    Left = 455
    Top = 112
    object Table_w3acc: TIntegerField
      FieldName = 'acc'
    end
    object Table_w3spmil1: TIntegerField
      FieldName = 'spmil1'
    end
    object Table_w3milnum: TStringField
      FieldName = 'milnum'
      Size = 12
    end
    object Table_w3mildate: TDateField
      FieldName = 'mildate'
    end
    object Table_w3milwho: TStringField
      FieldName = 'milwho'
      Size = 24
    end
    object Table_w3katgodn: TStringField
      FieldName = 'katgodn'
      Size = 8
    end
    object Table_w3spmil2: TIntegerField
      FieldName = 'spmil2'
    end
    object Table_w3kateg: TStringField
      FieldName = 'kateg'
      Size = 10
    end
    object Table_w3grupuch: TStringField
      FieldName = 'grupuch'
      Size = 10
    end
    object Table_w3spmil3: TIntegerField
      FieldName = 'spmil3'
    end
    object Table_w3specnum: TStringField
      FieldName = 'specnum'
      Size = 10
    end
    object Table_w3speckod: TStringField
      FieldName = 'speckod'
      Size = 10
    end
    object Table_w3priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w3spreg1: TIntegerField
      FieldName = 'spreg1'
    end
    object Table_w3spreg2: TIntegerField
      FieldName = 'spreg2'
    end
    object Table_w3spreg3: TIntegerField
      FieldName = 'spreg3'
    end
    object Table_w3spreg4: TIntegerField
      FieldName = 'spreg4'
    end
  end
  object Table_w4: TTable
    OnCalcFields = Table_w4CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'acc'
        DataType = ftInteger
      end
      item
        Name = 'prnum'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'prdate'
        DataType = ftDate
      end
      item
        Name = 'fam'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'vname'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'pasnum'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'paswho'
        DataType = ftString
        Size = 24
      end
      item
        Name = 'pasdate'
        DataType = ftDate
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'doc'
        DataType = ftInteger
      end
      item
        Name = 'docnom'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'docwho'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'docdate'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'idxfamacc'
        Fields = 'acc;prdate'
      end
      item
        Name = 'idxfamfio'
        Fields = 'fam;name;vname'
      end>
    IndexName = 'idxfamacc'
    StoreDefs = True
    TableName = 'accfam'
    Left = 610
    Top = 112
    object Table_w4pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w4acc: TIntegerField
      FieldName = 'acc'
    end
    object Table_w4prnum: TStringField
      FieldName = 'prnum'
      Size = 10
    end
    object Table_w4prdate: TDateField
      FieldName = 'prdate'
    end
    object Table_w4fam: TStringField
      FieldName = 'fam'
    end
    object Table_w4name: TStringField
      FieldName = 'name'
      Size = 14
    end
    object Table_w4vname: TStringField
      FieldName = 'vname'
      Size = 16
    end
    object Table_w4pasnum: TStringField
      FieldName = 'pasnum'
      Size = 12
    end
    object Table_w4paswho: TStringField
      FieldName = 'paswho'
      Size = 24
    end
    object Table_w4pasdate: TDateField
      FieldName = 'pasdate'
    end
    object Table_w4priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w4Fio: TStringField
      FieldKind = fkCalculated
      FieldName = 'Fio'
      Size = 50
      Calculated = True
    end
    object Table_w4password: TStringField
      FieldKind = fkCalculated
      FieldName = 'password'
      Size = 46
      Calculated = True
    end
    object Table_w4doc: TIntegerField
      FieldName = 'doc'
    end
    object Table_w4docnom: TStringField
      FieldName = 'docnom'
      Size = 10
    end
    object Table_w4docwho: TStringField
      FieldName = 'docwho'
      Size = 25
    end
    object Table_w4docdate: TDateField
      FieldName = 'docdate'
    end
  end
  object Table_w5: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'acc'
        DataType = ftInteger
      end
      item
        Name = 'spgood'
        DataType = ftInteger
      end
      item
        Name = 'prnum'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'prdate'
        DataType = ftDate
      end
      item
        Name = 'prosn'
        DataType = ftString
        Size = 24
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'idxgodacc'
        Fields = 'acc;prdate'
      end
      item
        Name = 'idxgodgood'
        Fields = 'spgood'
      end>
    IndexName = 'idxgodacc'
    StoreDefs = True
    TableName = 'accgood'
    Left = 160
    Top = 160
    object Table_w5acc: TIntegerField
      FieldName = 'acc'
    end
    object Table_w5spgood: TIntegerField
      FieldName = 'spgood'
    end
    object Table_w5prnum: TStringField
      FieldName = 'prnum'
      Size = 10
    end
    object Table_w5prdate: TDateField
      FieldName = 'prdate'
    end
    object Table_w5prosn: TStringField
      FieldName = 'prosn'
      Size = 24
    end
    object Table_w5priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w5good: TStringField
      FieldKind = fkLookup
      FieldName = 'good'
      LookupDataSet = Table_w23
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spgood'
      Size = 15
      Lookup = True
    end
  end
  object DataSource_w5: TDataSource
    DataSet = Table_w5
    Left = 88
    Top = 160
  end
  object DataSource_w23: TDataSource
    DataSet = Table_w23
    Left = 376
    Top = 368
  end
  object Table_w23: TTable
    OnCalcFields = Table_w23CalcFields
    DatabaseName = 'database2'
    IndexName = 'PRIMARY'
    TableName = 'spgood'
    Left = 456
    Top = 368
    object Table_w23pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w23name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w23priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w23pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object Table_w20: TTable
    OnCalcFields = Table_w20CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spmil1'
    Left = 612
    Top = 312
    object Table_w20pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w20name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w20priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w20pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object Table_w21: TTable
    OnCalcFields = Table_w21CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spmil2'
    Left = 161
    Top = 368
    object Table_w21pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w21name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w21priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w21pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object Table_w22: TTable
    OnCalcFields = Table_w22CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'spmil3'
    Left = 304
    Top = 368
    object Table_w22pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w22name: TStringField
      FieldName = 'name'
      Size = 16
    end
    object Table_w22priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w22pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object DataSource_w20: TDataSource
    DataSet = Table_w20
    Left = 535
    Top = 312
  end
  object DataSource_w21: TDataSource
    DataSet = Table_w21
    Left = 83
    Top = 368
  end
  object DataSource_w22: TDataSource
    DataSet = Table_w22
    Left = 232
    Top = 368
  end
  object Table46_1: TTable
    OnCalcFields = Table46_1CalcFields
    DatabaseName = 'database1'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 120
      end
      item
        Name = 'tip'
        DataType = ftInteger
      end
      item
        Name = 'rod'
        DataType = ftInteger
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'tip'
        Fields = 'tip'
      end
      item
        Name = 'rod'
        Fields = 'rod'
      end>
    StoreDefs = True
    TableName = 'geography'
    Left = 455
    Top = 8
    object Table46_1pin: TIntegerField
      FieldName = 'pin'
    end
    object Table46_1name: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 120
    end
    object Table46_1tip: TIntegerField
      FieldName = 'tip'
    end
    object Table46_1rod: TIntegerField
      FieldName = 'rod'
    end
    object Table46_1priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table46_1pr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
  end
  object DataSource46_1: TDataSource
    DataSet = Table46_1
    Left = 377
    Top = 8
  end
  object Query3: TQuery
    DatabaseName = 'database1'
    Left = 667
    Top = 8
  end
  object baza_h: TTable
    OnCalcFields = baza_hCalcFields
    DatabaseName = 'database3'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'fam'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'otch'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'otd'
        DataType = ftInteger
      end
      item
        Name = 'pol'
        DataType = ftInteger
      end
      item
        Name = 'soc_pol'
        DataType = ftInteger
      end
      item
        Name = 'sem_pol'
        DataType = ftInteger
      end
      item
        Name = 'graj'
        DataType = ftInteger
      end
      item
        Name = 'injaz'
        DataType = ftInteger
      end
      item
        Name = 'coduch'
        DataType = ftInteger
      end
      item
        Name = 'sr_ball'
        DataType = ftFloat
      end
      item
        Name = 'medal'
        DataType = ftInteger
      end
      item
        Name = 'prior'
        DataType = ftSmallint
      end
      item
        Name = 'otn_sl'
        DataType = ftInteger
      end
      item
        Name = 'kol5'
        DataType = ftInteger
      end
      item
        Name = 'kol4'
        DataType = ftInteger
      end
      item
        Name = 'kol3'
        DataType = ftInteger
      end
      item
        Name = 'tipdok'
        DataType = ftInteger
      end
      item
        Name = 'prpris'
        DataType = ftInteger
      end
      item
        Name = 'plat'
        DataType = ftInteger
      end
      item
        Name = 'kat'
        DataType = ftInteger
      end
      item
        Name = 'obsh'
        DataType = ftInteger
      end
      item
        Name = 'aregion1'
        DataType = ftInteger
      end
      item
        Name = 'aregion2'
        DataType = ftInteger
      end
      item
        Name = 'aregion3'
        DataType = ftInteger
      end
      item
        Name = 'aregion4'
        DataType = ftInteger
      end
      item
        Name = 'aul'
        Attributes = [faFixed]
        DataType = ftString
        Size = 150
      end
      item
        Name = 'adom'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'akva'
        Attributes = [faFixed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'phone'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'papa'
        Attributes = [faFixed]
        DataType = ftString
        Size = 45
      end
      item
        Name = 'mama'
        Attributes = [faFixed]
        DataType = ftString
        Size = 45
      end
      item
        Name = 'papajob'
        Attributes = [faFixed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'mamajob'
        Attributes = [faFixed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'spec1'
        DataType = ftInteger
      end
      item
        Name = 'spec2'
        DataType = ftInteger
      end
      item
        Name = 'spec3'
        DataType = ftInteger
      end
      item
        Name = 'spec4'
        DataType = ftInteger
      end
      item
        Name = 'spec5'
        DataType = ftInteger
      end
      item
        Name = 'spec6'
        DataType = ftInteger
      end
      item
        Name = 'date_ro'
        DataType = ftDate
      end
      item
        Name = 'mregion'
        Attributes = [faFixed]
        DataType = ftString
        Size = 80
      end
      item
        Name = 'mregion1'
        DataType = ftInteger
      end
      item
        Name = 'mregion2'
        DataType = ftInteger
      end
      item
        Name = 'mregion3'
        DataType = ftInteger
      end
      item
        Name = 'mregion4'
        DataType = ftInteger
      end
      item
        Name = 'date_uh1'
        DataType = ftInteger
      end
      item
        Name = 'tip_lich'
        DataType = ftInteger
      end
      item
        Name = 'kempasport'
        Attributes = [faFixed]
        DataType = ftString
        Size = 120
      end
      item
        Name = 'datpasport'
        DataType = ftDate
      end
      item
        Name = 'tip_voen'
        DataType = ftInteger
      end
      item
        Name = 'datvoen'
        DataType = ftDate
      end
      item
        Name = 'zach'
        DataType = ftInteger
      end
      item
        Name = 'codcel'
        DataType = ftInteger
      end
      item
        Name = 'doc_obraz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 26
      end
      item
        Name = 'tipdoc_ob'
        DataType = ftInteger
      end
      item
        Name = 'datdoc_ob'
        DataType = ftDate
      end
      item
        Name = 'cel_date'
        DataType = ftDate
      end
      item
        Name = 'cel_sum'
        DataType = ftFloat
      end
      item
        Name = 'cel_num'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dateprin'
        DataType = ftDate
      end
      item
        Name = 'dateprin1'
        DataType = ftDate
      end
      item
        Name = 'r1'
        DataType = ftInteger
      end
      item
        Name = 'r2'
        DataType = ftInteger
      end
      item
        Name = 'r3'
        DataType = ftInteger
      end
      item
        Name = 'zach1'
        DataType = ftInteger
      end
      item
        Name = 'mestjob'
        Attributes = [faFixed]
        DataType = ftString
        Size = 120
      end
      item
        Name = 'doljn'
        Attributes = [faFixed]
        DataType = ftString
        Size = 80
      end
      item
        Name = 'teljob'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'stage'
        DataType = ftFloat
      end
      item
        Name = 'vnek'
        DataType = ftInteger
      end
      item
        Name = 'lgdok'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'priem'
        DataType = ftInteger
      end
      item
        Name = 'nomvoen'
        Attributes = [faFixed]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'mregion0'
        DataType = ftInteger
      end
      item
        Name = 'udal'
        DataType = ftInteger
      end
      item
        Name = 'passer'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'pasnom'
        Attributes = [faFixed]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'nuzekz'
        DataType = ftInteger
      end
      item
        Name = 'sumball'
        DataType = ftFloat
      end
      item
        Name = 'sumball2'
        DataType = ftFloat
      end
      item
        Name = 'sumball3'
        DataType = ftFloat
      end
      item
        Name = 'matball'
        DataType = ftInteger
      end
      item
        Name = 'nehvat'
        Attributes = [faFixed]
        DataType = ftString
        Size = 200
      end
      item
        Name = 'vozcel'
        DataType = ftInteger
      end
      item
        Name = 'kemv0'
        DataType = ftInteger
      end
      item
        Name = 'kemv1'
        DataType = ftInteger
      end
      item
        Name = 'kemv2'
        DataType = ftInteger
      end
      item
        Name = 'kemvn'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'kemv3'
        DataType = ftInteger
      end
      item
        Name = 'mobtel'
        Attributes = [faFixed]
        DataType = ftString
        Size = 13
      end
      item
        Name = 'aregion0'
        DataType = ftInteger
      end
      item
        Name = 'nomprik'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'dateprik'
        DataType = ftDate
      end
      item
        Name = 'lichd'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'lichdj'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'kudapriem'
        DataType = ftInteger
      end
      item
        Name = 'zapis'
        DataType = ftInteger
      end
      item
        Name = 'auls'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'prdog'
        DataType = ftInteger
      end
      item
        Name = 'priz'
        DataType = ftInteger
      end
      item
        Name = 'datzab'
        DataType = ftDate
      end
      item
        Name = 'eg'
        DataType = ftInteger
      end
      item
        Name = 'preimdok'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'olimp'
        DataType = ftInteger
      end
      item
        Name = 'sl'
        DataType = ftInteger
      end
      item
        Name = 'r4'
        DataType = ftInteger
      end
      item
        Name = 'km'
        DataType = ftInteger
      end
      item
        Name = 'kr'
        DataType = ftInteger
      end
      item
        Name = 'kf'
        DataType = ftInteger
      end
      item
        Name = 'ko'
        DataType = ftInteger
      end
      item
        Name = 'vbil'
        DataType = ftInteger
      end
      item
        Name = 'pindex'
        DataType = ftInteger
      end
      item
        Name = 'mail'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'kat'
        Fields = 'kat'
      end
      item
        Name = 'vnek'
        Fields = 'vnek'
      end
      item
        Name = 'soc_pol'
        Fields = 'soc_pol'
      end
      item
        Name = 'graj'
        Fields = 'graj'
      end
      item
        Name = 'injaz'
        Fields = 'injaz'
      end
      item
        Name = 'tip_lich'
        Fields = 'tip_lich'
      end
      item
        Name = 'tip_voen'
        Fields = 'tip_voen'
      end
      item
        Name = 'medal'
        Fields = 'medal'
      end
      item
        Name = 'fam'
        Fields = 'fam'
      end
      item
        Name = 'mregion0'
        Fields = 'mregion0'
      end
      item
        Name = 'mregion1'
        Fields = 'mregion1'
      end
      item
        Name = 'aregion1'
        Fields = 'aregion1'
      end
      item
        Name = 'mregion2'
        Fields = 'mregion2'
      end
      item
        Name = 'aregion2'
        Fields = 'aregion2'
      end
      item
        Name = 'aregion3'
        Fields = 'aregion3'
      end
      item
        Name = 'mregion3'
        Fields = 'mregion3'
      end
      item
        Name = 'mregion4'
        Fields = 'mregion4'
      end
      item
        Name = 'aregion4'
        Fields = 'aregion4'
      end
      item
        Name = 'codcel'
        Fields = 'codcel'
      end
      item
        Name = 'katspetip'
        Fields = 'kat;spec1;tipdok'
      end
      item
        Name = 'katspe'
        Fields = 'kat;spec1'
      end
      item
        Name = 'dateprin'
        Fields = 'dateprin'
      end
      item
        Name = 'zachisl'
        Fields = 'sumball;matball;sr_ball'
      end
      item
        Name = 'zkf'
        Fields = 'zach;kat;fam'
      end
      item
        Name = 'coduch'
        Fields = 'coduch'
      end
      item
        Name = 'spec1'
        Fields = 'spec1'
      end
      item
        Name = 'spec2'
        Fields = 'spec2'
      end
      item
        Name = 'spec3'
        Fields = 'spec3'
      end
      item
        Name = 'r1'
        Fields = 'r1'
      end
      item
        Name = 'r2'
        Fields = 'r2'
      end
      item
        Name = 'r3'
        Fields = 'r3'
      end
      item
        Name = 'zach'
        Fields = 'zach'
      end
      item
        Name = 'zac1'
        Fields = 'zach1'
      end
      item
        Name = 'zach1'
        Fields = 'matball;sr_ball;sumball'
      end
      item
        Name = 'ind1'
        Fields = 'sumball;matball;sr_ball;fam'
      end
      item
        Name = 'ind2'
        Fields = 'sumball;matball;sr_ball;pin'
      end
      item
        Name = 'spec4'
        Fields = 'spec4'
      end
      item
        Name = 'spec5'
        Fields = 'spec5'
      end
      item
        Name = 'spec6'
        Fields = 'spec6'
      end
      item
        Name = 'fio'
        Fields = 'fam;name;otch;pasnom'
      end
      item
        Name = 'fordek'
        Fields = 'kat;sumball3;sr_ball;fam'
      end>
    StoreDefs = True
    TableName = 'baza_h'
    UpdateMode = upWhereKeyOnly
    Left = 155
    Top = 536
    object baza_hpin: TIntegerField
      FieldName = 'pin'
    end
    object baza_hfam: TStringField
      FieldName = 'fam'
      FixedChar = True
    end
    object baza_hname: TStringField
      FieldName = 'name'
      FixedChar = True
    end
    object baza_hotch: TStringField
      FieldName = 'otch'
      FixedChar = True
    end
    object baza_hotd: TIntegerField
      FieldName = 'otd'
    end
    object baza_hpol: TIntegerField
      FieldName = 'pol'
    end
    object baza_hsoc_pol: TIntegerField
      FieldName = 'soc_pol'
    end
    object baza_hsem_pol: TIntegerField
      FieldName = 'sem_pol'
    end
    object baza_hgraj: TIntegerField
      FieldName = 'graj'
    end
    object baza_hinjaz: TIntegerField
      FieldName = 'injaz'
    end
    object baza_hcoduch: TIntegerField
      FieldName = 'coduch'
    end
    object baza_hotn_sl: TIntegerField
      FieldName = 'otn_sl'
    end
    object baza_hkat: TIntegerField
      FieldName = 'kat'
    end
    object baza_hobsh: TIntegerField
      FieldName = 'obsh'
    end
    object baza_haregion1: TIntegerField
      FieldName = 'aregion1'
    end
    object baza_haregion2: TIntegerField
      FieldName = 'aregion2'
    end
    object baza_haregion3: TIntegerField
      FieldName = 'aregion3'
    end
    object baza_haregion4: TIntegerField
      FieldName = 'aregion4'
    end
    object baza_haul: TStringField
      FieldName = 'aul'
      FixedChar = True
      Size = 150
    end
    object baza_hadom: TStringField
      FieldName = 'adom'
      FixedChar = True
      Size = 10
    end
    object baza_hakva: TStringField
      FieldName = 'akva'
      FixedChar = True
      Size = 7
    end
    object baza_hphone: TStringField
      FieldName = 'phone'
      FixedChar = True
      Size = 15
    end
    object baza_hdate_ro: TDateField
      FieldName = 'date_ro'
    end
    object baza_hmregion: TStringField
      FieldName = 'mregion'
      FixedChar = True
      Size = 80
    end
    object baza_hmregion1: TIntegerField
      FieldName = 'mregion1'
    end
    object baza_hmregion2: TIntegerField
      FieldName = 'mregion2'
    end
    object baza_hmregion3: TIntegerField
      FieldName = 'mregion3'
    end
    object baza_hmregion4: TIntegerField
      FieldName = 'mregion4'
    end
    object baza_hdate_uh1: TIntegerField
      FieldName = 'date_uh1'
    end
    object baza_htip_lich: TIntegerField
      FieldName = 'tip_lich'
    end
    object baza_hkempasport: TStringField
      FieldName = 'kempasport'
      FixedChar = True
      Size = 120
    end
    object baza_hdatpasport: TDateField
      FieldName = 'datpasport'
    end
    object baza_htip_voen: TIntegerField
      FieldName = 'tip_voen'
    end
    object baza_hdatvoen: TDateField
      FieldName = 'datvoen'
    end
    object baza_hmestjob: TStringField
      FieldName = 'mestjob'
      FixedChar = True
      Size = 120
    end
    object baza_hdoljn: TStringField
      FieldName = 'doljn'
      FixedChar = True
      Size = 80
    end
    object baza_hteljob: TStringField
      FieldName = 'teljob'
      FixedChar = True
    end
    object baza_hnomvoen: TStringField
      FieldName = 'nomvoen'
      FixedChar = True
      Size = 9
    end
    object baza_hpasser: TStringField
      FieldName = 'passer'
      FixedChar = True
      Size = 5
    end
    object baza_hpasnom: TStringField
      FieldName = 'pasnom'
      FixedChar = True
      Size = 9
    end
    object baza_hkemv1: TIntegerField
      FieldName = 'kemv1'
    end
    object baza_hkemv2: TIntegerField
      FieldName = 'kemv2'
    end
    object baza_hkemvn: TStringField
      FieldName = 'kemvn'
      FixedChar = True
      Size = 50
    end
    object baza_hkemv3: TIntegerField
      FieldName = 'kemv3'
    end
    object baza_hmobtel: TStringField
      FieldName = 'mobtel'
      FixedChar = True
      Size = 11
    end
    object baza_hlichd: TStringField
      FieldName = 'lichd'
      FixedChar = True
      Size = 3
    end
    object baza_hlichdj: TStringField
      FieldName = 'lichdj'
      FixedChar = True
      Size = 5
    end
    object baza_hzapis: TIntegerField
      FieldName = 'zapis'
    end
    object baza_hauls: TStringField
      FieldName = 'auls'
      FixedChar = True
      Size = 15
    end
    object baza_hzach: TIntegerField
      FieldName = 'zach'
    end
    object baza_hzach1: TIntegerField
      FieldName = 'zach1'
    end
    object baza_hsl: TIntegerField
      FieldName = 'sl'
    end
    object baza_hpr: TStringField
      FieldKind = fkCalculated
      FieldName = 'pr'
      Size = 1
      Calculated = True
    end
    object baza_hpapa: TStringField
      FieldName = 'papa'
      FixedChar = True
      Size = 45
    end
    object baza_hmama: TStringField
      FieldName = 'mama'
      FixedChar = True
      Size = 45
    end
    object baza_hpapajob: TStringField
      FieldName = 'papajob'
      FixedChar = True
      Size = 100
    end
    object baza_hmamajob: TStringField
      FieldName = 'mamajob'
      FixedChar = True
      Size = 100
    end
  end
  object DataSource_ab1: TDataSource
    DataSet = baza_h
    Left = 83
    Top = 536
  end
  object DataSource_ab2: TDataSource
    DataSet = snspec
    Left = 227
    Top = 536
  end
  object snspec: TTable
    DatabaseName = 'database3'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'sprotd'
        DataType = ftInteger
      end
      item
        Name = 'napr'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sprfak'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'sprspec'
        Attributes = [faFixed]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'sprkat'
        DataType = ftInteger
      end
      item
        Name = 'kolm'
        DataType = ftInteger
      end
      item
        Name = 'prizn'
        DataType = ftInteger
      end
      item
        Name = 'zan'
        DataType = ftInteger
      end
      item
        Name = 'srok'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'sprfak'
        Fields = 'sprfak'
      end
      item
        Name = 'sprkat'
        Fields = 'sprkat'
      end
      item
        Name = 'sprspec'
        Fields = 'sprspec'
      end
      item
        Name = 'sprotd'
        Fields = 'sprotd'
      end
      item
        Name = 'vse'
        Fields = 'sprspec;napr;sprotd;sprfak;sprkat'
      end
      item
        Name = 'skf'
        Fields = 'sprspec;sprkat;sprotd'
      end
      item
        Name = 'sf'
        Fields = 'sprspec;sprotd'
      end
      item
        Name = 'oks'
        Fields = 'sprotd;sprkat;sprspec'
      end
      item
        Name = 'snsssp'
        Fields = 'sprspec;napr;sprotd;sprfak;sprkat;prizn'
      end
      item
        Name = 'evrth'
        Fields = 'sprspec;napr;sprotd;sprfak;prizn'
      end>
    StoreDefs = True
    TableName = 'snspec'
    Left = 323
    Top = 536
    object snspecpin: TIntegerField
      FieldName = 'pin'
    end
    object snspecsprotd: TIntegerField
      FieldName = 'sprotd'
    end
    object snspecnapr: TStringField
      FieldName = 'napr'
      FixedChar = True
    end
    object snspecsprfak: TStringField
      FieldName = 'sprfak'
      FixedChar = True
      Size = 4
    end
    object snspecsprspec: TStringField
      FieldName = 'sprspec'
      FixedChar = True
      Size = 9
    end
    object snspecsprkat: TIntegerField
      FieldName = 'sprkat'
    end
    object snspeckolm: TIntegerField
      FieldName = 'kolm'
    end
    object snspecprizn: TIntegerField
      FieldName = 'prizn'
    end
    object snspeczan: TIntegerField
      FieldName = 'zan'
    end
    object snspecsrok: TFloatField
      FieldName = 'srok'
    end
  end
  object Table7: TTable
    DatabaseName = 'database1'
    FieldDefs = <
      item
        Name = 'cod'
        DataType = ftInteger
      end
      item
        Name = 'naim'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'codk'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'year'
        DataType = ftInteger
      end
      item
        Name = 'coduchp'
        DataType = ftInteger
      end
      item
        Name = 'sem'
        DataType = ftInteger
      end
      item
        Name = 'chel'
        DataType = ftInteger
      end
      item
        Name = 'prgrup'
        DataType = ftInteger
      end
      item
        Name = 'codrod'
        DataType = ftInteger
      end
      item
        Name = 'npar'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'cod'
        Options = [ixUnique]
      end
      item
        Name = 'grup'
        Fields = 'year;naim'
      end
      item
        Name = 'year'
        Fields = 'year'
      end
      item
        Name = 'grup1'
        Fields = 'year;prgrup'
      end
      item
        Name = 'grupuch'
        Fields = 'coduchp'
      end
      item
        Name = 'naim'
        Fields = 'naim'
      end
      item
        Name = 'coduchpsem'
        Fields = 'coduchp;sem'
      end
      item
        Name = 'semkafnaim'
        Fields = 'sem;codk;naim'
      end>
    IndexName = 'grup'
    StoreDefs = True
    TableName = 'grup'
    Left = 610
    Top = 8
    object Table7cod: TIntegerField
      FieldName = 'cod'
    end
    object Table7naim: TStringField
      FieldName = 'naim'
      FixedChar = True
      Size = 15
    end
    object Table7codk: TStringField
      FieldName = 'codk'
      FixedChar = True
      Size = 4
    end
    object Table7year: TIntegerField
      FieldName = 'year'
    end
    object Table7coduchp: TIntegerField
      FieldName = 'coduchp'
    end
    object Table7sem: TIntegerField
      FieldName = 'sem'
    end
    object Table7chel: TIntegerField
      FieldName = 'chel'
    end
    object Table7prgrup: TIntegerField
      FieldName = 'prgrup'
    end
    object Table7codrod: TIntegerField
      FieldName = 'codrod'
    end
    object Table7npar: TIntegerField
      FieldName = 'npar'
    end
  end
  object DataSource7: TDataSource
    DataSet = Table7
    Left = 534
    Top = 8
  end
  object Database3: TDatabase
    AliasName = 'abitus'
    DatabaseName = 'database3'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=work_pri')
    SessionName = 'Default'
    Left = 11
    Top = 536
  end
  object DataSource_ab3: TDataSource
    DataSet = spschool
    Left = 403
    Top = 536
  end
  object spschool: TTable
    DatabaseName = 'database3'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 140
      end
      item
        Name = 'vid'
        DataType = ftInteger
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'mest0'
        DataType = ftInteger
      end
      item
        Name = 'mest1'
        DataType = ftInteger
      end
      item
        Name = 'mest2'
        DataType = ftInteger
      end
      item
        Name = 'mest3'
        DataType = ftInteger
      end
      item
        Name = 'mest4'
        DataType = ftInteger
      end
      item
        Name = 'tel'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'direkt'
        Attributes = [faFixed]
        DataType = ftString
        Size = 120
      end
      item
        Name = 'namekr'
        Attributes = [faFixed]
        DataType = ftString
        Size = 16
      end
      item
        Name = 'tipob'
        DataType = ftInteger
      end
      item
        Name = 'kname'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'codou'
        Attributes = [faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'stud'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'vid'
        Fields = 'vid'
      end
      item
        Name = 'tipob'
        Fields = 'tipob'
      end>
    StoreDefs = True
    TableName = 'spschool'
    Left = 491
    Top = 536
    object spschoolpin: TIntegerField
      FieldName = 'pin'
    end
    object spschoolname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 140
    end
    object spschoolvid: TIntegerField
      FieldName = 'vid'
    end
    object spschoolpriz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object spschoolmest0: TIntegerField
      FieldName = 'mest0'
    end
    object spschoolmest1: TIntegerField
      FieldName = 'mest1'
    end
    object spschoolmest2: TIntegerField
      FieldName = 'mest2'
    end
    object spschoolmest3: TIntegerField
      FieldName = 'mest3'
    end
    object spschoolmest4: TIntegerField
      FieldName = 'mest4'
    end
    object spschooltel: TStringField
      FieldName = 'tel'
      FixedChar = True
    end
    object spschooldirekt: TStringField
      FieldName = 'direkt'
      FixedChar = True
      Size = 120
    end
    object spschoolnamekr: TStringField
      FieldName = 'namekr'
      FixedChar = True
      Size = 16
    end
    object spschooltipob: TIntegerField
      FieldName = 'tipob'
    end
    object spschoolkname: TStringField
      FieldName = 'kname'
      FixedChar = True
      Size = 15
    end
  end
  object tipuchz: TTable
    DatabaseName = 'database3'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'obr'
        DataType = ftInteger
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'tipuchz'
    Left = 647
    Top = 536
    object tipuchzpin: TIntegerField
      FieldName = 'pin'
    end
    object tipuchzname: TStringField
      FieldName = 'name'
      FixedChar = True
    end
    object tipuchzobr: TIntegerField
      FieldName = 'obr'
    end
    object tipuchzpriz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource_ab4: TDataSource
    DataSet = tipuchz
    Left = 566
    Top = 536
  end
  object DataSource_ab5: TDataSource
    DataSet = geography
    Left = 715
    Top = 536
  end
  object geography: TTable
    DatabaseName = 'database3'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 120
      end
      item
        Name = 'tip'
        DataType = ftInteger
      end
      item
        Name = 'rod'
        DataType = ftInteger
      end
      item
        Name = 'priz'
        DataType = ftInteger
      end
      item
        Name = 'cod'
        Attributes = [faFixed]
        DataType = ftString
        Size = 13
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'tip'
        Fields = 'tip'
      end
      item
        Name = 'rod'
        Fields = 'rod'
      end
      item
        Name = 'cod'
        Fields = 'cod'
      end
      item
        Name = 'name'
        Fields = 'name'
      end>
    StoreDefs = True
    TableName = 'geography'
    Left = 787
    Top = 536
    object geographypin: TIntegerField
      FieldName = 'pin'
    end
    object geographyname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 120
    end
    object geographytip: TIntegerField
      FieldName = 'tip'
    end
    object geographyrod: TIntegerField
      FieldName = 'rod'
    end
    object geographypriz: TIntegerField
      FieldName = 'priz'
    end
    object geographycod: TStringField
      FieldName = 'cod'
      FixedChar = True
      Size = 13
    end
  end
  object Table_w8: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'acc'
        DataType = ftInteger
      end
      item
        Name = 'dateout'
        DataType = ftDate
      end
      item
        Name = 'numout'
        DataType = ftInteger
      end
      item
        Name = 'mesjob'
        DataType = ftString
        Size = 144
      end
      item
        Name = 'datebegin'
        DataType = ftDate
      end
      item
        Name = 'dateend'
        DataType = ftDate
      end
      item
        Name = 'namerod'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'spfak'
        DataType = ftInteger
      end
      item
        Name = 'at'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'idxcallacc'
        Fields = 'acc;dateout;pin'
      end
      item
        Name = 'idxcallnum'
        Fields = 'spfak;numout'
      end>
    IndexName = 'idxcallacc'
    StoreDefs = True
    TableName = 'callenge'
    Left = 455
    Top = 160
    object Table_w8pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w8acc: TIntegerField
      FieldName = 'acc'
    end
    object Table_w8dateout: TDateField
      FieldName = 'dateout'
    end
    object Table_w8numout: TIntegerField
      FieldName = 'numout'
    end
    object Table_w8mesjob: TStringField
      FieldName = 'mesjob'
      Size = 144
    end
    object Table_w8datebegin: TDateField
      FieldName = 'datebegin'
    end
    object Table_w8dateend: TDateField
      FieldName = 'dateend'
    end
    object Table_w8namerod: TStringField
      FieldName = 'namerod'
      Size = 50
    end
    object Table_w8spfak: TIntegerField
      FieldName = 'spfak'
    end
    object Table_w8at: TIntegerField
      FieldName = 'at'
    end
  end
  object Table_p4: TTable
    DatabaseName = 'database3'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'naim'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'adress'
        Attributes = [faFixed]
        DataType = ftString
        Size = 120
      end
      item
        Name = 'okonh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'okpo'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'inn'
        Attributes = [faFixed]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'rsc'
        Attributes = [faFixed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ofk'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ls'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'kpp'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'bik'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'bnk'
        Attributes = [faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'numdog'
        DataType = ftInteger
      end
      item
        Name = 'nomakkr'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dateakkr'
        DataType = ftDate
      end
      item
        Name = 'begakkr'
        DataType = ftDate
      end
      item
        Name = 'endakkr'
        DataType = ftDate
      end
      item
        Name = 'nomlits'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'datelits'
        DataType = ftDate
      end
      item
        Name = 'litsot'
        DataType = ftDate
      end
      item
        Name = 'litsdo'
        DataType = ftDate
      end
      item
        Name = 'dovper'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'dovnom'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'dovdate'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'common'
    Left = 155
    Top = 584
    object Table_p4pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_p4naim: TStringField
      FieldName = 'naim'
      FixedChar = True
      Size = 40
    end
    object Table_p4adress: TStringField
      FieldName = 'adress'
      FixedChar = True
      Size = 120
    end
    object Table_p4okonh: TStringField
      FieldName = 'okonh'
      FixedChar = True
      Size = 10
    end
    object Table_p4okpo: TStringField
      FieldName = 'okpo'
      FixedChar = True
      Size = 10
    end
    object Table_p4inn: TStringField
      FieldName = 'inn'
      FixedChar = True
      Size = 14
    end
    object Table_p4rsc: TStringField
      FieldName = 'rsc'
      FixedChar = True
      Size = 25
    end
    object Table_p4ofk: TStringField
      FieldName = 'ofk'
      FixedChar = True
      Size = 40
    end
    object Table_p4ls: TStringField
      FieldName = 'ls'
      FixedChar = True
      Size = 12
    end
    object Table_p4kpp: TStringField
      FieldName = 'kpp'
      FixedChar = True
      Size = 10
    end
    object Table_p4bik: TStringField
      FieldName = 'bik'
      FixedChar = True
      Size = 12
    end
    object Table_p4bnk: TStringField
      FieldName = 'bnk'
      FixedChar = True
      Size = 30
    end
    object Table_p4numdog: TIntegerField
      FieldName = 'numdog'
    end
    object Table_p4nomakkr: TStringField
      FieldName = 'nomakkr'
      FixedChar = True
      Size = 10
    end
    object Table_p4dateakkr: TDateField
      FieldName = 'dateakkr'
    end
    object Table_p4begakkr: TDateField
      FieldName = 'begakkr'
    end
    object Table_p4endakkr: TDateField
      FieldName = 'endakkr'
    end
    object Table_p4nomlits: TStringField
      FieldName = 'nomlits'
      FixedChar = True
      Size = 15
    end
    object Table_p4datelits: TDateField
      FieldName = 'datelits'
    end
    object Table_p4litsot: TDateField
      FieldName = 'litsot'
    end
    object Table_p4litsdo: TDateField
      FieldName = 'litsdo'
    end
    object Table_p4dovper: TStringField
      FieldName = 'dovper'
      FixedChar = True
      Size = 50
    end
    object Table_p4dovnom: TStringField
      FieldName = 'dovnom'
      FixedChar = True
      Size = 50
    end
    object Table_p4dovdate: TDateField
      FieldName = 'dovdate'
    end
  end
  object DataSource_p4: TDataSource
    DataSet = Table_p4
    Left = 83
    Top = 584
  end
  object Table101: TTable
    DatabaseName = 'database1'
    FieldDefs = <
      item
        Name = 'cod'
        DataType = ftInteger
      end
      item
        Name = 'codk'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'paspol'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'pasread'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <
      item
        Name = 'userprog'
        Fields = 'cod;codk'
      end>
    IndexName = 'userprog'
    StoreDefs = True
    TableName = 'userprog'
    Left = 303
    Top = 8
    object Table101cod: TIntegerField
      FieldName = 'cod'
    end
    object Table101codk: TStringField
      FieldName = 'codk'
      FixedChar = True
      Size = 4
    end
    object Table101paspol: TStringField
      FieldName = 'paspol'
      FixedChar = True
      Size = 8
    end
    object Table101pasread: TStringField
      FieldName = 'pasread'
      FixedChar = True
      Size = 8
    end
    object Table101podr: TStringField
      FieldKind = fkLookup
      FieldName = 'podr'
      LookupDataSet = Table1
      LookupKeyFields = 'cod'
      LookupResultField = 'naim'
      KeyFields = 'codk'
      Size = 40
      Lookup = True
    end
    object Table101fiorin: TStringField
      FieldKind = fkLookup
      FieldName = 'fiorin'
      LookupDataSet = Table1
      LookupKeyFields = 'cod'
      LookupResultField = 'fiorin'
      KeyFields = 'codk'
      Lookup = True
    end
  end
  object DataSource15: TDataSource
    DataSet = Table15
    Left = 232
    Top = 56
  end
  object Table15: TTable
    DatabaseName = 'database1'
    FieldDefs = <
      item
        Name = 'cod'
        DataType = ftInteger
      end
      item
        Name = 'coduchp'
        DataType = ftInteger
      end
      item
        Name = 'coddis'
        DataType = ftInteger
      end
      item
        Name = 'ekz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'zach'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'kpr'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'kra'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rasz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'l1'
        DataType = ftFloat
      end
      item
        Name = 'l2'
        DataType = ftFloat
      end
      item
        Name = 'l3'
        DataType = ftFloat
      end
      item
        Name = 'l4'
        DataType = ftFloat
      end
      item
        Name = 'l5'
        DataType = ftFloat
      end
      item
        Name = 'l6'
        DataType = ftFloat
      end
      item
        Name = 'l7'
        DataType = ftFloat
      end
      item
        Name = 'l8'
        DataType = ftFloat
      end
      item
        Name = 'l9'
        DataType = ftFloat
      end
      item
        Name = 'l10'
        DataType = ftFloat
      end
      item
        Name = 'l11'
        DataType = ftFloat
      end
      item
        Name = 'l12'
        DataType = ftFloat
      end
      item
        Name = 'g1'
        DataType = ftFloat
      end
      item
        Name = 'g2'
        DataType = ftFloat
      end
      item
        Name = 'g3'
        DataType = ftFloat
      end
      item
        Name = 'g4'
        DataType = ftFloat
      end
      item
        Name = 'g5'
        DataType = ftFloat
      end
      item
        Name = 'g6'
        DataType = ftFloat
      end
      item
        Name = 'g7'
        DataType = ftFloat
      end
      item
        Name = 'g8'
        DataType = ftFloat
      end
      item
        Name = 'g9'
        DataType = ftFloat
      end
      item
        Name = 'g10'
        DataType = ftFloat
      end
      item
        Name = 'g11'
        DataType = ftFloat
      end
      item
        Name = 'g12'
        DataType = ftFloat
      end
      item
        Name = 'codpot'
        DataType = ftInteger
      end
      item
        Name = 'nomstr'
        DataType = ftFloat
      end
      item
        Name = 'smrab'
        DataType = ftInteger
      end
      item
        Name = 'gos'
        DataType = ftInteger
      end
      item
        Name = 'flag'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'cod'
        Options = [ixUnique]
      end
      item
        Name = 'uchpdis'
        Fields = 'coduchp;coddis'
      end
      item
        Name = 'uchpnomstr'
        Fields = 'coduchp;nomstr'
      end
      item
        Name = 'uchpnom'
        Fields = 'coduchp'
      end
      item
        Name = 'uchpdis1'
        Fields = 'coddis'
      end
      item
        Name = 'codflag'
        Fields = 'cod;flag'
      end>
    IndexName = 'uchpnom'
    StoreDefs = True
    TableName = 'uchpldan'
    Left = 303
    Top = 56
    object Table15cod: TIntegerField
      FieldName = 'cod'
    end
    object Table15coduchp: TIntegerField
      FieldName = 'coduchp'
    end
    object Table15coddis: TIntegerField
      FieldName = 'coddis'
    end
    object Table15ekz: TStringField
      FieldName = 'ekz'
      FixedChar = True
      Size = 8
    end
    object Table15zach: TStringField
      FieldName = 'zach'
      FixedChar = True
      Size = 8
    end
    object Table15kpr: TStringField
      FieldName = 'kpr'
      FixedChar = True
      Size = 8
    end
    object Table15kra: TStringField
      FieldName = 'kra'
      FixedChar = True
      Size = 8
    end
    object Table15rasz: TStringField
      FieldName = 'rasz'
      FixedChar = True
      Size = 8
    end
    object Table15l1: TFloatField
      FieldName = 'l1'
    end
    object Table15l2: TFloatField
      FieldName = 'l2'
    end
    object Table15l3: TFloatField
      FieldName = 'l3'
    end
    object Table15l4: TFloatField
      FieldName = 'l4'
    end
    object Table15l5: TFloatField
      FieldName = 'l5'
    end
    object Table15l6: TFloatField
      FieldName = 'l6'
    end
    object Table15l7: TFloatField
      FieldName = 'l7'
    end
    object Table15l8: TFloatField
      FieldName = 'l8'
    end
    object Table15l9: TFloatField
      FieldName = 'l9'
    end
    object Table15l10: TFloatField
      FieldName = 'l10'
    end
    object Table15l11: TFloatField
      FieldName = 'l11'
    end
    object Table15l12: TFloatField
      FieldName = 'l12'
    end
    object Table15g1: TFloatField
      FieldName = 'g1'
    end
    object Table15g2: TFloatField
      FieldName = 'g2'
    end
    object Table15g3: TFloatField
      FieldName = 'g3'
    end
    object Table15g4: TFloatField
      FieldName = 'g4'
    end
    object Table15g5: TFloatField
      FieldName = 'g5'
    end
    object Table15g6: TFloatField
      FieldName = 'g6'
    end
    object Table15g7: TFloatField
      FieldName = 'g7'
    end
    object Table15g8: TFloatField
      FieldName = 'g8'
    end
    object Table15g9: TFloatField
      FieldName = 'g9'
    end
    object Table15g10: TFloatField
      FieldName = 'g10'
    end
    object Table15g11: TFloatField
      FieldName = 'g11'
    end
    object Table15g12: TFloatField
      FieldName = 'g12'
    end
    object Table15codpot: TIntegerField
      FieldName = 'codpot'
    end
    object Table15nomstr: TFloatField
      FieldName = 'nomstr'
    end
    object Table15smrab: TIntegerField
      FieldName = 'smrab'
    end
    object Table15gos: TIntegerField
      FieldName = 'gos'
    end
    object Table15flag: TIntegerField
      FieldName = 'flag'
    end
  end
  object DataSource14: TDataSource
    DataSet = Table14
    Left = 377
    Top = 56
  end
  object Table14: TTable
    DatabaseName = 'database1'
    FieldDefs = <
      item
        Name = 'cod'
        DataType = ftInteger
      end
      item
        Name = 'codk'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'codcik'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'codkom'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'naim'
        Attributes = [faFixed]
        DataType = ftString
        Size = 150
      end
      item
        Name = 'naimk'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'coddel'
        DataType = ftInteger
      end
      item
        Name = 'coddelp'
        DataType = ftInteger
      end
      item
        Name = 'student'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'cod'
        Options = [ixUnique]
      end
      item
        Name = 'diccafed'
        Fields = 'codk;codcik;codkom;naim'
      end
      item
        Name = 'diccafed1'
        Fields = 'codk'
      end
      item
        Name = 'diccafedn'
        Fields = 'naim'
      end
      item
        Name = 'coddis'
        Fields = 'naim;codcik;codkom'
      end
      item
        Name = 'codkaf'
        Fields = 'cod;codk'
      end>
    IndexName = 'coddis'
    StoreDefs = True
    TableName = 'diccafed'
    Left = 455
    Top = 56
    object Table14cod: TIntegerField
      FieldName = 'cod'
    end
    object Table14codk: TStringField
      FieldName = 'codk'
      FixedChar = True
      Size = 4
    end
    object Table14codcik: TStringField
      FieldName = 'codcik'
      FixedChar = True
      Size = 3
    end
    object Table14codkom: TStringField
      FieldName = 'codkom'
      FixedChar = True
      Size = 1
    end
    object Table14naim: TStringField
      FieldName = 'naim'
      FixedChar = True
      Size = 150
    end
    object Table14naimk: TStringField
      FieldName = 'naimk'
      FixedChar = True
      Size = 40
    end
    object Table14coddel: TIntegerField
      FieldName = 'coddel'
    end
    object Table14coddelp: TIntegerField
      FieldName = 'coddelp'
    end
    object Table14student: TIntegerField
      FieldName = 'student'
    end
  end
  object DataSource22: TDataSource
    DataSet = Table22
    Left = 88
    Top = 56
  end
  object Table22: TTable
    OnCalcFields = Table22CalcFields
    DatabaseName = 'database1'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'cod'
        DataType = ftFloat
      end
      item
        Name = 'fam'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'otch'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'fio'
        Attributes = [faFixed]
        DataType = ftString
        Size = 120
      end
      item
        Name = 'codk'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'coduch'
        DataType = ftInteger
      end
      item
        Name = 'codzvan'
        DataType = ftInteger
      end
      item
        Name = 'coddol'
        DataType = ftInteger
      end
      item
        Name = 'codnaim'
        DataType = ftInteger
      end
      item
        Name = 'codnation'
        DataType = ftInteger
      end
      item
        Name = 'pol'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'codkateg'
        DataType = ftInteger
      end
      item
        Name = 'datarog'
        DataType = ftDate
      end
      item
        Name = 'adress'
        Attributes = [faFixed]
        DataType = ftString
        Size = 150
      end
      item
        Name = 'phone'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'naguch'
        DataType = ftFloat
      end
      item
        Name = 'datapr'
        DataType = ftDate
      end
      item
        Name = 'datauv'
        DataType = ftDate
      end
      item
        Name = 'uchsov'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'id'
        Options = [ixUnique]
      end
      item
        Name = 'cod'
        Fields = 'cod'
      end
      item
        Name = 'fio'
        Fields = 'fam;name;otch'
      end
      item
        Name = 'fionaim'
        Fields = 'fio;codnaim'
      end
      item
        Name = 'fio1'
        Fields = 'fio'
      end
      item
        Name = 'fiouchsov'
        Fields = 'fio;uchsov'
      end
      item
        Name = 'poln'
        Fields = 'fam;name;otch;codk;coddol;datarog'
      end
      item
        Name = 'fionaimid'
        Fields = 'fio;codnaim;id'
      end>
    IndexName = 'cod'
    StoreDefs = True
    TableName = 'prepodav'
    Left = 160
    Top = 56
    object Table22id: TIntegerField
      FieldName = 'id'
    end
    object Table22cod: TFloatField
      FieldName = 'cod'
    end
    object Table22fam: TStringField
      FieldName = 'fam'
      FixedChar = True
      Size = 40
    end
    object Table22name: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 40
    end
    object Table22otch: TStringField
      FieldName = 'otch'
      FixedChar = True
      Size = 40
    end
    object Table22fio: TStringField
      FieldName = 'fio'
      FixedChar = True
      Size = 120
    end
    object Table22codk: TStringField
      FieldName = 'codk'
      FixedChar = True
      Size = 4
    end
    object Table22coduch: TIntegerField
      FieldName = 'coduch'
    end
    object Table22codzvan: TIntegerField
      FieldName = 'codzvan'
    end
    object Table22coddol: TIntegerField
      FieldName = 'coddol'
    end
    object Table22codnaim: TIntegerField
      FieldName = 'codnaim'
    end
    object Table22codnation: TIntegerField
      FieldName = 'codnation'
    end
    object Table22pol: TStringField
      FieldName = 'pol'
      FixedChar = True
      Size = 1
    end
    object Table22codkateg: TIntegerField
      FieldName = 'codkateg'
    end
    object Table22datarog: TDateField
      FieldName = 'datarog'
    end
    object Table22adress: TStringField
      FieldName = 'adress'
      FixedChar = True
      Size = 150
    end
    object Table22phone: TStringField
      FieldName = 'phone'
      FixedChar = True
      Size = 12
    end
    object Table22naguch: TFloatField
      FieldName = 'naguch'
    end
    object Table22datapr: TDateField
      FieldName = 'datapr'
    end
    object Table22datauv: TDateField
      FieldName = 'datauv'
    end
    object Table22uchsov: TIntegerField
      FieldName = 'uchsov'
    end
    object Table22fiopoja: TStringField
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'fiopoja'
      Size = 60
      Calculated = True
    end
  end
  object DataSource23: TDataSource
    DataSet = Table23
    Left = 535
    Top = 56
  end
  object Table23: TTable
    DatabaseName = 'database1'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'cod'
        DataType = ftFloat
      end
      item
        Name = 'coduchp'
        DataType = ftInteger
      end
      item
        Name = 'coddis'
        DataType = ftInteger
      end
      item
        Name = 'prlek'
        DataType = ftInteger
      end
      item
        Name = 'prlab'
        DataType = ftInteger
      end
      item
        Name = 'prprak'
        DataType = ftInteger
      end
      item
        Name = 'prksr'
        DataType = ftInteger
      end
      item
        Name = 'codk'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'year'
        DataType = ftInteger
      end
      item
        Name = 'semester'
        DataType = ftInteger
      end
      item
        Name = 'codgr'
        DataType = ftInteger
      end
      item
        Name = 'codpot'
        DataType = ftInteger
      end
      item
        Name = 'utver'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'id'
        Options = [ixUnique]
      end
      item
        Name = 'cod'
        Fields = 'cod'
      end
      item
        Name = 'grdislab'
        Fields = 'codgr;coddis;prlab'
      end
      item
        Name = 'grdisprak'
        Fields = 'codgr;coddis;prprak'
      end
      item
        Name = 'grdislek'
        Fields = 'codgr;coddis;prlek'
      end
      item
        Name = 'potlab'
        Fields = 'codpot;prlek'
      end
      item
        Name = 'potprak'
        Fields = 'codpot;prprak'
      end
      item
        Name = 'grdislabsem'
        Fields = 'codgr;coddis;prlab;semester'
      end
      item
        Name = 'grdispraksem'
        Fields = 'codgr;coddis;prprak;semester'
      end
      item
        Name = 'codid'
        Fields = 'cod;id'
      end
      item
        Name = 'grdisid'
        Fields = 'codgr;coddis;id'
      end
      item
        Name = 'disyearsem'
        Fields = 'coddis;year;semester'
      end>
    IndexName = 'cod'
    StoreDefs = True
    TableName = 'dicprepod'
    Left = 612
    Top = 56
    object Table23id: TIntegerField
      FieldName = 'id'
    end
    object Table23cod: TFloatField
      FieldName = 'cod'
    end
    object Table23coduchp: TIntegerField
      FieldName = 'coduchp'
    end
    object Table23coddis: TIntegerField
      FieldName = 'coddis'
    end
    object Table23prlek: TIntegerField
      FieldName = 'prlek'
    end
    object Table23prlab: TIntegerField
      FieldName = 'prlab'
    end
    object Table23prprak: TIntegerField
      FieldName = 'prprak'
    end
    object Table23prksr: TIntegerField
      FieldName = 'prksr'
    end
    object Table23codk: TStringField
      FieldName = 'codk'
      FixedChar = True
      Size = 4
    end
    object Table23year: TIntegerField
      FieldName = 'year'
    end
    object Table23semester: TIntegerField
      FieldName = 'semester'
    end
    object Table23codgr: TIntegerField
      FieldName = 'codgr'
    end
    object Table23codpot: TIntegerField
      FieldName = 'codpot'
    end
    object Table23utver: TIntegerField
      FieldName = 'utver'
    end
  end
  object DataSource_w8: TDataSource
    DataSet = Table_w8
    Left = 377
    Top = 160
  end
  object DataSource_w10: TDataSource
    DataSet = Table_w10
    Left = 534
    Top = 160
  end
  object Table_w10: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'spgrup'
        DataType = ftInteger
      end
      item
        Name = 'sem'
        DataType = ftInteger
      end
      item
        Name = 'spdisc'
        DataType = ftInteger
      end
      item
        Name = 'spprepod'
        DataType = ftInteger
      end
      item
        Name = 'godpr'
        DataType = ftInteger
      end
      item
        Name = 'coduchp'
        DataType = ftInteger
      end
      item
        Name = 'ekz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'zach'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'kr'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'kp'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'houres'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'prepod'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'spsessia'
        DataType = ftInteger
      end
      item
        Name = 'ves'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'grupsem'
        Fields = 'spgrup;sem'
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'uchsessia'
    Left = 610
    Top = 160
    object Table_w10grup: TStringField
      FieldKind = fkLookup
      FieldName = 'grup'
      LookupDataSet = Table_w37
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'spgrup'
      Size = 10
      Lookup = True
    end
    object Table_w10discip: TStringField
      FieldKind = fkLookup
      FieldName = 'discip'
      LookupDataSet = Table14
      LookupKeyFields = 'cod'
      LookupResultField = 'naim'
      KeyFields = 'spdisc'
      Size = 50
      Lookup = True
    end
    object Table_w10pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w10spgrup: TIntegerField
      FieldName = 'spgrup'
    end
    object Table_w10sem: TIntegerField
      FieldName = 'sem'
    end
    object Table_w10spdisc: TIntegerField
      FieldName = 'spdisc'
    end
    object Table_w10spprepod: TIntegerField
      FieldName = 'spprepod'
    end
    object Table_w10godpr: TIntegerField
      FieldName = 'godpr'
    end
    object Table_w10coduchp: TIntegerField
      FieldName = 'coduchp'
    end
    object Table_w10ekz: TStringField
      FieldName = 'ekz'
      FixedChar = True
      Size = 1
    end
    object Table_w10zach: TStringField
      FieldName = 'zach'
      FixedChar = True
      Size = 1
    end
    object Table_w10kr: TStringField
      FieldName = 'kr'
      FixedChar = True
      Size = 1
    end
    object Table_w10kp: TStringField
      FieldName = 'kp'
      FixedChar = True
      Size = 1
    end
    object Table_w10houres: TStringField
      FieldName = 'houres'
      FixedChar = True
      Size = 15
    end
    object Table_w10prepod: TStringField
      FieldName = 'prepod'
      FixedChar = True
      Size = 50
    end
    object Table_w10spsessia: TIntegerField
      FieldName = 'spsessia'
    end
    object Table_w10ves: TFloatField
      FieldName = 'ves'
    end
    object Table_w10fio: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'fio'
      LookupDataSet = Table22
      LookupKeyFields = 'id'
      LookupResultField = 'fio'
      KeyFields = 'spprepod'
      Size = 40
      Lookup = True
    end
  end
  object Table_w12: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'acc'
        DataType = ftInteger
      end
      item
        Name = 'marks'
        DataType = ftInteger
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'spkontr'
        DataType = ftInteger
      end
      item
        Name = 'rsem'
        DataType = ftInteger
      end
      item
        Name = 'rekzzach'
        DataType = ftInteger
      end
      item
        Name = 'ritog'
        DataType = ftInteger
      end
      item
        Name = 'uchsessia'
        DataType = ftInteger
      end
      item
        Name = 'datavv'
        DataType = ftDate
      end
      item
        Name = 'datazp'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'idxsucsmark'
        Fields = 'marks'
      end
      item
        Name = 'accsess'
        Fields = 'acc;uchsessia'
      end
      item
        Name = 'sessia'
        Fields = 'uchsessia'
      end
      item
        Name = 'accsesskont'
        Fields = 'acc;uchsessia;spkontr'
      end>
    IndexName = 'accsess'
    StoreDefs = True
    TableName = 'uchsucs'
    Left = 152
    Top = 216
    object Table_w12acc: TIntegerField
      FieldName = 'acc'
    end
    object Table_w12marks: TIntegerField
      FieldName = 'marks'
    end
    object Table_w12priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w12fio: TStringField
      FieldKind = fkLookup
      FieldName = 'fio'
      LookupDataSet = Table_w1
      LookupKeyFields = 'pin'
      LookupResultField = 'fio'
      KeyFields = 'acc'
      Size = 50
      Lookup = True
    end
    object Table_w12spkontr: TIntegerField
      FieldName = 'spkontr'
    end
    object Table_w12rsem: TIntegerField
      FieldName = 'rsem'
    end
    object Table_w12rekzzach: TIntegerField
      FieldName = 'rekzzach'
    end
    object Table_w12ritog: TIntegerField
      FieldName = 'ritog'
    end
    object Table_w12uchsessia: TIntegerField
      FieldName = 'uchsessia'
    end
    object Table_w12ocenka: TStringField
      FieldKind = fkLookup
      FieldName = 'ocenka'
      LookupDataSet = Table_w12m
      LookupKeyFields = 'pin'
      LookupResultField = 'name'
      KeyFields = 'marks'
      Lookup = True
    end
    object Table_w12datavv: TDateField
      FieldName = 'datavv'
    end
    object Table_w12datazp: TDateField
      FieldName = 'datazp'
    end
    object Table_w12ves: TFloatField
      FieldKind = fkLookup
      FieldName = 'ves'
      LookupDataSet = Table_w10
      LookupKeyFields = 'pin'
      LookupResultField = 'ves'
      KeyFields = 'uchsessia'
      Lookup = True
    end
  end
  object DataSource_w12: TDataSource
    DataSet = Table_w12
    Left = 88
    Top = 216
  end
  object Table_w11: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'begdate'
        DataType = ftDate
      end
      item
        Name = 'enddate'
        DataType = ftDate
      end
      item
        Name = 'goduch'
        DataType = ftInteger
      end
      item
        Name = 'spotd'
        DataType = ftInteger
      end
      item
        Name = 'spspec'
        DataType = ftInteger
      end
      item
        Name = 'kurs'
        DataType = ftSmallint
      end
      item
        Name = 'spfak'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'fospec'
        Fields = 'spotd;spspec;begdate'
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'spsessia'
    Left = 303
    Top = 216
    object Table_w11pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w11name: TStringField
      FieldName = 'name'
      FixedChar = True
    end
    object Table_w11begdate: TDateField
      FieldName = 'begdate'
    end
    object Table_w11enddate: TDateField
      FieldName = 'enddate'
    end
    object Table_w11goduch: TIntegerField
      FieldName = 'goduch'
    end
    object Table_w11spotd: TIntegerField
      FieldName = 'spotd'
    end
    object Table_w11spspec: TIntegerField
      FieldName = 'spspec'
    end
    object Table_w11kurs: TSmallintField
      FieldName = 'kurs'
    end
    object Table_w11spec: TStringField
      FieldKind = fkLookup
      FieldName = 'spec'
      LookupDataSet = Table_w35
      LookupKeyFields = 'pin'
      LookupResultField = 'sname'
      KeyFields = 'spspec'
      Size = 5
      Lookup = True
    end
    object Table_w11spfak: TIntegerField
      FieldName = 'spfak'
    end
  end
  object DataSource_w11: TDataSource
    DataSet = Table_w11
    Left = 232
    Top = 216
  end
  object Table_w12h: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'acc'
        DataType = ftInteger
      end
      item
        Name = 'uchsessia'
        DataType = ftInteger
      end
      item
        Name = 'spkontr'
        DataType = ftInteger
      end
      item
        Name = 'datesd'
        DataType = ftDate
      end
      item
        Name = 'ball'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'hisass'
        Fields = 'acc;uchsessia;spkontr;datesd'
      end>
    IndexName = 'hisass'
    StoreDefs = True
    TableName = 'hissessia'
    Left = 610
    Top = 216
    object Table_w12hacc: TIntegerField
      FieldName = 'acc'
    end
    object Table_w12huchsessia: TIntegerField
      FieldName = 'uchsessia'
    end
    object Table_w12hspkontr: TIntegerField
      FieldName = 'spkontr'
    end
    object Table_w12hdatesd: TDateField
      FieldName = 'datesd'
    end
    object Table_w12hball: TIntegerField
      FieldName = 'ball'
    end
  end
  object DataSource_w12h: TDataSource
    DataSet = Table_w12h
    Left = 534
    Top = 216
  end
  object Table_w11k: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'spkontr'
    Left = 455
    Top = 216
    object Table_w11kpin: TIntegerField
      FieldName = 'pin'
    end
    object Table_w11kname: TStringField
      FieldName = 'name'
      Size = 14
    end
    object Table_w11kpriz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource_w11k: TDataSource
    DataSet = Table_w11k
    Left = 377
    Top = 216
  end
  object Table_w12m: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'spkontr'
        DataType = ftInteger
      end
      item
        Name = 'ocenka'
        DataType = ftSmallint
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'to5'
        DataType = ftSmallint
      end
      item
        Name = 'vid'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'idxmarkkontr'
        Fields = 'spkontr'
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'marks'
    Left = 160
    Top = 264
    object IntegerField1: TIntegerField
      FieldName = 'pin'
    end
    object StringField1: TStringField
      FieldName = 'name'
      Size = 14
    end
    object StringField2: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table_w12mspkontr: TIntegerField
      FieldName = 'spkontr'
    end
    object Table_w12mocenka: TSmallintField
      FieldName = 'ocenka'
    end
    object Table_w12mto5: TSmallintField
      FieldName = 'to5'
    end
    object Table_w12mvid: TStringField
      FieldName = 'vid'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource_w12m: TDataSource
    DataSet = Table_w12m
    Left = 88
    Top = 264
  end
  object DataSource_r1: TDataSource
    DataSet = shablreit
    Left = 536
    Top = 471
  end
  object shablreit: TTable
    OnCalcFields = Table_w37CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'prepod'
        DataType = ftFloat
      end
      item
        Name = 'disc'
        DataType = ftInteger
      end
      item
        Name = 'polg'
        DataType = ftInteger
      end
      item
        Name = 'grup'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'id'
        Options = [ixUnique]
      end
      item
        Name = 'idxPrepod'
        Fields = 'prepod'
      end
      item
        Name = 'idxDisc'
        Fields = 'disc'
      end
      item
        Name = 'idxGrup'
        Fields = 'grup'
      end
      item
        Name = 'idxPDPG'
        Fields = 'prepod;disc;polg;grup'
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'shablreit'
    Left = 617
    Top = 471
    object shablreitid: TIntegerField
      FieldName = 'id'
    end
    object shablreitprepod: TFloatField
      FieldName = 'prepod'
    end
    object shablreitdisc: TIntegerField
      FieldName = 'disc'
    end
    object shablreitpolg: TIntegerField
      FieldName = 'polg'
    end
    object shablreitgrup: TIntegerField
      FieldName = 'grup'
    end
  end
  object config_rii: TTable
    OnCalcFields = Table_w4CalcFields
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'varname'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'varvalue'
        Attributes = [faFixed]
        DataType = ftString
        Size = 24
      end
      item
        Name = 'varcoment'
        Attributes = [faFixed]
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end
      item
        Name = 'varnam'
        Fields = 'varname'
      end>
    IndexName = 'PRIMARY'
    StoreDefs = True
    TableName = 'config_rii'
    Left = 762
    Top = 112
    object config_riipin: TIntegerField
      FieldName = 'pin'
    end
    object config_riivarname: TStringField
      FieldName = 'varname'
      FixedChar = True
      Size = 12
    end
    object config_riivarvalue: TStringField
      FieldName = 'varvalue'
      FixedChar = True
      Size = 24
    end
    object config_riivarcoment: TStringField
      FieldName = 'varcoment'
      FixedChar = True
      Size = 32
    end
  end
  object DataSource_cr: TDataSource
    DataSet = config_rii
    Left = 686
    Top = 112
  end
  object svidet: TTable
    OnCalcFields = baza_hCalcFields
    DatabaseName = 'database3'
    FieldDefs = <
      item
        Name = 'auto'
        DataType = ftInteger
      end
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'pr'
        DataType = ftInteger
      end
      item
        Name = 'oc'
        DataType = ftFloat
      end
      item
        Name = 'nomer'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'auto'
        Options = [ixUnique]
      end
      item
        Name = 'pin'
        Fields = 'pin'
      end
      item
        Name = 'pr'
        Fields = 'pr'
      end
      item
        Name = 'PINPR'
        Fields = 'pin;pr'
      end>
    StoreDefs = True
    TableName = 'svidet'
    Left = 323
    Top = 584
    object svidetauto: TIntegerField
      FieldName = 'auto'
    end
    object svidetpin: TIntegerField
      FieldName = 'pin'
    end
    object svidetpr: TIntegerField
      FieldName = 'pr'
    end
    object svidetoc: TFloatField
      FieldName = 'oc'
    end
    object svidetnomer: TStringField
      FieldName = 'nomer'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource_ab6: TDataSource
    DataSet = svidet
    Left = 227
    Top = 584
  end
  object sdekz: TTable
    OnCalcFields = baza_hCalcFields
    DatabaseName = 'database3'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'vid'
        DataType = ftInteger
      end
      item
        Name = 'lt'
        DataType = ftInteger
      end
      item
        Name = 'ct'
        DataType = ftFloat
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'posinege'
        DataType = ftInteger
      end
      item
        Name = 'nabpr'
        DataType = ftInteger
      end
      item
        Name = 'nabpr1'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'sdekz'
    Left = 499
    Top = 584
    object sdekzpin: TIntegerField
      FieldName = 'pin'
    end
    object sdekzname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 40
    end
    object sdekzvid: TIntegerField
      FieldName = 'vid'
    end
    object sdekzlt: TIntegerField
      FieldName = 'lt'
    end
    object sdekzct: TFloatField
      FieldName = 'ct'
    end
    object sdekzpriz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object sdekzposinege: TIntegerField
      FieldName = 'posinege'
    end
    object sdekznabpr: TIntegerField
      FieldName = 'nabpr'
    end
    object sdekznabpr1: TIntegerField
      FieldName = 'nabpr1'
    end
  end
  object DataSource_ab7: TDataSource
    DataSet = sdekz
    Left = 407
    Top = 584
  end
  object DataSource_wr: TDataSource
    DataSet = Table_wr
    Left = 694
    Top = 160
  end
  object Table_wr: TTable
    DatabaseName = 'database2'
    FieldDefs = <
      item
        Name = 'acc'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'codbar'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'spgrup'
        DataType = ftInteger
      end
      item
        Name = 'rbar'
        DataType = ftInteger
      end
      item
        Name = 'kurs'
        DataType = ftInteger
      end
      item
        Name = 'r1'
        DataType = ftInteger
      end
      item
        Name = 'r2'
        DataType = ftInteger
      end
      item
        Name = 'r3'
        DataType = ftInteger
      end
      item
        Name = 'r4'
        DataType = ftInteger
      end
      item
        Name = 'r5'
        DataType = ftInteger
      end
      item
        Name = 'r6'
        DataType = ftInteger
      end
      item
        Name = 'r7'
        DataType = ftInteger
      end
      item
        Name = 'r8'
        DataType = ftInteger
      end
      item
        Name = 'r9'
        DataType = ftInteger
      end
      item
        Name = 'r10'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'acc'
        Fields = 'acc'
      end
      item
        Name = 'codbar'
        Fields = 'codbar'
      end>
    IndexName = 'acc'
    StoreDefs = True
    TableName = 'accreiting'
    Left = 762
    Top = 160
    object Table_wracc: TIntegerField
      FieldName = 'acc'
      Required = True
    end
    object Table_wrcodbar: TStringField
      FieldName = 'codbar'
      FixedChar = True
      Size = 12
    end
    object Table_wrspgrup: TIntegerField
      FieldName = 'spgrup'
    end
    object Table_wrrbar: TIntegerField
      FieldName = 'rbar'
    end
    object Table_wrkurs: TIntegerField
      FieldName = 'kurs'
    end
    object Table_wrr1: TIntegerField
      FieldName = 'r1'
    end
    object Table_wrr2: TIntegerField
      FieldName = 'r2'
    end
    object Table_wrr3: TIntegerField
      FieldName = 'r3'
    end
    object Table_wrr4: TIntegerField
      FieldName = 'r4'
    end
    object Table_wrr5: TIntegerField
      FieldName = 'r5'
    end
    object Table_wrr6: TIntegerField
      FieldName = 'r6'
    end
    object Table_wrr7: TIntegerField
      FieldName = 'r7'
    end
    object Table_wrr8: TIntegerField
      FieldName = 'r8'
    end
    object Table_wrr9: TIntegerField
      FieldName = 'r9'
    end
    object Table_wrr10: TIntegerField
      FieldName = 'r10'
    end
    object Table_wrfio: TStringField
      FieldKind = fkLookup
      FieldName = 'fio'
      LookupDataSet = Table_w1
      LookupKeyFields = 'pin'
      LookupResultField = 'fio'
      KeyFields = 'acc'
      Size = 50
      Lookup = True
    end
  end
  object Database4: TDatabase
    AliasName = 'platn'
    DatabaseName = 'database4'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=work_pla')
    SessionName = 'Default'
    Left = 16
    Top = 656
  end
  object Table6_3: TTable
    DatabaseName = 'database4'
    TableName = 'planopl'
    Left = 96
    Top = 656
    object Table6_3pin: TIntegerField
      FieldName = 'pin'
    end
    object Table6_3sprotd: TIntegerField
      FieldName = 'sprotd'
    end
    object Table6_3uchgod: TIntegerField
      FieldName = 'uchgod'
    end
    object Table6_3sprfak: TStringField
      FieldName = 'sprfak'
      FixedChar = True
      Size = 5
    end
    object Table6_3sprspec: TStringField
      FieldName = 'sprspec'
      FixedChar = True
      Size = 9
    end
    object Table6_3kurs: TIntegerField
      FieldName = 'kurs'
    end
    object Table6_3perbeg: TDateField
      FieldName = 'perbeg'
    end
    object Table6_3perend: TDateField
      FieldName = 'perend'
    end
    object Table6_3summa: TFloatField
      FieldName = 'summa'
    end
    object Table6_3prim: TStringField
      FieldName = 'prim'
      FixedChar = True
      Size = 64
    end
  end
  object Table3_3: TTable
    DatabaseName = 'database4'
    TableName = 'platej'
    Left = 152
    Top = 656
    object Table3_3pin: TIntegerField
      FieldName = 'pin'
    end
    object Table3_3acc: TIntegerField
      FieldName = 'acc'
    end
    object Table3_3sprvdoc: TIntegerField
      FieldName = 'sprvdoc'
    end
    object Table3_3summa: TFloatField
      FieldName = 'summa'
    end
    object Table3_3d_o: TDateField
      FieldName = 'd_o'
    end
    object Table3_3uch_god: TIntegerField
      FieldName = 'uch_god'
    end
    object Table3_3vz: TStringField
      FieldName = 'vz'
      FixedChar = True
      Size = 24
    end
    object Table3_3priz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object Table3_3isp: TIntegerField
      FieldName = 'isp'
    end
    object Table3_3ndoc: TIntegerField
      FieldName = 'ndoc'
    end
    object Table3_3ndoctmp: TStringField
      FieldName = 'ndoctmp'
      FixedChar = True
      Size = 10
    end
  end
  object qtmp_platn: TQuery
    DatabaseName = 'database4'
    Left = 368
    Top = 656
  end
  object tcurrentost: TTable
    DatabaseName = 'database4'
    TableName = 'currentost'
    Left = 216
    Top = 656
    object tcurrentostpin: TIntegerField
      FieldName = 'pin'
    end
    object tcurrentostacc: TIntegerField
      FieldName = 'acc'
    end
    object tcurrentostsumma: TFloatField
      FieldName = 'summa'
    end
    object tcurrentostspisan: TIntegerField
      FieldName = 'spisan'
    end
  end
  object qtmp: TQuery
    DatabaseName = 'database2'
    Left = 312
    Top = 656
  end
  object Table1_3: TTable
    DatabaseName = 'database4'
    TableName = 'accdog'
    Left = 472
    Top = 656
    object Table1_3pin: TIntegerField
      FieldName = 'pin'
    end
    object Table1_3plat: TIntegerField
      FieldName = 'plat'
    end
    object Table1_3nomdog: TStringField
      FieldName = 'nomdog'
      FixedChar = True
      Size = 10
    end
    object Table1_3summ: TFloatField
      FieldName = 'summ'
    end
    object Table1_3begdog: TDateField
      FieldName = 'begdog'
    end
    object Table1_3enddog: TDateField
      FieldName = 'enddog'
    end
    object Table1_3period: TIntegerField
      FieldName = 'period'
    end
    object Table1_3acc: TIntegerField
      FieldName = 'acc'
    end
    object Table1_3lastdog: TStringField
      FieldName = 'lastdog'
      FixedChar = True
      Size = 1
    end
    object Table1_3spotd: TIntegerField
      FieldName = 'spotd'
    end
    object Table1_3spfak: TIntegerField
      FieldName = 'spfak'
    end
    object Table1_3spspec: TIntegerField
      FieldName = 'spspec'
    end
    object Table1_3kurs: TIntegerField
      FieldName = 'kurs'
    end
    object Table1_3srokd: TDateField
      FieldName = 'srokd'
    end
    object Table1_3rastorg: TIntegerField
      FieldName = 'rastorg'
    end
    object Table1_3datedog: TDateField
      FieldName = 'datedog'
    end
  end
  object tactcor: TTable
    DatabaseName = 'database4'
    TableName = 'actcor'
    Left = 544
    Top = 656
    object tactcorpin: TIntegerField
      FieldName = 'pin'
    end
    object tactcoracc: TIntegerField
      FieldName = 'acc'
    end
    object tactcoraktnom: TIntegerField
      FieldName = 'aktnom'
    end
    object tactcoraktdate: TDateField
      FieldName = 'aktdate'
    end
    object tactcorvid: TStringField
      FieldName = 'vid'
      FixedChar = True
      Size = 1
    end
    object tactcorbegper: TDateField
      FieldName = 'begper'
    end
    object tactcorendper: TDateField
      FieldName = 'endper'
    end
    object tactcorsumma: TFloatField
      FieldName = 'summa'
    end
    object tactcorosnovanie: TStringField
      FieldName = 'osnovanie'
      FixedChar = True
      Size = 150
    end
    object tactcorreason: TStringField
      FieldName = 'reason'
      FixedChar = True
      Size = 250
    end
  end
  object tzabalans: TTable
    DatabaseName = 'database4'
    TableName = 'zabalans'
    Left = 608
    Top = 656
    object tzabalanspin: TIntegerField
      FieldName = 'pin'
    end
    object tzabalansprik: TIntegerField
      FieldName = 'prik'
    end
    object tzabalansevent: TIntegerField
      FieldName = 'event'
    end
    object tzabalansdoc: TIntegerField
      FieldName = 'doc'
    end
    object tzabalanssumma: TFloatField
      FieldName = 'summa'
    end
    object tzabalansdat: TDateField
      FieldName = 'dat'
    end
  end
  object tprikspis: TTable
    DatabaseName = 'database4'
    TableName = 'prik_spis'
    Left = 664
    Top = 656
    object tprikspispin: TIntegerField
      FieldName = 'pin'
    end
    object tprikspisacc: TIntegerField
      FieldName = 'acc'
    end
    object tprikspisnom: TStringField
      FieldName = 'nom'
      FixedChar = True
      Size = 10
    end
    object tprikspisdata: TDateField
      FieldName = 'data'
    end
    object tprikspissumma: TFloatField
      FieldName = 'summa'
    end
    object tprikspisd_spis: TDateField
      FieldName = 'd_spis'
    end
    object tprikspisvid: TIntegerField
      FieldName = 'vid'
    end
    object tprikspispindoc: TIntegerField
      FieldName = 'pindoc'
    end
  end
  object qtmp_abitu: TQuery
    DatabaseName = 'database3'
    Left = 712
    Top = 656
  end
  object snvnek: TTable
    DatabaseName = 'database3'
    FieldDefs = <
      item
        Name = 'pin'
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faFixed]
        DataType = ftString
        Size = 28
      end
      item
        Name = 'Pname'
        Attributes = [faFixed]
        DataType = ftString
        Size = 46
      end
      item
        Name = 'priz'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'PRIMARY'
        Fields = 'pin'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'snvnek'
    Left = 651
    Top = 584
    object snvnekpin: TIntegerField
      FieldName = 'pin'
    end
    object snvnekname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 28
    end
    object snvnekPname: TStringField
      FieldName = 'Pname'
      FixedChar = True
      Size = 46
    end
    object snvnekpriz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource_ab8: TDataSource
    DataSet = snvnek
    Left = 567
    Top = 584
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 944
    Top = 168
  end
  object Query4: TQuery
    DatabaseName = 'database2'
    Left = 896
    Top = 168
  end
  object Table_p41: TTable
    DatabaseName = 'database4'
    TableName = 'common'
    Left = 784
    Top = 656
    object Table_p41pin: TIntegerField
      FieldName = 'pin'
    end
    object Table_p41naim: TStringField
      FieldName = 'naim'
      FixedChar = True
      Size = 41
    end
    object Table_p41shortname: TStringField
      FieldName = 'shortname'
      FixedChar = True
    end
    object Table_p41adress: TStringField
      FieldName = 'adress'
      FixedChar = True
      Size = 120
    end
    object Table_p41okonh: TStringField
      FieldName = 'okonh'
      FixedChar = True
      Size = 10
    end
    object Table_p41okpo: TStringField
      FieldName = 'okpo'
      FixedChar = True
      Size = 10
    end
    object Table_p41inn: TStringField
      FieldName = 'inn'
      FixedChar = True
      Size = 14
    end
    object Table_p41rsc: TStringField
      FieldName = 'rsc'
      FixedChar = True
      Size = 25
    end
    object Table_p41ofk: TStringField
      FieldName = 'ofk'
      FixedChar = True
      Size = 40
    end
    object Table_p41ls: TStringField
      FieldName = 'ls'
      FixedChar = True
      Size = 12
    end
    object Table_p41kpp: TStringField
      FieldName = 'kpp'
      FixedChar = True
      Size = 10
    end
    object Table_p41bik: TStringField
      FieldName = 'bik'
      FixedChar = True
      Size = 12
    end
    object Table_p41bnk: TStringField
      FieldName = 'bnk'
      FixedChar = True
      Size = 50
    end
    object Table_p41numdog: TIntegerField
      FieldName = 'numdog'
    end
    object Table_p41regnakkr: TStringField
      FieldName = 'regnakkr'
      FixedChar = True
      Size = 7
    end
    object Table_p41nomakkr: TStringField
      FieldName = 'nomakkr'
      FixedChar = True
      Size = 15
    end
    object Table_p41dateakkr: TDateField
      FieldName = 'dateakkr'
    end
    object Table_p41begakkr: TDateField
      FieldName = 'begakkr'
    end
    object Table_p41endakkr: TDateField
      FieldName = 'endakkr'
    end
    object Table_p41regnomlits: TStringField
      FieldName = 'regnomlits'
      FixedChar = True
      Size = 15
    end
    object Table_p41nomlits: TStringField
      FieldName = 'nomlits'
      FixedChar = True
      Size = 15
    end
    object Table_p41datelits: TDateField
      FieldName = 'datelits'
    end
    object Table_p41litsot: TDateField
      FieldName = 'litsot'
    end
    object Table_p41litsdo: TDateField
      FieldName = 'litsdo'
    end
    object Table_p41dovper: TStringField
      FieldName = 'dovper'
      FixedChar = True
      Size = 50
    end
    object Table_p41dovnom: TStringField
      FieldName = 'dovnom'
      FixedChar = True
      Size = 50
    end
    object Table_p41dovdate: TDateField
      FieldName = 'dovdate'
    end
    object Table_p41glitsnom: TStringField
      FieldName = 'glitsnom'
      FixedChar = True
      Size = 15
    end
    object Table_p41glitsdat: TDateField
      FieldName = 'glitsdat'
    end
    object Table_p41glitsdatb: TDateField
      FieldName = 'glitsdatb'
    end
    object Table_p41glitsdaten: TDateField
      FieldName = 'glitsdaten'
    end
    object Table_p41glitsregn: TStringField
      FieldName = 'glitsregn'
      FixedChar = True
      Size = 7
    end
  end
  object DataSourse_p41: TDataSource
    DataSet = Table_p41
    Left = 840
    Top = 656
  end
  object Query5: TQuery
    DatabaseName = 'database2'
    Left = 896
    Top = 256
  end
  object DataSource3: TDataSource
    DataSet = Query5
    Left = 944
    Top = 256
  end
  object Query6: TQuery
    DatabaseName = 'DataBase1'
    SQL.Strings = (
      
        'select  distinct coddis,coduchp,ekz,zach,kpr,kra,rasz,l1,l2,l3,l' +
        '4,l5,l6,l7,l8,l9,l10,l11,l12,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,' +
        'g12,codpot,'
      'nomstr,smrab,gos,smrab_session'
      ' from uchpldan'
      'where cod<>236203')
    Left = 864
    Top = 328
  end
  object DataSource4: TDataSource
    DataSet = Query6
    Left = 864
    Top = 384
  end
  object Query7: TQuery
    DatabaseName = 'database3'
    Left = 896
    Top = 512
  end
  object DataSource5: TDataSource
    DataSet = Query7
    Left = 904
    Top = 560
  end
  object qry1: TQuery
    DatabaseName = 'DataBase1'
    Left = 728
    Top = 16
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 776
    Top = 24
  end
  object AuxQuery_work_ok: TQuery
    DatabaseName = 'database2'
    Left = 720
    Top = 336
  end
  object AuxQuery: TQuery
    DatabaseName = 'database2'
    SQL.Strings = (
      'SELECT nameruk from spfak')
    Left = 856
    Top = 104
  end
  object TableAccKadr: TTable
    DatabaseName = 'database2'
    TableName = 'acckadr'
    Left = 728
    Top = 256
    object TableAccKadracc: TIntegerField
      FieldName = 'acc'
    end
    object TableAccKadrspcitiz: TIntegerField
      FieldName = 'spcitiz'
    end
    object TableAccKadrdat_ro: TDateField
      FieldName = 'dat_ro'
    end
    object TableAccKadrmes_ro: TStringField
      FieldName = 'mes_ro'
      Size = 80
    end
    object TableAccKadrspksiva: TIntegerField
      FieldName = 'spksiva'
    end
    object TableAccKadrpasnum: TStringField
      FieldName = 'pasnum'
      Size = 15
    end
    object TableAccKadrpaswho: TStringField
      FieldName = 'paswho'
      Size = 80
    end
    object TableAccKadrpasdate: TDateField
      FieldName = 'pasdate'
    end
    object TableAccKadrregistr: TStringField
      FieldName = 'registr'
      Size = 80
    end
    object TableAccKadraddress: TStringField
      FieldName = 'address'
      Size = 80
    end
    object TableAccKadrphone: TStringField
      FieldName = 'phone'
    end
    object TableAccKadrspschool: TIntegerField
      FieldName = 'spschool'
    end
    object TableAccKadrschoolpr: TStringField
      FieldName = 'schoolpr'
      Size = 14
    end
    object TableAccKadrschoolgod: TSmallintField
      FieldName = 'schoolgod'
    end
    object TableAccKadrhostel: TStringField
      FieldName = 'hostel'
      FixedChar = True
      Size = 1
    end
    object TableAccKadrsex: TStringField
      FieldName = 'sex'
      FixedChar = True
      Size = 1
    end
    object TableAccKadrmarry: TStringField
      FieldName = 'marry'
      FixedChar = True
      Size = 1
    end
    object TableAccKadrfamaly: TStringField
      FieldName = 'famaly'
      Size = 12
    end
    object TableAccKadrspsoc: TIntegerField
      FieldName = 'spsoc'
    end
    object TableAccKadrnamefile: TStringField
      FieldName = 'namefile'
      Size = 120
    end
    object TableAccKadrpriz: TStringField
      FieldName = 'priz'
      FixedChar = True
      Size = 1
    end
    object TableAccKadrsplang: TIntegerField
      FieldName = 'splang'
    end
    object TableAccKadrspkat: TIntegerField
      FieldName = 'spkat'
    end
    object TableAccKadrmesjob: TStringField
      FieldName = 'mesjob'
      Size = 24
    end
    object TableAccKadrdoljob: TStringField
      FieldName = 'doljob'
      Size = 14
    end
    object TableAccKadrteljob: TStringField
      FieldName = 'teljob'
    end
    object TableAccKadraregion1: TIntegerField
      FieldName = 'aregion1'
    end
    object TableAccKadraregion2: TIntegerField
      FieldName = 'aregion2'
    end
    object TableAccKadraregion3: TIntegerField
      FieldName = 'aregion3'
    end
    object TableAccKadraregion4: TIntegerField
      FieldName = 'aregion4'
    end
    object TableAccKadraul: TStringField
      FieldName = 'aul'
      Size = 25
    end
    object TableAccKadrmobphone: TStringField
      FieldName = 'mobphone'
    end
    object TableAccKadrsvpens: TStringField
      FieldName = 'svpens'
      Size = 15
    end
    object TableAccKadrpapa: TStringField
      FieldName = 'papa'
      Size = 45
    end
    object TableAccKadrmama: TStringField
      FieldName = 'mama'
      Size = 45
    end
    object TableAccKadrpapajob: TStringField
      FieldName = 'papajob'
      Size = 100
    end
    object TableAccKadrmamajob: TStringField
      FieldName = 'mamajob'
      Size = 100
    end
    object TableAccKadrdatevv: TDateTimeField
      FieldName = 'datevv'
      Required = True
    end
    object TableAccKadrtipdoc_ob: TIntegerField
      FieldName = 'tipdoc_ob'
    end
    object TableAccKadrdoc_obraz: TStringField
      FieldName = 'doc_obraz'
      FixedChar = True
      Size = 26
    end
    object TableAccKadrpinaccKey: TStringField
      FieldKind = fkLookup
      FieldName = 'pinaccKey'
      LookupDataSet = Table_w1
      LookupKeyFields = 'pin'
      LookupResultField = 'pin'
      KeyFields = 'acc'
      Lookup = True
    end
  end
end

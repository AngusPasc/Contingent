object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 291
  Top = 291
  Height = 443
  Width = 637
  object Database1: TDatabase
    AliasName = 'work'
    DatabaseName = 'database1'
    LoginPrompt = False
    Params.Strings = (
      'user name=work_adm'
      'password=storystory'
      '=')
    SessionName = 'Default'
    Left = 32
    Top = 32
  end
  object Table1: TTable
    DatabaseName = 'database1'
    IndexName = 'cod'
    TableName = 'podrazd'
    Left = 192
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 128
    Top = 32
  end
  object DataSource100: TDataSource
    DataSet = Table100
    Left = 256
    Top = 32
  end
  object DataSource101: TDataSource
    DataSet = Table101
    Left = 384
    Top = 32
  end
  object Table100: TTable
    DatabaseName = 'database1'
    IndexName = 'PRIMARY'
    TableName = 'prog'
    Left = 320
    Top = 32
  end
  object Table101: TTable
    DatabaseName = 'database1'
    TableName = 'userprog'
    Left = 456
    Top = 32
  end
  object Database2: TDatabase
    AliasName = 'blotters'
    Connected = True
    DatabaseName = 'database_w'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=work_adm'
      'password=storystory'
      '=')
    SessionName = 'Default'
    Left = 24
    Top = 96
  end
  object Table_w1: TTable
    DatabaseName = 'database_w'
    IndexName = 'idxaccfam'
    TableName = 'acc'
    Left = 192
    Top = 104
  end
  object Table_w2: TTable
    DatabaseName = 'database_w'
    IndexName = 'idxkadacc'
    TableName = 'acckadr'
    Left = 320
    Top = 104
  end
  object Table_w14: TTable
    DatabaseName = 'database_w'
    TableName = 'spksiva'
    Left = 216
    Top = 176
  end
  object DataSource_w1: TDataSource
    DataSet = Table_w1
    Left = 128
    Top = 104
  end
  object DataSource_w2: TDataSource
    DataSet = Table_w2
    Left = 256
    Top = 104
  end
  object DataSource_w14: TDataSource
    DataSet = Table_w14
    Left = 128
    Top = 176
  end
  object DataSource_w37: TDataSource
    DataSet = Table_w37
    Left = 584
    Top = 296
  end
  object Table_w37: TTable
    DatabaseName = 'database_w'
    TableName = 'spgrup'
    Left = 664
    Top = 296
  end
  object Table_w33: TTable
    DatabaseName = 'database_w'
    TableName = 'spotd'
    Left = 216
    Top = 296
  end
  object DataSource_w33: TDataSource
    DataSet = Table_w33
    Left = 136
    Top = 296
  end
  object DataSource_w34: TDataSource
    DataSet = Table_w34
    Left = 296
    Top = 296
  end
  object Table_w34: TTable
    DatabaseName = 'database_w'
    TableName = 'spfak'
    Left = 368
    Top = 296
  end
  object Table_w35: TTable
    DatabaseName = 'database_w'
    TableName = 'spspec'
    Left = 512
    Top = 296
  end
  object DataSource_w35: TDataSource
    DataSet = Table_w35
    Left = 440
    Top = 296
  end
  object DataSource_w25: TDataSource
    DataSet = Table_w25
    Left = 584
    Top = 240
  end
  object Table_w25: TTable
    DatabaseName = 'database_w'
    TableName = 'spsost'
    Left = 664
    Top = 240
  end
  object Table_w24: TTable
    DatabaseName = 'database_w'
    TableName = 'spstatus'
    Left = 512
    Top = 240
  end
  object DataSource_w24: TDataSource
    DataSet = Table_w24
    Left = 432
    Top = 240
  end
  object DataSource_w18: TDataSource
    DataSet = Table_w18
    Left = 136
    Top = 232
  end
  object Table_w18: TTable
    DatabaseName = 'database_w'
    TableName = 'spcitiz'
    Left = 208
    Top = 232
  end
  object Table_w19: TTable
    DatabaseName = 'database_w'
    TableName = 'spschool'
    Left = 360
    Top = 240
  end
  object Table_w17: TTable
    DatabaseName = 'database_w'
    TableName = 'spsoc'
    Left = 656
    Top = 176
  end
  object DataSource_w19: TDataSource
    DataSet = Table_w19
    Left = 288
    Top = 240
  end
  object DataSource_w17: TDataSource
    DataSet = Table_w17
    Left = 584
    Top = 176
  end
  object DataSource_w15: TDataSource
    DataSet = Table_w15
    Left = 288
    Top = 176
  end
  object Table_w15: TTable
    DatabaseName = 'database_w'
    TableName = 'splang'
    Left = 360
    Top = 176
  end
  object Table_w16: TTable
    DatabaseName = 'database_w'
    TableName = 'spkat'
    Left = 512
    Top = 176
  end
  object DataSource_w16: TDataSource
    DataSet = Table_w16
    Left = 432
    Top = 176
  end
end

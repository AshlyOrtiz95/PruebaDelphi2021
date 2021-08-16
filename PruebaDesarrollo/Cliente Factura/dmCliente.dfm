object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 277
  Width = 477
  object qcliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 176
    Top = 16
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver270.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver270.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'MaxBlobSize=-1'
      'DriverName=MySQL'
      'Database=clientes'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60'
      'HostName=localhost'
      
        'ConnectionString=DriverUnit=Data.DBXMySQL,DriverPackageLoader=TD' +
        'BXDynalinkDriverLoader,DbxCommonDriver270.bpl,DriverAssemblyLoad' +
        'er=Borland.Data.TDBXDynalinkDriverLoader,Borland.Data.DbxCommonD' +
        'river,Version=24.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b' +
        '0d1b1b,MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,Dbx' +
        'MySQLDriver270.bpl,MetaDataAssemblyLoader=Borland.Data.TDBXMySql' +
        'MetaDataCommandFactory,Borland.Data.DbxMySQLDriver,Version=24.0.' +
        '0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b,GetDriverFun' +
        'c=getSQLDriverMYSQL,LibraryName=dbxmys.dll,LibraryNameOsx=libsql' +
        'mys.dylib,VendorLib=LIBMYSQL.dll,VendorLibWin64=libmysql.dll,Ven' +
        'dorLibOsx=libmysqlclient.dylib,User_Name=user,Password=password,' +
        'MaxBlobSize=-1,DriverName=MySQL,Database=clientes,ServerCharSet=' +
        ',BlobSize=-1,ErrorResourceFile=,LocaleCode=0000,Compressed=False' +
        ',Encrypted=False,ConnectTimeout=60,HostName=localhost'
      'User_Name=root'
      'Password=root')
    Connected = True
    Left = 32
    Top = 16
  end
  object SimpleDataSet1: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from cliente order by IdCliente'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 104
    Top = 16
    object SimpleDataSet1IdCliente: TIntegerField
      FieldName = 'IdCliente'
      Required = True
    end
    object SimpleDataSet1NombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 50
    end
    object SimpleDataSet1Direccion: TStringField
      FieldName = 'Direccion'
      Size = 50
    end
  end
  object dsCliente: TDataSource
    DataSet = qcliente
    Left = 248
    Top = 16
  end
end

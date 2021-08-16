object frCliente: TfrCliente
  Left = 0
  Top = 0
  Caption = 'Factura Cliente'
  ClientHeight = 400
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 77
    Height = 13
    Caption = 'Nombre Cliente:'
  end
  object Label2: TLabel
    Left = 24
    Top = 67
    Width = 83
    Height = 13
    Caption = 'Direcci'#243'n Cliente:'
  end
  object Label3: TLabel
    Left = 24
    Top = 29
    Width = 51
    Height = 13
    Caption = 'ID Cliente:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 382
    Height = 97
  end
  object Label4: TLabel
    Left = 152
    Top = 8
    Width = 85
    Height = 13
    Caption = 'DATOS CLIENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 271
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 408
    Top = -3
    Width = 145
    Height = 401
    Caption = 'Panel1'
    TabOrder = 1
  end
  object edID: TEdit
    Left = 120
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edNombreCl: TEdit
    Left = 120
    Top = 48
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object edDireccion: TEdit
    Left = 120
    Top = 72
    Width = 249
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 243
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 271
    Top = 158
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 271
    Top = 186
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 7
    OnClick = Button1Click
  end
  object SQLConnection2: TSQLConnection
    ConnectionName = 'MYSQLConnection'
    DriverName = 'MySQL'
    Params.Strings = (
      'GetDriverFunc=getSQLDriverMYSQL'
      'DriverName=MySQL'
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
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=clientes'
      'User_Name=root'
      'Password=root'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Connected = True
    Left = 256
    Top = 224
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection2
    Left = 336
    Top = 232
  end
end

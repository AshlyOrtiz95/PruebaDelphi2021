unit dmCliente;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.FMTBcd,
  Datasnap.DBClient, SimpleDS, Data.DB, Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    qcliente: TSQLQuery;
    SQLConnection1: TSQLConnection;
    SimpleDataSet1: TSimpleDataSet;
    SimpleDataSet1IdCliente: TIntegerField;
    SimpleDataSet1NombreCliente: TStringField;
    SimpleDataSet1Direccion: TStringField;
    dsCliente: TDataSource;
  private
    { Private declarations }
  public
  //  var
//    function Insertar_cliente(IdCliente, NombreCliente, Direccion) : boolean;
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

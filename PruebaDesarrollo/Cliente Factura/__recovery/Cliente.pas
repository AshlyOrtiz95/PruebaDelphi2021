unit Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Data.DBXMySQL, Data.FMTBcd, Data.SqlExpr;

type
  TfrCliente = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Panel1: TPanel;
    edID: TEdit;
    edNombreCl: TEdit;
    edDireccion: TEdit;
    Button2: TButton;
    SQLConnection2: TSQLConnection;
    SQLQuery1: TSQLQuery;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCliente: TfrCliente;

implementation

{$R *.dfm}
  uses dmCliente;

procedure TfrCliente.Button1Click(Sender: TObject);
var
insertar : string;
begin
SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Insert into cliente (IdCliente,NombreCliente,Direccion) VALUES ("'+edID.Text+'","'+edNombreCl.Text+'","'+edDireccion.Text+'")');
SQLQuery1.ExecSQL();
showMessage('Se registro cliente');

end;

procedure TfrCliente.Button2Click(Sender: TObject);
begin
SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Select IdCliente,NombreCliente,Direccion from cliente where IdCliente='+QuotedStr(edID.Text));
SQLQuery1.Open;

if not SQLQuery1.IsEmpty then
begin
         edNombreCl.Text := SQLQuery1.FieldByName('NombreCliente').AsString;
         edDireccion.Text := SQLQuery1.FieldByName('Direccion').AsString;
         SQLQuery1.Close;
         SQLConnection2.Close;
end
else
begin
 showmessage('no existe');
 SQLQuery1.Close;
 SQLConnection2.Close;
end;
end;

end.

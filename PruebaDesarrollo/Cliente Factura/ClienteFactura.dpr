program ClienteFactura;

uses
  Vcl.Forms,
  Cliente in 'Cliente.pas' {Form1},
  dmCliente in 'dmCliente.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

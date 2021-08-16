unit Salarioempleado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    calcSal: TButton;
    NombreEmp: TEdit;
    HorasTra: TEdit;

    procedure calcSalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.calcSalClick(Sender: TObject);
var NomEmp : String;
    HoraTr : Integer;
    HoraTr1 : Integer;
    SalarioT : Integer;
    SalarioTo: Integer;

begin
    NomEmp:= (NombreEmp.Text);
    HoraTr:= strtoint(HorasTra.Text);

    SalarioT := 0;
    if (HoraTr < 35)  then
    begin
    SalarioT := HoraTr * 15000;
    showmessage ('Al empleado ' + NomEmp+' se le debe pagar la suma de '+ inttostr(SalarioT)+' pesos.');
    end
    else if(HoraTr > 35)  then
    begin
//for I := 1 to 35 do
    HoraTr1 := HoraTr - 35;
    SalarioTo := HoraTr1 * 19000 + 35 * 15000;

    showmessage ('Al empleado ' + NomEmp+' se le debe pagar la suma de '+ inttostr(SalarioTo)+' pesos.');
    end;


end;



end.

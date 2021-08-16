unit SerieFibonacci;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
 

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}



procedure TForm5.Button1Click(Sender: TObject);
var n, a,b,c, I: Integer;
begin
    n:=strtoint(Edit1.Text);
    ListBox1.Clear;
    if(n>0) and (n<20) then
    begin
    a:=1;
    b:=1;
    c:=0;
    for I := 1 to n do 
    begin
      a:=b;
      b:=c;
      c:=a+b;

     ListBox1.Items.Add(inttostr(c));

    end;
       end
    else
    Begin
    showmessage ('valor no valido, ingresa un número del 1 al 20');
    Edit1.Clear;
    End;

end;







end.

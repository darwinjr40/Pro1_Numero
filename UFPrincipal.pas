unit UFPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, UCNumero;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Edit1: TEdit;
    Edit2: TEdit;
    Numero1: TMenuItem;
    cargar1: TMenuItem;
    descargar1: TMenuItem;
    ElimiarDig1: TMenuItem;
    literak1: TMenuItem;
    VerifExisteNum1: TMenuItem;
    digMayor1: TMenuItem;
    removeDig1: TMenuItem;
    NumDesc1: TMenuItem;
    function1: TMenuItem;
    Verficarprimo1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    examen1: TMenuItem;
    N202111: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ElimiarDig1Click(Sender: TObject);
    procedure literak1Click(Sender: TObject);
    procedure VerifExisteNum1Click(Sender: TObject);
    procedure digMayor1Click(Sender: TObject);
    procedure removeDig1Click(Sender: TObject);
    procedure NumDesc1Click(Sender: TObject);
    procedure Verficarprimo1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N202111Click(Sender: TObject);
  private
    { Private declarations }
    N: Numero;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
N.setValor(StrToInt(Edit1.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit2.Text := IntToStr(N.getValor());
end;

procedure TForm1.digMayor1Click(Sender: TObject);
begin
 Edit2.Text := IntToStr(N.digMay);
end;

procedure TForm1.ElimiarDig1Click(Sender: TObject);
begin

N.ElimDigito(StrToInt(InputBox('Ingrese un digito','','2')));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  N:=numero.crear();
end;

procedure TForm1.literak1Click(Sender: TObject);
begin
 Edit2.Text := N.literal();
end;

procedure TForm1.N202111Click(Sender: TObject);
begin
  n.intercalarPrimoYnoPrimo;
end;

procedure TForm1.NumDesc1Click(Sender: TObject);
begin
  n.ordDesc();
end;

procedure TForm1.removeDig1Click(Sender: TObject);
var x : byte;
begin
  x := Strtoint(InputBox('Ingrese el numero a eliminar','',''));
  N.removeDigito(x);
end;

procedure TForm1.Verficarprimo1Click(Sender: TObject);
begin
 Edit2.Text := BoolToStr(N.verifPrimo, true);
end;

procedure TForm1.VerifExisteNum1Click(Sender: TObject);
var x : Cardinal;
begin
  x := StrToInt(InputBox('Ingrese el numero a eliminar','',''));
  Edit2.Text := BoolToStr(N.existeNum(x), true);
end;

end.

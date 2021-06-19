﻿unit UCNumero;

interface
  uses math,sysutils ;
  Type
    Numero = Class
      private
        Valor: Cardinal;

      public
        {Constructor}
        constructor crearX(x: Cardinal);
        constructor crear();

        {Procedimientos}
        procedure setValor(x: Cardinal);
        procedure InserDigito (p,d:byte);
        procedure ElimDigito (p:byte);
        procedure Uunir2Num(x:Cardinal);
        procedure removeDigito(x:byte);
        procedure ordDesc();
        {funciones}
        Function getValor(): Cardinal;
        function NumDigitos :byte;     //cantidad de digitos
        function unidad(val:Cardinal):string;
        function dec(val: Cardinal): string;
        function decena(val: Cardinal): string;
        function literal(): string;
        function existeNum(x:Cardinal):Boolean;
        function digMay():byte;


    End;
implementation

{ Numero }

constructor Numero.crear();
begin
  valor := 0;
end;
//------------------------------------------------------------------

constructor Numero.crearX(x: Cardinal);
begin
   valor := x;
end;

//------------------------------------------------------------------
{Elimina una posicion del numero
 ej valor = 456  p=2 --> valor 46}
procedure Numero.ElimDigito(p: byte);
var k,N1,N2 : cardinal;
begin
if (p>0) and (p<= NumDigitos) then
 begin
  k:= trunc(power(10,p-1));
  n1:= valor div k;
  n2:= valor mod k;
  n1:= n1 div 10;
  valor:= n1 * k + n2;
 end
 else raise Exception.Create('Posicion fuera de rango');

end;


//------------------------------------------------------------------
function Numero.getValor: Cardinal;
begin
  result := valor;
end;

//------------------------------------------------------------------
procedure Numero.InserDigito(p, d: byte);
var n1,n2,k:cardinal;
begin
   if (p>0) and (p <= NumDigitos) then
     begin
       k:=trunc(power(10,p-1));
       n1:= (valor div k)*10 + d;
       n2:= valor mod k;
       valor:=n1 *k + n2;
     end
     else
     raise Exception.Create('Posicion fuera de rango');

end;
//------------------------------------------------------------------
//cantidad de digitos
function Numero.NumDigitos: byte;
var res: byte;
begin
  if valor = 0 then begin
    res := 0;
  end else begin
    res := trunc(log10(valor))+1;
  end;
  result:= res;
end;
//------------------------------------------------------------------
//ordear el numero descendentemente
procedure Numero.ordDesc;
var n:cardinal;
    d:byte;
begin
  n := 0;
  while valor > 0 do begin
    d := digMay;
    n := n * 10 + d;
    removeDigito(d); //procedure
  end;
  valor := n;
end;

//------------------------------------------------------------------
{eliminar un digito x
 ej valor = 785;x = 8 ---> valor=75 }
procedure Numero.removeDigito(x: byte);
var d:byte;
    n,pot:Cardinal;
    sw:boolean;
begin
    n := 0;
    sw := true;
    pot := 1;
    while (valor > 0) and (sw) do begin
      d := valor mod 10;

      if d = x  then  begin
        sw := false;
      end else begin
        n := d * pot + n;
        pot := pot * 10;
      end;
      valor := valor div 10;
    end;
    Uunir2Num(n);
end;

//------------------------------------------------------------------
{si un numero se encuentra en otro}
function Numero.existeNum(x: Cardinal): Boolean;
var  cd: byte;
    val, d, n: Cardinal;
    cantD: Numero;  //objeto
    sw:boolean;
begin
  val := valor;
  cantD := Numero.crearX(x);
  cd := cantD.NumDigitos;
  n:=0;
  sw := false;
  while val > 0 do begin
     d := val MOD trunc(power(10, cd));//39;
     if d = x then begin
      val := 0;
      sw := true;
     end else begin
      n := n * 10 + d;
      val := val div 10;
     end;
  end;
  result := sw;
end;

//------------------------------------------------------------------
procedure Numero.setValor(x: Cardinal);
begin
  valor := x;
end;
//------------------------------------------------------------------

function Numero.unidad(val: Cardinal): string;
var uni:string;
begin
 uni:='';
 case (val )of
   0: uni:='CERO';
   1: uni:='UNO';
   2: uni:='DOS';
   3: uni:='TRES';
   4: uni:='CUATRO';
   5: uni:='CINCO';
   6: uni:='SEIS';
   7: uni:='SIETE';
   8: uni:='OCHO';
   9: uni:='NUEVE';
 end;
  result:= uni;
end;
//------------------------------------------------------------------
{unir 2 numeros}
procedure Numero.Uunir2Num(x: Cardinal);
var objeto:Numero;
begin  //123     46
        //123 *100 + 46 ===> 12346
  objeto := Numero.crearX(x);
  valor := valor * trunc(power(10,objeto.NumDigitos)) + objeto.Valor;
end;

//------------------------------------------------------------------
function Numero.dec(val: Cardinal): string;
var helps:string;
begin
 helps:='';
   case(val ) of
    10:helps:='DIEZ ';
    11:helps:='ONCE ';
    12:helps:='DOCE ';
    13:helps:='TRECE ';
    14:helps:='CATORCE ';
    15:helps:='QUINCE ';
    16:helps:='DIECISEIS ';
    17:helps:='DIECISIETE ';
    18:helps:='DIECIOCHO ';
    19:helps:='DIECINUEVE ';
   end;
      result:=helps;
end;
//-------------------------------------------------------------------
function Numero.decena(val: Cardinal): string;
var dece:string;
    d, m : byte;
begin
 dece:='';//20
 m := val mod 10; // 0
 d := val div 10; //3
  case( d )of
    2:dece:='VEINTE';
    3:dece:='TREINTA';
    4:dece:='CUARENTA';
    5:dece:='CINCUENTA';
    6:dece:='SESENTA';
    7:dece:='SETENTA';
    8:dece:='OCHENTA';
    9:dece:='NOVENTA';
  end;
  //dece = TREINTA
  if ((d = 2)and(m <> 0)) then begin//21...29
      dece := 'VEINTI'+ unidad(m)
  end else begin
      if (m <> 0) then begin//31...99
        dece := dece + ' Y '+ unidad(m);
      end;
  end;
  result := dece;
end;
//-------------------------------------------------------------------

function Numero.digMay: byte;
var n:Cardinal;
    d, may:byte;
begin
  n := valor;
  may := 0;
  while n > 0 do begin
    d := n mod 10;
    n := n div 10;
    if d > may then
      may := d;
  end;
  result := may;
end;

//--------------------------------------------------------------
function Numero.literal(): string;
var cad:string;
begin
 cad:=''; //20
 case(Valor)of
  0..9:  cad := unidad(valor);
  10..19: cad := dec(valor);
  20..99: cad := decena(valor);
  100..999:
  else
    cad:= 'fuera de rango';
 end;
  result:= cad;
end;
//------------------------------------------------------------------

end.
unit Classes.Calcular;

interface

uses
  System.SysUtils;

type
 TRetorno = procedure(pResultado:string) of object;

 ICalcula = interface
   ['{C9C3270C-C0B1-4BEA-992A-DE93568E2F0A}']
   function Adicao: ICalcula;
   function Subtracao: ICalcula;
   function Multiplicacao: ICalcula;
   function Divisao: ICalcula;
   function A(pValor:string):ICalcula;
   function B(pValor:string):ICalcula;
   function Retorno(pRetorno:TRetorno):ICalcula;
 end;

 TCalcula = class(TInterfacedObject, ICalcula)
   private
   FvalorA: real;
   FvalorB: real;
   FTotal:  real;
   public
   constructor Create;
   destructor Destroy; override;
   class function Action: ICalcula;
   function Adicao: ICalcula;
   function Subtracao: ICalcula;
   function Multiplicacao: ICalcula;
   function Divisao: ICalcula;
   function A(pValor:string):ICalcula;
   function B(pValor:string):ICalcula;
   function Retorno(pRetorno:TRetorno):ICalcula;
 end;

implementation

{ TCalcula }

function TCalcula.A(pValor: string): ICalcula;
begin
  Result := Self;
  FvalorA := StrToFloat(pValor);
end;

class function TCalcula.Action: ICalcula;
begin
  Result := Self.Create;
end;

function TCalcula.Adicao: ICalcula;
begin
  Result := Self;
  FTotal := FvalorA + FvalorB;
end;

function TCalcula.B(pValor: string): ICalcula;
begin
  Result := Self;
  FvalorB := StrToFloat(pValor);
end;

constructor TCalcula.Create;
begin

end;

destructor TCalcula.Destroy;
begin

  inherited;
end;

function TCalcula.Divisao: ICalcula;
begin
   Result := Self;
   FTotal := FvalorA / FvalorB;
end;

function TCalcula.Multiplicacao: ICalcula;
begin
   Result := Self;
   FTotal := FvalorA * FvalorB;
end;

function TCalcula.Retorno(pRetorno: TRetorno): ICalcula;
begin
  Result := Self;
  pRetorno(FloatToStr(FTotal));
end;

function TCalcula.Subtracao: ICalcula;
begin
   Result := Self;
   FTotal := FvalorA - FvalorB;
end;

end.

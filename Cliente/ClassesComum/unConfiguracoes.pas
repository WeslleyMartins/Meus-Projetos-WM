unit unConfiguracoes;

interface

type
  TContribuicoes = class
  private
    class function RetirarCaracteres(const ATexto: string;
      const ACaracteres: array of string): string;
  public
    class function VerificarCNPJ(const ANumeroCNPJ: string): Boolean;
    class function MascaraTelefone(const ATelefone: string):string;
  end;

implementation

uses
  StrUtils, SysUtils;

{ TContribuicoes }

class function TContribuicoes.MascaraTelefone(const ATelefone: string): string;

  function ReplicarFormatoMascara(ATamanhoExtensao:integer):string;
  var
    i: integer;
  begin
    Result := '';
    for i := 1 to ATamanhoExtensao do
    begin
      Result := Result + '9'
    end;
  end;

var
  prefixo,
  sufixo:string;
  tamanho: integer;
begin
  Tamanho := Length(ATelefone);
  if Tamanho >= 10 then
  begin
    // tirando o DDD
    tamanho := tamanho - 2;
    if tamanho mod 2 = 0 then
    begin
      prefixo := ReplicarFormatoMascara(trunc(tamanho/2));
      sufixo := prefixo;
    end
    else
    begin
      prefixo := ReplicarFormatoMascara(trunc(tamanho/2)+1);
      sufixo := ReplicarFormatoMascara(trunc(tamanho/2))
    end;
    Result := '(99)'+ prefixo +'-'+ sufixo+';0;_';
  end
  else
    Result := '';
end;

class function TContribuicoes.RetirarCaracteres(const ATexto: string;
  const ACaracteres: array of string): string;
var
  I: Integer;
begin
  Result := ATexto;
  for I := 0 to High(ACaracteres) do
    Result := ReplaceText(Result, ACaracteres[I], '');
end;

class function TContribuicoes.VerificarCNPJ(const ANumeroCNPJ: string): Boolean;
var
  Digito1, Digito2: Integer;
  Soma: Longint;
  CNPJ: string;
begin
  Result := False;

  CNPJ := RetirarCaracteres(ANumeroCNPJ, ['.', '/', '-', ' ']);
  while Length(CNPJ) < 14 do
    CNPJ := '0' + CNPJ;

  { calcula o 1o. dígito }
  Soma := (StrToInt(CNPJ[01]) * 5) + (StrToInt(CNPJ[02]) * 4) +
    (StrToInt(CNPJ[03]) * 3) + (StrToInt(CNPJ[04]) * 2) +
    (StrToInt(CNPJ[05]) * 9) + (StrToInt(CNPJ[06]) * 8) +
    (StrToInt(CNPJ[07]) * 7) + (StrToInt(CNPJ[08]) * 6) +
    (StrToInt(CNPJ[09]) * 5) + (StrToInt(CNPJ[10]) * 4) +
    (StrToInt(CNPJ[11]) * 3) + (StrToInt(CNPJ[12]) * 2);
  Soma := Soma * 10;
  Digito1 := Soma mod 11;
  if Digito1 = 10 then
    Digito1 := 0;
  { compara o resultado com o 1o. digito informado }
  if Digito1 = StrToInt(CNPJ[13]) then
  begin
    { se correto ... }
    { calcula o 2o. dígito }
    Soma := (StrToInt(CNPJ[01]) * 6) + (StrToInt(CNPJ[02]) * 5) +
      (StrToInt(CNPJ[03]) * 4) + (StrToInt(CNPJ[04]) * 3) +
      (StrToInt(CNPJ[05]) * 2) + (StrToInt(CNPJ[06]) * 9) +
      (StrToInt(CNPJ[07]) * 8) + (StrToInt(CNPJ[08]) * 7) +
      (StrToInt(CNPJ[09]) * 6) + (StrToInt(CNPJ[10]) * 5) +
      (StrToInt(CNPJ[11]) * 4) + (StrToInt(CNPJ[12]) * 3) +
      (StrToInt(CNPJ[13]) * 2);
    Soma := Soma * 10;
    Digito2 := Soma mod 11;
    if Digito2 = 10 then
      Digito2 := 0;
    { compara o resultado com o 2o. digito informado }
    if (Digito2 = StrToInt(CNPJ[14])) and (Soma > 0) then
      Result := True;
  end;
end;

end.

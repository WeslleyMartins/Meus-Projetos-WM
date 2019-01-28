unit unDadosServer;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, Server_TLB, StdVcl, WideStrings, FMTBcd, Provider, DB, SqlExpr;

type
  TDadosServidor = class(TRemoteDataModule, IDadosServidor)
    Conexao: TSQLConnection;
    tbEscola: TSQLDataSet;
    dspEscola: TDataSetProvider;
    tbPesquisaEscola: TSQLDataSet;
    dspPesquisEscola: TDataSetProvider;
    tbNovoCodigoEscola: TSQLDataSet;
    tbEscolaESCNOM: TStringField;
    tbEscolaESCNPJ: TStringField;
    tbEscolaESCRUA: TStringField;
    tbEscolaESCNUM: TStringField;
    tbEscolaESCBAI: TStringField;
    tbEscolaESCCID: TStringField;
    tbEscolaESCTEL: TStringField;
    tbEscolaESCMAI: TStringField;
    tbEscolaESCOBS: TStringField;
    tbEscolaESCCOD: TStringField;
    tbPesquisaEscolaESCNOM: TStringField;
    tbPesquisaEscolaESCNPJ: TStringField;
    tbPesquisaEscolaESCRUA: TStringField;
    tbPesquisaEscolaESCNUM: TStringField;
    tbPesquisaEscolaESCBAI: TStringField;
    tbPesquisaEscolaESCCID: TStringField;
    tbPesquisaEscolaESCTEL: TStringField;
    tbPesquisaEscolaESCMAI: TStringField;
    tbPesquisaEscolaESCOBS: TStringField;
    tbPesquisaEscolaESCCOD: TStringField;
    tbEscolaESCDAT: TSQLTimeStampField;
    tbPesquisaEscolaESCDAT: TSQLTimeStampField;
    tbNovoCodigoEscolaNOVO_CODIGO_ESCOLA: TIntegerField;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure Login(const AUsuario, ASenha: WideString; out AErro: WordBool); safecall;
    procedure Logout(const AUsuario: WideString); safecall;
    function NovoCodigo: WideString; safecall;
  public
    { Public declarations }
  end;

implementation

uses
  unDialogoServidor, Dialogs;

{$R *.DFM}

class procedure TDadosServidor.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TDadosServidor.Login(const AUsuario, ASenha: WideString;
  out AErro: WordBool);
begin
  if SameText(AUsuario, 'w') and SameText(ASenha, 'f') then
  begin
    AErro := False;
    fmServer.Inserir(AUsuario);
  end
  else
    AErro := True;
end;

procedure TDadosServidor.Logout(const AUsuario: WideString);
begin
  fmServer.Remover(AUsuario);
end;

function TDadosServidor.NovoCodigo: WideString;
begin
  tbNovoCodigoEscola.Active := True;
  Result := IntToStr(tbNovoCodigoEscolaNOVO_CODIGO_ESCOLA.AsInteger);
  tbNovoCodigoEscola.Active := False;
end;

initialization
  TComponentFactory.Create(ComServer, TDadosServidor,
    Class_DadosServidor, ciSingleInstance, tmApartment);
end.

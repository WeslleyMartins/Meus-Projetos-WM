unit unDadosClient;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, SConnect, ObjBrkr;

type
  TDadosCliente = class(TDataModule)
    SimpleObjectBroker1: TSimpleObjectBroker;
    ConnectionBroker1: TConnectionBroker;
    DCOMConnection1: TDCOMConnection;
    tbPesEscola: TClientDataSet;
    tbPesEscolaESCNOM: TStringField;
    tbPesEscolaESCNPJ: TStringField;
    tbPesEscolaESCRUA: TStringField;
    tbPesEscolaESCNUM: TStringField;
    tbPesEscolaESCBAI: TStringField;
    tbPesEscolaESCCID: TStringField;
    tbPesEscolaESCTEL: TStringField;
    tbPesEscolaESCMAI: TStringField;
    tbPesEscolaESCOBS: TStringField;
    tbPesEscolaESCCOD: TStringField;
    tbPesEscolaESCDAT: TSQLTimeStampField;
    procedure tbPesEscolaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    procedure RegistrarTLB;
    procedure ConectarDCOM;
    procedure DesconectarDCOM;
    procedure Logout(AUsuario: string);
    function Login(const AUsuario, ASenha: string): Boolean;
    function NovoCodigoDaEscola: string;
  end;

var        
  DadosCliente: TDadosCliente;

implementation

uses
  ActiveX, ComObj, Forms, Dialogs;

const       
  FCaminho = 'D:\Trabalho\Projeto\Servidor\Server.TLB';//'C:\test\Server.TLB';

{$R *.dfm}

{ TDadosCliente }

procedure TDadosCliente.ConectarDCOM;
begin
  if not DCOMConnection1.Connected then
    DCOMConnection1.Connected := True;
end;

procedure TDadosCliente.DesconectarDCOM;
begin
  if DCOMConnection1.Connected then
    DCOMConnection1.Connected := False;
end;

function TDadosCliente.Login(const AUsuario, ASenha: string): Boolean;
var
  Error: WordBool;
begin
  DCOMConnection1.AppServer.Login(AUsuario, AUsuario, Error);
  Result := Error;
end;

procedure TDadosCliente.Logout(AUsuario: string);
begin
  DCOMConnection1.AppServer.Logout(AUsuario);
end;

function TDadosCliente.NovoCodigoDaEscola: string;
begin
  Result := DCOMConnection1.AppServer.NovoCodigo;
end;

procedure TDadosCliente.RegistrarTLB;
var
  ArquivoDaBiblioteca,
  NomeDoDocumento: WideString;
  Biblioteca: ITypeLib;
  AtributosDaBiblioteca: PTLibAttr;
  DiretorioAtual,
  DiretorioDaBiblioteca: string;
begin
  DiretorioDaBiblioteca := ExtractFilePath(FCaminho);// + 'Server.TLB';
  DiretorioAtual := GetCurrentDir;
  if not FileExists(FCaminho) then
    raise Exception.CreateFmt('Arquivo "%s" n�o localizado', [FCaminho]);
  SetCurrentDir(DiretorioDaBiblioteca);
  ArquivoDaBiblioteca := FCaminho;
  OleCheck(LoadTypeLib(PWideChar(ArquivoDaBiblioteca), Biblioteca));
  OleCheck(Biblioteca.GetLibAttr(AtributosDaBiblioteca));
  try
    OleCheck(Biblioteca.GetDocumentation(-1, nil, nil, nil, @NomeDoDocumento));
    NomeDoDocumento := ExtractFilePath(NomeDoDocumento);
    OleCheck(RegisterTypeLib(Biblioteca, PWideChar(ArquivoDaBiblioteca), PWideChar(NomeDoDocumento)));
  finally
    Biblioteca.ReleaseTLibAttr(AtributosDaBiblioteca);
    SetCurrentDir(DiretorioAtual);
  end;
end;

procedure TDadosCliente.tbPesEscolaReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage('N�o foi poss�vel aplicar as altera��es' + #13#10 +'Erro: ' + E.Message);
  Action := raCancel;
end;

end.
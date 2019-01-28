unit unCadEscola;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCadPai, JvExControls, JvArrowButton, ComCtrls, ExtCtrls, ToolWin,
  ImgList, StdCtrls, Mask, DBCtrls, DB, DBClient;

type
  TfmCadEscola = class(TfmCadPai)
    Label1: TLabel;
    Label2: TLabel;
    dbNome: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    dbRua: TDBEdit;
    dbNumero: TDBEdit;
    dbBairro: TDBEdit;
    dbCidade: TDBEdit;
    dbTelefone: TDBEdit;
    dbEmail: TDBEdit;
    dbCNPJ: TDBEdit;
    dbObservacao: TDBEdit;
    tbCadastroESCNOM: TStringField;
    tbCadastroESCNPJ: TStringField;
    tbCadastroESCRUA: TStringField;
    tbCadastroESCNUM: TStringField;
    tbCadastroESCBAI: TStringField;
    tbCadastroESCCID: TStringField;
    tbCadastroESCTEL: TStringField;
    tbCadastroESCMAI: TStringField;
    tbCadastroESCOBS: TStringField;
    tbCadastroESCCOD: TStringField;
    tbCadastroESCDAT: TSQLTimeStampField;
    dbCodigo: TEdit;
    procedure dsCadastroStateChange(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure ValidarCampoCNPJ(Sender: TObject = nil);
    procedure ValidarCampoNome(Sender: TObject = Nil);
    procedure ValidarCampoTelefone(Sender: TObject = Nil);
    procedure tbCadastroAfterInsert(DataSet: TDataSet);
    procedure Gravar(Sender: TObject; var Key: Char);
    procedure dbCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btEditarClick(Sender: TObject);
    procedure dbCodigoChange(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FCancelarGravacao: Boolean;
    procedure CarregarCampo;
    procedure FiltrarEscola(ACodigo: string);
  protected
    procedure HabilitarDesabilitarControles(AHabilitar: Boolean); override;
    procedure LimparFiltros(ALimparCodigo: Boolean = True); override;
    procedure AbrirTabelaEscola; override;
    procedure FecharTabelaEscola; override;
    procedure PesquiarCadastro; override;
    function ValidacaoGeral: Boolean; override;
  public
    { Public declarations }
  end;

var
  fmCadEscola: TfmCadEscola;

implementation

uses
  unDadosClient, unConfiguracoes, SysUtils, unPesquisaEscola;

{$R *.dfm}

procedure TfmCadEscola.AbrirTabelaEscola;
begin
  if not tbCadastro.Active then;
    tbCadastro.Open;
end;

procedure TfmCadEscola.btCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente cancelar?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    FecharTabelaEscola;
    dbCodigo.SetFocus;
  end
  else
    dbNome.SetFocus;
end;

procedure TfmCadEscola.btEditarClick(Sender: TObject);
begin
  inherited;
  FCancelarGravacao := False;
  dbNome.SetFocus;
end;

procedure TfmCadEscola.btNovoClick(Sender: TObject);
var
  NovoCodigo: string;
begin
  tbCadastro.Filtered := False;
  inherited;
  FCancelarGravacao := False;
  dbNome.SetFocus;
  NovoCodigo := DadosCliente.NovoCodigoDaEscola;
  tbCadastroESCCOD.AsString := FormatFloat('000000', StrToFloat(NovoCodigo));
  dbCodigo.Text := tbCadastroESCCOD.AsString;
end;                                                          

procedure TfmCadEscola.ValidarCampoCNPJ(Sender: TObject);
begin
  inherited;
  if dsCadastro.State in [dsInsert, dsEdit] then
  begin
    FCancelarGravacao := Trim(dbCNPJ.Text) = '';
    if FCancelarGravacao then
    begin
      MessageDlg('CNPJ deve ser informado', mtError, [mbOk], 0);
      dbCNPJ.SetFocus;
    end
    else
      if not TContribuicoes.VerificarCNPJ(Trim(dbCNPJ.Text)) then
      begin
        MessageDlg('CNPJ inv�lido', mtError, [mbOk], 0);
        dbCNPJ.SetFocus;
      end;
  end;
end;

procedure TfmCadEscola.ValidarCampoNome(Sender: TObject);
begin
  inherited;
  if dsCadastro.State in [dsInsert, dsEdit] then
  begin
    FCancelarGravacao := Trim(dbNome.Text) = '';
    if FCancelarGravacao then
    begin
      MessageDlg('Nome deve ser informado', mtError, [mbOk], 0);
      dbNome.SetFocus;
    end;
  end;
end;

procedure TfmCadEscola.ValidarCampoTelefone(Sender: TObject);
begin
  inherited;
  if dsCadastro.State in [dsInsert, dsEdit] then
  begin
    FCancelarGravacao := Trim(dbTelefone.Text) = '';
    if FCancelarGravacao then
    begin
      MessageDlg('Telefone deve ser informado', mtError, [mbOk], 0);
      dbTelefone.SetFocus;
    end
    else
      tbCadastroESCTEL.EditMask := TContribuicoes.MascaraTelefone(tbCadastroESCTEL.AsString);
  end;
end;

procedure TfmCadEscola.FecharTabelaEscola;
begin
  if tbCadastro.Active then;
    tbCadastro.Close;
end;

procedure TfmCadEscola.FiltrarEscola(ACodigo: string);
begin
  tbCadastro.Filtered := False;
  tbCadastro.Filter := 'ESCCOD = ' + QuotedStr(ACodigo);
  tbCadastro.Filtered := True;
end;

procedure TfmCadEscola.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fmCadEscola := nil;
end;

procedure TfmCadEscola.CarregarCampo;
begin
  dbCodigo.Text := FormatFloat('000000', StrToFloat(dbCodigo.Text));
  AbrirTabelaEscola;
  FiltrarEscola(dbCodigo.Text);
  if tbCadastro.IsEmpty then
  begin
    tbCadastro.Filtered := False;
    FecharTabelaEscola;
    MessageDlg('Escola n�o cadastrada', mtError, [mbOk], 0);
    dbCodigo.SetFocus;
  end
  else
  begin
    btEditar.Enabled := True;
    btExcluir.Enabled := True;
  end;
end;

procedure TfmCadEscola.dbCodigoChange(Sender: TObject);
begin
  inherited;
  LimparFiltros(False);
  btEditar.Enabled := False;
  btExcluir.Enabled := False;
end;

procedure TfmCadEscola.dbCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if UpCase(Key) in
     [
      'A'..'Z', '.', #9, '@', ';', ':', '/', '-', '+', '*', ',', '?', '\',
      '(', '{', '[', ')', ']', '}', '!', '@', '#', '$', '%', '&', '=', '"'
     ]
  then
    Key := #0;

  if Key = #13 then
  begin
    if Trim(dbCodigo.Text) <> '' then
      CarregarCampo
    else
      if MessageDlg('Deseja incluir uma nova escola?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        btNovo.Click
      else
        FecharTabelaEscola;
  end;
end;

procedure TfmCadEscola.Gravar(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    if MessageDlg('Deseja realmente gravar?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      btGravar.Click
    else
      dbObservacao.SetFocus;
end;

procedure TfmCadEscola.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  HabilitarDesabilitarControles(dsCadastro.State in [dsInsert, dsEdit]);
end;

procedure TfmCadEscola.HabilitarDesabilitarControles(AHabilitar: Boolean);
begin        
  inherited;
  dbCodigo.Enabled := not AHabilitar;
  dbNome.Enabled := AHabilitar;
  dbCNPJ.Enabled := AHabilitar;
  dbRua.Enabled := AHabilitar;
  dbNumero.Enabled := AHabilitar;
  dbBairro.Enabled := AHabilitar;
  dbCidade.Enabled := AHabilitar;
  dbTelefone.Enabled := AHabilitar;
  dbEmail.Enabled := AHabilitar;
  dbObservacao.Enabled := AHabilitar;
end;

procedure TfmCadEscola.LimparFiltros(ALimparCodigo: Boolean);
begin
  inherited;
  if ALimparCodigo then
    dbCodigo.Clear;
  dbNome.Clear;
  dbCNPJ.Clear;
  dbRua.Clear;
  dbNumero.Clear;
  dbBairro.Clear;
  dbCidade.Clear;
  dbTelefone.Clear;
  dbEmail.Clear;
  dbObservacao.Clear;
end;

procedure TfmCadEscola.PesquiarCadastro;
var
  CodigoDaEscola: string;
begin
  inherited;
  if TfmPesquisaEscola.Listar(Self, CodigoDaEscola) then
    if CodigoDaEscola <> '' then
    begin
      dbCodigo.Text := FormatFloat('000000', StrToFloat(CodigoDaEscola));
      FecharTabelaEscola;
      FiltrarEscola(CodigoDaEscola);
      AbrirTabelaEscola;
    end;
end;

procedure TfmCadEscola.tbCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  tbCadastroESCDAT.AsDateTime := Now;
end;

function TfmCadEscola.ValidacaoGeral: Boolean;
begin
  inherited;
  ValidarCampoNome;

  if not FCancelarGravacao then
    ValidarCampoCNPJ;

  if not FCancelarGravacao then
    ValidarCampoTelefone;
    
  Result := not FCancelarGravacao;
end;

end.



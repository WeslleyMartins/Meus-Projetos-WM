unit unCadPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ImgList, ComCtrls, ToolWin, JvExControls,
  JvArrowButton, ExtCtrls;

type
  TfmCadPai = class(TForm)
    Panel4: TPanel;
    FatherShape1: TShape;
    pnBottom: TPanel;
    StatusBar1: TStatusBar;
    pnBottomRight: TPanel;
    JvArrowButton1: TJvArrowButton;
    ToolBar1: TToolBar;
    btNovo: TToolButton;
    btEditar: TToolButton;
    btGravar: TToolButton;
    btExcluir: TToolButton;
    btCancelar: TToolButton;
    btPesquisar: TToolButton;
    btFechar: TToolButton;
    ImageList1: TImageList;
    tbCadastro: TClientDataSet;
    dsCadastro: TDataSource;
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure GravarNoBanco(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  protected
    procedure HabilitarDesabilitarControles(AHabilitar: Boolean); virtual; abstract;
    procedure LimparFiltros(ALimparCodigo: Boolean = True); virtual; abstract;
    procedure AbrirTabelaEscola; virtual; abstract;
    procedure FecharTabelaEscola; virtual; abstract;
    procedure PesquiarCadastro; virtual; abstract;
    function ValidacaoGeral: Boolean; virtual; abstract;
  public
    { Public declarations }
  end;

var
  fmCadPai: TfmCadPai;

implementation

{$R *.dfm}

procedure TfmCadPai.btCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente cancelar?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    tbCadastro.Cancel;
    FecharTabelaEscola;
  end;
end;

procedure TfmCadPai.btExcluirClick(Sender: TObject);
begin
  AbrirTabelaEscola;
  if MessageDlg('Deseja realmente excluir?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    tbCadastro.Delete;
    LimparFiltros;
  end;
end;

procedure TfmCadPai.btFecharClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente sair?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    FecharTabelaEscola;
    Close;
  end;
end;

procedure TfmCadPai.btGravarClick(Sender: TObject);
begin
  if ValidacaoGeral then
  begin
    tbCadastro.Post;
    MessageDlg('Escola gravada com sucesso!', mtInformation, [mbOk], 0);
  end;
end;
                                                 
procedure TfmCadPai.btNovoClick(Sender: TObject);
begin
  LimparFiltros;
  AbrirTabelaEscola;
  tbCadastro.Insert;
end;

procedure TfmCadPai.dsCadastroStateChange(Sender: TObject);
begin
  btNovo.Enabled := dsCadastro.State in [dsBrowse, dsInactive];
  btGravar.Enabled := dsCadastro.State in [dsInsert, dsEdit];
  if dsCadastro.State in [dsInsert, dsEdit] then
    btEditar.Enabled := False
  else
    btEditar.Enabled := dsCadastro.State = dsBrowse;
  btCancelar.Enabled := dsCadastro.State in [dsInsert, dsEdit];
  btExcluir.Enabled := dsCadastro.State = dsBrowse;
  btPesquisar.Enabled := dsCadastro.State in [dsBrowse, dsInactive];
end;

procedure TfmCadPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  Release;
end;

procedure TfmCadPai.FormCreate(Sender: TObject);
begin
  inherited;
  LimparFiltros;
  btGravar.Enabled := False;
  btEditar.Enabled := False;
  btExcluir.Enabled := False;
  btCancelar.Enabled := False;
end;

procedure TfmCadPai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;

  if Key = VK_RETURN then
     perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfmCadPai.GravarNoBanco(DataSet: TDataSet);
begin
  inherited;
  tbCadastro.ApplyUpdates(-1);
end;

procedure TfmCadPai.btPesquisarClick(Sender: TObject);
begin
  PesquiarCadastro;
end;

procedure TfmCadPai.btEditarClick(Sender: TObject);
begin
  AbrirTabelaEscola;
  tbCadastro.Edit;
end;

end.

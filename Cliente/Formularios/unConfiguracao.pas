unit unConfiguracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxLabel, StdCtrls, cxButtons, ExtCtrls,
  unUteis, WideStrings, DB, SqlExpr, Mask;

type
  TfmConfiguracao = class(TForm)
    Panel1: TPanel;
    edServidor: TEdit;
    edHost: TEdit;
    edSenha: TEdit;
    btSair: TButton;
    btGravar: TButton;
    edLogin: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edBanco: TEdit;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConfiguracao: TfmConfiguracao;

implementation

{$R *.dfm}

procedure TfmConfiguracao.btGravarClick(Sender: TObject);
begin
  if ((edServidor.Text <> '') and (edHost.Text <> '') and (edBanco.Text <> '') and
     (edLogin.Text <> '') and (edSenha.Text <> '')) then
  begin
    TutilitarioServidor.GravarDadosConexao(ExtractFileDir(Application.ExeName),
      edServidor.Text, edHost.Text, edBanco.Text, edLogin.Text, edSenha.Text);
    MessageDlg('Configuração foi gravada com sucesso!', mtInformation, [mbOK], 0);
    Close;
  end
  else
  begin
    MessageDlg('Preencha todos os campos!', mtInformation, [mbOK], 0);
    edServidor.SetFocus;
  end;
end;

procedure TfmConfiguracao.FormShow(Sender: TObject);
var
  Servidor,
  Host,
  DataBase,
  Login,
  Senha: string;
begin
  TutilitarioServidor.LerDadosConexao(ExtractFileDir(Application.ExeName),
    Servidor, Host, DataBase, Login, Senha);

  edServidor.Text := Servidor;
  edHost.Text := Host;
  edBanco.Text := DataBase;
  edLogin.Text := Login;
  edSenha.Text := Senha;
end;

procedure TfmConfiguracao.btSairClick(Sender: TObject);
begin
  Close;
end;

end.

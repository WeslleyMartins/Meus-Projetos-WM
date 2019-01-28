unit unDialogoLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfmLogin = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edUsuario: TEdit;
    edSenha: TEdit;
    Label2: TLabel;
    btConectar: TButton;
    procedure btConectarClick(Sender: TObject);
    procedure edUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    FUsuario: string;
    FFecharAplicacao: Boolean;
    function UsuarioPreenchido: Boolean;
  public
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;

implementation

uses
  unDadosClient, unMenuEscola;

{$R *.dfm}

procedure TfmLogin.btConectarClick(Sender: TObject);
begin
  if UsuarioPreenchido then
  begin
    DadosCliente.RegistrarTLB;
    DadosCliente.ConectarDCOM;
    if not DadosCliente.Login(edUsuario.Text, edSenha.Text) then
    begin
      ShowMessage('Você não tem acesso!');
      FUsuario := '';
    end
    else
    begin
      FUsuario := edUsuario.Text;
      fmMenuEscola.StatusBar1.Panels[2].Text := FUsuario;
      FFecharAplicacao := False;
      Close;
    end;
  end;
end;

procedure TfmLogin.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btConectar.Click;
end;

procedure TfmLogin.edUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edSenha.SetFocus;
end;

procedure TfmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FFecharAplicacao then  
    Application.Terminate;
end;

procedure TfmLogin.FormCreate(Sender: TObject);
begin
  FFecharAplicacao := True;
end;

function TfmLogin.UsuarioPreenchido: Boolean;
begin
  Result := ((edUsuario.Text <> '') and (edSenha.Text <> ''));
  if not Result then
  begin
    ShowMessage('Preencher os campos!');
    edUsuario.SetFocus;
  end
end;

end.

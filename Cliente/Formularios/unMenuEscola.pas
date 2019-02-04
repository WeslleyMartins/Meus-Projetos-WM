unit unMenuEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls;

type
  TfmMenuEscola = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Escola1: TMenuItem;
    Aluno1: TMenuItem;
    urmas1: TMenuItem;
    Disciplnas1: TMenuItem;
    Consultas1: TMenuItem;
    Escola2: TMenuItem;
    Relatrio1: TMenuItem;
    Relatriogeral1: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Escola1Click(Sender: TObject);
    procedure Escola2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMenuEscola: TfmMenuEscola;

implementation

uses
  unDadosClient, unDialogoLogin, unCadEscola, unConsultaEscola;

{$R *.dfm}

procedure TfmMenuEscola.Escola1Click(Sender: TObject);
begin
  if not Assigned(fmCadEscola) then
    fmCadEscola := TfmCadEscola.Create(Self);
  fmCadEscola.Show;
end;

procedure TfmMenuEscola.Escola2Click(Sender: TObject);
begin
  if not Assigned(fmConsultaEscola) then
    fmConsultaEscola := TfmConsultaEscola.Create(Self);
  fmConsultaEscola.Show;
end;

procedure TfmMenuEscola.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DadosCliente.Logout(StatusBar1.Panels[2].Text);
  DadosCliente.DesconectarClienteComServidor;
  Application.Terminate;    
end;

procedure TfmMenuEscola.FormCreate(Sender: TObject);
var
  Dialogo: TfmLogin;
begin
  Dialogo := TfmLogin.Create(Self);
  try
    Dialogo.ShowModal;
  finally
    Dialogo.Release;
  end;
//  StatusBar1.Panels[0].Text := FormatDateTime(
//    '"Fortaleza   "dddd", "d" de "mmmm" de "yyyy', Date) + '    -    '+ TimeToStr(Now);
end;

procedure TfmMenuEscola.Timer1Timer(Sender: TObject);
begin
  Statusbar1.Panels[0].Text := FormatDateTime(
    '"Fortaleza   "dddd", "d" de "mmmm" de "yyyy',date) + '    -    ' + TimeToStr(Now);
end;

end.

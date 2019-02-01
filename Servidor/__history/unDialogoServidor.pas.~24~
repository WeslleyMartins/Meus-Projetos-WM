unit unDialogoServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfmServer = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lbUsuarios: TLabel;
    moUsuarios: TMemo;
    Label4: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FContUsuario: Integer;
  public
    procedure Inserir(AUsuario : String);
    procedure Remover(AUsuario : String);
  end;

var
  fmServer: TfmServer;

implementation

{$R *.dfm}

{ TfmServer }

procedure TfmServer.FormCreate(Sender: TObject);
begin
  FContUsuario := 0;
  moUsuarios.Lines.Clear;
end;

procedure TfmServer.Inserir(AUsuario: String);
begin
  fmServer.moUsuarios.Lines.Add(AUsuario);
  Inc(FContUsuario);
end;

procedure TfmServer.Remover(AUsuario: String);
begin
  moUsuarios.Lines.Delete(moUsuarios.Lines.IndexOf(AUsuario));
  Dec(FContUsuario);
end;

procedure TfmServer.Timer1Timer(Sender: TObject);
begin
  lbUsuarios.Caption := FormatFloat('00', FContUsuario);
end;

end.



program Server;

uses
  Forms,
  Windows,
  Dialogs,
  Server_TLB in 'Server_TLB.pas',
  unDadosServer in 'unDadosServer.pas' {DadosServidor: TRemoteDataModule} {DadosServidor: CoClass},
  unDialogoServidor in 'unDialogoServidor.pas' {fmServer};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmServer, fmServer);
  Application.Run;
end.
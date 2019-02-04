program Server;

uses
  Forms,
  Windows,
  Dialogs,
  Server_TLB in 'Server_TLB.pas',
  unDadosServer in 'unDadosServer.pas' {DadosServidor: TRemoteDataModule} {DadosServidor: CoClass},
  unDialogoServidor in 'unDialogoServidor.pas' {fmServer},
  unUteis in '..\Comum\unUteis.pas';

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Servidor';
  Application.CreateForm(TfmServer, fmServer);
  Application.Run;
end.

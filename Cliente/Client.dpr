program Client;

uses
  Forms,
  Midas,
  MidasLib,
  MidasCon,
  crtl,
  unDialogoLogin in 'Formularios\unDialogoLogin.pas' {fmLogin},
  unMenuEscola in 'Formularios\unMenuEscola.pas' {fmMenuEscola},
  unDadosClient in 'Dados\unDadosClient.pas' {DadosCliente: TDataModule},
  unPesquisaEscola in 'Formularios\unPesquisaEscola.pas' {fmPesquisaEscola},
  unConsultaPai in 'Formularios\unConsultaPai.pas' {fmConsultaPai},
  unConsultaEscola in 'Formularios\unConsultaEscola.pas' {fmConsultaEscola},
  unConsultaEscolaController in 'Formularios\unConsultaEscolaController.pas',
  unRelPai in 'Formularios\unRelPai.pas' {fmRelPai},
  unRelEscolas in 'Formularios\unRelEscolas.pas' {fmRelEscolas},
  unConfiguracao in 'Formularios\unConfiguracao.pas' {fmConfiguracao},
  unUteis in '..\Comum\unUteis.pas',
  unCadPai in 'Formularios\unCadPai.pas' {fmCadPai},
  unCadEscola in 'Formularios\unCadEscola.pas' {fmCadEscola};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDadosCliente, DadosCliente);
  Application.CreateForm(TfmMenuEscola, fmMenuEscola);
  Application.Run;
end.

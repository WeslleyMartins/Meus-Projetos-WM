unit unRelEscolas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unRelPai, RLReport, DB, DBClient;

type
  TfmRelEscolas = class(TfmRelPai)
    rlblRelEscolaTitulo: TRLLabel;
    rlCodigo: TRLLabel;
    rlNome: TRLLabel;
    rlCNPJ: TRLLabel;
    rlRua: TRLLabel;
    rlNumero: TRLLabel;
    rlBairro: TRLLabel;
    rlTelefone: TRLLabel;
    rlCidade: TRLLabel;
    rlEmail: TRLLabel;
    rlObs: TRLLabel;
    rldbNome: TRLDBText;
    rldbCodigo: TRLDBText;
    rldbData: TRLDBText;
    rldbRua: TRLDBText;
    rldbNumero: TRLDBText;
    rldbBairro: TRLDBText;
    rldbTelefone: TRLDBText;
    rldbCidade: TRLDBText;
    rldbEmail: TRLDBText;
    rldbObs: TRLDBText;
    tbPesquisa: TClientDataSet;
    tbPesquisaESCOBS: TStringField;
    tbPesquisaESCNOM: TStringField;
    tbPesquisaESCNPJ: TStringField;
    tbPesquisaESCRUA: TStringField;
    tbPesquisaESCNUM: TStringField;
    tbPesquisaESCBAI: TStringField;
    tbPesquisaESCCID: TStringField;
    tbPesquisaESCTEL: TStringField;
    tbPesquisaESCMAI: TStringField;
    tbPesquisaESCCOD: TStringField;
    tbPesquisaESCDAT: TSQLTimeStampField;
    dsPesquisa: TDataSource;
    rlData: TRLLabel;
    RLDBText1: TRLDBText;
  private
    { Private declarations }
  protected
    procedure CreateWindowHandle(const Params: TCreateParams); override;
  public
    class procedure Exibir(AForm: TForm; ADataSet: TClientDataSet);
  end;

var
  fmRelEscolas: TfmRelEscolas;

implementation

{$R *.dfm}

class procedure TfmRelEscolas.Exibir(AForm: TForm; ADataSet: TClientDataSet);
var
  Dialogo: TfmRelEscolas;
begin
  Dialogo := TfmRelEscolas.Create(AForm);
  try
    Dialogo.tbPesquisa.CloneCursor(ADataSet, False);
    Dialogo.rlRelatorioEscola.Preview();
  finally
    Dialogo.Release;
  end;
end;

procedure TfmRelEscolas.CreateWindowHandle(const Params: TCreateParams);
begin
  inherited;
end;

end.

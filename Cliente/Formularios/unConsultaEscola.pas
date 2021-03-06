unit unConsultaEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unConsultaPai, DB, DBClient, ImgList, ComCtrls, ToolWin, Grids,
  DBGrids, StdCtrls, ExtCtrls, unConsultaEscolaController, Mask, JvExMask,
  JvToolEdit;

type
  TfmConsultaEscola = class(TfmConsultaPai)
    pnFiltros: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbCodigo: TEdit;
    dbNome: TEdit;
    edRua: TEdit;
    edBairro: TEdit;
    edCidade: TEdit;
    edCNPJ: TEdit;
    rgOrdem: TRadioGroup;
    edData: TDateTimePicker;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FController: TfmConsultaEscolaController;
    function GetController: TfmConsultaEscolaController;
  protected
    procedure ImprimirRelatorio; override;
    procedure Consultar; override;
  public
    procedure AfterConstruction; override;
    destructor Destroy; override;
    property Controller: TfmConsultaEscolaController read GetController;
  end;

var
  fmConsultaEscola: TfmConsultaEscola;

implementation

uses
  unCadEscola, unRelEscolas;

{$R *.dfm}

{ TfmConsultaPai1 }

procedure TfmConsultaEscola.AfterConstruction;
begin
  inherited;
  FController := TfmConsultaEscolaController.Create;
end;

procedure TfmConsultaEscola.Consultar;
  function Filtros: TFiltros;
  begin
    Result.Codigo := dbCodigo.Text;
    Result.Nome := dbNome.Text;
    Result.CNPJ := edCNPJ.Text;
    Result.Rua := edRua.Text;
    Result.Bairro := edBairro.Text;
    Result.Cidade := edCidade.Text;
    Result.Data := edData.DateTime;
    case rgOrdem.ItemIndex of
      1: Result.Ordem := oNome;
      2: Result.Ordem := oData;
      else
        Result.Ordem := oCodigo;
    end;
  end;

begin
  inherited;
  if not Controller.RealizarConsulta(Filtros, tbPesquisa) then
  begin
    MessageDlg('Consulta gerada vazia', mtInformation, [mbOk], 0);
    tbPesquisa.Close;
  end;
  dbCodigo.SetFocus;
end;

destructor TfmConsultaEscola.Destroy;
begin
  FreeAndNil(FController);
  inherited;
end;

procedure TfmConsultaEscola.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fmConsultaEscola := Nil;
end;

function TfmConsultaEscola.GetController: TfmConsultaEscolaController;
begin
  Result := FController;
end;

procedure TfmConsultaEscola.ImprimirRelatorio;
begin
  inherited;
  if not tbPesquisa.IsEmpty then    
    TfmRelEscolas.Exibir(Self, tbPesquisa)
  else
    MessageDlg('Relatório gerada vazia', mtInformation, [mbOk], 0);
end;

end.

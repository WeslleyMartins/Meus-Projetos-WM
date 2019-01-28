unit unConsultaEscolaController;

interface

uses
  DBClient;

type

  TOrdem = (oCodigo, oNome, oData);

  TFiltros = Record
    Codigo,
    Nome,
    CNPJ,
    Rua,
    Bairro,
    Cidade: string;
    Data: TDateTime;
    Ordem: TOrdem;
  End;

  TfmConsultaEscolaController = class
  public
    function RealizarConsulta(AFiltros: TFiltros; ATabela: TClientDataSet): Boolean;
  end;

implementation

uses
  unDadosClient, SysUtils;

{ TfmConsultaEscolaController }

function TfmConsultaEscolaController.RealizarConsulta(AFiltros: TFiltros;
  ATabela: TClientDataSet): Boolean;
var
  ConsultaSQL,
  WhereSQL,
  OrdenBySQL: string;
begin
  WhereSQL := '';
  OrdenBySQL := '';
  ConsultaSQL := 'select * from ESCOLAS';

  if AFiltros.Codigo <> '' then
    WhereSQL := WhereSQL + 'ESCCOD = ' + QuotedStr(AFiltros.Codigo) + ' and ';
  if AFiltros.Nome <> '' then
    WhereSQL := WhereSQL + 'ESCNOM like ' + QuotedStr('%' + AFiltros.Nome + '%') + ' and ';
  if AFiltros.CNPJ <> '' then
    WhereSQL := WhereSQL + 'ESCNPJ like ' + QuotedStr('%' + AFiltros.CNPJ + '%') + ' and ';
  if AFiltros.Rua <> '' then
    WhereSQL := WhereSQL + 'ESCRUA like ' + QuotedStr('%' + AFiltros.Rua + '%') + ' and ';
  if AFiltros.Bairro <> '' then
    WhereSQL := WhereSQL + 'ESCBAI like ' + QuotedStr('%' + AFiltros.Bairro + '%') + ' and ';
  if AFiltros.Cidade <> '' then
    WhereSQL := WhereSQL + 'ESCCID like ' + QuotedStr('%' + AFiltros.Cidade + '%') + ' and ';
  if AFiltros.Data > 0 then
    WhereSQL := WhereSQL + 'dateadd(dd, datediff(dd, 0, ESCDAT), 0) = ' + QuotedStr(FormatDateTime('dd/mm/yyyy', AFiltros.Data)) + ' and ';

  if WhereSQL <> '' then
  begin
    WhereSQL := ' where ' + WhereSQL;
    Delete(WhereSQL, Length(WhereSQL) - 4, 4);
  end;

  case AFiltros.Ordem of
    oCodigo: OrdenBySQL := 'order by ESCCOD';
    oNome: OrdenBySQL := 'order by ESCNOM';
    oData: OrdenBySQL := 'order by ESCDAT';
  end;

  ConsultaSQL := ConsultaSQL + WhereSQL + OrdenBySQL;

  ATabela.Close;
  ATabela.EnableControls;
  ATabela.CommandText := ConsultaSQL;
  ATabela.Open;
  Result := not ATabela.IsEmpty;
end;

end.

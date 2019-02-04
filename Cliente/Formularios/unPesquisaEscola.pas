unit unPesquisaEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, Grids, DBGrids, unDadosClient;

type
  TfmPesquisaEscola = class(TForm)
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    dsEscola: TDataSource;
    procedure SelecionarEscola(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FCodigoDaEscolaSelecionadaNaPesquisa: string;
  protected
    procedure CreateWindowHandle(const Params: TCreateParams); override;
  public
    class function Listar(AForm: TForm; var ACodigo: string): Boolean;
  end;

var
  fmPesquisaEscola: TfmPesquisaEscola;

implementation



{$R *.dfm}

{ TfmPesquisaEscola }

procedure TfmPesquisaEscola.CreateWindowHandle(const Params: TCreateParams);
begin
  inherited;
end;

procedure TfmPesquisaEscola.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfmPesquisaEscola.FormShow(Sender: TObject);
begin
  inherited;
  DadosCliente.tbPesEscola.Open;
end;

class function TfmPesquisaEscola.Listar(AForm: TForm; var ACodigo: string): Boolean;
var
  Dialogo: TfmPesquisaEscola;
begin
  Dialogo := TfmPesquisaEscola.Create(AForm);
  try
    Result := Dialogo.ShowModal = mrOk;    
    if Result then
      ACodigo := Dialogo.FCodigoDaEscolaSelecionadaNaPesquisa;
    DadosCliente.tbPesEscola.Close;  
  finally
    Dialogo.Release;
  end;
end;

procedure TfmPesquisaEscola.SelecionarEscola(Sender: TObject);
begin
  inherited;
  FCodigoDaEscolaSelecionadaNaPesquisa := dsEscola.DataSet.FieldByName('ESCCOD').AsString;
  ModalResult := mrOk;
end;

end.

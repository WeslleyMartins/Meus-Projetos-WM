unit unRelPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfmRelPai = class(TForm)
    rlRelatorioEscola: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelPai: TfmRelPai;

implementation

{$R *.dfm}

procedure TfmRelPai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_ESCAPE then
    Close;
end;

end.

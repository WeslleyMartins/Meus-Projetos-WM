unit unClassesConexao;

interface

uses
  IniFiles, SysUtils, SqlExpr;

type
  TConexao = class
  private
    FPath: string;
    FSecao: string;
    FDriverName: string;
    FGetDriverFunc: string;
    FVendorLib: string;
    FLibraryName: string;
    FHostName: string;
    FDataBase: string;
    FUserName: string;
    FPassword: string;
    FConnectionName: string;
  public
    constructor Create(Path: string; Secao: string);
    procedure ExtrairArquivoINI;
    procedure Conectar(Conexao: TSQLConnection);
    property Path: string read FPath;
    property Secao: string read FSecao;
    property DriverName: string read FDriverName;
    property GetDriverFunc: string read FGetDriverFunc;
    property VendorLib: string read FVendorLib;
    property LibraryName: string read FLibraryName;
    property HostName: string read FHostName;
    property DataBase: string read FDataBase;
    property UserName: string read FUserName;
    property Password: string read FPassword;
    property ConnectionName: string read FConnectionName;
  end;

implementation

{ TConexao }

constructor TConexao.Create(Path: string; Secao: string);
begin
  if FileExists(Path) then
  begin
    FPath := Path;
    FSecao := Secao;
  end
  else
    raise Exception.Create('Arquivo INI para configuração não encontrado.');
end;

procedure TConexao.Conectar(Conexao: TSQLConnection);
begin
  ExtrairArquivoINI;
  try
    Conexao.Params.Clear;
    Conexao.KeepConnection := False;
    Conexao.LoginPrompt := False;
    Conexao.LoadParamsOnConnect := False;
    Conexao.ConnectionName := ConnectionName;
    Conexao.DriverName := DriverName;
    Conexao.GetDriverFunc := GetDriverFunc;
    Conexao.VendorLib := VendorLib;
    Conexao.LibraryName := LibraryName;
    Conexao.Params.Values['HostName'] := HostName;
    Conexao.Params.Values['DataBase'] := DataBase;
    Conexao.Params.Values['User_Name'] := UserName;
    Conexao.Params.Values['Password'] := Password;
  except
    on E:Exception do
    raise Exception.Create('Erro ao carregar parâmetros de conexão!' + E.Message);
  end;
end;

procedure TConexao.ExtrairArquivoINI;
var
  ArquivoIni : TIniFile;
begin                                          
  ArquivoIni := TIniFile.Create(Path);
  try
    FConnectionName := ArquivoIni.ReadString(Secao, 'ConnectionName', '');
    FDriverName := ArquivoIni.ReadString(Secao, 'Hostname', '');
    FGetDriverFunc := ArquivoIni.ReadString(Secao, 'GetDriverFunc', '');
    FLibraryName := ArquivoIni.ReadString(Secao, 'LibraryName', '');
    FVendorLib := ArquivoIni.ReadString(Secao, 'VendorLib', '');
    FHostName := ArquivoIni.ReadString(Secao, 'HostName', '');
    FDataBase := ArquivoIni.ReadString(Secao, 'DataBase', '');
    FUserName := ArquivoIni.ReadString(Secao, 'User_Name', '');
    FPassword := ArquivoIni.ReadString(Secao, 'Password', '');
  finally
    ArquivoIni.Free;
  end;
end;
 
end.

unit unUteis;

interface

uses IniFiles;

type
  TutilitarioServidor = class
  private
    class var
      FArqIni: TIniFile;
  public
    class procedure LerDadosConexao(const ACaminhoInstalacao: string;
      var AIP, AHostName, ALogin, ASenha: string);
    class procedure GravarDadosConexao(const ACaminhoInstalacao: string;
      const AIP, AHostName, ALogin, ASenha: string);
  end;

implementation

{ TutilitarioServidor }

class procedure TutilitarioServidor.GravarDadosConexao(const ACaminhoInstalacao: string;
  const AIP, AHostName, ALogin, ASenha: string);
begin
  FArqIni := TIniFile.Create(ACaminhoInstalacao + '\Conexao.ini');
  try
    FArqIni.WriteString('CONEXAO', 'IP', AIP);
    FArqIni.WriteString('CONEXAO', 'HostName', AHostName);
    FArqIni.WriteString('CONEXAO', 'Login', ALogin);
    FArqIni.WriteString('CONEXAO', 'Senha', ASenha);
  finally
    FArqIni.Free;
  end;
end;

class procedure TutilitarioServidor.LerDadosConexao(const ACaminhoInstalacao: string;
  var AIP, AHostName, ALogin, ASenha: string);
begin
  FArqIni := TIniFile.Create(ACaminhoInstalacao + '\Conexao.ini');
  try
    AIP := FArqIni.ReadString('CONEXAO', 'IP', AIP);
    AHostName := FArqIni.ReadString('CONEXAO', 'HostName', AHostName);
    ALogin := FArqIni.ReadString('CONEXAO', 'Login', ALogin);
    ASenha := FArqIni.ReadString('CONEXAO', 'Senha', ASenha);
  finally
    FArqIni.Free;
  end;
end;

end.

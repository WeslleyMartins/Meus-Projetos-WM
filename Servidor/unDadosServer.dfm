object DadosServidor: TDadosServidor
  OldCreateOrder = False
  Height = 172
  Width = 458
  object Conexao: TSQLConnection
    ConnectionName = 'ESCOLAS'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbxmss30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'SchemaOverride=%.dbo'
      'DriverUnit=DBXDynalink'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXDynalinkDriver10' +
        '0.bpl'
      'DriverPackage=DBXCommonDriver110.bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxDynalinkDriver,Version=11.0.5000.0,Culture=neutral,Pu' +
        'blicKeyToken=91d62ebb5b0d1b1b'
      
        'DriverAssembly=Borland.Data.DbxCommonDriver,Version=11.0.5000.0,' +
        'Culture=neutral,PublicKeyToken=a91a7c5705831a4f'
      'HostName=Weslley-PC\MSSQLSERVERPCWES'
      'DataBase=EscolaDB'
      'User_Name=sa'
      'Password=FTBCLAN'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False'
      'Prepare SQL=False'
      
        'MetaDataPackageLoader=TDBXMsSqlMetaDataCommandFactory,DbxReadOnl' +
        'yMetaData100.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMsSqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxReadOnlyMetaData,Version=11.0.5000.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b')
    VendorLib = 'oledb'
    Connected = True
    Left = 24
    Top = 56
  end
  object tbEscola: TSQLDataSet
    CommandText = 'select * from ESCOLAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 112
    Top = 8
    object tbEscolaESCNOM: TStringField
      FieldName = 'ESCNOM'
      Size = 50
    end
    object tbEscolaESCNPJ: TStringField
      FieldName = 'ESCNPJ'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object tbEscolaESCRUA: TStringField
      FieldName = 'ESCRUA'
      Size = 50
    end
    object tbEscolaESCNUM: TStringField
      DisplayWidth = 10
      FieldName = 'ESCNUM'
      Size = 10
    end
    object tbEscolaESCBAI: TStringField
      FieldName = 'ESCBAI'
      Size = 50
    end
    object tbEscolaESCCID: TStringField
      FieldName = 'ESCCID'
      Size = 50
    end
    object tbEscolaESCTEL: TStringField
      FieldName = 'ESCTEL'
      EditMask = '99999999999999;0;_'
      Size = 15
    end
    object tbEscolaESCMAI: TStringField
      FieldName = 'ESCMAI'
      Size = 50
    end
    object tbEscolaESCOBS: TStringField
      FieldName = 'ESCOBS'
      Size = 50
    end
    object tbEscolaESCCOD: TStringField
      FieldName = 'ESCCOD'
      Size = 6
    end
    object tbEscolaESCDAT: TSQLTimeStampField
      FieldName = 'ESCDAT'
    end
  end
  object dspEscola: TDataSetProvider
    DataSet = tbEscola
    Left = 112
    Top = 88
  end
  object tbPesquisaEscola: TSQLDataSet
    CommandText = 'select * from ESCOLAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 232
    Top = 8
    object tbPesquisaEscolaESCNOM: TStringField
      FieldName = 'ESCNOM'
      Size = 50
    end
    object tbPesquisaEscolaESCNPJ: TStringField
      FieldName = 'ESCNPJ'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object tbPesquisaEscolaESCRUA: TStringField
      FieldName = 'ESCRUA'
      Size = 50
    end
    object tbPesquisaEscolaESCNUM: TStringField
      DisplayWidth = 10
      FieldName = 'ESCNUM'
      Size = 10
    end
    object tbPesquisaEscolaESCBAI: TStringField
      FieldName = 'ESCBAI'
      Size = 50
    end
    object tbPesquisaEscolaESCCID: TStringField
      FieldName = 'ESCCID'
      Size = 50
    end
    object tbPesquisaEscolaESCTEL: TStringField
      FieldName = 'ESCTEL'
      EditMask = '99999999999999;0;_'
      Size = 15
    end
    object tbPesquisaEscolaESCMAI: TStringField
      FieldName = 'ESCMAI'
      Size = 50
    end
    object tbPesquisaEscolaESCOBS: TStringField
      FieldName = 'ESCOBS'
      Size = 50
    end
    object tbPesquisaEscolaESCCOD: TStringField
      FieldName = 'ESCCOD'
      Size = 6
    end
    object tbPesquisaEscolaESCDAT: TSQLTimeStampField
      FieldName = 'ESCDAT'
      Required = True
    end
  end
  object dspPesquisEscola: TDataSetProvider
    DataSet = tbPesquisaEscola
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 232
    Top = 88
  end
  object tbNovoCodigoEscola: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'SELECT ISNULL(MAX(ESCCOD) + 1, 1) AS NOVO_CODIGO_ESCOLA FROM ESC' +
      'OLAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 350
    Top = 8
    object tbNovoCodigoEscolaNOVO_CODIGO_ESCOLA: TIntegerField
      FieldName = 'NOVO_CODIGO_ESCOLA'
      Required = True
    end
  end
end

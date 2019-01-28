inherited fmRelEscolas: TfmRelEscolas
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de escolas'
  ClientHeight = 371
  ClientWidth = 771
  Position = poMainFormCenter
  Visible = False
  ExplicitWidth = 787
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited rlRelatorioEscola: TRLReport
    DataSource = dsPesquisa
    inherited RLBand1: TRLBand
      object rlblRelEscolaTitulo: TRLLabel
        Left = 326
        Top = 0
        Width = 66
        Height = 19
        Align = faCenterTop
        Caption = 'Escolas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand2: TRLBand
      Height = 34
      ExplicitHeight = 34
      object rlCodigo: TRLLabel
        Left = 3
        Top = -2
        Width = 42
        Height = 14
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlNome: TRLLabel
        Left = 58
        Top = -2
        Width = 138
        Height = 14
        AutoSize = False
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlCNPJ: TRLLabel
        Left = 196
        Top = -2
        Width = 118
        Height = 14
        AutoSize = False
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlRua: TRLLabel
        Left = 381
        Top = -2
        Width = 100
        Height = 14
        AutoSize = False
        Caption = 'Rua'
      end
      object rlNumero: TRLLabel
        Left = 484
        Top = -2
        Width = 48
        Height = 14
        AutoSize = False
        Caption = 'N'#250'mero'
      end
      object rlBairro: TRLLabel
        Left = 541
        Top = -2
        Width = 91
        Height = 14
        AutoSize = False
        Caption = 'Bairro'
      end
      object rlTelefone: TRLLabel
        Left = 3
        Top = 15
        Width = 93
        Height = 14
        AutoSize = False
        Caption = 'Telefone'
      end
      object rlCidade: TRLLabel
        Left = 633
        Top = -2
        Width = 85
        Height = 14
        AutoSize = False
        Caption = 'Cidade'
      end
      object rlEmail: TRLLabel
        Left = 99
        Top = 15
        Width = 195
        Height = 14
        AutoSize = False
        Caption = 'E-Mail'
      end
      object rlObs: TRLLabel
        Left = 300
        Top = 15
        Width = 415
        Height = 14
        AutoSize = False
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlData: TRLLabel
        Left = 316
        Top = -2
        Width = 59
        Height = 14
        AutoSize = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand3: TRLBand
      Top = 101
      ExplicitTop = 101
      object rldbNome: TRLDBText
        Left = 58
        Top = 0
        Width = 138
        Height = 14
        Align = faTopOnly
        AutoSize = False
        DataField = 'ESCNOM'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlNome
        ParentFont = False
        Transparent = False
      end
      object rldbCodigo: TRLDBText
        Left = 3
        Top = 0
        Width = 45
        Height = 14
        Align = faTopOnly
        DataField = 'ESCCOD'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlCodigo
        ParentFont = False
        Transparent = False
      end
      object rldbData: TRLDBText
        Left = 196
        Top = 0
        Width = 41
        Height = 14
        DataField = 'ESCNPJ'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlCNPJ
        ParentFont = False
      end
      object rldbRua: TRLDBText
        Left = 381
        Top = 0
        Width = 100
        Height = 14
        AutoSize = False
        DataField = 'ESCRUA'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlRua
        ParentFont = False
      end
      object rldbNumero: TRLDBText
        Left = 485
        Top = 0
        Width = 46
        Height = 14
        Alignment = taCenter
        DataField = 'ESCNUM'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlNumero
        ParentFont = False
      end
      object rldbBairro: TRLDBText
        Left = 541
        Top = 0
        Width = 91
        Height = 14
        AutoSize = False
        DataField = 'ESCBAI'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlBairro
        ParentFont = False
      end
      object rldbTelefone: TRLDBText
        Left = 3
        Top = 19
        Width = 41
        Height = 14
        DataField = 'ESCTEL'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlTelefone
        ParentFont = False
      end
      object rldbCidade: TRLDBText
        Left = 633
        Top = 0
        Width = 85
        Height = 14
        AutoSize = False
        DataField = 'ESCCID'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlCidade
        ParentFont = False
      end
      object rldbEmail: TRLDBText
        Left = 99
        Top = 19
        Width = 195
        Height = 14
        AutoSize = False
        DataField = 'ESCMAI'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlEmail
        ParentFont = False
      end
      object rldbObs: TRLDBText
        Left = 300
        Top = 19
        Width = 45
        Height = 14
        DataField = 'ESCOBS'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlObs
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 316
        Top = 0
        Width = 59
        Height = 14
        AutoSize = False
        DataField = 'ESCDAT'
        DataSource = dsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rlData
        ParentFont = False
      end
    end
    inherited RLBand4: TRLBand
      Top = 151
      ExplicitTop = 151
    end
  end
  object tbPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 232
    object tbPesquisaESCOBS: TStringField
      FieldName = 'ESCOBS'
      Size = 50
    end
    object tbPesquisaESCNOM: TStringField
      FieldName = 'ESCNOM'
      Size = 50
    end
    object tbPesquisaESCNPJ: TStringField
      FieldName = 'ESCNPJ'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object tbPesquisaESCRUA: TStringField
      FieldName = 'ESCRUA'
      Size = 50
    end
    object tbPesquisaESCNUM: TStringField
      DisplayWidth = 10
      FieldName = 'ESCNUM'
      Size = 10
    end
    object tbPesquisaESCBAI: TStringField
      FieldName = 'ESCBAI'
      Size = 50
    end
    object tbPesquisaESCCID: TStringField
      FieldName = 'ESCCID'
      Size = 50
    end
    object tbPesquisaESCTEL: TStringField
      FieldName = 'ESCTEL'
      EditMask = '99999999999999;0;_'
      Size = 15
    end
    object tbPesquisaESCMAI: TStringField
      FieldName = 'ESCMAI'
      Size = 50
    end
    object tbPesquisaESCCOD: TStringField
      FieldName = 'ESCCOD'
      Size = 6
    end
    object tbPesquisaESCDAT: TSQLTimeStampField
      FieldName = 'ESCDAT'
    end
  end
  object dsPesquisa: TDataSource
    DataSet = tbPesquisa
    Left = 392
    Top = 232
  end
end

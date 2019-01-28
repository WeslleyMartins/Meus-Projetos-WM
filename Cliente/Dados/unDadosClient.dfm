object DadosCliente: TDadosCliente
  OldCreateOrder = False
  Height = 176
  Width = 301
  object SimpleObjectBroker1: TSimpleObjectBroker
    Servers = <
      item
        ComputerName = 'WESLLEY-PC'
      end>
    LoadBalanced = True
    Left = 57
    Top = 24
  end
  object ConnectionBroker1: TConnectionBroker
    Connection = DCOMConnection1
    Left = 56
    Top = 96
  end
  object DCOMConnection1: TDCOMConnection
    ServerGUID = '{BC629291-4363-4DB7-B072-31F5D175EE75}'
    ServerName = 'Server.DadosServidor'
    ObjectBroker = SimpleObjectBroker1
    Left = 168
    Top = 24
  end
  object tbPesEscola: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisEscola'
    RemoteServer = ConnectionBroker1
    OnReconcileError = tbPesEscolaReconcileError
    Left = 162
    Top = 96
    object tbPesEscolaESCNOM: TStringField
      FieldName = 'ESCNOM'
      Size = 50
    end
    object tbPesEscolaESCNPJ: TStringField
      FieldName = 'ESCNPJ'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object tbPesEscolaESCRUA: TStringField
      FieldName = 'ESCRUA'
      Size = 50
    end
    object tbPesEscolaESCNUM: TStringField
      DisplayWidth = 10
      FieldName = 'ESCNUM'
      Size = 10
    end
    object tbPesEscolaESCBAI: TStringField
      FieldName = 'ESCBAI'
      Size = 50
    end
    object tbPesEscolaESCCID: TStringField
      FieldName = 'ESCCID'
      Size = 50
    end
    object tbPesEscolaESCTEL: TStringField
      FieldName = 'ESCTEL'
      EditMask = '99999999999999;0;_'
      Size = 15
    end
    object tbPesEscolaESCMAI: TStringField
      FieldName = 'ESCMAI'
      Size = 50
    end
    object tbPesEscolaESCOBS: TStringField
      FieldName = 'ESCOBS'
      Size = 50
    end
    object tbPesEscolaESCCOD: TStringField
      FieldName = 'ESCCOD'
      Size = 6
    end
    object tbPesEscolaESCDAT: TSQLTimeStampField
      FieldName = 'ESCDAT'
    end
  end
end

inherited fmRelPai: TfmRelPai
  Caption = 'Relat'#243'rio PAI'
  ClientHeight = 469
  ClientWidth = 790
  FormStyle = fsNormal
  Visible = False
  OnKeyDown = FormKeyDown
  ExplicitWidth = 806
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 13
  object rlRelatorioEscola: TRLReport
    Left = -3
    Top = -1
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Listagem'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 29
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLSystemInfo2: TRLSystemInfo
        Left = 600
        Top = 0
        Width = 118
        Height = 16
        Align = faRightTop
        Info = itPageNumber
        Text = 'P'#225'g.:'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 67
      Width = 718
      Height = 43
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 110
      Width = 718
      Height = 50
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 160
      Width = 718
      Height = 16
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 471
        Top = 0
        Width = 163
        Height = 16
        Text = 'Relat'#243'rio gerado em: '
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 679
        Top = 0
        Width = 39
        Height = 16
        Align = faRightTop
        Info = itHour
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 225
        Height = 16
        Info = itDetailCount
        Text = 'Quantidade de registros: '
      end
    end
  end
end

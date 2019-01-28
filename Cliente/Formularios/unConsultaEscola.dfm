inherited fmConsultaEscola: TfmConsultaEscola
  Caption = 'Consulta e exibe os dados das Escolas'
  ClientWidth = 624
  OldCreateOrder = False
  Position = poMainFormCenter
  ExplicitWidth = 640
  PixelsPerInch = 96
  TextHeight = 13
  object pnFiltros: TPanel [0]
    Left = 0
    Top = 0
    Width = 624
    Height = 180
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 0
    ExplicitHeight = 179
    object GroupBox1: TGroupBox
      Left = 12
      Top = 60
      Width = 602
      Height = 107
      Caption = 'Filtros'
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 19
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 76
        Top = 19
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label4: TLabel
        Left = 14
        Top = 59
        Width = 19
        Height = 13
        Caption = 'Rua'
      end
      object Label5: TLabel
        Left = 151
        Top = 59
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label6: TLabel
        Left = 288
        Top = 59
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label7: TLabel
        Left = 425
        Top = 59
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label8: TLabel
        Left = 381
        Top = 19
        Width = 25
        Height = 13
        Caption = 'CNPJ'
      end
      object dbCodigo: TEdit
        Left = 15
        Top = 34
        Width = 55
        Height = 19
        MaxLength = 6
        TabOrder = 0
      end
      object dbNome: TEdit
        Left = 76
        Top = 34
        Width = 298
        Height = 19
        TabOrder = 1
      end
      object edRua: TEdit
        Left = 15
        Top = 73
        Width = 130
        Height = 19
        TabOrder = 3
      end
      object edBairro: TEdit
        Left = 151
        Top = 73
        Width = 130
        Height = 19
        TabOrder = 4
      end
      object edCidade: TEdit
        Left = 288
        Top = 73
        Width = 130
        Height = 19
        TabOrder = 5
      end
      object edCNPJ: TEdit
        Left = 381
        Top = 34
        Width = 130
        Height = 19
        TabOrder = 2
      end
      object rgOrdem: TRadioGroup
        Left = 520
        Top = 10
        Width = 74
        Height = 88
        Caption = 'Ordem'
        ItemIndex = 0
        Items.Strings = (
          'C'#243'digo'
          'Nome'
          'Data')
        TabOrder = 6
      end
      object edData: TDateTimePicker
        Left = 425
        Top = 73
        Width = 87
        Height = 19
        Date = 43489.985277708340000000
        Time = 43489.985277708340000000
        TabOrder = 7
      end
    end
  end
  inherited ToolBar1: TToolBar
    Left = 141
    Top = 9
    HotImages = ImageList1
    TabOrder = 1
    ExplicitLeft = 141
    ExplicitTop = 9
    inherited btConsultar: TToolButton
      ExplicitWidth = 115
      ExplicitHeight = 46
    end
    inherited btImprimir: TToolButton
      OnClick = btImprimirClick
    end
  end
  inherited pnGrid: TPanel
    Width = 624
    TabOrder = 2
    ExplicitWidth = 624
    inherited DBGrid1: TDBGrid
      Width = 624
      Columns = <
        item
          Expanded = False
          FieldName = 'ESCCOD'
          Title.Caption = 'C'#243'digo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCNOM'
          Title.Caption = 'Escola'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCDAT'
          Title.Caption = 'Data'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCNPJ'
          Title.Caption = 'CNPJ'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCRUA'
          Title.Caption = 'Rua'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCNUM'
          Title.Caption = 'N'#250'mero'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCBAI'
          Title.Caption = 'Bairro'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCCID'
          Title.Caption = 'Cidade'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCTEL'
          Title.Caption = 'Telefone'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCMAI'
          Title.Caption = 'E-mail'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCOBS'
          Title.Caption = 'Observa'#231#227'o'
          Width = 300
          Visible = True
        end>
    end
  end
  inherited ImageList1: TImageList
    Left = 248
    Bitmap = {
      494C010103003800540018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000009263
      5D00A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F8FF555555FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B004E1E1F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009365
      5E00EFD3B400F6DAB600F3D5AD00F2D1A500F0CE9E00EFCB9700EFC79100EEC5
      8900EBC18200EBC08000EBC08000EBC08000EBC08000EBC08000EBC08000EDC1
      8000EABF7F009F6F600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFF000000FF010101FFE3E3E3FF000000000000000000000000000000000000
      000000000000000000000000000000000000824B4B00824B4B008C4B4B00914B
      4B004E1E1F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009365
      5F00EED4B800F4DABB00F2D5B100F0D1AA00EFCFA300EECB9D00EDC79600EDC5
      8F00EBC18800EABF8200E9BD7F00E9BD7F00E9BD7F00E9BD7F00E9BD7F00EABF
      7F00E7BC7E009F6F600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2AFF000000FF030303FF535353FF868686FF0000000000000000000000000000
      000000000000824B4B00824B4B00894B4B009C4B4C00B64B4C00BD4B4C009F4B
      4C004E1E1F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009365
      5F00EED7C000F6E0C100F2D9B800F2D4B100F0D1AA00EFCFA400EECB9D00EDC7
      9600EDC58F00EBC18900EABF8200E9BD7F00E9BD7F00E9BD7F00E9BD7F00EABF
      7F00E7BC7E009F6F600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000515151FF0000
      00FF040404FF1F1F1FFF919191FFFDFDFDFF000000000000000000000000824B
      4B00824B4B009A4D4E00AF4E4F00C14E4F00C04D4E00BF4C4D00BF4C4D009F4B
      4C004E1E1F00994B4B00824B4B00824B4B00824B4B00824B4B00824B4B00824B
      4B00824B4B00824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009365
      5F00EFDAC500F7E2C700F3DCBF00F2D8B700F2D4B000F0D1AA00EFCEA300EECB
      9C00EDC79500EDC58F00EBC18900E9BD8100E9BD7F00E9BD7F00E9BD7F00EABF
      7F00E7BC7E009F6F600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B4B4BFF000000FF0505
      05FF212121FF838383FF0000000000000000000000000000000000000000824B
      4B00C5545500C9545500C7535400C6525300C5515200C4505100C24F5000A04C
      4D004E1E1F00FE8B8C00FC929300FB9A9C00FAA3A400F8AAAB00F7B1B100F7B5
      B600F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009365
      6000F0DECC00F8E6CF00F6E0C600F3DCBD00F2D8B700F2D5B100F0D1AA00EFCE
      A300EECB9C00EDC79600EDC59000EBC18900E9BF8200E9BD7F00E9BD7F00EABF
      7F00E7BC7E009F6F600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F5FFF000000FF070707FF3E3E
      3EFF9B9B9BFF000000000000000000000000000000000000000000000000824B
      4B00CE585900CC575800CB565700CA555600C9545500C7535400C6525300A34E
      4F004E1E1F003F9E4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC
      4C00F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009566
      6000F2E2D300FAEAD700F6E3CE00F4DEC500F3DCBF00F2D8B800F0D4B100F0D1
      AA00EFCEA300EECB9D00EDC79700EDC59000EBC18900E9BD8100E9BD7F00EABF
      7F00E7BC7E009F6F600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000797979FF000000FF090909FF272727FFA8A8
      A8FF00000000000000000000000000000000000000000000000000000000824B
      4B00D15B5C00D05A5B00CF595A00CE585900CC575800CB565700CA555600A550
      50004E1E1F003F9E4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC
      4C00F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009869
      6300F2E6DA00FAEEDE00F7E7D400F6E2CB00F4E0C500F3DCBF00F2D8B700F2D5
      B000F0D1A900EFCEA300EECB9D00EDC79600EDC58F00EBC18900E9BD8100EABF
      7F00E7BC7E009F6F600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000090909FF000000FF0A0A0AFF464646FFD0D0D0FF0000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00D55E5F00D55E5F00D45D5E00D35C5D00D15B5C00D05A5B00CF595A00A651
      52004E1E1F003F9E4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC
      4C00F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009E6E
      6400F4EAE100FBF2E600F8EADC00F7E6D300F6E2CC00F4E0C600F3DCBF00F2D8
      B700F2D5B000F0D1AA00EFCEA400EDCB9C00EDC79600EBC58F00EBC18800EABF
      8200E7BB7E009F6F600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BCBCBCFF000000FF0C0C0CFF2E2E2EFFE7E7E7FF000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00DA636400D9626300D8606200D75F6000D55E5F00D45D5E00D35C5D00A953
      54004E1E1F003F9E4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC
      4C00F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A372
      6600F6EEE900FCF6ED00F8EFE300F7EADA00F7E6D300F6E2CC00F4DEC500F3DC
      BD00F2D8B600F0D5B000F0D1AA00EFCEA300EECA9C00EDC79500EBC48E00EBC2
      8800E7BC80009F6F600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F2FF000000FF0E0E0EFF303030FF8A8A8AFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00DE666700DD656600DC646500DA636400D9626300D8606200D75F6000AB55
      55004E1E1F003F9E4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC
      4C00F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A775
      6800F8F3F000FEFBF600FBF3EB00F8EEE300F8EBDC00F7E7D300F6E2CC00F4E0
      C500F3DCBD00F2D8B700F2D4B100F0D1A900EFCEA300EDCB9C00EDC79500EDC5
      8F00E9BF87009F6F620000000000000000000000000000000000000000000000
      0000DBDBDBFFC2C2C3FFC8C9CAFFC8C8C9FFC1C1C2FFCBCBCBFF000000000000
      0000DFDFDFFFF0F0F0FF525252FFFDFDFDFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00E2696A00E1686900E0676800DE666700E06D6E00E6909100DC646500AC56
      57004E1E1F0058A55B001EBC4C001EBC4C001EBC4C001EBC4C001EBC4C001EBC
      4C00F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AC79
      6900FAF6F400FFFFFE00FEF8F300FBF2EA00F8EEE300F8EBDA00F7E6D300F7E2
      CC00F6E0C500F3DCBF00F2D8B700F2D4B000F0D1AA00EFCEA300EECB9C00EEC9
      9600EAC18E00A070630000000000000000000000000000000000F0F0F0FFC4C4
      C5FFDFDEDAFFF2E7D7FFF7EDDEFFF9EFE2FFF6EEE0FFEEEAE4FFC7C7C7FF8F8F
      8FFFFAFAFAFFDEDEDEFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00E76D6E00E66C6D00E56B6C00E36A6B00EEA6A700FFFFFF00EB9C9C00AF58
      59004E1E1F00EECEAF00B7EBAA005ED377005ED3770045CA670045CA670045CA
      6700F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B17E
      6B00FAF6F400FFFFFF00FFFEFB00FEF7F000FBF3EA00FAEFE300F8EADA00F7E7
      D300F6E2CB00F6E0C500F3DCBF00F2D8B600F2D4B000F0D1A900EFCEA100EECB
      9C00EBC59200A0726400000000000000000000000000F5F5F5FFE4E2DEFFFAF3
      EAFFFFFEFDFFFCF8F4FFFAF5EEFFFBF7EFFFFCF8F1FFFEFCFAFFFCF8F0FFDFE0
      DFFFD8D8D8FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00EB707200EA6F7000E96E6F00E76D6E00F2A9AA00FFFFFF00EB959600B15A
      5A004E1E1F00EECEAF00FFFFD300FFFFD300FFFFD300FFFFD300D9F6BD00D9F6
      BD00F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B681
      6C00FAF6F400FFFFFF00FFFFFF00FFFCFB00FEF7F200FBF3EB00F8EEE300F8EB
      DC00F7E6D300F6E3CC00F6DEC500F3DCBD00F3D8B600F2D4AF00F0D1A900F0CF
      A300EDC999009D706500000000000000000000000000D1D0D0FFF8F4F0FFFCF9
      F6FFFDFAF7FFFEFBF8FFFFFDFBFFFFFEFDFFFEFDFCFFFFFDF9FFFFFEFEFFFCF9
      F6FFCFCFCFFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00EF747500EE737400ED727300EB707200EA6F7000EF909100E76D6E00B25B
      5C004E1E1F00EECEAF00FFFFD300FFFFD300FFFFD300FFFFD300FFFFD300FFFF
      D300F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BB84
      6E00FAF6F400FFFFFF00FFFFFF00FFFFFF00FFFEFB00FEF7F200FBF3EA00FAEE
      E300F8EADA00F7E6D300F6E2CB00F6DEC400F3DABC00F2D8B600F0D4AF00EFD0
      A700CEB49100896A63000000000000000000D8D8D8FFE2DDD7FFF3EDE3FFFFFE
      FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE7E5E3FFE2E2E2FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00F3777800F3777800F2767700F0757600EF747500EE737400ED727300B55D
      5D004E1E1F00EECEAF00FFFFD300FFFFD300FFFFD300FFFFD300FFFFD300FFFF
      D300F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C089
      6F00FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FEF7F200FBF2
      EA00FAEEE200F8EBDA00F7E6D300F6E2CB00F6DEC400F3DCBD00E5CEAF00C4B0
      9600A1927F00806762000000000000000000DEDEDFFFDFD9CCFFF6F2EBFFFFFE
      FDFFFFFDFDFFFFFEFDFFFFFDFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFD
      FCFFEFEBE6FFDCDCDDFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00F87B7D00F77A7B00F6797A00F4787900F3777800F2767700F0757600B75F
      5F004E1E1F00EECEAF00FFFFD300FFFFD300FFFFD300FFFFD300FFFFD300FFFF
      D300F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C58C
      7000FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCFB00FCF8
      F200FBF3EA00F8EEE200F8EAD900F8E7D400FAE9D000E0D0BA00B8AB9A00A79C
      8B00A4978600846964000000000000000000E8E8E9FFE7DFD2FFFAF7F2FFFFFC
      F7FFFEFCF7FFFEFCF7FFFEFCF7FFFEFCF7FFFEFCF7FFFEFBF7FFFEFBF7FFFDFB
      F5FFF2EDE4FFE5E5E6FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00FC7F8000FB7E7F00FA7D7E00F87B7D00F77A7B00F6797A00F4787900B860
      62004E1E1F00EECEAF00FFFFD300FFFFD300FFFFD300FFFFD300FFFFD300FFFF
      D300F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CB91
      7300FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFE
      FB00FCF7F000FBF2E900FBF2E500E9D3C4009E675B0098665B0095655B009665
      5B0096655B00986859000000000000000000F0F1F2FFDACEB8FFFDF4E8FFFEF6
      EBFFFEF6EBFFFFF6ECFFFEF6EBFFFFF6EBFFFEF7EEFFFDF8F0FFFDF7EFFFFCF4
      EAFFEDE2D3FFEDEEEEFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00FF818200FF818200FE808100FC7F8000FC7F8000FB7E7F00FA7D7E00BB63
      63004E1E1F00EECEAF00FFFFD300FFFFD300FFFFD300FFFFD300FFFFD300FFFF
      D300F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CF96
      7400FBF7F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFCFA00FCF7F000FFFAEF00DAC0B6009F675B00DAA16B00DD984F00E290
      3A00EA892300A5686B000000000000000000F4F4F4FFCDBDA5FFF9EDDBFFFDF2
      E2FFFDF2E2FFFCF2E2FFFDF2E1FFFCF3E5FFFEF7EEFFFFFDFBFFFEFCF7FFFCF2
      E7FFE1D8CAFFEFEFEFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00FF818200FF818200FF818200FF818200FF818200FE808100FE808100BD65
      65004E1E1F00EECEAF00FFFFD300FFFFD300FFFFD300FFFFD300FFFFD300FFFF
      D300F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D498
      7500FCF8F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFCFB00FFFEF700DDC4BC009F675B00EAB47400EFA95200F6A0
      3600A5686B00000000000000000000000000FAFAFAFFF7F9FAFFF3E4D1FFFCEE
      D7FFFCEED9FFFBEDD7FFFCECD6FFFDF7EFFFFEFCF9FFFFFFFEFFFEFCFCFFFFFC
      F7FFFAFCFDFFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00F77E7F00FF818200FF818200FF818200FF818200FF818200FF818200BF66
      66004E1E1F00EECEAF00FFFFD300FFFFD300FFFFD300FFFFD300FFFFD300FFFF
      D300F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D498
      7500FCF8F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DDC7C2009F675B00EAB27300EFA75100A568
      6B000000000000000000000000000000000000000000F5F5F5FFCAB391FFF8F2
      E7FFFCF1E0FFFDF2E1FFFDF5E8FFFFFDFBFFFFFEFDFFFEFDFCFFFFFEFCFFDCCA
      B1FFF5F5F5FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00824B4B00AF5E5F00D56F7000FF818200FF818200FF818200FF818200BF66
      66004E1E1F00EECEAF00FFFFD300FFFFD300FFFFD300FFFFD300FFFFD300FFFF
      D300F7B5B600824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D498
      7500FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E2D0CE009F675B00EDB57200A5686B000000
      0000000000000000000000000000000000000000000000000000FAFBFEFFC7B2
      94FFFDFAF4FFFEFDFCFFFFFEFCFFFFFFFFFFFEFEFCFFFEFCFAFFD4C2ABFFFBFD
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000824B4B00824B4B0091515200B6626300EE7A7B00FF818200BF66
      66004E1E1F00914B4B00824B4B00824B4B00824B4B00824B4B00824B4B00824B
      4B00824B4B00824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D395
      7000E6C2AC00E7C6B000E7C6B000E6C4B000E3C2B000E1C0AF00DEBDAD00DCBC
      AC00D8BAAC00D5B7AB00D3B5AB00C09990009F675B00A5686B00000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F6FFFDFFFFFFD6CDC2FFCAB9A0FFCBBAA4FFDBD4CBFFF9FAFDFFF7F7F7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000824B4B00824B4B00985555009F58
      58004E1E1F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F7FFF7F7F7FFF6F6F6FFF6F6F7FFFDFDFDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B004E1E1F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00E00003FFFFF3FFE7FF000000E00003FF
      FFE1FF07FF000000E00003FFFFE0F807FF000000E00003FFFFC0E00003000000
      E00003FFFF83E00003000000E00003FFFF07E00003000000E00003FFFE0FE000
      03000000E00003FFFC1FE00003000000E00003FFF83FE00003000000E00003FF
      F07FE00003000000E00003F030FFE00003000000E00003C003FFE00003000000
      E000038007FFE00003000000E000038007FFE00003000000E000030003FFE000
      03000000E000030003FFE00003000000E000030003FFE00003000000E0000300
      03FFE00003000000E000030003FFE00003000000E000070003FFE00003000000
      E0000F8007FFE00003000000E0001FC00FFFF80003000000E0003FE01FFFFF07
      FF000000FFFFFFF83FFFFFE7FF00000000000000000000000000000000000000
      000000000000}
  end
  inherited tbPesquisa: TClientDataSet
    ProviderName = 'dspPesquisEscola'
    RemoteServer = DadosCliente.ConnectionBroker1
    Left = 288
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
  inherited dsPesquisa: TDataSource
    DataSet = tbPesquisa
    Left = 328
  end
end
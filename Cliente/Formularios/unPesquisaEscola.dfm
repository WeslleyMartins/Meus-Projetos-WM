inherited fmPesquisaEscola: TfmPesquisaEscola
  BorderIcons = [biSystemMenu]
  Caption = 'Listagem de escolas'
  ClientHeight = 162
  ClientWidth = 375
  FormStyle = fsNormal
  Position = poMainFormCenter
  Visible = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 391
  ExplicitHeight = 200
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 375
    Height = 162
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 375
      Height = 162
      Align = alClient
      DataSource = dsEscola
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = SelecionarEscola
      Columns = <
        item
          Expanded = False
          FieldName = 'ESCCOD'
          Title.Caption = 'C'#243'digo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCNOM'
          Title.Caption = 'Escola'
          Width = 283
          Visible = True
        end>
    end
  end
  object dsEscola: TDataSource
    DataSet = DadosCliente.tbPesEscola
    Left = 168
    Top = 80
  end
end

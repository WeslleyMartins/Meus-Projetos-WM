object frmConfiguracaoBD: TfrmConfiguracaoBD
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o'
  ClientHeight = 97
  ClientWidth = 216
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 56
    Width = 216
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 193
    DesignSize = (
      216
      41)
    object btFechar: TcxButton
      Left = 133
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      ModalResult = 3
      TabOrder = 0
    end
    object btGravar: TcxButton
      Left = 52
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btGravarClick
    end
  end
  object cxLabel4: TcxLabel
    Left = 8
    Top = 2
    Caption = 'Servidor:'
  end
  object edIP: TMaskEdit
    Left = 8
    Top = 21
    Width = 199
    Height = 21
    TabOrder = 2
    OnKeyPress = IrParaProximoControle
  end
end

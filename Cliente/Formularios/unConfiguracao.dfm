object fmConfiguracao: TfmConfiguracao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o'
  ClientHeight = 311
  ClientWidth = 174
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 11
    Width = 44
    Height = 13
    Caption = 'Servidor:'
  end
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 71
    Height = 13
    Caption = 'Nome do Host:'
  end
  object Label3: TLabel
    Left = 8
    Top = 156
    Width = 60
    Height = 13
    Caption = 'Login do BD:'
  end
  object Label4: TLabel
    Left = 8
    Top = 208
    Width = 65
    Height = 13
    Caption = 'Senha do BD:'
  end
  object Label5: TLabel
    Left = 8
    Top = 108
    Width = 62
    Height = 13
    Caption = 'Nome do BD:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 270
    Width = 174
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitTop = 224
    object btSair: TButton
      Left = 90
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btSairClick
    end
    object btGravar: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btGravarClick
    end
  end
  object edServidor: TEdit
    Left = 8
    Top = 25
    Width = 157
    Height = 21
    TabOrder = 0
  end
  object edHost: TEdit
    Left = 8
    Top = 72
    Width = 157
    Height = 21
    TabOrder = 1
  end
  object edSenha: TEdit
    Left = 8
    Top = 224
    Width = 157
    Height = 21
    PasswordChar = '#'
    TabOrder = 4
  end
  object edLogin: TEdit
    Left = 8
    Top = 172
    Width = 157
    Height = 21
    TabOrder = 3
  end
  object edBanco: TEdit
    Left = 8
    Top = 124
    Width = 157
    Height = 21
    TabOrder = 2
  end
end

object fmLogin: TfmLogin
  Left = 351
  Top = 126
  BorderIcons = [biSystemMenu]
  Caption = 'Tela de login'
  ClientHeight = 148
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 13
    Top = 10
    Width = 185
    Height = 134
    Caption = 'Conectar/Desconectar'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 58
      Width = 34
      Height = 13
      Caption = 'Senha:'
    end
    object Label2: TLabel
      Left = 8
      Top = 28
      Width = 40
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object edUsuario: TEdit
      Left = 51
      Top = 25
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = edUsuarioKeyPress
    end
    object edSenha: TEdit
      Left = 51
      Top = 56
      Width = 121
      Height = 21
      PasswordChar = '#'
      TabOrder = 1
      OnKeyPress = edSenhaKeyPress
    end
    object btConectar: TButton
      Left = 59
      Top = 93
      Width = 75
      Height = 25
      Caption = 'Entrar'
      TabOrder = 2
      OnClick = btConectarClick
    end
  end
end
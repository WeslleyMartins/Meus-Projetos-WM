object fmServer: TfmServer
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Servidor de aplica'#231#227'o'
  ClientHeight = 175
  ClientWidth = 241
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMinimized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 49
    Top = 8
    Width = 142
    Height = 24
    Caption = 'Servidor ativo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 37
    Top = 37
    Width = 145
    Height = 18
    Caption = 'N'#250'mero de conex'#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbUsuarios: TLabel
    Left = 186
    Top = 38
    Width = 16
    Height = 18
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 60
    Top = 63
    Width = 117
    Height = 16
    Caption = 'Usu'#225'rios conectados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object moUsuarios: TMemo
    Left = 0
    Top = 79
    Width = 241
    Height = 96
    Align = alBottom
    Lines.Strings = (
      '')
    ParentColor = True
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 192
    Top = 143
  end
end

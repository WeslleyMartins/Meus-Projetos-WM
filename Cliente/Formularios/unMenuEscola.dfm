object fmMenuEscola: TfmMenuEscola
  Left = 192
  Top = 114
  Caption = 'Menu escolar'
  ClientHeight = 311
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 292
    Width = 234
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clBtnText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Panels = <
      item
        Alignment = taCenter
        Text = 'Fortaleza, 20 de Janeiro de 2019'
        Width = 500
      end
      item
        Alignment = taRightJustify
        Text = 'Usu'#225'rio: '
        Width = 100
      end
      item
        Width = 50
      end>
    UseSystemFont = False
  end
  object MainMenu1: TMainMenu
    Left = 10
    Top = 8
    object Cadastros1: TMenuItem
      Caption = 'Cadastro'
      object Escola1: TMenuItem
        Caption = 'Escola'
        OnClick = Escola1Click
      end
      object Aluno1: TMenuItem
        Caption = 'Aluno'
      end
      object urmas1: TMenuItem
        Caption = 'Turma'
      end
      object Disciplnas1: TMenuItem
        Caption = 'Discipl'#237'na'
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consulta'
      object Escola2: TMenuItem
        Caption = 'Consulta geral'
        OnClick = Escola2Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Relatriogeral1: TMenuItem
        Caption = 'Relat'#243'rio geral'
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 11
    Top = 256
  end
end

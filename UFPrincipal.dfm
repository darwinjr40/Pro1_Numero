object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 479
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 296
    Top = 79
    Width = 177
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 296
    Top = 112
    Width = 417
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 176
    Top = 56
    Width = 75
    Height = 25
    Caption = 'cargar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 87
    Width = 75
    Height = 25
    Caption = 'descargar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 16
    object Numero1: TMenuItem
      Caption = 'Numero'
      object cargar1: TMenuItem
        Caption = 'cargar'
      end
      object descargar1: TMenuItem
        Caption = 'descargar'
      end
      object ElimiarDig1: TMenuItem
        Caption = 'ElimiarDig'
        OnClick = ElimiarDig1Click
      end
      object literak1: TMenuItem
        Caption = 'literal'
        OnClick = literak1Click
      end
      object VerifExisteNum1: TMenuItem
        Caption = 'VerifExisteNum'
        OnClick = VerifExisteNum1Click
      end
      object digMayor1: TMenuItem
        Caption = 'digMayor'
        OnClick = digMayor1Click
      end
      object removeDig1: TMenuItem
        Caption = 'removeDig'
        OnClick = removeDig1Click
      end
      object NumDesc1: TMenuItem
        Caption = 'NumDesc'
        OnClick = NumDesc1Click
      end
    end
    object function1: TMenuItem
      Caption = 'function'
      object Verficarprimo1: TMenuItem
        Caption = 'Verficar primo'
        OnClick = Verficarprimo1Click
      end
    end
    object examen1: TMenuItem
      Caption = 'examen'
      object N202111: TMenuItem
        Caption = '2021-1'
        OnClick = N202111Click
      end
    end
  end
end

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
    Width = 177
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 16
    object Numero1: TMenuItem
      Caption = 'Numero'
      object cargar1: TMenuItem
        Caption = 'cargar'
        OnClick = cargar1Click
      end
      object descargar1: TMenuItem
        Caption = 'descargar'
        OnClick = descargar1Click
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
  end
end
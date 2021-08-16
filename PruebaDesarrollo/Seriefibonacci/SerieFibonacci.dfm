object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Serie Fibonacci'
  ClientHeight = 241
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 8
    Width = 86
    Height = 13
    Caption = 'Serie de Fibonacci'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 143
    Height = 13
    Caption = 'Ingresa un numero del 1 al 20'
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 55
    Height = 13
    Caption = 'La serie es:'
  end
  object Edit1: TEdit
    Left = 165
    Top = 45
    Width = 44
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 215
    Top = 43
    Width = 90
    Height = 25
    Caption = 'Generar serie'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 77
    Top = 96
    Width = 132
    Height = 129
    ItemHeight = 13
    TabOrder = 2
  end
end

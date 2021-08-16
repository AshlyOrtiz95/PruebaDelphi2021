object Form6: TForm6
  Left = 0
  Top = 0
  Caption = ' Calcular Salario'
  ClientHeight = 124
  ClientWidth = 409
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
    Left = 40
    Top = 24
    Width = 107
    Height = 13
    Caption = 'Nombre del Empleado:'
  end
  object Label2: TLabel
    Left = 40
    Top = 51
    Width = 89
    Height = 13
    Caption = 'Horas Trabajadas:'
  end
  object calcSal: TButton
    Left = 144
    Top = 91
    Width = 89
    Height = 25
    Caption = 'Calcular Salario'
    TabOrder = 0
    OnClick = calcSalClick
  end
  object NombreEmp: TEdit
    Left = 153
    Top = 21
    Width = 240
    Height = 21
    TabOrder = 1
  end
  object HorasTra: TEdit
    Left = 153
    Top = 48
    Width = 80
    Height = 21
    TabOrder = 2
  end
end

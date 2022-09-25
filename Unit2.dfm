object Calculadora: TCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 186
  ClientWidth = 394
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
    Left = 32
    Top = 22
    Width = 65
    Height = 13
    Caption = 'Primeiro Valor'
  end
  object Label2: TLabel
    Left = 240
    Top = 22
    Width = 69
    Height = 13
    Caption = 'Segundo Valor'
  end
  object Label3: TLabel
    Left = 32
    Top = 94
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtvalor1: TEdit
    Left = 32
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = edtvalor1KeyPress
  end
  object edtvalor2: TEdit
    Left = 240
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = edtvalor1KeyPress
  end
  object edtresultado: TEdit
    Left = 32
    Top = 113
    Width = 329
    Height = 21
    TabOrder = 2
  end
  object btnsoma: TButton
    Left = 32
    Top = 153
    Width = 65
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = btnsomaClick
  end
  object btnsubtrair: TButton
    Left = 120
    Top = 153
    Width = 65
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = btnsubtrairClick
  end
  object btnmultiplicar: TButton
    Left = 296
    Top = 153
    Width = 65
    Height = 25
    Caption = '*'
    TabOrder = 5
    OnClick = btnmultiplicarClick
  end
  object btndividir: TButton
    Left = 209
    Top = 153
    Width = 65
    Height = 25
    Caption = '/'
    TabOrder = 6
    OnClick = btndividirClick
  end
end

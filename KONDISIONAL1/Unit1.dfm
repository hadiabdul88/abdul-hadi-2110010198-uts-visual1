object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 232
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object lbl2: TLabel
    Left = 232
    Top = 112
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object lbl3: TLabel
    Left = 232
    Top = 144
    Width = 28
    Height = 13
    Caption = 'Nilai 3'
  end
  object lbl4: TLabel
    Left = 232
    Top = 184
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object lbl5: TLabel
    Left = 232
    Top = 216
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object edt1: TEdit
    Left = 280
    Top = 80
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 280
    Top = 112
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 280
    Top = 144
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 384
    Top = 80
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 384
    Top = 112
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 384
    Top = 144
    Width = 73
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 280
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 280
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 232
    Top = 264
    Width = 75
    Height = 25
    Caption = 'PROSES'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 344
    Top = 264
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 456
    Top = 264
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 10
    OnClick = btn3Click
  end
end

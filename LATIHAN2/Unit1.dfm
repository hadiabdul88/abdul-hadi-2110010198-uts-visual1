object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'PRAKTEK MANDIRI 1'
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
    Top = 72
    Width = 50
    Height = 13
    Caption = 'INPUTAN1'
  end
  object lbl2: TLabel
    Left = 232
    Top = 120
    Width = 50
    Height = 13
    Caption = 'INPUTAN2'
  end
  object edt1: TEdit
    Left = 304
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 304
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 480
    Top = 80
    Width = 129
    Height = 41
    Caption = 'PROSES SEMUA'
    TabOrder = 2
    OnClick = btn1Click
  end
  object grp1: TGroupBox
    Left = 232
    Top = 176
    Width = 481
    Height = 225
    Caption = 'NILAI DIPROSES'
    TabOrder = 3
    object lbl3: TLabel
      Left = 32
      Top = 40
      Width = 73
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object lbl4: TLabel
      Left = 32
      Top = 88
      Width = 73
      Height = 13
      Caption = 'HASIL KURANG'
    end
    object lbl5: TLabel
      Left = 32
      Top = 136
      Width = 54
      Height = 13
      Caption = 'HASIL KALI'
    end
    object lbl6: TLabel
      Left = 32
      Top = 184
      Width = 56
      Height = 13
      Caption = 'HASIL BAGI'
    end
    object edt3: TEdit
      Left = 144
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object edt4: TEdit
      Left = 144
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edt5: TEdit
      Left = 144
      Top = 128
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object edt6: TEdit
      Left = 144
      Top = 176
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object btn2: TButton
      Left = 352
      Top = 32
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 352
      Top = 80
      Width = 75
      Height = 25
      Caption = '--'
      TabOrder = 5
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 352
      Top = 128
      Width = 75
      Height = 25
      Caption = 'X'
      TabOrder = 6
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 352
      Top = 176
      Width = 75
      Height = 25
      Caption = '/'
      TabOrder = 7
      OnClick = btn5Click
    end
  end
end

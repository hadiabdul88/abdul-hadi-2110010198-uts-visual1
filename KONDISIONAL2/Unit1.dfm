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
  object lbl3: TLabel
    Left = 280
    Top = 80
    Width = 70
    Height = 13
    Caption = 'Nilai Kehadiran'
  end
  object lbl4: TLabel
    Left = 280
    Top = 112
    Width = 51
    Height = 13
    Caption = 'Nilai Tugas'
  end
  object lbl5: TLabel
    Left = 280
    Top = 144
    Width = 41
    Height = 13
    Caption = 'Nilai UTS'
  end
  object lbl6: TLabel
    Left = 280
    Top = 176
    Width = 53
    Height = 13
    Caption = 'Nilai Harian'
  end
  object lbl7: TLabel
    Left = 280
    Top = 208
    Width = 42
    Height = 13
    Caption = 'Nilai UAS'
  end
  object lbl8: TLabel
    Left = 304
    Top = 296
    Width = 46
    Height = 13
    Caption = 'Total Nilai'
  end
  object lbl9: TLabel
    Left = 304
    Top = 336
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object lbl10: TLabel
    Left = 304
    Top = 376
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object edt3: TEdit
    Left = 368
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt4: TEdit
    Left = 368
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt5: TEdit
    Left = 368
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt6: TEdit
    Left = 368
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt7: TEdit
    Left = 368
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 336
    Top = 248
    Width = 81
    Height = 25
    Caption = 'Hitung'
    TabOrder = 5
    OnClick = btn1Click
  end
  object edt8: TEdit
    Left = 376
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edt9: TEdit
    Left = 376
    Top = 336
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edt10: TEdit
    Left = 376
    Top = 376
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object btn2: TButton
    Left = 384
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Nilai'
    TabOrder = 9
  end
  object btn3: TButton
    Left = 536
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Bobot'
    TabOrder = 10
  end
  object edt1: TEdit
    Left = 512
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 512
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 12
    Text = 'edt2'
  end
  object edt11: TEdit
    Left = 512
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 13
    Text = 'edt11'
  end
  object edt12: TEdit
    Left = 512
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 14
    Text = 'edt12'
  end
  object edt13: TEdit
    Left = 512
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 15
    Text = 'edt13'
  end
  object btn4: TButton
    Left = 464
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 16
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 584
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 17
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 392
    Top = 0
    Width = 209
    Height = 33
    Caption = 'CEK NILAI BOBOT SISWA'
    TabOrder = 18
  end
end

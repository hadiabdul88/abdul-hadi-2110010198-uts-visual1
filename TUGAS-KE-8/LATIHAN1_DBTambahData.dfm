object Form8: TForm8
  Left = 384
  Top = 77
  Width = 928
  Height = 697
  Caption = 'LATIHAN1_TMBHDATA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 16
    Top = 8
    Width = 873
    Height = 289
    Caption = 'Tambah Data Jadwal'
    TabOrder = 0
    object lbl1: TLabel
      Left = 40
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Jam Awal'
    end
    object lbl2: TLabel
      Left = 264
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Jam Akhir'
    end
    object lbl3: TLabel
      Left = 40
      Top = 56
      Width = 82
      Height = 13
      Caption = 'Hari Pelaksanaan'
    end
    object lbl4: TLabel
      Left = 40
      Top = 88
      Width = 38
      Height = 13
      Caption = 'Tanggal'
    end
    object lbl5: TLabel
      Left = 40
      Top = 120
      Width = 43
      Height = 13
      Caption = 'Ruangan'
    end
    object lbl6: TLabel
      Left = 40
      Top = 152
      Width = 55
      Height = 13
      Caption = 'Mata Kuliah'
    end
    object lbl7: TLabel
      Left = 40
      Top = 184
      Width = 25
      Height = 13
      Caption = 'Kelas'
    end
    object lbl8: TLabel
      Left = 40
      Top = 216
      Width = 52
      Height = 13
      Caption = 'Total Hadir'
    end
    object Edit1: TEdit
      Left = 152
      Top = 24
      Width = 97
      Height = 21
      TabOrder = 0
      Text = '00:00'
    end
    object Edit2: TEdit
      Left = 320
      Top = 24
      Width = 97
      Height = 21
      TabOrder = 1
      Text = '00:00'
    end
    object cbb1: TComboBox
      Left = 152
      Top = 56
      Width = 265
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '--PilihHari--'
      Items.Strings = (
        'Senin'
        'Selasa'
        'Rabu'
        'Kamis'
        'Jumat'
        'Sabtu'
        'Minggu')
    end
    object dtp1: TDateTimePicker
      Left = 152
      Top = 88
      Width = 105
      Height = 21
      Date = 45066.824720983790000000
      Time = 45066.824720983790000000
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 152
      Top = 120
      Width = 265
      Height = 21
      TabOrder = 4
      Text = '-'
    end
    object Edit4: TEdit
      Left = 152
      Top = 152
      Width = 265
      Height = 21
      TabOrder = 5
      Text = '-'
    end
    object Edit5: TEdit
      Left = 152
      Top = 184
      Width = 265
      Height = 21
      TabOrder = 6
      Text = '-'
    end
    object Edit6: TEdit
      Left = 152
      Top = 216
      Width = 97
      Height = 21
      TabOrder = 7
      Text = '0'
    end
    object btn1: TButton
      Left = 704
      Top = 16
      Width = 81
      Height = 49
      Caption = 'Simpan'
      TabOrder = 8
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 704
      Top = 72
      Width = 81
      Height = 49
      Caption = 'Edit'
      TabOrder = 9
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 704
      Top = 136
      Width = 81
      Height = 49
      Caption = 'Hapus'
      TabOrder = 10
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 704
      Top = 192
      Width = 81
      Height = 49
      Caption = 'Batal'
      TabOrder = 11
      OnClick = btn4Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 304
    Width = 873
    Height = 321
    DataSource = Form7.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end

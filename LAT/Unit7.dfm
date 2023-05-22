object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 605
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 40
    Top = 56
    Width = 841
    Height = 257
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cht1: TChart
    Left = 40
    Top = 320
    Width = 841
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    MarginTop = 0
    Title.Text.Strings = (
      'TChart')
    Color = clWhite
    TabOrder = 1
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object btn1: TButton
    Left = 736
    Top = 8
    Width = 145
    Height = 41
    Caption = 'TAMPILKAN GRAFIK'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 432
    Top = 8
    Width = 147
    Height = 41
    Caption = 'LOAD DATA'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 280
    Top = 8
    Width = 147
    Height = 41
    Caption = 'TAMBAH DATA BARU'
    TabOrder = 4
  end
  object btn4: TButton
    Left = 584
    Top = 8
    Width = 147
    Height = 41
    Caption = 'PRINT'
    TabOrder = 5
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=jadwal_db.mdb;Persi' +
      'st Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 8
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 136
    Top = 8
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Jadwal_table')
    Left = 88
    Top = 8
  end
end

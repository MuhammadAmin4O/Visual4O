object Form1: TForm1
  Left = 220
  Top = 136
  Width = 1044
  Height = 582
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object b1: TBitBtn
    Left = 736
    Top = 24
    Width = 145
    Height = 49
    Caption = 'TAMPILKAN DATA GRAFIK'
    TabOrder = 0
    OnClick = b1Click
  end
  object dg1: TDBGrid
    Left = 64
    Top = 88
    Width = 825
    Height = 265
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cht1: TChart
    Left = 64
    Top = 251
    Width = 825
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      '')
    View3D = False
    TabOrder = 2
    object brsrsSeries1: TBarSeries
      ColorEachPoint = True
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
  object b3: TButton
    Left = 520
    Top = 24
    Width = 99
    Height = 49
    Caption = 'LOAD DATA'
    TabOrder = 3
    OnClick = b3Click
  end
  object b4: TButton
    Left = 392
    Top = 24
    Width = 115
    Height = 49
    Caption = 'TAMBAH DATA BARU'
    TabOrder = 4
  end
  object b2: TBitBtn
    Left = 632
    Top = 24
    Width = 89
    Height = 49
    Caption = 'VIEW GRAFIK'
    TabOrder = 5
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ACER\Deskt' +
      'op\Delphi\Database\jadwal_db.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 16
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from jadwal_table')
    Left = 112
    Top = 16
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 160
    Top = 16
  end
end

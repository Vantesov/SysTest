object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085
  ClientHeight = 190
  ClientWidth = 320
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
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 76
    Height = 13
    Caption = 'ID '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
  end
  object Label2: TLabel
    Left = 40
    Top = 51
    Width = 113
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
  end
  object Edit1: TEdit
    Left = 158
    Top = 21
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 158
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 39
    Top = 120
    Width = 75
    Height = 25
    Caption = #1042' '#1085#1072#1095#1072#1083#1086
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 151
    Width = 75
    Height = 25
    Caption = #1042#1087#1077#1088#1105#1076
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 120
    Width = 75
    Height = 25
    Caption = #1042' '#1082#1086#1085#1077#1094
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 39
    Top = 151
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 204
    Top = 151
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 203
    Top = 120
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 7
    OnClick = Button6Click
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'Localhost:D:\Kp18Is\SysTest\DataBase\SYSTESTDB.IB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=DBO'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 16
    Top = 80
  end
  object DataSource1: TDataSource
    Left = 240
    Top = 80
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 176
    Top = 80
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from DISCIPLINES')
    Left = 120
    Top = 80
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      '')
    Left = 64
    Top = 80
  end
end

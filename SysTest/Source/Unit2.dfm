object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1090#1077#1084' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1103
  ClientHeight = 233
  ClientWidth = 319
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
    Left = 39
    Top = 56
    Width = 61
    Height = 13
    Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
  end
  object Label2: TLabel
    Left = 39
    Top = 83
    Width = 77
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1077#1084#1099
  end
  object Label3: TLabel
    Left = 39
    Top = 24
    Width = 40
    Height = 13
    Caption = 'ID '#1090#1077#1084#1099
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
    Left = 157
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 39
    Top = 160
    Width = 75
    Height = 25
    Caption = #1042' '#1085#1072#1095#1072#1083#1086
    TabOrder = 2
  end
  object Button2: TButton
    Left = 120
    Top = 191
    Width = 75
    Height = 25
    Caption = #1042#1087#1077#1088#1105#1076
    TabOrder = 3
  end
  object Button3: TButton
    Left = 120
    Top = 160
    Width = 75
    Height = 25
    Caption = #1042' '#1082#1086#1085#1077#1094
    TabOrder = 4
  end
  object Button4: TButton
    Left = 39
    Top = 191
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 5
  end
  object Button5: TButton
    Left = 204
    Top = 191
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
  end
  object Button6: TButton
    Left = 203
    Top = 160
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 7
  end
  object ComboBox1: TComboBox
    Left = 158
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 8
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
    Left = 40
    Top = 112
  end
  object DataSource1: TDataSource
    Left = 248
    Top = 112
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 200
    Top = 112
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
    Left = 152
    Top = 112
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
    Left = 96
    Top = 112
  end
end

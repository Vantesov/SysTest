object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SysTest'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    object N1: TMenuItem
      Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
    end
    object N2: TMenuItem
      Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1090#1072#1073#1083#1080#1094
      object NDisciplines: TMenuItem
        Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099
        OnClick = NDisciplinesClick
      end
      object NTopics: TMenuItem
        Caption = #1058#1077#1084#1099
        OnClick = NTopicsClick
      end
    end
    object N3: TMenuItem
      Caption = #1054#1090#1095#1105#1090#1099
    end
    object N4: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
    end
  end
end

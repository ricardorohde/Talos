object frmMsg_Operador: TfrmMsg_Operador
  Left = 438
  Top = 447
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Mensagem ao Operador'
  ClientHeight = 102
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 368
    Height = 102
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Color = 8404992
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 364
      Height = 98
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 360
        Height = 94
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        Color = 8404992
        ParentBackground = False
        TabOrder = 0
        object lb_msg: TLabel
          Left = 5
          Top = 5
          Width = 350
          Height = 84
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Caption = 'Aguarde'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
          ExplicitLeft = 96
          ExplicitTop = 3
          ExplicitWidth = 265
          ExplicitHeight = 81
        end
      end
    end
  end
end
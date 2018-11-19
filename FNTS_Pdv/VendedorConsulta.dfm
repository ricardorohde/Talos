object frmVendedorConsulta: TfrmVendedorConsulta
  Left = 2
  Top = 1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmVendedorConsulta'
  ClientHeight = 579
  ClientWidth = 790
  Color = 6960384
  TransparentColor = True
  TransparentColorValue = 15658734
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lb_cliente: TRzLabel
    Left = 23
    Top = 22
    Width = 359
    Height = 47
    Caption = 'Consulta de Vendedor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    ShadowColor = clBlack
    TextStyle = tsShadow
  end
  object lb_status: TRzLabel
    Left = 8
    Top = 550
    Width = 673
    Height = 25
    AutoSize = False
    Caption = 'Informe o C'#243'digo ou Nome do Vendedor...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    ShadowColor = clBlack
    TextStyle = tsShadow
  end
  object LB_MENU_FISCAL: TRzLabel
    Left = 10
    Top = 576
    Width = 97
    Height = 17
    AutoSize = False
    Caption = 'F8  :: Menu Fiscal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clSilver
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    ShadowColor = clBlack
    TextStyle = tsShadow
  end
  object RzLabel1: TRzLabel
    Left = 23
    Top = 105
    Width = 72
    Height = 31
    Caption = 'Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    ShadowColor = clBlack
    TextStyle = tsShadow
  end
  object edtVendedor: TRzEdit
    Left = 101
    Top = 102
    Width = 660
    Height = 31
    Text = ''
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FrameStyle = fsNone
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ParentFont = False
    TabOrder = 0
    OnEnter = edtVendedorEnter
    OnKeyPress = edtVendedorKeyPress
  end
  object grid: TNextGrid
    Left = 31
    Top = 155
    Width = 735
    Height = 378
    Touch.InteractiveGestures = [igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
    AppearanceOptions = [aoHighlightSlideCells]
    BorderStyle = bsNone
    Caption = ''
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    GridLinesStyle = lsVerticalOnly
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    ParentFont = False
    TabOrder = 1
    TabStop = True
    OnEnter = gridEnter
    OnKeyPress = gridKeyPress
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 49
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'C'#243'digo'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 0
      SortType = stNumeric
      Width = 49
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 334
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Nome'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      Width = 334
    end
  end
end

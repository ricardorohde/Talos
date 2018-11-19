object frmPre_Venda: TfrmPre_Venda
  Left = 707
  Top = 230
  BorderStyle = bsNone
  Caption = 'Atendimento de Pr'#233'-Venda'
  ClientHeight = 593
  ClientWidth = 806
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_principal
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnFundo: TPanel
    Left = 0
    Top = 0
    Width = 806
    Height = 593
    BevelOuter = bvNone
    Color = 12615680
    ParentBackground = False
    TabOrder = 0
    object lb_cliente: TRzLabel
      Left = 31
      Top = 11
      Width = 438
      Height = 47
      Caption = 'RELA'#199#195'O DE PR'#201' VENDAS'
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
    object grid_venda: TNextGrid
      Left = 31
      Top = 67
      Width = 735
      Height = 467
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
      TabOrder = 0
      TabStop = True
      object NxTextColumn1: TNxTextColumn
        DefaultWidth = 56
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
        SortType = stAlphabetic
        Width = 56
      end
      object NxDateColumn1: TNxDateColumn
        DefaultValue = '16/06/2009'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'Data'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 1
        SortType = stDate
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxTextColumn2: TNxTextColumn
        DefaultWidth = 331
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'Cliente'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 331
      end
      object NxNumberColumn1: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'Valor'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 3
        SortType = stNumeric
        FormatMask = '###,###,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn3: TNxTextColumn
        DefaultWidth = 144
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'Vendedor'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        Width = 144
      end
      object NxNumberColumn2: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'cod_cliente'
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 5
        SortType = stNumeric
        Visible = False
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn4: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'cod_vendedor'
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 6
        SortType = stNumeric
        Visible = False
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn3: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'desconto'
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 7
        SortType = stNumeric
        Visible = False
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn5: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'acrescimo'
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 8
        SortType = stNumeric
        Visible = False
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxCheckBoxColumn1: TNxCheckBoxColumn
        Alignment = taCenter
        DefaultWidth = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'S'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        ParentFont = False
        Position = 9
        SortType = stBoolean
        Width = 24
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 568
      Width = 806
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      Color = 6960384
      ParentBackground = False
      TabOrder = 1
      object RzLabel1: TRzLabel
        Left = 31
        Top = 4
        Width = 151
        Height = 17
        AutoSize = False
        Caption = 'F2 - Concluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object RzLabel2: TRzLabel
        Left = 221
        Top = 4
        Width = 151
        Height = 17
        AutoSize = False
        Caption = 'F4 - Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object RzLabel3: TRzLabel
        Left = 397
        Top = 4
        Width = 151
        Height = 17
        AutoSize = False
        Caption = 'F5 - Conciliar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
    end
  end
  object pop_principal: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.1.1'
    Left = 60
    Top = 232
    object Finalizar1: TMenuItem
      Caption = 'Concluir'
      ShortCut = 113
      OnClick = Finalizar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 115
      OnClick = Cancelar1Click
    end
    object Conciliar1: TMenuItem
      Caption = 'Conciliar'
      ShortCut = 116
      OnClick = Conciliar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Retornar1: TMenuItem
      Caption = 'Retornar'
      ShortCut = 27
      OnClick = Retornar1Click
    end
  end
  object tm_Atualiza: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = tm_AtualizaTimer
    Left = 784
    Top = 312
  end
  object qrPre_Venda: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select '
      '  c000074.*,'
      '  c000007.Nome Cliente,'
      '  c000008.Nome Vendedor'
      'from '
      '  c000074, c000007, c000008'
      'where'
      '  c000074.codcliente = c000007.codigo and'
      '  c000074.codvendedor = c000008.codigo')
    Left = 323
    Top = 396
  end
end

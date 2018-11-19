object frmOS: TfrmOS
  Left = 835
  Top = 252
  BorderStyle = bsNone
  Caption = 'Ordens de Servi'#231'o'
  ClientHeight = 593
  ClientWidth = 790
  Color = 6960384
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_principal
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnFundo: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 593
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnFundo'
    Color = clBlack
    TabOrder = 0
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 790
      Height = 593
      Align = alClient
      ExplicitWidth = 809
      ExplicitHeight = 609
    end
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 790
      Height = 593
      Align = alClient
      ExplicitLeft = -72
      ExplicitTop = -16
      ExplicitWidth = 809
      ExplicitHeight = 609
    end
    object lb_cliente: TRzLabel
      Left = 31
      Top = 33
      Width = 485
      Height = 47
      Caption = 'Rela'#231#227'o de Ordens de Servi'#231'o'
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
    object RzLabel1: TRzLabel
      Left = 10
      Top = 556
      Width = 151
      Height = 17
      AutoSize = False
      Caption = 'F2 - Concluir'
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
    object RzLabel2: TRzLabel
      Left = 10
      Top = 572
      Width = 151
      Height = 17
      AutoSize = False
      Caption = 'F4 - Cancelar'
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
    object RzLabel3: TRzLabel
      Left = 130
      Top = 556
      Width = 151
      Height = 17
      AutoSize = False
      Caption = 'F5 - Imprimir DAV'
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
    object grid_venda: TNextGrid
      Left = 31
      Top = 105
      Width = 735
      Height = 429
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
        DefaultWidth = 73
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'N'#250'mero'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 73
      end
      object NxTextColumn4: TNxTextColumn
        DefaultWidth = 106
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'DAV'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 106
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
        Position = 2
        SortType = stDate
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxTextColumn2: TNxTextColumn
        DefaultWidth = 271
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
        Position = 3
        SortType = stAlphabetic
        Width = 271
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
        Position = 4
        SortType = stNumeric
        FormatMask = '###,###,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn3: TNxTextColumn
        DefaultWidth = 106
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'Atendente'
        Header.Alignment = taCenter
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        Width = 106
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
        Position = 6
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
        Position = 7
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
        Position = 8
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
        Position = 9
        SortType = stNumeric
        Visible = False
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn5: TNxTextColumn
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'dav_anterior'
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 10
        SortType = stAlphabetic
        Visible = False
      end
      object NxNumberColumn6: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Header.Caption = 'dav_impresso'
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        ParentFont = False
        Position = 11
        SortType = stNumeric
        Visible = False
        Increment = 1.000000000000000000
        Precision = 0
      end
    end
  end
  object pop_principal: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.1.1'
    Left = 40
    Top = 224
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
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 116
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
    Interval = 5000
    OnTimer = tm_AtualizaTimer
    Left = 40
    Top = 264
  end
  object qrOs: TUniQuery
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
    Left = 216
    Top = 324
  end
  object QRITEM: TUniQuery
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
    Left = 304
    Top = 324
  end
end

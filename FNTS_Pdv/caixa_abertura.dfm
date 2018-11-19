object frmCaixa_Abertura: TfrmCaixa_Abertura
  Left = 431
  Top = 331
  BorderStyle = bsNone
  Caption = 'Abertura de Caixa'
  ClientHeight = 368
  ClientWidth = 673
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_fechamento
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 8
    Top = 54
    Width = 660
    Height = 311
    Hint = ''
    ActivePage = TabSheet1
    Color = clWhite
    ParentColor = False
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clWhite
      Caption = 'Abertura'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 656
        Height = 224
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        Enabled = False
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 48
          Top = 39
          Width = 105
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data do Movimento:'
        end
        object Label2: TLabel
          Left = 96
          Top = 63
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Operador:'
        end
        object Label3: TLabel
          Left = 48
          Top = 87
          Width = 105
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero do ECF:'
        end
        object ed_operador: TRzEdit
          Left = 160
          Top = 60
          Width = 169
          Height = 19
          Text = ''
          Color = 15916445
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object ed_data: TJvDateEdit
          Left = 160
          Top = 36
          Width = 81
          Height = 19
          Color = 15916445
          Flat = True
          ParentFlat = False
          NumGlyphs = 2
          ShowButton = False
          ShowNullDate = False
          TabOrder = 1
        end
        object ed_ecf: TRzEdit
          Left = 160
          Top = 84
          Width = 257
          Height = 19
          Text = ''
          Color = 15916445
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 224
        Width = 656
        Height = 45
        Align = alBottom
        BevelOuter = bvNone
        Color = 6960384
        ParentBackground = False
        TabOrder = 1
        object bt_ok: TButton
          Left = 14
          Top = 6
          Width = 103
          Height = 37
          Caption = 'C&onfirmar'
          TabOrder = 0
          OnClick = bt_okClick
        end
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 269
        Width = 656
        Height = 19
        Panels = <>
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clWhite
      Caption = 'Pr'#233'-Vendas Pendentes'
      object grid_venda: TNextGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 288
        Touch.InteractiveGestures = [igPan, igPressAndTap]
        Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
        Align = alClient
        Caption = ''
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxTextColumn8: TNxTextColumn
          DefaultWidth = 43
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'C'#243'digo'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 43
        end
        object NxDateColumn2: TNxDateColumn
          DefaultValue = '16/06/2009'
          DefaultWidth = 71
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Data'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 1
          SortType = stDate
          Width = 71
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
        object NxTextColumn9: TNxTextColumn
          DefaultWidth = 239
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Cliente'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 239
        end
        object NxNumberColumn14: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 64
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 3
          SortType = stNumeric
          Width = 64
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn10: TNxTextColumn
          DefaultWidth = 82
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Vendedor'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Width = 82
        end
        object NxNumberColumn15: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
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
        object NxNumberColumn16: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
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
        object NxNumberColumn17: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
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
        object NxNumberColumn18: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
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
      end
    end
    object TabSheet3: TRzTabSheet
      Color = clWhite
      Caption = 'DAVs'
      object grid_dav: TNextGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 288
        Touch.InteractiveGestures = [igPan, igPressAndTap]
        Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
        Align = alClient
        Caption = ''
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxTextColumn5: TNxTextColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'COO'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
        end
        object NxTextColumn12: TNxTextColumn
          DefaultWidth = 111
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'N'#250'mero'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 111
        end
        object NxTextColumn7: TNxTextColumn
          DefaultWidth = 65
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'T'#237'tulo'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 65
        end
        object NxTextColumn11: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          DefaultWidth = 93
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor-R$'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 3
          SortType = stNumeric
          Width = 93
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet4: TRzTabSheet
      Color = clWhite
      Caption = 'Abastecimentos Pendentes'
      object grid_abastecimento: TNextGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 288
        Touch.InteractiveGestures = [igPan, igPressAndTap]
        Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
        Align = alClient
        AppearanceOptions = [aoHighlightSlideCells]
        Caption = ''
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxDateColumn1: TNxDateColumn
          DefaultValue = '19/08/2009'
          DefaultWidth = 66
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Data'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 0
          SortType = stDate
          Width = 66
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
        object NxTextColumn6: TNxTextColumn
          DefaultWidth = 36
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Hora'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 36
        end
        object NxTextColumn13: TNxTextColumn
          DefaultWidth = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'N'#186
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 23
        end
        object NxTextColumn14: TNxTextColumn
          DefaultWidth = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Bico'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 3
          SortType = stAlphabetic
          Width = 27
        end
        object NxTextColumn15: TNxTextColumn
          DefaultWidth = 100
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Produto'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Width = 100
        end
        object NxNumberColumn20: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 44
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Qtde.'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 5
          SortType = stNumeric
          Width = 44
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn21: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 44
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Unit'#225'rio'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 6
          SortType = stNumeric
          Width = 44
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn22: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 54
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Total-R$'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 7
          SortType = stNumeric
          Width = 54
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn23: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 51
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'E.I.'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 8
          SortType = stNumeric
          Width = 51
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn24: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 52
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'E.F.'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 9
          SortType = stNumeric
          Width = 52
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn25: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Codigo'
          Header.Alignment = taCenter
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 10
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn17: TNxTextColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Tanque'
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          ParentFont = False
          Position = 11
          SortType = stAlphabetic
          Visible = False
        end
      end
    end
  end
  object bt_cupom_encerrante: TButton
    Left = 432
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cp Encerrante'
    TabOrder = 1
    Visible = False
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 48
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Line = False
    Fill.Color = 6960384
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alTop
    TabOrder = 2
    ShowExpander = False
    ExpanderColor = 6960384
    ExpanderDownColor = 6960384
    ExpanderHoverColor = 6960384
    TMSStyle = 0
    OldHeight = 48.000000000000000000
    object Label53: TLabel
      Left = 59
      Top = 14
      Width = 171
      Height = 23
      Caption = 'Abertura de Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AdvMetroButton1: TAdvMetroButton
      Left = -3
      Top = 0
      Width = 56
      Height = 48
      Appearance.PictureColor = clWhite
      Caption = ''
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3445414132443945303444303131453538344545414445343436
        3535353531312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344541413244394630344430313145353834454541444534343635353535
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3445414132443943303444303131
        453538344545414445343436353535353131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344541413244394430344430313145353834
        4545414445343436353535353131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4B533802000004B14944415478DAD499
        7968554714C65F1215778D2651A352637109C605036EE082A2455C6A5D506825
        54105C402B05A960ABE03F820A2AA2E082FE218A2888FB52975A49085151DBB8
        15375C316AAAC625C6C4EB77E01B3D0EBEF7665EDE7BE0811FF7BE3B73CF7C77
        EEDC9973E6A5044110FA1AAC4E2DEF6F023A806EA02B680B9A8306A012FC0F1E
        82CBE02AB8092A40902CA11DC170F03DE80D5A39DCF3045C007BC1617003BC77
        6D30C5F3D54BEF4D063F832EEAFA6B50069E9337A03E7BB729C8028D54FD5B60
        0BD806AEC75BE838301FF457D72E82425002AEF135BF0255A02E878688EC0CF2
        C1401E8D9D03CBC0CEA8BD2B42A3D0002C02CF824F560C6680AE0EF76BBE05D3
        C029E5EB25580A9A45BA379AE3266003A8A15311FB07E8E029D0A61D980FCA94
        E0ED202B16A10DC13AE5A8147C07D26A29D220C36E083867894DF715BA44F564
        09E81E2781369DC009B6F31E2CE74338099DA8C6E4BF0914A9C76E09DB7B0D0A
        5C84760467D5981C9A6091867EE0A11A66B99184A682DF59B986033E25494285
        59E01DDB972150279CD0CEE0162BFE0D32922832C429EA00DB9719A1A7294B55
        53AA9C8FE6EAF3166CE0B2974C93556D13780932C1789066C4196BCAB55BEC3C
        38E2D140373EE0974C0295EE1EBE8E83629E8F0119F6CAD417BC61B72FF6785D
        23C04D5008BA7C6128FDC5E134CEC3E7AF9CAA64BC0EB3C7E84C8A7C0C463A3A
        1C4691C644540ECB72F8DBD87D30D6D1EF60D617FBCD1EA33D787CC000C3C546
        821CF57B3058CDC065357F1BCBE6AB743169FF2ECFF3EC576FBEB683A091E393
        4BAF1D0E3EB76A50C1A3B6427B6E8C804C4B3BD4ECF3598F9AE0F71143351793
        B8723A38A6AEC957DAD87CADB462C6B0571CFD56333BF8A84B0B35816D95E794
        22AFA8001C0D537E1AFC08FEF3F45BC163335B688A09516398FF5E71EE0D5716
        CB7C1C685DA9563A116264EE6312C16F06A3C2940F67DA91E5E9B7318F2F6CA1
        8FD49868E8E84CEAAE053F58BE6A548FA4B17C9D63126874A5F3BCCC167A57AD
        24998E0EE78109D635F970268193D675590E173AFA95D5E81B9EDFB18596F2D8
        0674727458C47957FB98037683B9E08C2A7BCAFA2E26EDB7E3F9257B1E1D08AA
        F46AE0882C8DF7C025D0DF2AEBC55443E2CC9F3C7CFEC279B8DAAC92BA5042BA
        220A952CB18587E301202F4C9964AA833C7C49AEB65F05D0D9B650099A17A814
        765292635183F46039752C35C1B35D294FA50387A2E5DA094096EE9D6CFF29C8
        0F17E1A7F129028658B3922C742AA864FB6B22A52221060EA5AC2CBDDB274922
        25D3BDCD76AFF3438C9A2E17A820BA280E3B23D16803FE54B9FD6C3BA90C77A3
        7C582B7993D8B1048A6D0BF6A8707023A8EFB353D2925B2C3A9E1C106791BDD5
        2E49C098383B964D32D9B4DAA51CDDE36BC9AAA540E984E9E086F22DB34CFB58
        77F38CD3556ACC1AA753406B4F81999C9FF7295F32BBAC0FD79306D78DDCBA0C
        7E6523375705D812809C026719183F61C05BCD6D7709D55A70773A9F39543FEE
        F187B8DBBC826160653CB7C6257F9FCA88BEB5BA5ECE30F131838F777C3811D9
        927533ACFA5B19C75E48C41EBEE9DD5CEEAA08BD540F4532C900FE0187F88743
        6984AC202E42751297CED7DA93E2B3D973F5D8ABD273F799D45D641A5CCEA1E1
        65B5119A54FB20C0004E7B10B44195D3E70000000049454E44AE426082}
      TabOrder = 0
      Version = '1.1.2.0'
      OnClick = AdvMetroButton1Click
    end
  end
  object pop_fechamento: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.1.1'
    Left = 600
    Top = 160
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bt_cancelarClick
    end
  end
  object AdvPopupMenu1: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.1.1'
    Left = 608
    Top = 88
    object MenuItem2: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
    end
  end
  object XPManifest1: TXPManifest
    Left = 801
    Top = 292
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
    Left = 49
    Top = 250
  end
  object qrDAV: TUniQuery
    Connection = frmModulo.conexao
    Left = 145
    Top = 250
  end
  object qrAbastecimento: TUniQuery
    Connection = frmModulo.conexao
    Left = 257
    Top = 250
  end
  object qrEncerrante: TUniQuery
    Connection = frmModulo.conexao
    Left = 377
    Top = 250
  end
end

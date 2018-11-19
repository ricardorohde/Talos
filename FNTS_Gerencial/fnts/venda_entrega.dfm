object frmVenda_Entrega: TfrmVenda_Entrega
  Left = 345
  Top = 179
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'VENDA | Controle de Entrega'
  ClientHeight = 425
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 379
    Width = 645
    Height = 2
    Align = alBottom
    ExplicitTop = 374
  end
  object Bevel2: TBevel
    Left = 0
    Top = 346
    Width = 645
    Height = 2
    Align = alBottom
    ExplicitTop = 341
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 645
    Height = 346
    ControlType.Strings = (
      'qtde_entregue;CustomEdit;ed_entregue;F')
    Selected.Strings = (
      'Item'#9'3'#9'Item'
      'Codigo'#9'8'#9'C'#243'digo'
      'Produto'#9'49'#9'Produto'
      'Unidade'#9'5'#9'Un.'
      'qtde_vendida'#9'10'#9'Vendido'
      'qtde_entregue'#9'10'#9'Entregue'
      'qtde_saldo'#9'10'#9'Saldo')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 4
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsEntrega
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    ExplicitHeight = 337
  end
  object Panel1: TPanel
    Left = 0
    Top = 381
    Width = 645
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 382
    object bgravar: TAdvGlowButton
      Left = 216
      Top = 5
      Width = 106
      Height = 32
      Caption = 'F2 | Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B000001A6494441544889
        B595B152C2401086BF953883854FA035B58DB63A0E63031456B63C8195452E3D
        5E7C0867AC6DD506B4B0F511AC7D03471806642D4C32C9710908F837B77797DB
        FF76F7BF8DA82A3E846138030450111155CDC6F41B1191D4B6D68ACF4F50E27C
        0B90388E49487C6306638CF792A50422522B8BECAFF0128CD8D9AE33FC4702AD
        4FEA0C515544A430A6C8AF5741DC541C9BC7B572F36ADB05C6C018F3A2AA2780
        F47ABD94B0A0982A15E5BF0150D5591445A2AA53E03E004E81CD54B4881A7011
        E4D9131B12293AEB736B55F364AC0500B9B03791224DFC28382A9A4C26748EF6
        F5E1EDC3F7A8CA1E5A366F1FEEE9743A2D6C160806830197AD33AECE0F568A60
        3C1ED3EFF78BEC6118FE47818B11B8372DB31745E0B37D2AAAB4AB54E4B3B31A
        A4EDD618A3EE6DD78D400131C6CCD5228EE3A5545451C7EF0078025AF9836E1A
        16C1973E119901B781B5B6E33B948FE8EEF97DAE9708D06D36805F91884860AD
        9DB97EBCEDDA45EA68152C45B028822435CBFF935D749B0D7C2A4A9D267BDE42
        57117C02BB99A7927790604449CBAF22B836C6447992127C89C88DB5D64BF003
        9BE715E0B5D2BA0A0000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bgravarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bcancelar: TAdvGlowButton
      Left = 325
      Top = 5
      Width = 103
      Height = 32
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000271494441544889
        B595CF4B545118869FD7B92B2504A145FE03D524D44C08416D74220C6A716F3F
        74D92A5C39D3A6949432312910E6EEDA15B472D10C41A510D63FA0F79242919B
        76B92842B268A3F3B5F028379D9944C7B339DC7BBEFBBCE73BF73BEF2733A3D6
        C816CA69A017C801278056B7B4022C02B3C05454F43FD762A89A40265F4A4B7A
        6466178126493233934432DEBD5F035E49BA1315FDA5FF0A64F2A57E605252B3
        FBF88DA49299CD4B5A76F1ED40A7A4C0CC7ADC267E9BD9401C064F6B0A640BE5
        5160C43DCE00856ABB4A0E778C21701EA800C351D19FD82190C9976E4A7A6266
        156054D27854F42BF5E089AC53921E98D92080A41B51D17FBE2590C9978E02F3
        EE58EEC56130B61B7015A187C0A0A455333B1587C117CF293E065A806949E37B
        813BCE087006E8923401F429932FA5CD6C0130491DF54A6E97599C941499D93A
        70CC03AE034DC0EBFDC201E230F8902D94DF03DDC0350FC8491250DE2F3C31CA
        927240B7071CB78D529A6BA0C09C63A63DA0CD65F0B58102CB8E79D803B07A86
        B4C7B1C9F4801F401B1BD7FF7B83F847DCFCCD033E0167812CB0D02081D36EFE
        E801B392CE015780670D1208DC3F7877E0176DD38B5E029725CD98D9A5380C2A
        890F0EC561B05A0D962D945351D15F4FC4A680B792BACC6C2A0E83BE4D2FBACD
        46D7EA917417D832BB5A708024DC71C6802EE0A7A421A86DD7F79D5DEFAA7C33
        F95293B3EB2127F4AF5D27521E35B31117346D66B7E230584AACB798D99F6D47
        980642493957FBC37118EC6C3809483F300934036BC034F0029807965D583BD0
        095C052E0029E017301015FDDA2D33B9AB036BFADB85805E49DD66D621A9D5C5
        AF008B92665DB5D42CEDBFC465552860CF4DD40000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bcancelarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object ed_entregue: TwwDBEdit
    Left = 424
    Top = 40
    Width = 97
    Height = 21
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = ed_entregueExit
  end
  object Panel2: TPanel
    Left = 0
    Top = 348
    Width = 645
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = 2211435
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 339
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 106
      Height = 13
      Caption = 'Modelo da Impress'#227'o:'
    end
    object Label2: TLabel
      Left = 352
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Vias:'
    end
    object ComboBox1: TComboBox
      Left = 129
      Top = 4
      Width = 216
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        '1 - BOBINA'
        '2 - RAZ'#195'O MATRICIAL'
        '4 - CARTA MATRICIAL'
        '3 - RAZ'#195'O LASER/TINTA')
    end
    object evias: TRzSpinEdit
      Left = 380
      Top = 3
      Width = 47
      Height = 21
      Max = 100.000000000000000000
      TabOrder = 1
    end
  end
  object bt_razao: TButton
    Left = 456
    Top = 144
    Width = 113
    Height = 25
    Caption = 'Razao - Matricial'
    TabOrder = 4
    Visible = False
    OnClick = bt_razaoClick
  end
  object bt_bobina: TButton
    Left = 456
    Top = 168
    Width = 113
    Height = 25
    Caption = 'Bobina - Matricial'
    TabOrder = 5
    Visible = False
    OnClick = bt_bobinaClick
  end
  object bt_carta: TButton
    Left = 456
    Top = 192
    Width = 113
    Height = 25
    Caption = 'Carta - Matricial'
    TabOrder = 6
    Visible = False
    OnClick = bt_cartaClick
  end
  object bt_laser: TButton
    Left = 456
    Top = 216
    Width = 113
    Height = 25
    Caption = 'Razao - Laser'
    TabOrder = 7
    Visible = False
    OnClick = bt_laserClick
  end
  object Pop1: TPopupMenu
    Left = 352
    Top = 256
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 88
    Top = 264
  end
  object rel_entrega: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 39643.381793252300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      'BEGIN'
      'END.            ')
    Left = 120
    Top = 264
    Datasets = <
      item
        DataSet = fscliente
        DataSetName = 'fscliente'
      end
      item
        DataSet = fs_entrega
        DataSetName = 'fs_entrega'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 7.800000000000000000
      RightMargin = 8.200000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      OnAfterPrint = 'Page2OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Shape11: TfrxShapeView
          Top = 64.929190000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          Left = 5.559060000000000000
          Top = 66.708720000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 64.252010000000000000
          Top = 66.708720000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 589.606680000000000000
          Top = 66.708720000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 646.299630000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 268.346630000000000000
          Top = 1.000000000000000000
          Width = 464.882190000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'G U I A    D E   E N T R E G A    N'#186': [fxrelatorio."LINHA10"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 53.913420000000000000
          Top = 66.141732280000000000
          Height = 457.322839530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 589.606680000000000000
          Top = 66.141732280000000000
          Height = 457.322839530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 642.520100000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 1.133858270000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 37.795300000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          Left = 0.755905510000000000
          Top = 22.677180000000000000
          Width = 442.205010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CODIGO"]  [FSCLIENTE."NOME"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 449.764070000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Top = 15.118120000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 566.929500000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 570.709030000000000000
          Top = 15.118120000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Identidade / Insc.Estadual')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 661.417750000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Data da Compra')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 664.197280000000000000
          Top = 23.677180000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 452.543600000000000000
          Top = 24.456710000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CPF"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 568.709030000000000000
          Top = 24.677180000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'RG'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."RG"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1.133858270000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 245.669450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 2.779530000000000000
          Top = 44.354360000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."ENDERECO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 3.000000000000000000
          Top = 53.692949999999990000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'BAIRRO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."BAIRRO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 249.448980000000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade/UF')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 355.275820000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 245.669450000000000000
          Top = 49.133889999999990000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CIDADE"] / [FSCLIENTE."UF"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 359.055350000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 358.055350000000000000
          Top = 44.354360000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DataField = 'COMPLEMENTO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."COMPLEMENTO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 502.677490000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 507.457020000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Telefones')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 506.457020000000000000
          Top = 44.354360000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[FSCLIENTE."TELEFONE1"]  [FSCLIENTE."TELEFONE2"]  [FSCLIENTE."CE' +
              'LULAR"]')
          ParentFont = False
        end
        object Line23: TfrxLineView
          Left = 623.622450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          Left = 625.401980000000000000
          Top = 39.795300000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Caixa:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 623.622450000000000000
          Top = 51.913420000000000000
          Width = 109.606370000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo100: TfrxMemoView
          Left = 659.638220000000000000
          Top = 39.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA9'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA9"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 625.401980000000000000
          Top = 53.133889999999990000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 660.417750000000000000
          Top = 53.133889999999990000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA8'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA8"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 1.000000000000000000
          Top = 1.000000000000000000
          Width = 268.346630000000000000
          Height = 15.118110240000000000
          DataField = 'FANTASIA'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[fxemitente."FANTASIA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 238.110390000000000000
        Width = 733.228820000000000000
        object Shape1: TfrxShapeView
          Width = 733.228820000000000000
          Height = 52.913420000000000000
          Fill.BackColor = clWhite
          Frame.Width = 0.500000000000000000
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Reconhe'#231'o que recebi a(s) mercadoria(s) acima relacionada(s) em ' +
              'perfeito estado.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.236239999999900000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 41.574830000000000000
          Top = 41.574830000000020000
          Width = 192.756030000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 325.039580000000000000
          Top = 26.456709999999820000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Assinatura:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 393.071120000000000000
          Top = 37.795299999999880000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 94.488250000000000000
          Top = 41.574830000000020000
          Width = 15.118120000000000000
          Height = -18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 147.401670000000000000
          Top = 41.574830000000020000
          Width = 15.118120000000000000
          Height = -18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 162.519790000000000000
        Width = 733.228820000000000000
        DataSet = fs_entrega
        DataSetName = 'fs_entrega'
        RowCount = 0
        object Memo22: TfrxMemoView
          Left = 5.779530000000000000
          Top = 1.779529999999994000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataField = 'Codigo'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fs_entrega."Codigo"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 64.472480000000000000
          Top = 1.779529999999994000
          Width = 514.016080000000000000
          Height = 11.338590000000000000
          DataField = 'PRODUTO'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fs_entrega."PRODUTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 589.827150000000000000
          Top = 1.779529999999994000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'Unidade'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fs_entrega."Unidade"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 646.520100000000000000
          Top = 1.779529999999994000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'qtde_entregue'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fs_entrega."qtde_entregue"]')
          ParentFont = False
        end
      end
    end
  end
  object fs_entrega: TfrxDBDataset
    UserName = 'fs_entrega'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Item=ITEM'
      'Codigo=Codigo'
      'Produto=PRODUTO'
      'Unidade=Unidade'
      'qtde_vendida=qtde_vendida'
      'qtde_entregue=qtde_entregue'
      'qtde_saldo=qtde_saldo')
    DataSet = qrEntrega
    BCDToCurrency = False
    Left = 56
    Top = 264
  end
  object fscliente: TfrxDBDataset
    UserName = 'fscliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'APELIDO=APELIDO'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'MORADIA=MORADIA'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'TELEFONE3=TELEFONE3'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'RG=RG'
      'CPF=CPF'
      'FILIACAO=FILIACAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'CONJUGE=CONJUGE'
      'PROFISSAO=PROFISSAO'
      'EMPRESA=EMPRESA'
      'RENDA=RENDA'
      'LIMITE=LIMITE'
      'REF1=REF1'
      'REF2=REF2'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'NASCIMENTO=NASCIMENTO'
      'CODREGIAO=CODREGIAO'
      'CODCONVENIO=CODCONVENIO'
      'CODUSUARIO=CODUSUARIO')
    DataSet = frmvenda.qrcliente
    BCDToCurrency = False
    Left = 176
    Top = 264
  end
  object qrentrega2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from cL00002')
    Params = <>
    Left = 64
    Top = 160
  end
  object dsEntrega: TDataSource
    DataSet = qrEntrega
    Left = 312
    Top = 216
  end
  object qrEntrega: TClientDataSet
    PersistDataPacket.Data = {
      C40000009619E0BD010000001800000007000000000003000000C40004497465
      6D010049000000010005574944544802000200030006436F6469676F01004900
      000001000557494454480200020006000750726F6475746F0100490000000100
      05574944544802000200500007556E6964616465010049000000010005574944
      5448020002000A000C717464655F76656E6469646108000400000000000D7174
      64655F656E74726567756508000400000000000A717464655F73616C646F0800
      0400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 216
    object qrEntregaItem: TStringField
      DisplayWidth = 3
      FieldName = 'Item'
      Size = 3
    end
    object qrEntregaCodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'Codigo'
      Size = 6
    end
    object qrEntregaProduto: TStringField
      DisplayWidth = 49
      FieldName = 'Produto'
      Size = 80
    end
    object qrEntregaUnidade: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 5
      FieldName = 'Unidade'
      Size = 10
    end
    object qrEntregaqtde_vendida: TFloatField
      DisplayLabel = 'Vendido'
      DisplayWidth = 10
      FieldName = 'qtde_vendida'
    end
    object qrEntregaqtde_entregue: TFloatField
      DisplayLabel = 'Entregue'
      DisplayWidth = 10
      FieldName = 'qtde_entregue'
    end
    object qrEntregaqtde_saldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'qtde_saldo'
    end
  end
end

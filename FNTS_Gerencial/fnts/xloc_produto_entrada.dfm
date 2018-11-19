object frmxloc_produto_entrada: Tfrmxloc_produto_entrada
  Left = 44
  Top = 148
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NOTAS FISCAIS DE COMPRA | Localizar'
  ClientHeight = 433
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 41
    Width = 760
    Height = 3
    Align = alTop
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 44
    Width = 760
    Height = 389
    Selected.Strings = (
      'DATA_EMISSAO'#9'10'#9'Emiss'#227'o'
      'NUMERO'#9'6'#9'N'#250'mero'
      'MODELO'#9'3'#9'Mod.'
      'ESPECIE'#9'3'#9'Esp.'
      'CFOP'#9'4'#9'CFOP'
      'fornecedor'#9'43'#9'Fornecedor'
      'DATA_LANCAMENTO'#9'10'#9'Entrada'
      'TOTAL_PRODUTOS'#9'9'#9'Vlr.Produtos'
      'TOTAL_NOTA'#9'10'#9'Total Nota')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object PPROCURA: TFlatPanel
    Left = 760
    Top = 141
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 1
    object wwDBGrid1: TwwDBGrid
      Left = 16
      Top = 0
      Width = 369
      Height = 255
      Selected.Strings = (
        'CODIGO'#9'7'#9'CODIGO'
        'NOME'#9'42'#9'NOME'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgHideBottomDataLine]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnEnter = wwDBGrid1Enter
      OnKeyPress = wwDBGrid1KeyPress
      FooterColor = clWindow
      FooterCellColor = clWindow
      PaintOptions.ActiveRecordColor = clRed
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object Label56: TLabel
      Left = 19
      Top = 13
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 203
      Top = 13
      Width = 52
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 389
      Top = 13
      Width = 78
      Height = 13
      Caption = 'F6 | Nota Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edata_inicio: TJvDateEdit
      Left = 90
      Top = 10
      Width = 104
      Height = 21
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ImageKind = ikCustom
      ShowNullDate = False
      TabOrder = 0
      OnEnter = edata_inicioEnter
      OnExit = edata_inicioExit
      OnKeyPress = edata_inicioKeyPress
    end
    object edata_final: TJvDateEdit
      Left = 267
      Top = 10
      Width = 104
      Height = 21
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ImageKind = ikCustom
      ShowNullDate = False
      TabOrder = 1
      OnEnter = edata_inicioEnter
      OnKeyPress = edata_inicioKeyPress
    end
    object ENUMERO: TEdit
      Left = 480
      Top = 7
      Width = 89
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
      OnEnter = edata_inicioEnter
      OnExit = ENUMEROExit
      OnKeyPress = edata_inicioKeyPress
    end
    object bfiltrar: TAdvGlowButton
      Left = 640
      Top = 1
      Width = 104
      Height = 40
      Caption = 'Filtrar'
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A3137304439333634453238333131453241314245414242363331
        4535433039302220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A313730443933363545323833313145324131424541424236333145354330
        3930223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3137304439333632453238333131
        453241314245414242363331453543303930222073745265663A646F63756D65
        6E7449443D22786D702E6469643A313730443933363345323833313145324131
        4245414242363331453543303930222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EA23801B1000004DD4944415478DAB459
        7988555518BFEF3A5663D938E1DE8C8995D2E43A8E9AE08CDA188E51844D2989
        2B262A8626B8842286A4A248E21FE258B845A1B6992146B6A8998A8CB98D239A
        5A4E995B6E38EA34E6F6FBE477E4E374EF7BF7BCF7FAE0C73BE79EED3BE77CEB
        7931EFABE35E92D40AE809E4032D81E6440CF81BF80BF81338006C060E26B348
        8663FF4CE0756028501CA75F13A0ADF5ED17602DF0117036EA823187139C0ABC
        0D340D683B465C02EE0059402EF02C50C7EA5B037C00CC00AAD3C160376009D0
        497D3B037C0FAC0776032742C6CA95E701A5148767AC39C6039FA5C2A09CD842
        553F0FBCC713A84942A4443CA6011DD5B7A5C098B0017E9CC9665BCC09534F03
        8B9264CEE369C94DCC54DF46035FBA32B8883BF52853A59CE8B2971E9A0574A6
        960BF5A7A6476270146543E81AD03DDE0E53A03D3CCD4AD67B01CB12C9603ECD
        812111EAC38E0B3F07F4015AF00044197E00B6F0366CAA0BFC06E4B03E16280B
        63F028F014CB03814F1D182BA558E487B4CB42F3800F03DADAA8833066AADABE
        E2718AB9A58ECC7D027C6E31F72F50ABEA4F52D13605388823C090FB87E6792B
        ED13CCA47B7A981A5ACF81B955F42C86E47A3EE689DDA6C11E48D96EC03EDB80
        A280B9F603ED5996DF0A7382C3C89CD0BB0ECCBDA998BBC8494586B653F6CE51
        A6A7509E0FB16F2135D9A691AA3C419FE0165AFA7F8047793D51E80A509F65D1
        C87D09FA4BDF2A209BF5C6BC394DE5400165B0A14FC7DE938D2B1D98EBA5982B
        8BC09CC745E7A8FAD0803E8BD5664A84C1BEAA71BDC3F5BEA8CACB1CC6494473
        93E5B601ED3FABF24B3EE5416B53546AC4DF5BC0AF0EE3C47B9C66393B2432FA
        9DE5D6E68A3D0AF41F0E0BDD54DEA881630C6A44A336A4CF2EFE3695C91F572A
        7ECB61A17265B78A1DC615A90D9D0AE9631427DB575775C5D1A5AD53E5E90EE3
        26A9F28638CA2454CFE7092443B2CB15CA4BAC8830E61DA01FCB15F4D171E355
        5F1DE72349244D05AA3E9C2E2F3744A1DE07E6AA6F03E2CC6D78B99E418DEAC4
        FC21161271D8D499C6DDDED420BAB59DC0562A520F866CDA7DBE96204A7A8CBF
        9733548695C310A92A027362AB1E0A69AF43A67A04B4555006372558A38BC95B
        7CFA4D43AD130C2C6492643327E6A29D0A6EABE836E5FB49E01B7A8DF611987B
        82E1D73D9B98610D10AFF25D1CF31014965F63E657A9E242A18614990B8C6A5C
        025E43DFFAB4ECBB54741244FD2853768A70818A521930E63C15F0B6A3F28D55
        B7F2B559700D7FB318B86AEA0A6C0C98E81CE5F1B0973ECA53818B648035BE72
        F6C68BCC0DD9912691B10E1114CA95965B99E5FD2BAB56B96A7DE6C4867E0A70
        F65D1990A6934A28CB423F5219FF93349D51C1C30B7CDE107A0B7885C1C4C424
        DC62226AC28DD765BD9939009BC1DEE4DE3CF2E4C57977492755A8D8501EA9E6
        8725EE624626ABA7B6BD2AD3FB3F488CFA0EC5DC3ACD5CD8CBC202FA548F61D1
        EE10AF902AB56442D59D7579E07C35EADBCC60E6B0C6F46CB31427551A45F3D4
        4185F905AEAF5BA32DA6A6D120BFA184D995FAD2EDC9E61F54394A6158741DE5
        01F379C67A2D2C53F3055F130EF165D50B79779128E9655E9F7E17BCC1DCB72C
        D517568FA1D26C9E6A6640F45BCEF0FD2AC3B54C9A8E8E34194199DDD428863E
        E6F8CA2F8B8E60DCD7CEF17A6503AB79BD91B3C0580A7F43E4333716469B336A
        7E8011CC0D5EFB29A6911B19C4D6BA2E72578001003E1420BFB0E5E3D5000000
        0049454E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = BfiltrarClick
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
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
    object PesquisaNota1: TMenuItem
      Caption = 'Pesquisa Nota'
      ShortCut = 117
      OnClick = PesquisaNota1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 464
    Top = 200
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 496
    Top = 200
    object queryfornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object queryCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object queryNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object queryCODEMPRESA: TWideStringField
      FieldName = 'CODEMPRESA'
      Size = 10
    end
    object queryCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object queryMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object queryESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object querySERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object queryCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrinventarioDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrinventarioDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
    end
    object queryCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
    end
    object queryCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
    end
    object queryCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
    end
    object queryCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
    end
    object queryCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
    end
    object queryCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
    end
    object queryCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
    end
    object queryCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
    end
    object queryCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
    end
    object queryCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
    end
    object queryCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
    end
    object queryCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
    end
    object queryCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
    end
    object queryBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object queryVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object queryBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object queryVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
    end
    object queryFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object querySEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object queryOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object queryIPI: TFloatField
      FieldName = 'IPI'
    end
    object queryDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object queryTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
    end
    object queryTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object queryTRANSP_NOME: TWideStringField
      FieldName = 'TRANSP_NOME'
      Size = 60
    end
    object queryTRANSP_FRETE: TWideStringField
      FieldName = 'TRANSP_FRETE'
    end
    object queryTRANSP_PLACA: TWideStringField
      FieldName = 'TRANSP_PLACA'
      Size = 10
    end
    object queryTRANSP_PLACAUF: TWideStringField
      FieldName = 'TRANSP_PLACAUF'
      Size = 2
    end
    object queryTRANSP_IE: TWideStringField
      FieldName = 'TRANSP_IE'
      Size = 25
    end
    object queryTRANSP_CNPJ: TWideStringField
      FieldName = 'TRANSP_CNPJ'
      Size = 25
    end
    object queryTRANSP_ENDERECO: TWideStringField
      FieldName = 'TRANSP_ENDERECO'
      Size = 40
    end
    object queryTRANSP_CIDADE: TWideStringField
      FieldName = 'TRANSP_CIDADE'
      Size = 30
    end
    object queryTRANSP_UF: TWideStringField
      FieldName = 'TRANSP_UF'
      Size = 2
    end
    object queryTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
    end
    object queryTRANSP_ESPECIE: TWideStringField
      FieldName = 'TRANSP_ESPECIE'
    end
    object queryTRANSP_MARCA: TWideStringField
      FieldName = 'TRANSP_MARCA'
    end
    object queryTRANSP_NUMERO: TWideStringField
      FieldName = 'TRANSP_NUMERO'
    end
    object queryTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
    end
    object queryTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
    end
    object queryOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object queryOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object queryOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object queryOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object queryOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 60
    end
    object queryOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 60
    end
    object queryOBS7: TWideStringField
      FieldName = 'OBS7'
      Size = 60
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object queryITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object queryTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object queryNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Size = 6
    end
    object queryVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object queryCODREMETENTE: TWideStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object queryICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object queryICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object queryDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
    end
    object queryITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
    end
    object queryITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
    end
    object queryITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
    end
    object queryITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
    end
    object queryITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
    end
    object queryITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
    end
    object queryITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
    end
    object queryITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
    end
    object queryITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
    end
    object queryITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
    end
    object queryITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
    end
    object queryITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
    end
    object queryITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
    end
    object queryITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
    end
    object queryITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
    end
    object queryITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
    end
    object queryITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
    end
    object queryITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
    end
    object queryITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
    end
    object queryITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
    end
    object queryITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
    end
    object queryITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
    end
    object queryITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
    end
    object queryITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
    end
    object queryITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
    end
    object queryITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object queryBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
    object queryCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
    end
    object queryOBS8: TWideStringField
      FieldName = 'OBS8'
      Size = 60
    end
    object queryCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object queryPIS: TFloatField
      FieldName = 'PIS'
    end
    object queryCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object queryOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object queryINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object queryAPROVEITA_CREDITO_ICMS: TWideStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Size = 1
    end
    object queryCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 50
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 560
    Top = 152
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end

object frmnotafiscal_item: Tfrmnotafiscal_item
  Left = 192
  Top = 211
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'EMISS'#195'O DE NOTA FISCAL | Edi'#231#227'o do Item'
  ClientHeight = 298
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 241
    Width = 740
    Height = 3
    Align = alBottom
    ExplicitTop = 252
  end
  object Bevel2: TBevel
    Left = 0
    Top = 38
    Width = 740
    Height = 3
    Align = alTop
  end
  object Shape1: TShape
    Left = 8
    Top = 50
    Width = 721
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Shape3: TShape
    Left = 8
    Top = 64
    Width = 121
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Shape4: TShape
    Left = 128
    Top = 64
    Width = 129
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Shape5: TShape
    Left = 408
    Top = 64
    Width = 177
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Shape6: TShape
    Left = 584
    Top = 64
    Width = 145
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Shape7: TShape
    Left = 256
    Top = 64
    Width = 153
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label11: TLabel
    Left = 325
    Top = 51
    Width = 90
    Height = 13
    Caption = 'Valores do Item'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label31: TLabel
    Left = 37
    Top = 65
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 149
    Top = 65
    Width = 64
    Height = 13
    Caption = 'Valor Unit'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 309
    Top = 65
    Width = 40
    Height = 13
    Caption = 'Subtotal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel
    Left = 469
    Top = 65
    Width = 45
    Height = 13
    Caption = 'Desconto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel
    Left = 631
    Top = 65
    Width = 51
    Height = 13
    Caption = 'Valor Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 15
    Top = 126
    Width = 23
    Height = 13
    Caption = 'CST:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 13
    Top = 150
    Width = 31
    Height = 13
    Caption = 'CFOP:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 527
    Top = 126
    Width = 94
    Height = 13
    Caption = 'Classifica'#231#227'o Fiscal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LUF: TLabel
    Left = 228
    Top = 9
    Width = 17
    Height = 13
    Caption = 'UF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape2: TShape
    Left = 10
    Top = 178
    Width = 338
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Label8: TLabel
    Left = 149
    Top = 179
    Width = 29
    Height = 13
    Caption = 'ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape8: TShape
    Left = 11
    Top = 192
    Width = 70
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label9: TLabel
    Left = 26
    Top = 194
    Width = 39
    Height = 13
    Caption = 'Al'#237'quota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape9: TShape
    Left = 80
    Top = 192
    Width = 86
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label10: TLabel
    Left = 101
    Top = 194
    Width = 42
    Height = 13
    Caption = 'Redu'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape10: TShape
    Left = 165
    Top = 192
    Width = 92
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label6: TLabel
    Left = 173
    Top = 194
    Width = 75
    Height = 13
    Caption = 'Base de C'#225'lculo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape11: TShape
    Left = 256
    Top = 192
    Width = 92
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label13: TLabel
    Left = 269
    Top = 194
    Width = 67
    Height = 13
    Caption = 'Valor do ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape12: TShape
    Left = 350
    Top = 178
    Width = 172
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Label14: TLabel
    Left = 369
    Top = 179
    Width = 129
    Height = 13
    Caption = 'Substitui'#231#227'o Tribut'#225'ria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape13: TShape
    Left = 351
    Top = 192
    Width = 86
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label21: TLabel
    Left = 358
    Top = 194
    Width = 75
    Height = 13
    Caption = 'Base de C'#225'lculo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape14: TShape
    Left = 436
    Top = 192
    Width = 86
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label24: TLabel
    Left = 448
    Top = 194
    Width = 58
    Height = 13
    Caption = 'Valor Subst.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape15: TShape
    Left = 524
    Top = 179
    Width = 87
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Label18: TLabel
    Left = 551
    Top = 179
    Width = 38
    Height = 13
    Caption = 'Outras'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape16: TShape
    Left = 525
    Top = 193
    Width = 86
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label19: TLabel
    Left = 553
    Top = 194
    Width = 31
    Height = 13
    Caption = 'Isento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape17: TShape
    Left = 613
    Top = 178
    Width = 117
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Label15: TLabel
    Left = 664
    Top = 179
    Width = 17
    Height = 13
    Caption = 'IPI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape18: TShape
    Left = 614
    Top = 192
    Width = 51
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label17: TLabel
    Left = 620
    Top = 194
    Width = 39
    Height = 13
    Caption = 'Al'#237'quota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape19: TShape
    Left = 664
    Top = 192
    Width = 66
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label25: TLabel
    Left = 684
    Top = 194
    Width = 24
    Height = 13
    Caption = 'Valor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    Color = 15461355
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 11
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 512
      Top = 11
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label7: TLabel
      Left = 592
      Top = 10
      Width = 53
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque:'
    end
    object DBEdit30: TDBEdit
      Left = 145
      Top = 7
      Width = 362
      Height = 21
      Color = clBtnFace
      DataField = 'produto'
      DataSource = dsnotafiscal_item
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 559
      Top = 7
      Width = 30
      Height = 21
      Color = clBtnFace
      DataField = 'unidade'
      DataSource = dsnotafiscal_item
      TabOrder = 2
    end
    object eproduto: TRzDBButtonEdit
      Left = 56
      Top = 7
      Width = 87
      Height = 21
      DataSource = dsnotafiscal_item
      DataField = 'CODPRODUTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FocusColor = 11075583
      ParentFont = False
      TabOrder = 0
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyPress = eprodutoKeyPress
      ButtonGlyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ButtonNumGlyphs = 1
      ButtonKind = bkCustom
      ButtonShortCut = 117
      AltBtnWidth = 15
      ButtonWidth = 24
      OnButtonClick = eprodutoButtonClick
    end
    object restoque: TJvCalcEdit
      Left = 649
      Top = 6
      Width = 79
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      Color = clBtnFace
      DisplayFormat = '###,###,##0.000'
      Enabled = False
      NumGlyphs = 2
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 244
    Width = 740
    Height = 54
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 23
    ExplicitTop = 276
    object bgravar: TAdvGlowButton
      Left = 254
      Top = 4
      Width = 107
      Height = 45
      Caption = 'F2 | Gravar'
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
        702E6969643A3537454442333839453238323131453241373944433046384342
        3741393241322220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A353745444233384145323832313145324137394443304638434237413932
        4132223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3537454442333837453238323131
        453241373944433046384342374139324132222073745265663A646F63756D65
        6E7449443D22786D702E6469643A353745444233383845323832313145324137
        3944433046384342374139324132222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E1266892C000004254944415478DACC98
        5948555114864FF76A5869831ACD3341DA3C9765448151E04B823D9411114136
        43C38BD0000D46565050F4D0084504511159964403A591428346D86093461615
        94D968FF8AFFD8EAE8D57DCEBD8A0B3EEEBE67FCCFDE7BADBDD66E619D7E6205
        61ADC110D00B74063D41187805CAC00B500CDE7B7D4198C7FBE2410A98048683
        9800D77D020FC115700EDC74FBA2162E7B7026580A267BFCB0076037D81F6A81
        63C12E30CE71FC31C80305E02D7BAC1A44828E1CFE0430C8715F0958034E8742
        A0085BAEFEBF037BC1110A34B16EECFD7430401D178169E0B317817E70154C50
        C736802DE05B108EB51064B197C5CAC178F0BCAE8B7D011E2237DF55E28A394C
        EB83146771FEF503D9FCDF051481816E04DE56371C67BBC80A9DC97C9D0136F2
        7F1B7087A1AAC1307306C4B17D14CC657B04080FA1C87CB00E7C01992002DC02
        7DEA9B837328CAA2678E623B935E174ACB662F8A1D04F3D8DEC350564B602423
        7E4BF0819EF795E70A19906DBBA2E69089553344A5A863BFD96B3FD4B41ACDF6
        30FAC07F43BC95E2C4E62B7162158E176E06975DF6589C43E03BC7F954F08CED
        C31459E324EDC062B61F1904D04E1E86B4471DBDAAAD141C637B28837C8DC054
        75E172A315C8BD99DCB34AB5976881B6A7BE04170DE754635839930AB159A24F
        044681313C78CAF041651E5E5E6A785D2E7FDB8244719244E51C0F0C1FB21A8C
        7431D4BF19474DECBA6A0F0B734C5ED3D5623A690C2B6098EB2009B00C71579E
        F8C1E4B239D81BFEC6F854362C294F65331168C7E0089FC323ABAD66663EB54A
        44D2739A83B5B17BD2A7424678A09CAC89CDAFFCA242BCF8A93A2902AFB978D8
        3670A99EBCF21797AD2C17CF4C606CFE1B3B45E00D3A476B7B817661470C42D3
        2D9702756156205FFE5D05C7149702BB1B5CD3DBE53367A86C27DF1E9A0376DC
        01B35D3A996D116A45F26AFD55CD7D48BFE02CE78BD8761799C817FE5E639D21
        1161A5878FB354366DDB3E7D5115D8C4B6142E0B1C3776ADC7092CAEE7510C53
        0986DB2B1D1D715732F624F5C14F9C374BCDBB8837EEA577DAB5AA88CF00ADC0
        4FF6A85FF5601E93583FD7526D957C5935F1F1C30EF359561D99545AA0A22949
        E583AF0D9D2014765E251F196A346BCD831CF69EBD5D91DB04E2762A71F95A5C
        A0899A4EA162531882A21B499C0CF30A95CD4F36DD5998062EB03D91BB515343
        284CB651EEA952E3059DA4CA54A09D949E643B9A65A67C71AF208445B2BCBD0F
        06AB0435CE0AB00BEB6BE081A9ACF27EAAE2AA943B01C9A0BD81A8704E952C3A
        DE5A756E07772F2A83D91FB497B42C47796AC7CF3C869112551849C889E73237
        CAAABD459CCBAD94C2866B55775BC0F2B2652C09BD2C6B32AF7733AC1816D3DE
        76F963E934C9DCEBEBCE22A715CF4B02F29175EE6306FD1C2BC026657DE67597
        5F328D131CD2BE1CCA58EBDFAE691527FD4B0ABCA9964557F6478001003EE5EB
        1FBCF260370000000049454E44AE426082}
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
    object bretorna: TAdvGlowButton
      Left = 367
      Top = 4
      Width = 123
      Height = 45
      Caption = 'ESC | Cancelar'
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
        702E6969643A3039393945413941453238333131453238343743414236334536
        3745374338342220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A303939394541394245323833313145323834374341423633453637453743
        3834223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3039393945413938453238333131
        453238343743414236334536374537433834222073745265663A646F63756D65
        6E7449443D22786D702E6469643A303939394541393945323833313145323834
        3743414236334536374537433834222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E92C56603000005424944415478DAB459
        096C5645107EFDE9A140550C0A22281EA0B68AB55A3945A336206942288848A2
        522F30468518538F88423882311062D06A0236864304154AAAC12018AD28B14A
        3C209E512CD6563C38022DE5A8DF906FC964B2EFFDEFB53F937C79EFEDEEBF3B
        3B3B333B337F56B0EE97A08374317023500CF407FA1059C01EE00FA001F806D8
        027CD79145B2138E3F1DB81DB81BB825625C2FE04AD3F625B01A7803688EBB60
        5602095602D381DE9EBE6F814D945C3B7001308C4C7631635B80D78067810399
        607030F00A708D6A6B2243EB817AE0376024702DD00AAC04F6F1C80B80F15487
        2BCC1C8F026B3AC3A0486C91FAFE1B984309B4A8F6451C2B923C0BE80714023B
        CD7CA21E4F0345AAED55605A1803A908E6E61AE684A901C062C39CDBC8526010
        8F57689667CE353C89E754DB54E09DA40C2EE64E03EAD4784EB437624396E97F
        23C6CEA63A34F07B1C2D3D16830F5037840E02433D3B1429D5028D6A116D998D
        94E6E3C00C1EB9A5AF28CD1DFCBE89A710C960318FD2D175C036CFE49F03A540
        15F036DBB4B58A0F1C023CC1A3FE8912B3F40F99DCCDEF7BAD3E5A0657ABF73B
        80EF438EE83CEAD16CEA9FD0F9AAFF6A602D5DD219401EF04CC85C47805BD5F7
        CB40BE8FC187814B9565BD15A14387B9B0A663EA5DA4F95F44BFA51F80BB4E7A
        9620A8B60CCA0DB14029FBB4188EDB4ABFDD30739AE9FF2BCD7CCB792D0A9503
        57E945EE01BAF1FDF920F3243A791B0DAB06181E32EE3EF5FE986670129FADC6
        F7658AE4542EA20A950075BC592CD513421381DC142F7637B89A4A9B8EE43873
        4D5B9E0942B40A08632B80CB6860CE627DB4844F3194D132D128D5B93E82A947
        E82A0E928166A38BC78D7E9E637E7FD4BC87050A75EABD4C16BAC158938F36C8
        60E053A02719DCA7AC4EE6D0977A99E7D6C98F69D53F03BF52250666F3889D95
        FD1EF2A3323A5C67406D0C52DD4275667CADF94E1AAC6E2383BDB39583FD3A62
        57ED3420BDFB548205C565F44D307E0F9F3DB4AEEC4F6314DA0872E2049B8676
        2718EBE6EE9AA20E25A5233CE2CB5578752A282BA5C4D93DE68F52B4E40A7AFE
        5D948E040EE7668831C7CB2159EC4F7E14C694A6DCB31318AD94D0872E675B33
        C3B5F4A946349DCDE75EEDCFFAF2B876C538DE8F4CDBC7C093C07C866BDDD3DC
        48C7D3AC51E2F296147D9BA381113B3E1643324F31AC5AC8F4208CDA2252DE0B
        79E39CF089C2E007AA7354048371DDCA3C86FB2B23C6E49AE847D310F5BE31C5
        90DD45CDF7471C6B410225AF62349E17D29FA374DFD2432AE6AC71527993CF33
        19B85A7A1F189B8041A7C73D3D7D2E3059E7E92B50FD9201B63806972A1D9B1F
        221109402F89C9E0609573589AC1E70E4FDF3293599ED4AB032A57CD674E6C25
        E8F2853854CD54B5D5A3CB6369449646AB8D6D7671A1AD2C34A9E0A194E58D40
        05B5AB5834DADC4107FC0930C2E3077BD116725452D6E4CB2BEE54EF352A6271
        7A2A6D1F9AF6B83493CC957AFA3629E62A1D733E06B730977589D47695E9053C
        9EAD8CD7C624606E19C3B50A732A5D389F2BD5BD0BBC90AEB2F022C3F38085A0
        7AEEDCD1704AB29696561871674FA4342A783AD5AABF3F6B864355CC589EA4BA
        25B9F183C601EBE4BB94D62F658D43F4A50DBC218A94DF9434628A89B0E5BE7E
        49F9C93A26EF879396DFE618A676B26D95B91EC5775ECF4BFE28A39BF7B8C956
        73534DA7C5EA6AC6A4CE14306F065E37715F036B322B549A184683A8BBE5A62E
        D8C6DCB72A1325E0AEF48D53693C36FAFD8252DBCF3BB61B5D45914A336D0DA8
        3246E494A846EDFC9528FC64579A48408D540D09C77E8C1D5277E26F8862BA1A
        61B40F739B5C3AE136168F1A99468A3E7EE6338274F4BF000300DD60333ABE03
        1B2E0000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bretornaClick
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
  object FlatPanel2: TFlatPanel
    Left = 120
    Top = 77
    Width = 17
    Height = 21
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 1
  end
  object FlatPanel3: TFlatPanel
    Left = 248
    Top = 77
    Width = 17
    Height = 21
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 2
  end
  object FlatPanel4: TFlatPanel
    Left = 400
    Top = 77
    Width = 17
    Height = 21
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 3
  end
  object FlatPanel5: TFlatPanel
    Left = 576
    Top = 77
    Width = 17
    Height = 21
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 4
  end
  object eqtde: TRzDBNumericEdit
    Left = 15
    Top = 82
    Width = 98
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'QTDE'
    Alignment = taLeftJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 5
    OnExit = eqtdeExit
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.000'
  end
  object eunitario: TRzDBNumericEdit
    Left = 143
    Top = 82
    Width = 98
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'UNITARIO'
    Alignment = taLeftJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 6
    OnExit = eunitarioExit
    OnKeyPress = eunitarioKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.00'
  end
  object esubtotal: TRzDBNumericEdit
    Left = 271
    Top = 82
    Width = 122
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'SUBTOTAL'
    ReadOnly = True
    Alignment = taLeftJustify
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 7
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.0000'
  end
  object edperc: TRzNumericEdit
    Left = 429
    Top = 82
    Width = 54
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnExit = edpercExit
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '##0.00%'
  end
  object edesconto: TRzDBNumericEdit
    Left = 487
    Top = 82
    Width = 82
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'DESCONTO'
    Alignment = taLeftJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 9
    OnExit = edescontoExit
    OnKeyPress = edescontoKeyPress
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.00'
  end
  object etotal: TRzDBNumericEdit
    Left = 601
    Top = 82
    Width = 115
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'TOTAL'
    ReadOnly = True
    Alignment = taLeftJustify
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 10
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.00'
  end
  object ecfop: TRzDBButtonEdit
    Left = 56
    Top = 145
    Width = 81
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'CFOP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 13
    OnEnter = ecfopEnter
    OnExit = ecfopExit
    OnKeyPress = ecfopKeyPress
    ButtonGlyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
      9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
      C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
      A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
      E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
      F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
      DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
      F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
      D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
      F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
      DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
      F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
      E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ButtonNumGlyphs = 1
    ButtonKind = bkCustom
    ButtonShortCut = 117
    AltBtnWidth = 15
    ButtonWidth = 24
    OnButtonClick = ecfopButtonClick
  end
  object DBEdit2: TDBEdit
    Left = 139
    Top = 145
    Width = 382
    Height = 21
    Color = clBtnFace
    DataField = 'natureza'
    DataSource = dsnotafiscal_item
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
  end
  object DBEdit3: TDBEdit
    Left = 139
    Top = 121
    Width = 382
    Height = 21
    Color = clBtnFace
    DataField = 'cst_descricao'
    DataSource = dsnotafiscal_item
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
  end
  object ecst: TRzDBButtonEdit
    Left = 56
    Top = 121
    Width = 81
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'CST'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 11
    OnExit = ecstExit
    OnKeyPress = ecstKeyPress
    ButtonGlyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
      9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
      C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
      A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
      E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
      F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
      DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
      F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
      D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
      F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
      DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
      F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
      E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ButtonNumGlyphs = 1
    ButtonKind = bkCustom
    ButtonShortCut = 117
    AltBtnWidth = 15
    ButtonWidth = 24
    OnButtonClick = ecstButtonClick
  end
  object ECLASSIF: TDBEdit
    Left = 624
    Top = 121
    Width = 105
    Height = 21
    DataField = 'CLASSIFICACAO_FISCAL'
    DataSource = dsnotafiscal_item
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnEnter = ECLASSIFEnter
    OnExit = ECLASSIFExit
    OnKeyPress = ECLASSIFKeyPress
  end
  object DBEdit5: TDBEdit
    Left = 20
    Top = 210
    Width = 53
    Height = 21
    DataField = 'ICMS'
    DataSource = dsnotafiscal_item
    TabOrder = 14
    OnEnter = DBEdit5Enter
    OnExit = DBEdit5Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit9: TDBEdit
    Left = 90
    Top = 210
    Width = 69
    Height = 21
    DataField = 'ICMS_REDUZIDO'
    DataSource = dsnotafiscal_item
    TabOrder = 15
    OnEnter = DBEdit5Enter
    OnExit = DBEdit5Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit10: TDBEdit
    Left = 171
    Top = 210
    Width = 77
    Height = 21
    DataField = 'BASE_CALCULO'
    DataSource = dsnotafiscal_item
    TabOrder = 16
    OnEnter = DBEdit5Enter
    OnExit = DBEdit10Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit11: TDBEdit
    Left = 262
    Top = 210
    Width = 80
    Height = 21
    DataField = 'VALOR_ICMS'
    DataSource = dsnotafiscal_item
    TabOrder = 17
    OnEnter = DBEdit5Enter
    OnExit = DBEdit11Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit14: TDBEdit
    Left = 356
    Top = 210
    Width = 76
    Height = 21
    DataField = 'BASE_SUB'
    DataSource = dsnotafiscal_item
    TabOrder = 18
    OnEnter = DBEdit5Enter
    OnExit = DBEdit14Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit15: TDBEdit
    Left = 442
    Top = 210
    Width = 75
    Height = 21
    DataField = 'ICMS_SUB'
    DataSource = dsnotafiscal_item
    TabOrder = 19
    OnEnter = DBEdit12Enter
    OnExit = DBEdit12Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit13: TDBEdit
    Left = 530
    Top = 210
    Width = 73
    Height = 21
    DataField = 'ISENTO'
    DataSource = dsnotafiscal_item
    Enabled = False
    TabOrder = 20
    OnEnter = DBEdit12Enter
    OnExit = DBEdit13Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit6: TDBEdit
    Left = 618
    Top = 210
    Width = 41
    Height = 21
    DataField = 'IPI'
    DataSource = dsnotafiscal_item
    TabOrder = 21
    OnEnter = DBEdit6Enter
    OnExit = DBEdit6Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit12: TDBEdit
    Left = 668
    Top = 209
    Width = 57
    Height = 21
    DataField = 'VALOR_IPI'
    DataSource = dsnotafiscal_item
    Enabled = False
    TabOrder = 22
    OnEnter = DBEdit12Enter
    OnExit = DBEdit12Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit4: TDBEdit
    Left = 610
    Top = 146
    Width = 73
    Height = 21
    DataField = 'ISENTO'
    DataSource = dsnotafiscal_item
    Enabled = False
    TabOrder = 26
    OnEnter = DBEdit12Enter
    OnExit = DBEdit13Exit
    OnKeyPress = eprodutoKeyPress
  end
  object Pop2: TPopupMenu
    Left = 444
    Top = 85
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bretornaClick
    end
  end
  object dsnotafiscal_item: TDataSource
    DataSet = frmnotafiscal.qrnotafiscal_item
    Left = 408
    Top = 85
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 176
    Top = 88
  end
end

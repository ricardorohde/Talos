object frmEntrega_ficha: TfrmEntrega_ficha
  Left = 296
  Top = 170
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'ENTREGA DE MERCADORIAS | Lan'#231'amento Avulso'
  ClientHeight = 451
  ClientWidth = 707
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
    Top = 409
    Width = 707
    Height = 2
    Align = alBottom
    ExplicitTop = 400
  end
  object Bevel2: TBevel
    Left = 0
    Top = 376
    Width = 707
    Height = 2
    Align = alBottom
    ExplicitTop = 367
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 707
    Height = 376
    ControlType.Strings = (
      'qtde_entregue;CustomEdit;ed_entregue;F')
    Selected.Strings = (
      'Item'#9'3'#9'Item'
      'codvenda'#9'6'#9'Venda'
      'data_venda'#9'10'#9'Data'
      'Codigo'#9'8'#9'C'#243'digo'
      'Produto'#9'31'#9'Produto'
      'Unidade'#9'5'#9'Un.'
      'qtde_vendida'#9'10'#9'Vendido'
      'qtde_ja_entregue'#9'10'#9'Entregue'
      'qtde_entregue'#9'10'#9'Entregar'
      'qtde_saldo'#9'10'#9'Saldo')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 8
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 411
    Width = 707
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = 11429670
    ParentBackground = False
    TabOrder = 1
    object bgravar: TAdvGlowButton
      Left = 215
      Top = 1
      Width = 167
      Height = 40
      Caption = 'Gravar e Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000026000000260806000000A83DE9
        AE0000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A3335324535324635303336433131453438453534464243364332
        4546313836412220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A333532453532463630333643313145343845353446424336433245463138
        3641223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3335324535324633303336433131
        453438453534464243364332454631383641222073745265663A646F63756D65
        6E7449443D22786D702E6469643A333532453532463430333643313145343845
        3534464243364332454631383641222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4FB6FFB8000003BB4944415478DABC98
        DF4B154114C7EF3515BD96215AFE48ADC41B2905BEF8149468F4101545A42194
        D08B625404BDF52246E84342FD0152595E1551A8A820B0247A0D2AA20445AD4C
        938A32BD9622DEBE53DFA5D3B27B77F6DED5031FD89D3D33E73B33BBB367C61F
        89447C31DA16900F36815CB081E59FC114F80826C0782C8D27BAF4CF03FB4005
        D82FC4D89912F9000C8247605237905F73C452C1057012149B9E7D03D3E00BEF
        B34036C830F98D800E7005FC748CA88439701C0C45FE59180C827A500A36832C
        9046B258564A9F41D6316C886D468DEB24EA9268701184C00EE0D7E890819F75
        426CC3B0CBB1084B07BDA65E56B81063876AE3AD68B797B1B484A91E768BCAAA
        A7B91E8832C8619B86755BCD8055C52651A9D54341665A459C262761D5C2B967
        054519F48878D576C2B2C1149DDED9CDBDC7A4335684B1B3AD84B5D16106947B
        2C40054CB67956CE98116AF84F58A118AD768F45658017E009C8B3F16917A356
        288535F2C102087A2CEC8E788F264091854F90B1959D56650958FC93C141FE08
        EE83619F7776111C12F7C9C46CC38CEDE33F3849A9DD0AE6A8F698872375042C
        8BD152235215C5BF867EB34A932AA864C1B287D35820DE59C3CE39D4D9263A52
        A9A6723B8750E54D330E53530B1A1C7C52401FC81165B7C135877A2A4B19E375
        49A268E013988F52B10EDCE0F50F10B2F1BB0ACAC5FD4B8DCEF8980AA904B348
        695223B68E0FE6C0924DA5A010E5E3F5610BBF53A05EDC7F670E17D610B624F2
        B4B404CDAFEB3DE811F749A0537CCDCA7671B4A49D05AF62F99C95B0595EAF8D
        926A2FB0E75DA22CC077672B5803AE8BD157D6066EB94CF353791D4EE4BBE5E3
        BB16E0945AD92238C175E828CBD2C13DB61114BE8F998ABBB1546E6AFEBEEF5C
        5B8CE5A25863294801CF22F636CC9CCBED12532C968B2A3595A37C39FDA04CA3
        67BF400D786EF16C199C11B3E0C6CAA821FC4713FFFA0FA9B4DF450FD50F79CC
        345AE7E35894FBD986D2921CEF4F7C27F8C0BA1D7188923FF14673DA331D63DA
        B3979B8A9C38841969CFB439ED59E944311A51134523CB9CA4C3F82AA6D6E38C
        3969975A9B37235DAB20AC4B673362D02C9C5B5650548B88D3ACB3AF4C30EDC2
        4372883D60A369C3DBCB985A4704EB419FA8FC06ECF140946AE3B568B78FB15C
        1FAAB49852E34E9EE2B81554CABA0BBAAF894EA3B5604434A8F60703A0019470
        DDC9040192C9B212FA0C883D45846DD53AC5D53DB80B305BA8638629EDABCDC1
        5DA6C94FFD936FF2E06EDEAB1345C3F279D4B91B1CB0086E95C7DF054F79D439
        E1F551A795A904B140E370783496C67F0B3000FB2EC8A4B0BE8D050000000049
        454E44AE426082}
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
      Left = 388
      Top = 1
      Width = 103
      Height = 40
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000026000000260806000000A83DE9
        AE000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000034D4944415478DACC984D48554114C7AF85E21746F8D20AB10C35B4
        B66E425274518B76995F10989495B690A25D8528A20BD3A04D1BC34D4F457455
        48856014AD5A660A66D8C6502C328DD085BF3667601AEFF3CEBDEF3EE9C08177
        E79EF33FFF3B73DE9C33E3004E403D0E940375403BD02DDA2E63E5621308DFAF
        C351A009180256F09615B16D12DFD089A501F7817997E03F8059E0ADE8AC8C99
        322F18696111AB07E6B400BF8169E03A500A1C032240866844C64AC5665A7C94
        CC09665CC4BA34C02D200A9C06927C2C4B92F84405434977106259C098F19595
        71FC519456CA522B19935856C4928011CD390A1C098194D2C382A964C46D05DC
        1C3B34A7DE100999DAABC5E9F02256AB198F269094D2512D5E6D2C62B9C03731
        FA1A6BED43D62C8985C4CE7523F6500CD680B23D20A5B44C62221CFE2196AFCD
        D660C881932D6C06B559CBD789B5CA8B4DA0C802280A3CB1B0BB0B3CB7488B22
        890DD0A688A500933238E101103112766017DB9B9ADD07A0D8037B426C5F00C9
        0E50006CC8E0250FE793C0B65103FB3C4829B9E0815D2776EB40810354C9C0B6
        C532EE07CE037F7621D7E642AA45566637EC62EDA3ABF4FCFA02E458267415F0
        CB08DE0534BB90BA62897908585079E6009DF2F01EC8F459F7BE7BF4632D3EF0
        328177EA231D4960805740AACFADE0ACCCB4296BC0659F58A9C06BF1EF8F9798
        033C7221F63200CE0E624197D29146702BC632F6F9C4DAB1944192DF016EB890
        59379E077CE0ED48FE6A6DBB28B404B9E542AA1E3803FC0C387385DA76516D6E
        B035168712375257359B73468F0FD00F1CF4C0AE11DB0DB5C1FA2949A75C4835
        BBD855681D83928B9625691248F15BC433807B5AB06B96FBDC538FFCD58B78AB
        D9F62CFB687BBA803B1676B5C0631F6DCFB2D9F6FCB78DA26AAD97C460710F5B
        EB4589B914ABB5360F23C37B406CD8E630A2B45333EE4920A91E2D4EA7CDB972
        9F710A8FEA531C82E61807DE3189697545700018D79C3FC9DE142FA90AE0A386
        3B2EB17C5FAAE8D3BD093C935B1CBF844AC577D3364D6C401B81CF1AE0063025
        45BC44F69D6C205D345BC64AC4664A2B79085663581777E9C003ADFAEBB20ACC
        006F446764CC9405C1484FC455679ED4C6A118C1DD6E1B87C4272F9177B0BA16
        486BDD00DC969CE991DF0DF2EE4450FCBF03000187489E853A5ABF0000000049
        454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bcancelarClick
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
  object ed_entregue: TwwDBEdit
    Left = 392
    Top = 56
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
    Top = 378
    Width = 707
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
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
      Left = 384
      Top = 2
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
    Version = '5.3.16'
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
    DataSet = frmentrega.qrcliente2
    BCDToCurrency = False
    Left = 152
    Top = 264
  end
  object dsEntrega: TDataSource
    DataSet = qrEntrega
    Left = 344
    Top = 136
  end
  object qrEntrega: TClientDataSet
    PersistDataPacket.Data = {
      0D0100009619E0BD01000000180000000A0000000000030000000D0104497465
      6D010049000000010005574944544802000200030008636F6476656E64610100
      4900000001000557494454480200020006000A646174615F76656E6461080008
      000000000006436F6469676F0100490000000100055749445448020002000600
      0750726F6475746F010049000000010005574944544802000200500007556E69
      646164650100490000000100055749445448020002000A000C717464655F7665
      6E64696461080004000000000010717464655F6A615F656E7472656775650800
      0400000000000D717464655F656E74726567756508000400000000000A717464
      655F73616C646F08000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 136
    object qrEntregaItem: TStringField
      DisplayWidth = 3
      FieldName = 'Item'
      Size = 3
    end
    object qrEntregacodvenda: TStringField
      DisplayLabel = 'Venda'
      DisplayWidth = 6
      FieldName = 'codvenda'
      Size = 6
    end
    object qrEntregadata_venda: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'data_venda'
    end
    object qrEntregaCodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'Codigo'
      Size = 6
    end
    object qrEntregaProduto: TStringField
      DisplayWidth = 31
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
    object qrEntregaqtde_ja_entregue: TFloatField
      DisplayLabel = 'Entregue'
      DisplayWidth = 10
      FieldName = 'qtde_ja_entregue'
    end
    object qrEntregaqtde_entregue: TFloatField
      DisplayLabel = 'Entregar'
      DisplayWidth = 10
      FieldName = 'qtde_entregue'
    end
    object qrEntregaqtde_saldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'qtde_saldo'
    end
  end
  object qrentrega2: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 128
    Top = 120
  end
end

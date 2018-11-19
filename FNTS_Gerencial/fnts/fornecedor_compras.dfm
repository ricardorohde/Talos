object frmfornecedor_compras: Tfrmfornecedor_compras
  Left = 194
  Top = 130
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Fornecedores | Compras'
  ClientHeight = 462
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 846
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    Color = 5460819
    ParentBackground = False
    TabOrder = 0
    object Label56: TLabel
      Left = 11
      Top = 20
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 187
      Top = 20
      Width = 52
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 373
      Top = 20
      Width = 78
      Height = 13
      Caption = 'F6 | Nota Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edata_inicio: TJvDateEdit
      Left = 74
      Top = 17
      Width = 104
      Height = 21
      Color = 15916445
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
      Left = 251
      Top = 17
      Width = 104
      Height = 21
      Color = 15916445
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
      OnExit = edata_inicioExit
      OnKeyPress = edata_inicioKeyPress
    end
    object ENUMERO: TEdit
      Left = 456
      Top = 14
      Width = 68
      Height = 26
      Color = 15916445
      Font.Charset = OEM_CHARSET
      Font.Color = clInfoText
      Font.Height = -19
      Font.Name = 'Terminal'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
      OnEnter = edata_inicioEnter
      OnExit = ENUMEROExit
      OnKeyPress = ENUMEROKeyPress
    end
    object bfiltrar: TAdvGlowButton
      Left = 530
      Top = 4
      Width = 100
      Height = 46
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F9000000A3A4944415478DAB4D95950545702C6F15395CA5465AAA66A2A999A
        D749661EB2CC4BAA9C444D46E5B6FBD20D74DFDBDDEC08888E884A40228A8AA0
        46C724337162C5252A1A40C505318AF402B48A02D20B8B224151147771EB6E50
        40F9CF43038A62EC18F3F03DD045DDFBEBEF9C7BEFB9A7052C1103932978982E
        7A9CB2E054A8E07484C0290B1AA3042E83A0DE28702A02A7FC7E8F5349C0A96C
        C6A594E0902FE290DD38643776F90A358623B8949C1EA792824BFE10A72C7A5C
        B2C061109C8AF01DBBD6E83B9E5D2BE8982F609978DA23FC02BA6441D35481CB
        F826354A1A4EE5340E99FED8750CF8DB2143B576E0E74EF91C4E79390EC3DB34
        440A1AC25E01B0214CD0182970C8AF531FB212877277508CBFB1CB6097BBA931
        AEA3CEF816752182932F0B74F537A8A62AF82CD5DA97870DD6EE09DD6D6A8DD1
        9C340A1C3F0B5CFA54960B58227AEA0C826A6D66FF3777FC06B1CBE0D0ADC529
        0BBA160AF8E2198FE0D1A2A79221E85C20A8D1E75019CCAF1A527F72420BD53A
        0BDE54C1A3CC673C82E688DE840B5AA204CD91028792FBD22774CAE0D2F9E2FC
        456D1EE64C84E042B4CFD2EB12B427F7669EA0234550AB2CE5B8E6970D935307
        4D81D0A2863381D018E4CB598DEFB3C6205E38558E07824397873B49D0FE79BF
        4BD012EF4B6B82E0C2F400EC3AFF86B5EF64CD1A38ABA1A9389CBD1BA7F3FD7F
        12F866E56CD6AC9ACDE66F1238B0259ECB65A13EE84F8150AD3CE7783ADFC573
        2E2E9AD6847E97A03946706E9AA021E235CAD537B1FB313476056A75D0A2A6A5
        2C94952BE6A08B59C418E31254CA7C54BA1454BA1446EBD3181B9281313E9DB5
        5FCFE24E951ECEAB7FA64D1D94ABE154F85B9C9F26688E1182EB89821B4982A6
        C8955406FAD75CAD165AD458F362098A5AC284D00C3421FF2228248EE973D248
        5EB09CCFD296119B908AC61043606822638D9984C6A7535F140117D4CF2FA132
        101A2376703D49703D51086A8C0297E10DAA75DD7E4D6AA70C17D498B74D4365
        C842179D8A5A896261E66ACA2B1D9CBB709996D66BB4B45EE3ECF9562C65E5CC
        4E5D825A894213B980C9E14BA9FB31022EAA7D2331D8F1ABB4E054FE4EAD51F4
        3E13F5697ECDBB6A055AD4341E8C647C5826DAA864828CB1EC3D60A6FD7E17E7
        5B6F603B5E4391B582432595949FA8E7F2F53BB8BD1DACDF9287461F8D267221
        869885B41DD14273F0E048BB0E6A94EF38152A044E83C0A1B4FA75C5D66BE154
        3029A9F39818964E90218683661B0007CCC75997BD97EC1D07C9D9554CCEAE62
        B66C3FC0BAEC026CC76B00D890BD03B512C5B8F065AC4C9F01F5E3A0DEF09CF3
        29F7701A5E17D4C87FF5FB96D2A2A63C379671A14BD1E863F87AED260076ED2F
        E5FB9C42F20B4BD8B9CF3A308556D66F2DC072D84E67770F0B96AE26282C015D
        CC629AB64F80FAF1501B32F8F95CB246F438F573FCC2B964680A62F5F2B98C35
        2C243C6E364DCD1770D69F65C3B682C171BDC92F2CE1BB2D7BB974ED36472BED
        A8F553191FB18C1FBE8A826343785811087583209DCA4681CB90E3D7FCABD382
        5326757E0A6374B358F1E55A6EDC76935F5842DE1ED373717DD9BAB308B3AD9A
        96D6AB24A62C669C318D2F96CC02DB27749846F0B042331069D781536F13D418
        0EFBB5526908C67BCCC88C39F319AB9DCE86ECED5CB971871FF20FB1A3C0F242
        E0F6BDBEFFB978E5262BBE5ACB78FD6C929253F09846F3B0E4533C8746D25D19
        08B5C6C74097D22470C897FC1AE286606E1F31322D713EE374F16CFE219F4BD7
        6EB17567113BF7BD18B8A3C04ADE1E33E75BAFF1EF6FD633513F8B84B9A9B415
        8D01DB083CC5A3701F1AE96BB2D6D8779F6C1338E40EBF802783E9AED2332739
        9531C13358B32E9BEBB7DCE4EE36F9D560EE6E13054587B974B58DF4AC2F1967
        48263D6D2E5D250174978EC26B9606227DC3EDF51F58A3837A2D198B3F63AC92
        4C525A16576FDCE65069155B771C24BFD0FAB317C9A69CFD38EACE70B2F12CA1
        B1898C0DCBE07F2BE2A16218ED1609AF591A88AC0C84BA10AFC0AEBBEAF7B2E8
        BC86AD6B6632DA9881C630158BED1837EF785997BDB77F8E0D86CBDD5DCCA69C
        FD3CE8869CFC4226E9A298129D45E9263D540DEDC73D83ACD0DC16D4198F71C2
        CFE57C5320574B42D1C72D22387C0EB109F3B875D7C34FCD9759BB790FDBF20F
        3D03DCB2FD00EBB7EEA3ED4E3B0D4DE7304627A0895C40FCECF9B45B241ED946
        3C03EC437A4D01CD821AC30EBFDF37ECBEE77049DE4C7471CB50EBE34859B89C
        DBF7BCDCB8E5A6B0B89CCDB93FB229773F9B72F7B339EF00A6B213B8DB3B6969
        BD42ECCC790487CE606CC44A8AD787F8DA33498302BD668976B3542E70289FFB
        BF3095E14E30B6AD5A261853999992C964398619490BA9AC7671BDED2E97AFDF
        E1CCF92B9C6DB9CAD59B77B976E336E6D2A384C5CD461B369D3111ABF86AE94C
        A8184667E9483CCFC1794C121D56D536814BF9C02F9C4B86369923390A1F7CAC
        61F86885C9E10BD04F5F812E22118D7E2AF3335691BBAB90C2220BFB0E5AC8CE
        DBCD9CD40CA628D1E8A2921913BE8A658B13E939F24F7A8E7C8ADBA47A6E7B1E
        B3C403AB14227A9C8AC021B7F9833B9C2BF3EE3F64DE1FAAE76F43B46CC99AC0
        9E757104C6643121228B4921494C92E398A2C432458961A23C8D49A1F3181FB1
        1C5D5C0639FF8D86639FC0D14F70173F1FD79BAE76ABEAF7829321821A65F5A0
        8FBB279BEBC5BD3754E1ED2146D6674C8193C3A06A18B53B357CFB453CB39252
        31C42F26282683A0980CC2A6A7939492CCE62F63682E98085543E9B18D7821CE
        639268B7A8F2EE978EE95D6ED9953F71423BF82AF79ACCD13C9977873CC66D58
        3A19EA47D0659368370540C530A818C6BD6215753B341CCD9629CF9669DC3585
        0E6B00540E8563C369374B784C2F6C0E8F59A2AB44FAB8BB3440082ECD125C9E
        2B381DB191AAA796FCE7646C3932EF7DF42CAEDB1680BBF8C96F2CF1A86C041C
        1BDE0B1E0AE59FF0B074E40B414FC66D92E8B048666CA30465A384E0F20CC1E5
        04C199A97FE0786067FF50BB646895090B91117FD6F39721216CCCECC51D7E8C
        7BD5F19824BA4BA5771ED924F1A84C128286084143B86FF7EA74A4D1B72BD5F7
        4A2963FA5E66B814CCA6CC89503B724073AF3AF74C2A3AAD525A5F7BBE06DD49
        BE7892059ECF0435FA0DFD6F777619CEE8C13905CA3FE5BE75945F73E865E236
        4BB45BA4B23ED863E0B9C8C7B9182D680A1354055B1FAFA415386DE051851A77
        D1083CA680DFAABDD35DA5D26BD8463E05EC4C7B9CAE0582AE74813755E0524A
        A9EADD3C722A501742F77135EE43235F29D2E3CBA9EED2803FF6D806B6E70392
        F5443205AC1090E9DB7E3B119C336007A00FF9AA9A3449782DAA435E8BEA773D
        A5A304830307DBC05C247A5C8A6FF7B3213C8E2A6D17D5BDF7C95780EC7BFE76
        58A4F9F74B54C26B51894725BF14E894050DA1829FA20476F91DEA8C9BFB9BAC
        35FE2A64BB592AB86F557DF8C02A89FB5695F0BC34F05448EF26BA2238132D70
        193EC2A9ACC1A95C7B09A4DB6B96363EB006489D56493CB0AAC47DCBAB023A65
        5F93FD3F43C86FE054D4D4877CDB7D5C6DF598A5D35EB374A317E1F69AA5B676
        B3D4E4354B87BD166983D72219DB2DAA37BD169578600D109DBDCDF903FCFF00
        2ADC84EE2664A1DC0000000049454E44AE426082}
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
    object Panel1: TPanel
      Left = 661
      Top = 6
      Width = 172
      Height = 45
      Color = 5460819
      ParentBackground = False
      TabOrder = 4
      object Label5: TLabel
        Left = 9
        Top = 15
        Width = 68
        Height = 13
        Caption = 'Quantidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object rqde: TRzNumericEdit
        Left = 81
        Top = 11
        Width = 78
        Height = 21
        Ctl3D = True
        DisabledColor = clWhite
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 16774120
        FrameHotTrack = True
        FrameHotStyle = fsLowered
        FrameStyle = fsLowered
        FrameVisible = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        DisplayFormat = ',0;(,0)'
      end
    end
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 129
    Width = 846
    Height = 333
    Selected.Strings = (
      'CODPRODUTO'#9'8'#9'C'#243'digo'#9'F'#9'Informa'#231#245'es do Produto'
      'PRODUTO'#9'40'#9'Nome'#9'F'#9'Informa'#231#245'es do Produto'
      'UNIDADE'#9'3'#9'Un.'#9'F'#9'Informa'#231#245'es do Produto'
      'NOTAFISCAL'#9'6'#9'NF'#9'F'#9'Informa'#231#245'es da Nota'
      'DATA'#9'10'#9'Lan'#231'amento'#9'F'#9'Informa'#231#245'es da Nota'
      'QTDE'#9'10'#9'Quantidade'#9'F'#9'Informa'#231#245'es da Nota'
      'UNITARIO'#9'9'#9'Unit'#225'rio'#9'F'#9'Informa'#231#245'es da Nota'
      'ESTOQUE'#9'9'#9'Estoque'#9'F'#9'Informa'#231#245'es do Produto'
      'PRECOCUSTO'#9'11'#9'Custo'#9'F'#9'Informa'#231#245'es do Produto'
      'PRECOVENDA'#9'10'#9'Venda'#9'F'#9'Informa'#231#245'es do Produto')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsnota
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object btotaliza_nota: TButton
    Left = 24
    Top = 280
    Width = 100
    Height = 25
    Caption = 'btotaliza_nota'
    TabOrder = 2
    Visible = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 48
    Width = 846
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 3
    object DBText1: TDBText
      Left = 82
      Top = 6
      Width = 50
      Height = 17
      DataField = 'CODIGO'
      DataSource = dsfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 135
      Top = 6
      Width = 466
      Height = 17
      DataField = 'NOME'
      DataSource = dsfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 11
      Top = 6
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 846
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
    Fill.Color = clBlack
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
    TabOrder = 4
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 48.000000000000000000
    object Label53: TLabel
      Left = 59
      Top = 14
      Width = 228
      Height = 23
      Caption = 'Compras de Fornecedor'
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
  object Pop2: TPopupMenu
    Left = 452
    Top = 181
    object Pesquisa1: TMenuItem
      Caption = 'Pesquisa'
      ShortCut = 117
      OnClick = Pesquisa1Click
    end
    object imprimir1: TMenuItem
      Caption = 'imprimir'
      ShortCut = 118
      OnClick = imprimir1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object dsnota: TDataSource
    DataSet = qrcompras
    Left = 489
    Top = 182
  end
  object dsfornecedor: TDataSource
    DataSet = frmmodulo.qrfornecedor
    Left = 521
    Top = 174
  end
  object qrcompras: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select i.*,p.* from c000088 i,c000025 p'
      'where   i.codproduto = p.codigo')
    Params = <>
    Left = 420
    Top = 178
    object qrcomprasCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qrcomprasITEM: TWideStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object qrcomprasCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 10
    end
    object qrcomprasCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrcomprasCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
    end
    object qrcomprasUN_COMPRA: TWideStringField
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object qrcomprasUN_FRACAO: TWideStringField
      FieldName = 'UN_FRACAO'
      Size = 5
    end
    object qrcomprasFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
    object qrcomprasCST: TWideStringField
      FieldName = 'CST'
      Size = 5
    end
    object qrcomprasCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrcomprasQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrcomprasUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrcomprasSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrcomprasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrcomprasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrcomprasDESCONTO_P: TFloatField
      FieldName = 'DESCONTO_P'
    end
    object qrcomprasICMS_RETIDO: TWideStringField
      FieldName = 'ICMS_RETIDO'
      Size = 1
    end
    object qrcomprasICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
    end
    object qrcomprasICMS_REDUCAO: TFloatField
      FieldName = 'ICMS_REDUCAO'
    end
    object qrcomprasICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object qrcomprasICMS_VALOR: TFloatField
      FieldName = 'ICMS_VALOR'
    end
    object qrcomprasICMS_VALORRETIDO: TFloatField
      FieldName = 'ICMS_VALORRETIDO'
    end
    object qrcomprasICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qrcomprasICMS_NAOTRIBUTADO: TFloatField
      FieldName = 'ICMS_NAOTRIBUTADO'
    end
    object qrcomprasSUB_MARGEM: TFloatField
      FieldName = 'SUB_MARGEM'
    end
    object qrcomprasSUB_BASE: TFloatField
      FieldName = 'SUB_BASE'
    end
    object qrcomprasSUB_VALOR: TFloatField
      FieldName = 'SUB_VALOR'
    end
    object qrcomprasIPI_TIPO: TWideStringField
      FieldName = 'IPI_TIPO'
      Size = 25
    end
    object qrcomprasIPI_ALIQUOTA: TFloatField
      FieldName = 'IPI_ALIQUOTA'
    end
    object qrcomprasIPI_BASE: TFloatField
      FieldName = 'IPI_BASE'
    end
    object qrcomprasIPI_VALOR: TFloatField
      FieldName = 'IPI_VALOR'
    end
    object qrcomprasDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcomprasTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrcomprasNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object qrcomprasFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrcomprasOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrcomprasSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrcomprasCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 25
    end
    object qrcomprasSUB_PRODUTOS: TFloatField
      FieldName = 'SUB_PRODUTOS'
    end
    object qrcomprasCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrcomprasITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qrcomprasICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qrcomprasALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
    end
    object qrcomprasCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrcomprasCREDITO_ICMS_BASE: TFloatField
      FieldName = 'CREDITO_ICMS_BASE'
    end
    object qrcomprasPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object qrcomprasPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrcomprasCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object qrcomprasCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrcomprasLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 15
    end
    object qrcomprasLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrcomprasLOTE_FABRICACAO_DATA: TDateField
      FieldName = 'LOTE_FABRICACAO_DATA'
    end
    object qrcomprasCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrcomprasPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrcomprasPMARGEM: TFloatField
      FieldName = 'PMARGEM'
    end
    object qrcomprasPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrcomprasPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrcomprasCODIGO_1: TWideStringField
      FieldName = 'CODIGO_1'
      Required = True
      Size = 6
    end
    object qrcomprasCODBARRA_1: TWideStringField
      FieldName = 'CODBARRA_1'
      Size = 13
    end
    object qrcomprasPRODUTO_1: TWideStringField
      FieldName = 'PRODUTO_1'
      Size = 100
    end
    object qrcomprasUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrcomprasDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrcomprasCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrcomprasCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrcomprasCODFORNECEDOR_1: TWideStringField
      FieldName = 'CODFORNECEDOR_1'
      Size = 6
    end
    object qrcomprasCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrcomprasDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrcomprasNOTAFISCAL_1: TWideStringField
      FieldName = 'NOTAFISCAL_1'
      Size = 7
    end
    object qrcomprasPRECOCUSTO_1: TFloatField
      FieldName = 'PRECOCUSTO_1'
    end
    object qrcomprasPRECOVENDA_1: TFloatField
      FieldName = 'PRECOVENDA_1'
    end
    object qrcomprasDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrcomprasESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrcomprasESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrcomprasCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrcomprasAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrcomprasLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrcomprasPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrcomprasVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrcomprasCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrcomprasUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrcomprasUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrcomprasUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrcomprasCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrcomprasFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrcomprasDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrcomprasNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrcomprasCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrcomprasPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrcomprasPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrcomprasCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrcomprasAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrcomprasAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrcomprasDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrcomprasDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrcomprasPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrcomprasDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrcomprasFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrcomprasCST_1: TWideStringField
      FieldName = 'CST_1'
      Size = 10
    end
    object qrcomprasCLASSIFICACAO_FISCAL_1: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL_1'
    end
    object qrcomprasNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrcomprasNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrcomprasALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrcomprasIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrcomprasREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrcomprasQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrcomprasTIPO_1: TWideStringField
      FieldName = 'TIPO_1'
      Size = 30
    end
    object qrcomprasPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrcomprasFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrcomprasFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrcomprasFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrcomprasFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrcomprasULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrcomprasULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrcomprasDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrcomprasCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrcomprasESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrcomprasESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrcomprasPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrcomprasUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrcomprasQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrcomprasAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrcomprasSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcomprasPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrcomprasPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrcomprasPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrcomprasPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrcomprasPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrcomprasDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrcomprasDATA_INVENTARIO_ATUAL: TDateField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrcomprasCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrcomprasESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrcomprasMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrcomprasPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrcomprasREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrcomprasCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrcomprasMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrcomprasTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrcomprasCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrcomprasINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrcomprasVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrcomprasVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrcomprasVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrcomprasVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrcomprasVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrcomprasVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrcomprasVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrcomprasVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrcomprasVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrcomprasVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrcomprasVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrcomprasVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrcomprasVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrcomprasVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrcomprasVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrcomprasVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrcomprasVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrcomprasVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrcomprasVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrcomprasVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrcomprasVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrcomprasLOTE_FABRICACAO_1: TWideStringField
      FieldName = 'LOTE_FABRICACAO_1'
    end
    object qrcomprasLOTE_VALIDADE_1: TDateField
      FieldName = 'LOTE_VALIDADE_1'
    end
    object qrcomprasMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrcomprasCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrcomprasFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrcomprasFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrcomprasFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrcomprasFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrcomprasULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrcomprasFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrcomprasFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrcomprasUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrcomprasREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrcomprasPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrcomprasCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrcomprasCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrcomprasIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrcomprasIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrcomprasSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrcomprasFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrcomprasFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrcomprasFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrcomprasCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrcomprasCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrcomprasCUSTO_ATACADO: TFloatField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrcomprasUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrcomprasQTDE_EMBALAGEMATACADO: TFloatField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrcomprasPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object qrcomprasPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object qrcomprasPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object qrcomprasPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object qrcomprasPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object qrcomprasPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrcomprasPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrcomprasPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrcomprasPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrcomprasPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrcomprasPMARGEMATACADO6: TFloatField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrcomprasPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object qrcomprasPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object qrcomprasPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object qrcomprasPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object qrcomprasPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object qrcomprasIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrcomprasCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrcomprasUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrcomprasIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrcomprasCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrcomprasIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrcomprasIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrcomprasIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrcomprasIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrcomprasIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrcomprasUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
    object qrcomprasATIVA: TWideStringField
      FieldName = 'ATIVA'
      Size = 10
    end
    object qrcomprasCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
  end
end

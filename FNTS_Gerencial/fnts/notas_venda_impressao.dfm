object frmnotas_venda_impressao: Tfrmnotas_venda_impressao
  Left = 436
  Top = 346
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Aviso de Impress'#227'o'
  ClientHeight = 175
  ClientWidth = 553
  Color = 5460819
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu2
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 12
    Top = 61
    Width = 401
    Height = 25
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 44
    Top = 68
    Width = 305
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pedido de Venda - Reimpress'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 12
    Top = 94
    Width = 38
    Height = 13
    Caption = 'Modelo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 12
    Top = 126
    Width = 23
    Height = 13
    Caption = 'Vias:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object combo_modelo: TComboBox
    Left = 60
    Top = 92
    Width = 353
    Height = 21
    Style = csDropDownList
    Color = 15916445
    TabOrder = 0
    OnKeyPress = combo_modeloKeyPress
    Items.Strings = (
      '01 - Cupom Fiscal'
      '02 - Nota Fiscal'
      '03 - Bobina'
      '04 - Formul'#225'rio Cont'#237'nuo - Raz'#227'o'
      '05 - Formul'#225'rio Cont'#237'nuo - Carta'
      '06 - ---'
      '07 - Contrato | Guia de Entrega | Carn'#234
      '08 - Personalizado'
      '09 - Papel A4 - Laser / Tinta'
      '10 - Papel Raz'#227'o - Laser / Tinta'
      '11 - Formul'#225'rio Cont'#237'nuo - Raz'#227'o 2'
      '12 - Contrato | Guia de Entrega | Carn'#234' + Capa'
      '13 - Bobina sem formata'#231#227'o'
      '14 - Pedido + Carn'#234
      '15 - Contrato/Carn'#234
      '16 - Pedido + Carn'#234' com c'#243'digo de barras'
      '17 - Papel Raz'#227'o - Laser / Tinta 2 ')
  end
  object bgravar: TAdvGlowButton
    Left = 447
    Top = 66
    Width = 74
    Height = 76
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
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
      89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
      6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
      7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
      1F900000080A4944415478DABC995D6C5BE519805F0931894948136C12D2346D
      6C5743D38634600212D74E4B932671827DCEF14F12276E9A94262194B6406929
      B0C2184CEC629A9040303169EA10378801EB4F92529AB4244DE2738E93B64949
      491B5A5ADAD0A6A98F9DC471EC67174ED3E617A709B3F45CD8B23F3D7E7FBEEF
      F36B8117653A2F09133B2465A8C2F112A1372018AA70A24230BDC2515FFAB9A1
      FE3A6568B518DABB98DAA7E8EA19743582AE4608A9E7097B5B30B55D18DA5398
      DABD18AAA44C55D0BDC2F18070CC2F74F984633E49E96E6164ABC09F64A68F64
      2468AA42DF5AC1F4DD4158DB86A1F5A2AB4C115298F65C57A1D33DFD7543EDC7
      505F41F7FE829EF2F4DA4B16EC29154E940BBA7A2B47FDAFA16BC373CA2C8690
      9A20EC7B8B6EDF9D74FB9720684E45D049BBEB4B3ADD4B139B19DD4E65882E5F
      90637E49190B0AEE9CC12B022F4AAADB2B74BA774E7EEBE5939B1E4DD0D53752
      862A8C3F27F0EA2C1F21F9FC0CFE28C4B70BA66717475C2C39A5DF45871B42EE
      26A2CF08C99766F908FD8149CA84810AA1BF5CD0B57F7F6F519B3F9ACD9C0C08
      5F05D32E935E426CCB244F0B234F095DDA4E5A8BFEBF72BA0AADC5A02BEF11D9
      24C4B64E790903EBD39CAD13BE7ACC4E485920AD1E08B9A023777EDA73A1230F
      7405746D111154D2CD73AA2AC8D9BA292FA1BF5238552DF4046EE1B0F35B420A
      18F32DA480EE216506E6271C00B304F44740772F4E5257E0B0138E97DDC9E96A
      A1BF52848BF5C2E026A1AFFC358E142FBC409B8D64CF56A2A323C4623162D1E1
      598C8DC5181CB2B8ACBF009DF72D5EF248319C08BCCFC54DC2C57A11C23EC1F4
      DE46A792983F72D7041F26D9BB83C80458E360C567134FC2450B9ACD2B5C0A3D
      07FAEF17976E4385763718DA3D74F964F2C8F16CCB683B69CB26D9B30D2B0ED1
      D114D191F82CE2E349AE0C47F8DC3C47B339C490F102E88B8C644881B0F626C7
      4B4430BC82AE9DCDE883190A0E0D47E9348F71C838C7A1AE61868CE7417F0074
      D722D2AD5DC5F4DD2A84D55F665C1F19088E27525CBE62D172A48B96D61007DA
      07686A1FE47CEBB310B283E9C9BC1E4DB548528667E3720A8E8E25B86A8D72FA
      EC054E9FF986AFCE9EE7E4D731FACEC7891F7D1A3A1D990B1ADA3B82E9DD95F1
      719681A0151B23363ACE44122652309184640AE28065BECAC4FEDF40B73FB33A
      343C0785B0B779C19B4A4885B0024715D0B3A0EF59220B08CEC96882680AC6CC
      1D243EFE19E84E38EEFB6E4153EB1374F5EBF90F7215BE70C34937982A84D282
      D64D0AC6BB5E24F1F1CF1969C886EE02E857A173C1A6B924E8EAC8BC6F38E1E6
      CC012F1B37AF23B8A11AC5E7E4F5BFFD859B7DFCE39F6F51E45A4D455590CAEA
      72FAF678D292F30B46E71734551870B1637B25B7DF57CFFDCE1A7EFA8087B28D
      AF12B5225C1E1AE6C2C54B1931F8ED1031CB62F3CB6F72D7FD1EFE50FC387765
      3F4949702D09D3093DDE050443CA37739E20663ABD5B9F59C76FF36AC92F798C
      FCD21A0A7CD5389500858BC4E92EA3C057457E690DF9258F91ADD452545AC5E5
      8F1C102E9CBB7142EA90D0EDFB9C0EF7DC827D6E9EDF5E392558585643AEB78A
      ACC212B29D25643B4B33A484ACC212567BD6515896167CD85D8BB7B28AA1DD76
      3890C544FBA3D325430A989E7E21EC7D7FCE2E9E43708AD20D37C70D6B5C13BC
      B237070E6411D96B4B4B76F96E143C2CE8DAD6796B7096E07AF24B375010A89B
      A47611D4A525FDEB670B36DBB0F6ADC09A29A96BFF124CED9E4C050B4A6B58E3
      AB26D75546AEBB8C5C77206356BB4A59E3ADA260468AAF09461B1D5392C96B92
      A6E69794A109BA7A2923C1401D6BB44A725639C979C449CE234519E3C8C92757
      A9A0A0BC6E5EC129C97D3626DA1F1DA7DBFFC3F40822ACBD3EEBB89BECE26D5B
      2BF9DD5417A75394A706C9D382E4696B33470DB2C6573D558BD94A2DAE8A6A2E
      ED5E092DD705A34D395CDD6B23BACFFEDEF8C1DCC9EB5648FB311DEEE9577D53
      85532EB66C59C74F1E7C82156A2DD9EE1AB2953A6C5AFD4DF004D94A1DD9EE1A
      6C4A2DBF5AB591E2C07A463EB5933CB8629A60748F8D7863D603E34D59227CFD
      B870EE49A137F00EED33AEFC5FBA39F2819F02FF3A0AFDD52815CB4351D97A56
      FB36B0E7AD6268CBBA2ED7E820F2DF2C465AF31B3915144E9589706E8370AE4E
      38B9F6765A8BE3D3521D52E1A40A9D459CFBD0C1E0270EBEDDBD72C95CF86415
      B146077C9E9DAEBB6BF5D760C7FACF434C74F9EE4E0ED448B27F9D083D01A1A7
      2C3DBDEA2DF7A5A752D34613D0EB49EFF69F3D0C07B3A0C506CD4BA0C506076D
      C41A1D580DD7A37775B78DF8E1FC6D7428425BA1D0EA1421B2298DB545B0360B
      61CFDB73FEBAEBF23171A4186B6F7ACFBA312DCB41E4938718D9BFF233869E10
      86370B57EA852BF5229C2ABFCE99A0D0572AB4BBF6CFB9374E4A46BE07C9C847
      0FF6264CD72D5C582F9CAE100682C2405084F8B6EB8C6F17C67708D16704533B
      40BB6BB664B79FC4324A5A7B6C587B571C9F18ACFF516AEC0521B17D9A93C0CB
      37F092C09F0576A6C76F1DAE5D730E91BAFDCB12496B9F9D58837DAFD594F383
      546287C05F271DAE3B2D30C0D4D29B784F5915EDEEF159178A25A4DB6A481F69
      2307563F3B7A385FAC268724ADA72683B3D811F017154248BD9B6EDFBBB3E6D1
      37D3380D76629FAEFA70F450DEBDF1963C193D9C2F56A3FD2605A786E89AD017
      144CEFFD98DADF31B40BD324DB8A3289E4D568A3FD9DB1861C47FC50A18CB53B
      65EC60AE8C1E5AB30C82B3FE86D06EC3509D18DA1B18EA7EBAFDBD89B6A241AB
      C11E8936D823D146C7A558A3A32FDAE8688E3639DE8E36397CD126C71DD12687
      8C35AC94784B818CB6156424F8BF01009FA2A1EEC0ABEA0E0000000049454E44
      AE426082}
    Transparent = True
    TabOrder = 1
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
    Layout = blGlyphTop
  end
  object bitbtn1: TAdvGlowButton
    Left = 727
    Top = 133
    Width = 103
    Height = 48
    Caption = 'Editar'
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
      89504E470D0A1A0A0000000D4948445200000020000000200802000000FC18ED
      A30000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
      312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
      2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
      6969643A46463633354235363539453931314532394139453933323439383941
      333537342220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
      4646363335423537353945393131453239413945393332343938394133353734
      223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
      616E636549443D22786D702E6969643A46463633354235343539453931314532
      39413945393332343938394133353734222073745265663A646F63756D656E74
      49443D22786D702E6469643A4646363335423535353945393131453239413945
      393332343938394133353734222F3E203C2F7264663A4465736372697074696F
      6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
      636B657420656E643D2272223F3E4DA11873000001D54944415478DA6264D870
      978196808981C680E616B0506A8004F7610D415156C6E4C75F8EDE784F6D0B64
      79FF1B89429847D405EBB8589ACFBDA65E1071B2307CFCF9E6F73FB840932C6F
      2DCC3E4A2D001AF4DA5106C8103DF20CBF1D8CE424533EB6FF60D38146032D00
      325EDB4889B022DC6A73F33D3C3E48F641A28E30C85DE0B0061A0A341AD31F45
      229C640611D0FBF394F94186BEF98EDF0E722C009A0E0C622063D28BAF0CDFFF
      E0B123F8CE47922D809B5EF7F833302D4223F9E34F4C3B40224017906401A6E9
      402ED4D0C79F51EC00FAE0F167D28208ABE91029D1CB6F41142CACA04147524E
      C6633AC8D0C79F81227912DCA090D9FF84E1D32FD2229918D321619528C78BD5
      747C1610693A44C1FC2B6F492BAE49321DB380236001154DC76281B58620154D
      C76241870437154DC7B08093C5869F0D48375F7E4315D3312C009782EBDEFE60
      F8FD1F680723386D50623ABA0553A5B84045D5737049F2FB3FC3EBEF149A8E9E
      93C384C1E5F8EBEF503E30EF7CFF4D89E9A8164870436B257E76509925C5BD56
      923B48980322499EE92816248A40CDFA8F5AA91EF9F8ABE2C557AC4D12D22C28
      97E4429698F6E26BF6B36FC09212B38024D382BDE0D2AAF3F9B7F96F7E20D718
      1402C6D1C62F21001060002D6E5C01F73BAB830000000049454E44AE426082}
    Transparent = True
    TabOrder = 2
    Visible = False
    OnClick = BitBtn1Click
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
  object evias: TRzSpinEdit
    Left = 60
    Top = 121
    Width = 47
    Height = 21
    Max = 100.000000000000000000
    Color = 15916445
    TabOrder = 3
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 553
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
    Version = '1.1.0.0'
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
      Width = 187
      Height = 23
      Caption = 'Aviso de impress'#227'o'
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
      Version = '1.1.1.0'
      OnClick = AdvMetroButton1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 312
    object TPCupom_Fiscal: TMenuItem
      Caption = 'Cupom Fiscal'
      OnClick = TPCupom_FiscalClick
    end
    object TPNota_Fiscal: TMenuItem
      Caption = 'Nota Fiscal'
      OnClick = TPNota_FiscalClick
    end
    object TPBobina: TMenuItem
      Caption = 'Bobina'
      OnClick = TPBobinaClick
    end
    object TPRazao: TMenuItem
      Caption = 'Formul'#225'rio Cont'#237'nuo - Raz'#227'o'
      OnClick = TPRazaoClick
    end
    object TPCarta: TMenuItem
      Caption = 'Formul'#225'rio Cont'#237'nuo - Carta'
      OnClick = TPCartaClick
    end
    object TPImpresso: TMenuItem
      Caption = 'Pr'#233'-Impresso'
      OnClick = TPImpressoClick
    end
    object TPContrato: TMenuItem
      Caption = 'Contrato'
      OnClick = TPContratoClick
    end
    object TPPersonalizado: TMenuItem
      Caption = 'Personalizado'
      OnClick = TPPersonalizadoClick
    end
    object TPA4: TMenuItem
      Caption = 'Papel A4 - Laser / Tinta'
      OnClick = TPA4Click
    end
    object TPRazaoA4: TMenuItem
      Caption = 'Papel Raz'#227'o - Laser / Tinta'
      OnClick = TPRazaoA4Click
    end
    object FormulrioContnuoRazo1: TMenuItem
      Caption = 'Formul'#225'rio Cont'#237'nuo - Raz'#227'o 2'
      OnClick = FormulrioContnuoRazo1Click
    end
    object ContratoCapa1: TMenuItem
      Caption = 'Contrato + Capa'
    end
    object Bobinasemformatao1: TMenuItem
      Caption = 'Bobina sem formata'#231#227'o'
      OnClick = Bobinasemformatao1Click
    end
    object PedidoCarn1: TMenuItem
      Caption = 'Pedido + Carn'#234
      OnClick = PedidoCarn1Click
    end
    object PedidoCarncomcdigodebarras1: TMenuItem
      Caption = 'Pedido + Carn'#234' com c'#243'digo de barras'
      OnClick = PedidoCarncomcdigodebarras1Click
    end
    object Laser21: TMenuItem
      Caption = 'Laser 2'
      OnClick = Laser21Click
    end
  end
  object qrproduto_mov: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrproduto_movCalcFields
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 496
    Top = 304
    object qrproduto_movproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'PRODUTO'
      KeyFields = 'codproduto'
      Size = 44
      Lookup = True
    end
    object qrproduto_movCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrproduto_movCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object qrproduto_movCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
    end
    object qrproduto_movUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrproduto_movTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrproduto_movICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrproduto_movIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrproduto_movCFOP: TWideStringField
      FieldName = 'CFOP'
    end
    object dtfld_movDATA: TDateField
      FieldName = 'DATA'
    end
    object qrproduto_movNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
    end
    object qrproduto_movCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
    end
    object qrproduto_movDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrproduto_movACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrproduto_movMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrproduto_movCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
    end
    object qrproduto_movCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
    end
    object qrproduto_movSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrproduto_movUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrproduto_movQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrproduto_movVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrproduto_movICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrproduto_movBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrproduto_movVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrproduto_movSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrproduto_movECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object qrproduto_movECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrproduto_movCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object qrproduto_movCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object qrproduto_movCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
    end
    object qrproduto_movCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
    end
    object qrproduto_movALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrproduto_movCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrproduto_movLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object qrproduto_movMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrproduto_movLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object dtfld_movVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrproduto_movCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 40
    end
    object qrproduto_movMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrproduto_movCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrproduto_movPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrproduto_movCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrproduto_movLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object qrproduto_movCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
    end
    object qrproduto_movTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrproduto_movCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object qrproduto_movORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object qrproduto_movDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object qrproduto_movCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
    end
    object qrproduto_movNUMERACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUMERACAO'
      Size = 2
      Calculated = True
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 320
    Top = 304
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fsvenda_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATA=DATA'
      'CODNOTA=CODNOTA'
      'NUMERONOTA=NUMERONOTA'
      'MOV=MOV'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'CODPRODUTO=CODPRODUTO'
      'ICMS=ICMS'
      'IPI=IPI'
      'CFOP=CFOP'
      'CODCLIENTE=CODCLIENTE'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'CODIGO=CODIGO'
      'CODVENDEDOR=CODVENDEDOR'
      'MOVIMENTO=MOVIMENTO'
      'CODGRADE=CODGRADE'
      'SERIAL=SERIAL'
      'UNIDADE=UNIDADE'
      'produto=PRODUTO'
      'NUMERACAO=NUMERACAO')
    DataSet = qrproduto_mov
    BCDToCurrency = False
    Left = 424
    Top = 304
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
    Left = 456
    Top = 320
  end
  object fxvenda: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39212.600885046300000000
    ReportOptions.LastChange = 39553.442094826400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 312
    Datasets = <
      item
        DataSet = fscontasreceber
        DataSetName = 'fscontasreceber'
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
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 514.016080000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Shape12: TfrxShapeView
          Left = 464.866420000000000000
          Top = 96.047310000000000000
          Width = 215.433210000000000000
          Height = 226.393625120000000000
        end
        object Shape7: TfrxShapeView
          Left = 22.677180000000000000
          Top = 1.779530000000000000
          Width = 657.638220000000000000
          Height = 94.110075120000000000
        end
        object Shape16: TfrxShapeView
          Left = 151.149660000000000000
          Top = 95.708720000000000000
          Width = 313.700990000000000000
          Height = 226.393625120000000000
        end
        object Shape15: TfrxShapeView
          Left = 22.677180000000000000
          Top = 95.708720000000000000
          Width = 128.504020000000000000
          Height = 226.393625120000000000
        end
        object Shape11: TfrxShapeView
          Left = 22.677180000000000000
          Top = 95.708720000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 14211288
        end
        object Memo34: TfrxMemoView
          Left = 56.236240000000000000
          Top = 99.488250000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 190.929190000000000000
          Top = 98.488250000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTO')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 495.559370000000000000
          Top = 99.488250000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR DA(S) PARCELA(S)')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 327.700990000000000000
          Top = 3.779530000000000000
          Width = 351.496290000000000000
          Height = 22.677170240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 24.677180000000000000
          Top = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 22.677170240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            ' [fxemitente."FANTASIA"]  ')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = -62.000000000000000000
          Top = 493.338900000000000000
          Width = 812.598950000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 160.921460000000000000
          Top = 454.441250000000000000
          Width = 340.157700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 160.921460000000000000
          Top = 455.220780000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Funcion'#225'rio')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 117.889920000000000000
          Top = 394.527830000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 22.677180000000000000
          Top = 349.732530000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Para maior clareza firmamos o presente.')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Left = 30.236240000000000000
          Top = 30.236240000000000000
          Width = 627.401980000000000000
          Height = 60.472480000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E31303234307D5C
            766965776B696E64345C756331200D0A5C706172645C66305C66733230202020
            20202020202020205265636562656D6F7320646520205C625C66733234205B66
            7872656C61746F72696F2E224C494E484131225D5C62305C6673323020206120
            696D706F72745C2765326E636961206465205C62205B667872656C61746F7269
            6F2E224C494E484132225D5C623020207265666572656E746520612072656365
            62696D656E746F206461287329207072657374615C2765375C2765336F287329
            2E5C7061720D0A7D0D0A00}
        end
        object Subreport1: TfrxSubreport
          Left = 25.456710000000000000
          Top = 117.385900000000000000
          Width = 650.079160000000000000
          Height = 18.897650000000000000
          Page = fxvenda.Page2
        end
        object Shape3: TfrxShapeView
          Left = 22.677180000000000000
          Top = 322.260050000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
        end
        object Shape4: TfrxShapeView
          Left = 464.811380000000000000
          Top = 322.260050000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
        end
        object Shape5: TfrxShapeView
          Left = 306.291590000000000000
          Top = 322.260050000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
        end
        object Shape6: TfrxShapeView
          Left = 150.771800000000000000
          Top = 322.260050000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
        end
        object Memo1: TfrxMemoView
          Left = 154.551330000000000000
          Top = 325.039487240000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 310.071120000000000000
          Top = 325.039487240000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'ACR'#201'SCIMOS:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 468.661417320000000000
          Top = 325.039487240000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'PAGAMENTO:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 539.197280000000000000
          Top = 325.039487240000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR1'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR1"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 27.236240000000000000
          Top = 325.039580000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 74.401670000000000000
          Top = 325.039580000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR4"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 234.228510000000000000
          Top = 325.031422830000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR2'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR2"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 392.527830000000000000
          Top = 325.031422830000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR3"]')
          ParentFont = False
        end
        object Shape21: TfrxShapeView
          Left = 464.882190000000000000
          Top = 341.157700000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
        end
        object Memo30: TfrxMemoView
          Left = 468.661720000000000000
          Top = 343.937230000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'RESTANTE:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 540.472790000000000000
          Top = 343.937230000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR5"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 514.016080000000000000
        Top = 555.590910000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Shape1: TfrxShapeView
          Left = 464.866420000000000000
          Top = 96.047310000000000000
          Width = 215.433210000000000000
          Height = 226.393625120000000000
        end
        object Shape2: TfrxShapeView
          Left = 22.677180000000000000
          Top = 1.779530000000020000
          Width = 657.638220000000000000
          Height = 94.110075120000000000
        end
        object Shape8: TfrxShapeView
          Left = 151.149660000000000000
          Top = 95.708720000000000000
          Width = 313.700990000000000000
          Height = 226.393625120000000000
        end
        object Shape9: TfrxShapeView
          Left = 22.677180000000000000
          Top = 95.708720000000000000
          Width = 128.504020000000000000
          Height = 226.393625120000000000
        end
        object Shape10: TfrxShapeView
          Left = 22.677180000000000000
          Top = 95.708720000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 14211288
        end
        object Memo3: TfrxMemoView
          Left = 56.236240000000000000
          Top = 99.488250000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 190.929190000000000000
          Top = 98.488250000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 495.559370000000000000
          Top = 99.488250000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR DA(S) PARCELA(S)')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 327.700990000000000000
          Top = 3.779530000000020000
          Width = 351.496290000000000000
          Height = 22.677170240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 24.677180000000000000
          Top = 3.779530000000020000
          Width = 385.512060000000000000
          Height = 22.677170240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            ' [fxemitente."FANTASIA"]  ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -62.000000000000000000
          Top = 493.338900000000000000
          Width = 812.598950000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 160.921460000000000000
          Top = 454.441250000000000000
          Width = 340.157700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Left = 160.921460000000000000
          Top = 455.220780000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Funcion'#225'rio')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 117.889920000000000000
          Top = 394.527830000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 22.677180000000000000
          Top = 349.732530000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Para maior clareza firmamos o presente.')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 30.236240000000000000
          Top = 30.236240000000000000
          Width = 627.401980000000000000
          Height = 60.472480000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E31303234307D5C
            766965776B696E64345C756331200D0A5C706172645C66305C66733230202020
            20202020202020205265636562656D6F7320646520205C625C66733234205B66
            7872656C61746F72696F2E224C494E484131225D5C62305C6673323020206120
            696D706F72745C2765326E636961206465205C62205B667872656C61746F7269
            6F2E224C494E484132225D5C623020207265666572656E746520612072656365
            62696D656E746F206461287329207072657374615C2765375C2765336F287329
            2E5C7061720D0A7D0D0A00}
        end
        object Subreport2: TfrxSubreport
          Left = 25.456710000000000000
          Top = 117.385900000000000000
          Width = 650.079160000000000000
          Height = 18.897650000000000000
          Page = fxvenda.Page2
        end
        object Shape13: TfrxShapeView
          Left = 22.677180000000000000
          Top = 322.260050000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
        end
        object Shape14: TfrxShapeView
          Left = 464.811380000000000000
          Top = 322.260050000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
        end
        object Shape17: TfrxShapeView
          Left = 306.291590000000000000
          Top = 322.260050000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
        end
        object Shape18: TfrxShapeView
          Left = 150.771800000000000000
          Top = 322.260050000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
        end
        object Memo15: TfrxMemoView
          Left = 154.551330000000000000
          Top = 325.039487240000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 310.071120000000000000
          Top = 325.039487240000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'ACR'#201'SCIMOS:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 468.661417320000000000
          Top = 325.039487240000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'PAGAMENTO:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 539.197280000000000000
          Top = 325.039487240000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR1'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR1"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 27.236240000000000000
          Top = 325.039580000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 74.401670000000000000
          Top = 325.039580000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR4"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 234.228510000000000000
          Top = 325.031422830000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR2'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR2"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 392.527830000000000000
          Top = 325.031422830000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR3"]')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Left = 464.882190000000000000
          Top = 341.157700000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
        end
        object Memo32: TfrxMemoView
          Left = 468.661720000000000000
          Top = 343.937230000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'RESTANTE:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 540.472790000000000000
          Top = 343.937230000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR5"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 19.275595430000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = fscontasreceber
        DataSetName = 'fscontasreceber'
        PrintIfDetailEmpty = True
        RowCount = 28
        Stretched = True
        object Memo61: TfrxMemoView
          Left = 454.393940000000000000
          Top = 1.779517800000001000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ATUAL'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fscontasreceber."VALOR_ATUAL"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 245.606370000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[fscontasreceber."CODIGO"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 27.015770000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_VENCIMENTO'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[fscontasreceber."DATA_VENCIMENTO"]')
          ParentFont = False
        end
      end
    end
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 192
    Top = 272
    object qrcontasrecebercliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 60
      Lookup = True
    end
    object qrcontasreceberCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcontasreceberCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrcontasreceberCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object dtfldDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object dtfldDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object dtfldDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontasreceberVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
    end
    object qrcontasreceberVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qrcontasreceberVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object qrcontasreceberVALOR_ATUAL: TFloatField
      FieldName = 'VALOR_ATUAL'
    end
    object qrcontasreceberVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object qrcontasreceberDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcontasreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontasreceberNOSSONUMERO: TWideStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberCODCEDENTE: TWideStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberP5: TFloatField
      FieldName = 'P5'
    end
    object qrcontasreceberP3: TFloatField
      FieldName = 'P3'
    end
    object qrcontasreceberNUMERO_CUPOM: TWideStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrcontasreceberVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField
      FieldName = 'VALOR_ATUAL_ANTERIOR'
    end
    object qrcontasreceberEMAIL_ENVIADO: TIntegerField
      FieldName = 'EMAIL_ENVIADO'
    end
    object qrcontasreceberHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
  end
  object fscontasreceber: TfrxDBDataset
    UserName = 'fscontasreceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCAIXA=CODCAIXA'
      'CODCLIENTE=CODCLIENTE'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'DATA_PAGAMENTO=DATA_PAGAMENTO'
      'VALOR_ORIGINAL=VALOR_ORIGINAL'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_JUROS=VALOR_JUROS'
      'VALOR_ATUAL=VALOR_ATUAL'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'DOCUMENTO=DOCUMENTO'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'FILTRO=FILTRO'
      'CODVENDA=CODVENDA'
      'NOSSONUMERO=NOSSONUMERO'
      'CODREGIAO=CODREGIAO'
      'cliente=cliente')
    DataSet = qrcontasreceber
    BCDToCurrency = False
    Left = 224
    Top = 272
  end
  object FSCLIENTE: TfrxDBDataset
    UserName = 'FSCLIENTE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME=NOME'
      'CODIGO=CODIGO'
      'CPF=CPF'
      'ENDERECO=ENDERECO'
      'APELIDO=APELIDO'
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
      'regiao=regiao'
      'vendedor=vendedor')
    DataSet = frmmodulo.qrcliente
    BCDToCurrency = False
    Left = 192
    Top = 304
  end
  object fsvenda: TfrxDBDataset
    UserName = 'fsvenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CUPOM_FISCAL=CUPOM_FISCAL'
      'NUMERO_CUPOM_FISCAL=NUMERO_CUPOM_FISCAL'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'cliente=cliente'
      'TOTAL=TOTAL'
      'vendedor=vendedor'
      'CODCAIXA=CODCAIXA'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCLIENTE=CODCLIENTE'
      'OBS=OBS'
      'MEIO_DINHEIRO=MEIO_DINHEIRO'
      'MEIO_CHEQUEAV=MEIO_CHEQUEAV'
      'MEIO_CHEQUEAP=MEIO_CHEQUEAP'
      'MEIO_CARTAOCRED=MEIO_CARTAOCRED'
      'MEIO_CARTAODEB=MEIO_CARTAODEB'
      'MEIO_CREDIARIO=MEIO_CREDIARIO'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO')
    DataSet = frmmodulo.qrvenda
    BCDToCurrency = False
    Left = 224
    Top = 304
  end
end

object frmMesas: TfrmMesas
  Left = 498
  Top = 48
  BorderStyle = bsNone
  Caption = 'Mesas'
  ClientHeight = 546
  ClientWidth = 527
  Color = 6960384
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_principal
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgFundo: TImage
    Left = 35
    Top = 81
    Width = 455
    Height = 430
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 790
    ExplicitHeight = 532
  end
  object lb_cliente: TRzLabel
    Left = 672
    Top = 217
    Width = 469
    Height = 47
    Caption = 'Mesas / Comandas - Abertas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
    ShadowColor = clBlack
    TextStyle = tsShadow
  end
  object grid_venda: TNextGrid
    Left = 36
    Top = 81
    Width = 453
    Height = 429
    Touch.InteractiveGestures = [igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
    AppearanceOptions = [aoHighlightSlideCells]
    BorderStyle = bsNone
    Caption = ''
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    ParentFont = False
    TabOrder = 0
    TabStop = True
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 130
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Mesa / Comanda'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 0
      SortType = stNumeric
      Width = 130
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxDateColumn1: TNxDateColumn
      DefaultValue = '26/08/2009'
      DefaultWidth = 102
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
      Width = 102
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 98
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Hora'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 98
    end
    object NxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 105
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Valor Total R$'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 3
      SortType = stNumeric
      Width = 105
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 81
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
    Fill.ShadowOffset = 10
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alTop
    TabOrder = 1
    ShowExpander = False
    ExpanderColor = 6960384
    ExpanderDownColor = 6960384
    ExpanderHoverColor = 6960384
    TMSStyle = 0
    OldHeight = 81.000000000000000000
    object Label17: TLabel
      Left = 76
      Top = 23
      Width = 392
      Height = 32
      Caption = 'Mesas / Comandas - Abertas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object img_cliente: TAdvOfficeImage
      Left = 15
      Top = 6
      Width = 55
      Height = 69
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000370000003D08060000000940F1
        200000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A3342413637303730313946463131453538433535433132343133
        4338333337382220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A334241363730373131394646313145353843353543313234313343383333
        3738223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3342413637303645313946463131
        453538433535433132343133433833333738222073745265663A646F63756D65
        6E7449443D22786D702E6469643A334241363730364631394646313145353843
        3535433132343133433833333738222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E889D2817000012B94944415478DADC5A
        7B705DC579FF76F79C73DFBA7A58B26563D9E66902851468D336254D18087D0D
        013324ED344348A634D3CE904E27CD4CD34CFF68CB342174680BA584B613026D
        DA0C991468C190104C0C98A71F3836B605F825DBB2654BBA7A5DDDC7796C7FDF
        EE5EE95A912CD9C8FE2347B3BAE79EB3E7ECFEF6FB7DCFBD426B4D5F5BDE45CD
        8746936829E55194688AB436D76B4944935182CF189D34E13FEE27F89F502511
        D944C71749129790902B3C212E406B5552902754C6975AF8425594123A10623C
        ABBC3EDF5707D3CA3B9CF2BCDD992038514C0514604CCFF708D748E259293D0A
        A4A452AD4A45A928C0D8E55A8D26C33A0921E8548747677868034C77859AAE13
        425E1F48F1AB9E546B0020C380D24262A244017F62720A13F195241FCBA69432
        13E7C979B826A43C80357CBB1227AF2522DE90D56A332DC2715AE0440314E95F
        C3E79D8192EBF252B530908C2729C520D04B9949A3114B8DC8977C4F199078C6
        4825C0F7149E91002AA4B73A9162754874331AC5096DAEC4F17F05241F4D491A
        16671B1C3300035F106A7D774EF9BF97C7C40AA00C83F21C8DA59816AB74270C
        5031C5711EE0621A7D3242E3394159E5533AE551DAF7C9F37C529EA2040B3099
        E86BC6A3F89AB128FECB6A9CDC2385F87BED1676D1C13130ACE417409D079705
        7EBA1D136170D01D80D084EB14EBC47C26F8C77A9CB86713F37C4221FA13FAF8
        D0294809A709A41663029020DE9306A82C40FA1EE405E9C61813E0961CAD54EF
        3D5EAFDF01FDFE6350F9E5A9177F5070C2FDC3EADD87A9FD594F10D012287B16
        9462500293857D81440D3A8C8B292482E1E20FD7B4C0576D5EA223343616A0B0
        8C6223658F1707273EDEE7830509002BBC13E8204945ED814FED30325D939397
        1D2C575E9A88C32F81050F2C0A389E5635D1F7E7A4BA6B050F84954DB3F5C39D
        1860429614007946521A13631C897DD0DCB3001B948AA04C35114127B5D1453E
        F78C350D8D9EF275859E29B320016607289062672E4B2D42D1BB63E3F70F25B5
        1CEE7E831640536FB64E8DC9D4B5BE2B2FE55D3DBC7A0097610BA72D0D434C80
        E9CA2B1F25C2289C84E0624829C6D391D3436D005A6A9BA540DF901B16A78E07
        8250E133A26AC8E0C880E423C52E26F671419977A7C0988B7369DA3D1A7E7D20
        8E8FE2FD8FC6E823E60397127236455B05EEDFDFE307B41CE00A8E8A4C1D9616
        9B7B034463720E485DF0776D7CA3343A687DA10508932FEC32729F50C7583C61
        7CA78A843548D03B5C813EA29F1F530AF435D293767E6C8D79A1072B93DFE9F0
        BD573ED252DC1B35E9F7ACE03AD2E993AD22004CC24A2D010D97E35E3B56CDE7
        2982566CCDD868781213C7391B1205EDF720051FD76B6C2804038044211DF400
        485E88C45094C51E036488EFD03240898DB4A6AD2D4632BA8C000206278895BD
        EF00B6E0B31B0087AAB56F1DA9546E989796C3F5FAD4055EB4C093DD2D9EF799
        65AC676879B3A2D020489807D68934AB15E29CC179D20254C2D2441AE931C7C8
        7E3A6A26E6CC5A55A6262F88C4A78A990356AA1C0C69808A3DBCDBD0561AEAB3
        8F44A4632C7127A4792C4EAE7FE1C4E02F0624B6CDC54D03AE1C4D0B36025D0A
        E4DFD696F1A93395A222CC7E4AF0A0EC6C014C4B330136161C7A45005737128A
        B0F26E1484485A5BC3C30823C1C4B40465890AD6274CB816935934035F6B0B8C
        699680EA001C98D04B18AB5A571CE570348327C0A022C01695BA1DD4DF26E708
        C30CB842DA9FBA106A8F72525ED4A2D89705940538DF4C0E137183933118A066
        CC009956B1351898506C74CAA898A1017FC6899EB654467690536CC11A2A469E
        515AEDF49375D6674325D9BADA2847010C423BD817BBB8D615D147C286959E0B
        5CA2A7EFB2B22356ACE6028E3E14A503EB9BD8019BF93AFAF03311241E82A202
        94D4069DB052556C7494894C1498C0EAC27D7836C6C937ACB201C8B4888CA413
        AC449CB0CF4B0C0D430663DC8634A098FE7E225D5C6B0C566BC8EF137A6E7045
        58C469C9694A7BEA87BE527F8EA81D11853271214D9976AB18C62AC24FC94436
        ECBC050CFA06AC8B9068CC0E1B52955A4C494EBB05B4AE7D5A82319B1E5E1836
        447826C4B81E3E7DE162D518E0949D0F5BEAD0EA7C6F46DAF7CC092EEF792745
        25E538FEF1914AEDC52BDBDA3F51604B1AC3AB20BA3020746C78E7B111706154
        22EC847D36F14C13583A8555669F48AC2722264BA4C8D02E71C685172911C248
        2DC642259878D28847132B3176F2CA346D0288AC4A21BD4AE8B5E1E1E8FC42EE
        AB97E632E6FB9CE0966732278143B845C297EBDE1C1E7AF9D757ACBC3C7DE185
        4493652C5568F48AEA2109B454089F548FCC6423DF729F01327DD874CBD8FA36
        4D96929AAC1F8C9DFF638A9A0592564F1918D392C1304B389B606BCA796507DC
        52319DD2FBCB65F1D2D030AD6D6BBDEDC36D6D7B982DF254AEE0B7AEB8EC67EF
        04C1C8B181818F7DE5CD37B6FF415C5BF92BD75D4794CB11E1C534709C68A444
        3421294D5593CC7A8934B919D31409A9F914F8CE96D3EA9535F326C8E6E0C3A4
        4E1CAD19591AFD644BCA3A66DC03D311CFB7A65308A8035D8AE3E495FEA3EAF5
        C112FDC679CBFEE486A54B9F2CC385D5E60387BC6396C052D3B28B2F2C7D4ECA
        DFFDE2FF3EB7F9537BDEF36FFFEDDFA4D56B2F215A791ED120401ED86F80E6F5
        1832F4BA93107CE08C88C74EDFB8712C84A530E40D9D69E86A628D9612C6FC67
        03A5D34A21E054C9A15A4D1D1E195507C6C6E509F88E1B57AFBCF7C6EEAE8786
        AA55AA27F129B371614CFB17EF98055C62F5AC6B196DD8BDE7E62F7FFF892756
        E2F2553DCBE9AACB2FA3AB2F389F5664B309556A50D209416363221A1BE7D088
        C6AA351AC1E0E3F51A4D84751A8755AD869189466A3107DD20A0B21E8E752AED
        9B5242956D2AA4995410768D85A118ACD783E16ACD679B11603A6B972D79FE8E
        B56B3F3981318E4F4E1ADA9E32AB31E0EEF9DBB97BB0256D69A1EF7FEFF1FBFF
        E5859FDCB51AAEA18CC10328FFD2F6A25ED5DEA62F2FB4E8767008B44CD2F023
        4908EF97B09B8804D73BD05F4E26B19E8C225D45705A4974CC7ACD7A8630AC8A
        904D21E48B26C2484E46A15789920CA42BD8807420D4CA628EB95CA174EDEAF3
        CE6F1534325E8F9DB75C48CA932FCC9DF318092ABAEDD65BFE74D39EDE9B0E1E
        1B58B5BAB500039A4058E362D3F0A878C1C5A4055FC97CE063529ECE79ECAF84
        B05147E20A4D6422CD3AAC403532D10D8C228024DA1A44AEB3809E45586F2E53
        B42290E84092CB37D774777D3E27C4C810168BA9B890D28395DCC30FCEDF7349
        071D79F1271FFBC2B7FE6DE372482F970A4EAAAB7014C2BE2D341106A74B7011
        899B82B43E52D870D38453367FB3852353A69076C2FC9DFD6A1B7CEC3224C745
        B6B22D6D4F2D29E66FD6009608719A99F8FE7DF3F784F158D1D5F5D22D1FBEF2
        3F7FB0EDEDCF9E0FD32C1CB4C670928B4058AC00F152A691054C65F4D6624A13
        E1B3856B6402368FE32083F52F05835284B418D82A4E773299DA584BE1CE3A56
        4C4BFF0C6A28C3A505D4F2307ABA4CB77EE892BB5E7FEFDD7523D57AB6351DB8
        804CBA6A89B45039846B4016D3008DE4A4950ED34FB934C733F1A32D01E6D181
        4B19ABF0EE4E9C1FC917FE2AE779270467C26752203A3A31B1A0CEDD18BCB367
        D5C8B5175FF4778FBFBDE3EE76A611A4151B5FE52C97B020858B421B200DE51C
        3D0D2D0D05ADB44CC90FE0B844D80A3A7607295A03A995B2D9A349367F5F1A6E
        265CA09EFD8CCEA9794C6AE3B8229FA3EFDC78035DD9DEA6BEF4E493870646C6
        BBBB72A9A998D164D0EE558D88C804CD0EA4746504DFB900269929D402540AD7
        8AD0E5E5C81FD76633D409DA6FCD173F17FBC163595387D1A72D39034E88D35B
        936F5E73157D281DDCF9DD2D5BFFB505934879722A9D9932B27ABA7A26A86150
        8409841B344CE12203E312610E60BB60A42ECA65E952001CCAE57BDFCCB4ACCD
        46219D8EC8B4ABD72C454879BAE0A6CAAE372DEBA48F66D307771C1DE8694784
        23E7E83805CE584A618098E85E90AB7B323009EBE8510F82F4ABF319F2006E57
        EB925B27FDF4FFA49285EB1A4B97B3759ECF8BFDFD670E8EFFDDBEB4E38F3AC2
        F06176EA69CF1A8846A54BBAEE8DDA8870269F25C53168C06576068B0E054442
        4B611D7FA190A3A5B9340DA8E0BD6755FAE24E2E6B9C061D59F72F2822E0787F
        2FFDCDCE5D6744CB2980CB3D4F7EBAA3D8572A4FAC684124E34F59466DA8279C
        89178E86BE6C50928C8EB173CEE27B2B24B50634BAB290C58D146D2DB67FE6A8
        0C1E4FC7E18227C5C1FB6A4452BDA5127DEAD91F9FF12E8F6E58F67E0489CA0B
        BE8E60F79FEB1CEA2BBB6F209ACCBFCDC7ACB3564D8684BFB3F4328A1DB64F3D
        00859B34EAA70E8CE78B8FAFE1D833D10B9E9207ABBDB250A0AFBEF2EA07DFC2
        6A68EF501C3D82A4F1EEDE91D1D6229CACA5A470EE401BC7EE0B6B2D7DE12CA4
        332C6C507200B70461561BEF77E1FC50AEF04FCCA6D1EAC2A5C659C62F7777D0
        97376CA427FA8E4C5D97F4018FF583A5C96C90FA77A61B733E99AAB3D89A8B74
        6EC073BAC79039A9E5C661561E86A42BE59B5429F2D313E55CFE913674E4EB0B
        695CA8BD02A1E17AE8D943BBF69C34B73305D7E08B381E45B46DBCFCC0EA7C5E
        9791B020F8B7653A434FD9144B4ABB5F67069536228165E34A76A76F9D615F26
        F7ED50CA51CE28EA78C77CAD065568C9A468B05AA1CFFE688391E062803BE978
        A634DA87DCEF495B60B22503E14A81D2594E133F322C61EB21EC1A39A5292A57
        6042543290CADD2F6A2145C8FDE66B613D32146F8321FBFDA7D673DD67F1B68D
        9BADE7481CEB37C6C61FBA2848DD328AD49FF7E0682ACCB2BECC4629C95438C6
        D7B8D8CB41321FFDD2DFD057ABEE2DC40BF76B3D8516FAEB575EA7374B23B3DE
        5F14C9F1B1BD527B3E9DF27B39EBB64558AE0E938BFEA5D3BD69EFC71435BBB3
        BC8B838EFBBCE01F35A29118349FAFD5D18FABE12F1FEEA30776EF99734E1F04
        DC49043F8E153F5C0F1FE6EDE09A494CDD06A47174B1DD031176E78725E89B2D
        6445693C7782E4E1E3423C5D8C1343A553355F93496615F4F21B6F6D3B3BBF66
        98494D28B3FEE944E5D18F1732F71C9BACFAAD5A9924DE8272910B97005D89CF
        33AE4010D74BFA83F4239DE94067A368412B7A7EBE85EEDDBE9DFAEAE1070627
        E6389FF93D3E9624C311A9FFABC67A5D68EA93D607D98AB39ECEEBC8462B3E56
        7F3493A5309F7B7464748C46F5FC4EBB0D86E77BEFBF4FDFECDD7BDADBC6A2E9
        73AE739AE5BA29250D4571F548BDFE18C2A97565488113CF1486902E5A9FFA75
        83B2C9AAE0927B2EF7D2D7B6EEDCFBFCB1630BA288741B9C0BEA3B0BB886EFF5
        ECC6B46929D7D2AE655C4B37B52C5BFC5DD5DAC6B4AFFA27E2C4EC3BF0468569
        DA16D313B27514DECCCC6573F4C450E93F7E0460BA69BBFA546DA1C066826B06
        D500C30072AE71892CCF9B9BEEBCD15A5CE37BDDFBC36864308CD773EC5833A0
        12B285386DF604844B58798372CCF32B8F1D3EF6F41C945FB45F108919C01A12
        F3DD42ABA9486A7A4166A52BD675725F2DDC707526F58713A06686370D5D58C6
        2F136E1F200D8BB769BCFCDCE6F189634DEF8FCEE0B734F382936E806006E502
        D7A719DCA9F4908F35BD71BCFB52AD0F2AAD57B1F4A44B813C93D729EB1DBC80
        9E3A7AFC19BB9969A4DED8BB5E2C8062262D1B7A9675031666D030DFF499739F
        33DBD27A92D4FB6AF597383A81E5A4AAD93BE71F08D8988C7F6BF26EAD3EFAF4
        E8F8165CE974EF4ABBF1E56251743683E23906CD6648B24D926D4837D574DEB8
        DE7E30D15B2A88FF0626CA6627A6CEBBAAECF310E47A9365DA549E78B51EC75C
        53EC710B966902478B0D8ED5A2B1B314B9F34662AAE600DDAC9B8D4F6E4B07B4
        3ED0F9898F1FEE58D543FB4AE374607094060786492345D1BF7333BD555CB2AD
        89059926FD5E2CC3A2BD19C098F76537007F0F9DB41A1292335A7318269B7E87
        1A2471DC3F9CCD6FBDF3C187CEDBBFF145AA1DD84F9DDDDD145C7E251DAAD52A
        DBBEFBDFBD8E928DB1E3A6055D5483A29BC0250E54B9896AD9261DCBCE004AB3
        3876BE9EDBB8FE991DB77FFE8E9BAEFFCA5F500681EE68B94C7BF7EFA35DFF70
        DFCE5A18F639498DA28DB9F1EA8B09D09BF9E3D7267055B489261A661CB8225A
        6B1350354720D03E500FFB76BCF65A69E9AAD56D854C86462726283C7490766C
        DDBA15F7475CDF0107AEDE343E9D0D833293A20C701C6D088DFDD12134DE35D9
        EBCE87DD4228A733CD013CEBD3C4F62D5B76D500AA8E3C8F5F3A78A08F36EFDD
        B7D9BD97DF71A2496AC9D970E2F305E2DA0D5E77D21C71933ACE51896B1D8EC6
        8D0932E0F4E6CD9B7B4BFDFD1F4D65B3E69743BB77EE78BFA2F56BEEF9F1C5D4
        B1C5C8E77832353436E3FBD1D8EABD85F6AE9340C38A32B8B67DA591FEDE9D3B
        2B35E46DB55289B66DD9BA11D7DF71543C6BC0162313E7C94DA21D44DB84C69B
        ACBBDD3D36402D1063F5EDAD5B0E546B35EADFB78FB6F7F6FE80CED12117F15D
        4CD90368CF71CDC8016683D3BEFDA73B4E8C0D1EA7F776ED3A3814453F3C57E0
        BCB3F04ED6B95E07F497D03EBDE7F0E1FCE17776D3F677763EBBD846E35C836B
        1CAC97AFF0DE66982417BFF5EA26DAD9FBEEAB742E0FADF5B918E6AAAEC07FC3
        97F2DA9F47707C74B90CE39C1DFF2FC0003F3CB4BA81C99D320000000049454E
        44AE426082}
      Version = '1.1.1.0'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 35
    Height = 430
    Align = alLeft
    BevelOuter = bvNone
    Color = 6960384
    ParentBackground = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 490
    Top = 81
    Width = 37
    Height = 430
    Align = alRight
    BevelOuter = bvNone
    Color = 6960384
    ParentBackground = False
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 0
    Top = 511
    Width = 527
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = 6960384
    ParentBackground = False
    TabOrder = 4
    object RzLabel1: TRzLabel
      Left = 35
      Top = 13
      Width = 75
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
    object RzLabel3: TRzLabel
      Left = 137
      Top = 13
      Width = 148
      Height = 17
      AutoSize = False
      Caption = 'F5 - Confer'#234'ncia de Mesa'
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
  object pop_principal: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.1.1'
    Left = 201
    Top = 259
    object Finalizar1: TMenuItem
      Caption = 'Concluir'
      ShortCut = 113
      OnClick = Finalizar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      Enabled = False
      ShortCut = 115
      OnClick = Cancelar1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 116
      OnClick = Imprimir1Click
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
    Left = 233
    Top = 259
  end
  object qrMesa: TUniQuery
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
    Left = 297
    Top = 259
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
    Left = 265
    Top = 259
  end
  object qrtmp: TUniQuery
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
    Left = 273
    Top = 315
  end
  object frFilial: TfrxDBDataset
    UserName = 'frFilial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FILIAL=FILIAL'
      'NOTAFISCAL=NOTAFISCAL'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'CNPJ=CNPJ'
      'IE=IE'
      'SEQNF=SEQNF'
      'FAX=FAX'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'CONTRIBUINTE_IPI=CONTRIBUINTE_IPI'
      'SUBSTITUTO_TRIBUTARIO=SUBSTITUTO_TRIBUTARIO'
      'EMPRESA_ESTADUAL=EMPRESA_ESTADUAL'
      'OPTANTE_SIMPLES=OPTANTE_SIMPLES'
      'OPTANTE_SUPER_SIMPLES=OPTANTE_SUPER_SIMPLES'
      'ECF=ECF'
      'TIPO=TIPO'
      'IPI=IPI'
      'ISS=ISS'
      'NUMERO=NUMERO'
      'RESPONSAVEL=RESPONSAVEL'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'FARMACIA_RESP_TECNICO=FARMACIA_RESP_TECNICO'
      'FARMACIA_CRF=FARMACIA_CRF'
      'FARMACIA_CPF=FARMACIA_CPF'
      'FARMCIA_DATA=FARMCIA_DATA'
      'FARMACIA_UF=FARMACIA_UF'
      'FARMACIA_SENHA=FARMACIA_SENHA'
      'FARMACIA_EMAIL=FARMACIA_EMAIL'
      'FARMACIA_LOGIN=FARMACIA_LOGIN'
      'FARMACIA_ENVIO=FARMACIA_ENVIO'
      'CONHECIMENTO=CONHECIMENTO'
      'INDUSTRIA=INDUSTRIA'
      'FARMACIA_NUMEROLICENCA=FARMACIA_NUMEROLICENCA'
      'COD_MUNICIPIO_IBGE=COD_MUNICIPIO_IBGE'
      'IBGE=IBGE'
      'PIS=PIS'
      'COFINS=COFINS'
      'EMAIL=EMAIL'
      'ATIVIDADE=ATIVIDADE'
      'CONTADOR_COD_MUNICIPIO_IBGE=CONTADOR_COD_MUNICIPIO_IBGE'
      'CONTADOR_NOME=CONTADOR_NOME'
      'CONTADOR_CPF=CONTADOR_CPF'
      'CONTADOR_CRC=CONTADOR_CRC'
      'CONTADOR_CNPJ=CONTADOR_CNPJ'
      'CONTADOR_CEP=CONTADOR_CEP'
      'CONTADOR_ENDERECO=CONTADOR_ENDERECO'
      'CONTADOR_NUMERO=CONTADOR_NUMERO'
      'CONTADOR_COMPLEMENTO=CONTADOR_COMPLEMENTO'
      'CONTADOR_BAIRRO=CONTADOR_BAIRRO'
      'CONTADOR_FONE=CONTADOR_FONE'
      'CONTADOR_FAX=CONTADOR_FAX'
      'CONTADOR_EMAIL=CONTADOR_EMAIL'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'DATA_ABERTURA=DATA_ABERTURA'
      'CNAE=CNAE'
      'CRT=CRT'
      'CONTADOR_CIDADE=CONTADOR_CIDADE'
      'CONTADOR_COD_MUNICIPIO=CONTADOR_COD_MUNICIPIO'
      'CONTADOR_UF=CONTADOR_UF'
      'PERMITE_CREDITO=PERMITE_CREDITO'
      'FANTASIA=FANTASIA'
      'DFIXAS=DFIXAS'
      'TIPOCALCULO=TIPOCALCULO'
      'SERIE_CTE=SERIE_CTE'
      'SEQ_CTE=SEQ_CTE'
      'COD_PAIS=COD_PAIS'
      'PAIS=PAIS')
    DataSet = frmModulo.qrfilial
    BCDToCurrency = False
    Left = 144
    Top = 128
  end
  object frProdutos: TfrxDBDataset
    UserName = 'frProdutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'HORA=HORA'
      'PERGUNTOU_COMISSAO=PERGUNTOU_COMISSAO'
      'CLIENTE_AUTORIZOU=CLIENTE_AUTORIZOU'
      'COD_FUNCIONARIO=COD_FUNCIONARIO'
      'NOME=NOME'
      'COD_PRODUTO=COD_PRODUTO'
      'PRODUTO=PRODUTO'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'IMPRESSO=IMPRESSO'
      'TRANSF_MESA=TRANSF_MESA'
      'COMPLEMENTO=COMPLEMENTO'
      'EXTRA=EXTRA'
      'COD_LANCAMENTO=COD_LANCAMENTO')
    DataSet = qrProdutos
    BCDToCurrency = False
    Left = 72
    Top = 192
  end
  object frComanda: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43076.878621111100000000
    ReportOptions.LastChange = 43076.878621111100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frComandaBeforePrint
    Left = 216
    Top = 136
    Datasets = <
      item
        DataSet = frFilial
        DataSetName = 'frFilial'
      end
      item
        DataSet = frProdutos
        DataSetName = 'frProdutos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 1000.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessHeight = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 264.567100000000000000
        Stretched = True
        object Memo12: TfrxMemoView
          Align = baClient
          Width = 264.567100000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frFilial."FILIAL"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 185.196970000000000000
        Top = 64.252010000000000000
        Width = 264.567100000000000000
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 56.913420000000000000
          Width = 128.504020000000000000
          Height = 18.897632910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frProdutos."DATA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baRight
          Left = 136.063080000000000000
          Top = 56.913420000000000000
          Width = 128.504020000000000000
          Height = 18.897632910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frProdutos."HORA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Top = 39.913420000000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 158.740260000000000000
          Top = 39.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Top = 98.047310000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frProdutos."NOME"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Top = 79.929189999999990000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Gar'#231'on')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -7.559060000000000000
          Top = 116.944960000000000000
          Width = 317.480520000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Top = 4.645640000000000000
          Width = 264.567100000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Mesa: [frProdutos."CODIGO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Top = 125.078850000000000000
          Width = 264.567100000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONSUMA'#199#195'O')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 64.252010000000000000
          Top = 166.637910000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataSet = frProdutos
          DataSetName = 'frProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baWidth
          Top = 151.181200000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          DataSet = frProdutos
          DataSetName = 'frProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 113.385900000000000000
          Top = 166.637910000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frProdutos
          DataSetName = 'frProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr Unit'#225'rio')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 188.976500000000000000
          Top = 166.637910000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frProdutos
          DataSetName = 'frProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr Total')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 185.196970000000000000
          Width = 317.480520000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 309.921460000000000000
        Width = 264.567100000000000000
        AllowSplit = True
        DataSet = frProdutos
        DataSetName = 'frProdutos'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 64.252010000000000000
          Top = 19.236240000000010000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'QTDE'
          DataSet = frProdutos
          DataSetName = 'frProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frProdutos."QTDE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baRight
          Left = 11.338589999999980000
          Top = 34.795300000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          AutoWidth = True
          DataField = 'EXTRA'
          DataSet = frProdutos
          DataSetName = 'frProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[frProdutos."EXTRA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000022000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = frProdutos
          DataSetName = 'frProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frProdutos."PRODUTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 113.385900000000000000
          Top = 19.236240000000010000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'UNITARIO'
          DataSet = frProdutos
          DataSetName = 'frProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frProdutos."UNITARIO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 188.976500000000000000
          Top = 19.236240000000010000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = frProdutos
          DataSetName = 'frProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frProdutos."TOTAL"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 385.512060000000000000
        Width = 264.567100000000000000
        object Memo15: TfrxMemoView
          Top = 3.779530000000022000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.779530000000022000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frProdutos."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Top = 21.677180000000020000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Couvert Art'#237'stico')
          ParentFont = False
        end
        object cpCouvert: TfrxMemoView
          Left = 154.960730000000000000
          Top = 21.677180000000020000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Taxa Gar'#231'om')
          ParentFont = False
        end
        object cptaxa: TfrxMemoView
          Left = 154.960730000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 56.692949999999990000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object cpTotal: TfrxMemoView
          Left = 154.960730000000000000
          Top = 56.692949999999990000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = -7.559060000000000000
          Top = 2.779530000000022000
          Width = 317.480520000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = -3.779530000000000000
          Top = 54.913419999999970000
          Width = 317.480520000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object qrProdutos: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select'
      '  lpad(mes.codigo, 3, '#39'0'#39') codigo,'
      '  mes.data,'
      '  mes.hora,'
      '  mes.perguntou_comissao,'
      '  mes.cliente_autorizou,'
      '  mes.cod_funcionario,'
      '  fun.nome,'
      '  con.cod_produto,'
      '  pro.produto,'
      '  con.codigo cod_lancamento,'
      '  con.qtde,'
      '  con.unitario,'
      '  con.total,'
      '  con.impresso,'
      '  con.transf_mesa,'
      '  con.complemento,'
      '  con.extra'
      'from'
      '  r000001 mes'
      '  inner join r000002 con on con.cod_mesa = mes.codigo'
      '  inner join c000008 fun on fun.codigo = mes.cod_funcionario'
      '  inner join c000025 pro on pro.codigo = con.cod_produto'
      'where mes.codigo = :mesa')
    Active = True
    Left = 289
    Top = 187
    ParamData = <
      item
        DataType = ftString
        Name = 'mesa'
        ParamType = ptInput
        Value = '46'
      end>
    object qrProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 3
    end
    object qrProdutosDATA: TDateField
      FieldName = 'DATA'
    end
    object qrProdutosHORA: TStringField
      FieldName = 'HORA'
      Size = 10
    end
    object qrProdutosPERGUNTOU_COMISSAO: TStringField
      FieldName = 'PERGUNTOU_COMISSAO'
      Size = 1
    end
    object qrProdutosCLIENTE_AUTORIZOU: TStringField
      FieldName = 'CLIENTE_AUTORIZOU'
      Size = 1
    end
    object qrProdutosCOD_FUNCIONARIO: TStringField
      FieldName = 'COD_FUNCIONARIO'
      Size = 10
    end
    object qrProdutosNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Size = 80
    end
    object qrProdutosCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      ReadOnly = True
      Size = 10
    end
    object qrProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 100
    end
    object qrProdutosCOD_LANCAMENTO: TIntegerField
      FieldName = 'COD_LANCAMENTO'
      ReadOnly = True
      Required = True
    end
    object qrProdutosQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object qrProdutosUNITARIO: TFloatField
      FieldName = 'UNITARIO'
      ReadOnly = True
    end
    object qrProdutosTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object qrProdutosIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      ReadOnly = True
      Size = 1
    end
    object qrProdutosTRANSF_MESA: TIntegerField
      FieldName = 'TRANSF_MESA'
      ReadOnly = True
    end
    object qrProdutosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ReadOnly = True
      Size = 50
    end
    object qrProdutosEXTRA: TBlobField
      FieldName = 'EXTRA'
      ReadOnly = True
    end
  end
end

object frmVenda_Crediario: TfrmVenda_Crediario
  Left = 507
  Top = 113
  BorderStyle = bsNone
  Caption = 'frmVenda_Crediario'
  ClientHeight = 498
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_consumid
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 498
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 345
      Height = 494
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pn_consumidor: TFlatPanel
        Left = 2
        Top = 2
        Width = 341
        Height = 490
        ParentColor = True
        ColorHighLight = clTeal
        ColorShadow = clTeal
        Align = alClient
        TabOrder = 0
        object RzLabel9: TRzLabel
          Left = 26
          Top = 47
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          ShadowColor = clBlack
        end
        object sh_cred_cliente: TShape
          Left = 73
          Top = 42
          Width = 235
          Height = 24
          Pen.Color = clSilver
        end
        object sh_consumid_endereco: TShape
          Left = 25
          Top = 101
          Width = 293
          Height = 30
          Brush.Color = 6960384
          Pen.Color = clSilver
          Shape = stRoundRect
        end
        object RzLabel12: TRzLabel
          Left = 45
          Top = 409
          Width = 160
          Height = 17
          AutoSize = False
          Caption = 'Quantidade de Presta'#231#245'es:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          ShadowColor = clBlack
        end
        object sh_cred_prestacao: TShape
          Left = 208
          Top = 404
          Width = 51
          Height = 25
          Brush.Color = clBlack
          Pen.Color = clSilver
          Shape = stRoundRect
        end
        object Shape1: TShape
          Left = 26
          Top = 373
          Width = 291
          Height = 30
          Brush.Color = 6960384
          Pen.Color = clSilver
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 25
          Top = 117
          Width = 293
          Height = 283
          Brush.Color = clBlack
          Pen.Color = clSilver
        end
        object RzLabel1: TRzLabel
          Left = 15
          Top = 75
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pego Por:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          ShadowColor = clBlack
        end
        object FlatPanel3: TFlatPanel
          Left = 1
          Top = 432
          Width = 339
          Height = 57
          Color = 6960384
          ColorHighLight = clTeal
          ColorShadow = clTeal
          Align = alBottom
          TabOrder = 1
          object bt_gravar_crediario: TAdvGlowButton
            Left = 228
            Top = 1
            Width = 110
            Height = 55
            Align = alRight
            Caption = 'Confirmar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
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
              1F90000008864944415478DABC99EB5353F919C79F999DEDCC76A6339DDDFE01
              DDBEEBBEA9BB9D6D5F75A69D76775D47EE8B8ABA8EAE407272218AE215E4A695
              AB562E2AB99C9344C05557AD1740856C88E2B22C2190730E49B4C072B1545DA4
              482040027EFB2201091709227DF19D49CE9CCCEF73BECFEF79F27B9E4366A4D3
              6CDD45269926D388131832B89454D9A1249D2023635732B10E2571ED2AE24419
              B1A2F4B79C2095B322C37222636205692F2B488759413AACE3A5FD7A87EC2E27
              32E51C2FDDCB8AD235ACC810C7CB886D5790B15345FA072A323AE464702A48C7
              337467EC30DD4316CDE5A15001CF75EF25D6A17C9713E407599171B28214D3D2
              F12F3FCF5CB34B82AF894C17C733C7D876C5AFCF75ED22C3C35D6F06F07C6712
              E904D9DB7AA732871599219697CC83095D12E804A94FEF909D655DAAF7CE3915
              2B047C9044951DCA30AD5DD2A1B3278215560217ECAE96970C1A9DCC76836B09
              400BD283743F7093C12127AD9DC99A7EF2370136D7CD80A3259CC0509D2F8DBE
              43F63C1E324DA507A97E2A936ABD69A46F67CA356D890BEEAF3729AD5D021D2F
              A9BDE5394477A7B2E6F190B6337D46BA1F8F92A1EB10E94549C5EAB8B6B8F442
              82C5D8798074DD478398E8A63B836EBA33A8C69D493746B248D79E9455D612FF
              7F85630529D4B678687845E5B5E79954E3CEA29BEE74BAE9CE20BAD29F4C97FB
              93E9DA9314BADAAFFA33CBAF7E58174C1C5E0A9D3D0197FB92B65F7F924297FB
              93E94A7F325179EF7EAAEC3B485CE7DEB7CE5A137E5A591959A17809CE5AE3C1
              75EC79AFB2EF1095F7EE27FAE6592A5D194CA78A4E558EC6B6DAA1952C591134
              B6785474247D7DE5D911FA66309548E3DA431AE7EE77B4BCD4C7AD5A6230E044
              198A5B37A0C8F6053881012B300BDECB095268ED89D038541F685C7B880C8EDD
              A4171407593E71F5E00406F9D6B5A8ED52C3D2538E82E6B5D0099200E842BF49
              0427C8CF181CBB89F4A2823881E95B4DB802EB5A5C72650093000054779C425E
              F3A7D00989AF80649E73A2E26D6245C56F5613AED0BA0E975C1998F2022FBC80
              6F02C02450DD598402EBBA57EE574E9487132730AAD500E40419F29BD7E2A22B
              1D535E003E6078741CC3A3E3989C003005343CAAC4197E0B748BEC7D4E906A48
              2F32E52C1FDA826AFB0E94D9B7831365AFBE579421AFF9335C741D81CFFB02F0
              01EED1718C7826E01E1D8767CC1F6B6BF71DE47DB70E06A77CB128D493DE21B3
              CC3BBBCDFD1B12E538D3F62534FC4E68F80494B6C6412F2A1609AB0CF9B3E126
              FDCE4DC38D8F4F01009ABA6FE240F5C7385ABB16EAD69D38E74A9A57B8399179
              48AC207DB4145C695B1C4EB644A267D08127EE1E9C6EDB82225BCC1CC8E96CFD
              3CC8B9D9706301B81F7AAA9052F53B64D77D8A7C7334724C1128B37D85732EE5
              DCF5078815A49EA5E122E0FAA91178E1CFC2DE21178A5B37A2B835167A511E94
              10175C6998F4629E73D370CD3D3548A95A83ECBA4F516889457E7D3472BF8D9C
              81343A8320475E09A8E177E274DB66389F36020046C77C707B26801740DFD043
              14D96251D2BA1106518902EBE7B8E04CF5C3CD736E3200571D80FB64066E5A7E
              C8F0B99023A4E3A5FF592CCD4F58D743786C01008C78BC707BFC8B8E7ABC7EC8
              FF3E40716B2C321BFF888BAE54F82626170D6B734F35F6557D88AC05E016820C
              ECC941323865F7B58B24C999B6ADB8E83A8CA1D1416012708F4EF817F64C60D4
              E3035E00AEA74DB8F4E00846C7BCC161F5CC76AE06FBAA3E4476DDDF16859B0B
              79B665072A1EAA3A49DFCE7CAD5BE404A317E538D112069DC060D833044CCD86
              1CC788C7EBAF693E7F010E726ECCEF9CB5F73652AAD620ABF69325E15E424620
              C71481B3B61D0DC4F1D2FD4B65F14BC8E741902301273D635333DF673BD7D27B
              27E05CE8703390E608E49BA38CC48A8A0F963C8E8B729C6809072B3070CF7172
              B6DC9E5945B8F776C8615D4879F55138716F631C71829C58413AB01CC8859C9C
              1DD696DEDBD857F511B26A5F0FCEAF18EFC9868D3F2743FB2EE204797E28C72D
              BD28C7096B580072DAC9F1A052E20FEB47C8AAFDEB6BC3E59A2351608EA92CAA
              8F23D23854A46E57FE4A6B97800BA5FB12E528B4AE072728E0F63C072601CF98
              0F00D0FAA8CE5F4A5600576089C1F1BA089C34C7FCA1D4BC89E8D2B30374F9D9
              612AEF506AB4211EF9F5A21C852DEBC10972B83D6E0080ADAF16FBAB7FBFC2B0
              46E3D89D7094366DB973BD4345573B1444E71F1FA20B8FD3C8D0B3EF1765B6C4
              89509B26BD28C7496B38FED9F17734765F415ACD9F9055B732B83C7314B26F85
              A1CCB5FDFDF3FF5690B14F4254D9A9A28A4E155DEC4EA60B5DF24D3A7B0274A1
              36DBA21C65FC3614FE108E1CF37AE49AA25E1B2EBF3E1A397591286DDA7A5063
              FF8A4A6D5BE974CB97445543A95435944AB786D2E8C6F323A415151AF5321A77
              1D2F81C121F79F64EAA371BC2E7CF97096681CBB15863C4B94F9EA4012553FDB
              43D70676D1F5815D445C4FE64BF51D2363D721E2F8843A9D5D02560CBD9D343A
              FD47AFFCFA68E498C2971DDA9CDA28A7BA7DDB5B158F7792BE773B19025A7078
              54E74D238343F6ADA63561593DEFEB40E69822916B8A6CBF3194F2CB86A96C32
              4DA50569DEB8EB1E32E81EB2A8A243496A9BA47CB9BD88C11122A4390A79E648
              E49AA36B0A2C1B7E56EB4DA5EF719C2CC80CD2BC81A10519548F74323E5010E7
              5052C5BF94F15ABBC4EB1F6086E6E434648165E13D996B8A448E2912A7EE6F38
              50DCB499F2EBBFA0EA91FD741F47979EB0CE00BA1464702AE97C978AB482EC7D
              BD53C14ECF4F42019D1DEE69C8BCFA28E499A370B221F6EAA9A6B835254D9BA9
              A4298EF2CC31AF07A87728A9B223C93F44FF712FB10EE5C79C202B6245E67168
              D9AD804E90A0C012833C73D470BE3946F38F860D7F51B76DA392D6AD54D4B889
              8ABFDFF466008D9DC9A47324055E43C8DF6145691827484B5881A9E3FC53FFA7
              D3AF2158413AC089CC4356905ACA5D496A755BFCA67C73F4BB85E6582A6ADC48
              6ADB562A6AD91C12E0FF0600783C0BEA8110C4080000000049454E44AE426082}
            Transparent = True
            TabOrder = 0
            OnClick = bt_gravar_crediarioClick
            OnEnter = bt_gravar_crediarioEnter
            Appearance.BorderColor = 12631218
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.Color = 14671574
            Appearance.ColorTo = 15000283
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 14144974
            Appearance.ColorMirrorTo = 15197664
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
          object bt_cancelar_crediario: TAdvGlowButton
            Left = 1
            Top = 1
            Width = 139
            Height = 55
            Align = alLeft
            Caption = 'ESC Cancelar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
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
              1F90000009564944415478DAB4996B6C5BE51DC6FF12621293264DB02FDB00D1
              7DD844B742B9AF6D1A9A9B9DA4F812DBE7E2A471EC243E766E6D9396B409C99C
              A494316DD2C6C404B41B1250AA6E6C65373469C03676D13498B6412EBEC44D5B
              484BE3738EEF766227E9B30FC776E2DA4E5C281F9E0FB6FCFAFDF9F9BFEFFBFC
              CF6B82CB45799A18A7D5D15192190745CDBD146EEB21997550BCAD9F427C3745
              F93E921927494CE7DD122B74CBACF0A2CC0A6F4B8CFD4389B14733BA2CF38EBF
              CAAC704A6485C33263DF2E330E0A324E92F92E8A58FA28DADC4741733745F81E
              928D022D1F1D223C3941D7F250B98009DB210AF13DB70659E790CC086E89B123
              2BD1D489F5AF25C60ED1D80969DDFB32239C9319FB7199EBBA2BDAB69F622DFB
              6F10A0B59764D67973D8DCFDB4C40A6105A610A81C89CAB8E520EF783E62EEBD
              2DD8D2F329019B7B296CE9D1048C9D7ED1D8F189C10ADDED8068EA0CCACD4E6B
              D4DC47B2D1B101E0B82B5FC72708632E0A724E928DC2B8C4D8F34A75E3A45442
              36399E951907AD3E3142F8EEB1021EC2A82B5F63E3B43A3C4232279C0A18DA21
              99EC9F015C819B6F2E0F0E1326260A7808AD2E45FB5C84B62769D9324422DBFE
              EA6709554C01C6F64EAA7590603DAEB064B80887C6143D3E4E387C8CA25CEFF8
              82CE5AFACB3E4DB93718BBA0B7226CEC3A8DFE09C29109C22117E1D018515418
              A0A83040B19EC729E238B027602A5156B31392C68240851662630B247357F960
              E58C35D91130DA10B6F75AA33D83392E4AB51FA1947D8892AD876F5AD0B68BA2
              A9A37030EF8458C340D2DB10F9F96F205B0F42ACD02A136F06773D634D9DB8A2
              B521B16FE0B6947D9852ED478856FA4668A57F8CA26D7D4F2FE8AD25263041AC
              D022FAAFFF620940CC7F01A28A8758A9DF18F2138C5DD0DB10B1F49C5939E8A2
              95BE11A228DF4F51EEE02D92C9BE5C70CEB102C4C61688554644DF7D1F4900F1
              A5652401C4CE7D08692348B31362B50962850ED1F73EC81FEBBF08A9B119929A
              87C4390A378CB1031176FFD6283F40146BE9A710DB351428565A9D15928A43CC
              7D4E9960318D786209F1645A799D85ACD0E6AF2BB31362B511E26E1DA2EFFE2F
              07174F2C219E48611140321C47D0D00E5963C926CCBAE8EC4090753E176BEE27
              92CDDD24B3C2474553A2A91D929A47E4B5DF2B935C456E922C64CC7F0162BD19
              E22E8D0299756EB77E9DEB991F96584262E52AD2003E7EE32DCC566A21EBAD08
              F18515905921229BBB6F2699737CADE41A6205484D3604EEAB45F88553480248
              603D644A819C3D0FA9DE0CF1D126886A5E296B9E73A93CB82BA7CF62EA8E7B30
              F9880AFE061E41CE5104B21332E7D092CC3A0E6C98B19C0392CE8AC0BDD508BF
              F08A0279B508E4DC4588155A04EEAD46F4DF1F143A975EC532802BAF9EC5E4ED
              F7C0B3B3113E358BE93D3AF8D5AC02C939AF75F124C9BCE3D4A687EF7AC8E75F
              C92F7772ADDCD177DF47E4CDBF153AB79C813BF54B4CDEB91DEE1D0DF0AA1978
              6B8DF0D61A31BD4787D96B214D76C89CF0179279C73BA2B18C74C8426EAF29EE
              6422854476092453796B4E71EE5798BAEB3EB81F51C3AB66737039C82A1DFC2A
              26576ED1D40999137C2431F6F9B213817340D2B521705F4D092753882FA67280
              6B70673175E7F69270EB9DBC06522289B127AF2B4F3390E2032A849EF929E2B1
              04E2E99535C08C12A96524928BB8FCFC4B98DA723F3C3B1A3684CB8354E720E3
              D70FC8D821357743DCAD43607B0D62B317D6CABA4E8B0062F31F637A5B25A6B6
              DC0FDF5EF3A670F94EB208728E384926FBC7D705973DE72AF588FEF33F0ADC62
              BA0030BEA8408627DD703FACC2F4D60AF8EAB9F221ABF4F0ABD92005CDCE7F94
              B549CA4888447A1589F46A6ED3C417D3480388F8E630F3601DA6EFDE015F4379
              909E1A03BC75C67314E41D67CA02DC2C21D2AB5804B00820B17215B1B8F27E0E
              D27B4E71F21BE5417A6A0CF0A999BF93C43A8E6CFA30946999364B884BCF9CC4
              87A34F2305289F59178B6900118F1FEE87324E6E526E4F8D017E15FB320579E7
              D6CDE1322DD37BEF974E88D36731F9E56FE283DBBE8E4B3F3A81740652715259
              97D972BB1FACC5F4D65D1B42BA6B0DB8A0E6CD24714E9218BB54328B1B5B2056
              E7B75BA512C2B3AB11DE2A3D26BFF22D5CFAE10B39C8DC39B96E4DBA1F5163E6
              815A78554C29C8F45C3DF7798A9A0F5288757EBF68BBA5B742AC630BDBAD8D12
              42C5C053A9C1E457B7613E0B79158865CA1D4BA4B00C20168CC053A9817B6743
              6179AB9AE0A9674ECF36351385D8FD14627ABF5474A318DA21AA7944CEFC3617
              6DB1F81212AB9B24848A8167B70693B76FCB73323B360D407CE36D782AF6C2B3
              5B930F586782FB513DCED7310F5F7CCC4CB4D43B44A9832314B6F49C5CD0DB4A
              B65BA19FBC84446622A5657A5DE94A4A254416729D934BD9B12FBFA68CDDB5B7
              A0C453953A5CD4B5FC31D9758092F65EA255E730ADF68C52CA36F88580BE3D55
              7011C43920E96D4A2773E2552C01B8F28BDF61EA8E7BE0D999DF951485ACD428
              6BF2D99F6105C09533BFC6E4EDDB8AC2796B8C98DCA5C105B675CBA5AE2E9AEF
              B013055B0F5070DF010ADB0628D8D6CD078CB622F92B40D2DB1054F1081C1EC7
              D48E06CC7C5B0D5F19D99A859CB9BF1AE7BB1E8767D75E78763616DD1C338FEA
              30DF641B0AB4F6D16556A0CBAC40B4DC3FA2E8D028AD0EB828C2F59C58682A01
              69EC845C6DC27C3D8F995A8372DA97135D2A06DE2A3DA6B755C253A929EAFA4C
              A50E9E3AC39FA307FB29797498920383943C344804CB78466304EB714AB71CA5
              0583F5AD52E7A2CC08089BBB704967C17495AE7CC84DE4AED4BBE74CCD37CDD9
              ADE46FDD477E8B22C2906B4DC3637475648C96078748E6843F050C1DC5215901
              1173F70D8174EF6982A7DA301DDF3FF0C5B4EB3B941E1EA6D4D0504E8463AE35
              4DB8084F4D1026C628C8394836D84F89251E07644640E4533AE9A936C0536BF8
              834F65FADCCA13A3841F7C4FB9E13A762CA792179841C64131732F852CDD9D01
              63675AB9C0BC314E7AAA9BE0A932E05C037B744ECB914F65A4A5C347094F3D79
              1D37AC2681A22D7D14B6F591CC3AB684F8AE17B30FD585905927F51B43D618E1
              AD31C05FCFBE3EFB18BFFDBCD64CE7B51C79EB0C9F10B0B997426DBD24734E4A
              580728C4773F14641D3F9619E1CAB5576AD98D339385CC6A0D30E2A9359E9C53
              3355F3060BF99B5A68EE319EE634370270DDDF1031AE8F828CF31689B16B2446
              78566285B7645670CBAC108898BBA297B496A8BBA649F2A94C3E5F9DE91D6F9D
              F184AFCEC4FBD4A65B3D6A135D6860E9A3A6569AD5359705F8FF0100B9934224
              A87C8EDD0000000049454E44AE426082}
            Transparent = True
            TabOrder = 1
            OnClick = bt_cancelar_crediarioClick
            OnEnter = bt_cancelar_crediarioEnter
            Appearance.BorderColor = 12631218
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.Color = 14671574
            Appearance.ColorTo = 15000283
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 14144974
            Appearance.ColorMirrorTo = 15197664
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
        object ed_cred_cliente: TRzEdit
          Left = 75
          Top = 43
          Width = 230
          Height = 21
          Text = ''
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = 14511872
          FrameStyle = fsNone
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 0
          OnEnter = ed_cred_clienteEnter
          OnExit = ed_cred_clienteExit
          OnKeyPress = ed_cred_clienteKeyPress
        end
        object FlatPanel1: TFlatPanel
          Left = 26
          Top = 105
          Width = 291
          Height = 295
          ParentColor = True
          ColorHighLight = clTeal
          ColorShadow = clTeal
          TabOrder = 2
          object lb_cred_nome: TRzLabel
            Left = 80
            Top = 3
            Width = 209
            Height = 17
            AutoSize = False
            Caption = 'TALOS 1.0.0.0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_endereco: TRzLabel
            Left = 25
            Top = 24
            Width = 263
            Height = 17
            AutoSize = False
            Caption = 'Rua Conde de Linhares, 462'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_bairro: TRzLabel
            Left = 25
            Top = 40
            Width = 263
            Height = 17
            AutoSize = False
            Caption = 'Filomena '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_cidade: TRzLabel
            Left = 25
            Top = 56
            Width = 128
            Height = 17
            AutoSize = False
            Caption = 'Nova Ven'#233'cia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_cpf: TRzLabel
            Left = 25
            Top = 72
            Width = 263
            Height = 17
            AutoSize = False
            Caption = 'CPF/CNPJ: 000.000.000-00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object RzLabel6: TRzLabel
            Left = 9
            Top = 95
            Width = 112
            Height = 17
            AutoSize = False
            Caption = 'Situa'#231#227'o do Cadastro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_situacao: TRzLabel
            Left = 121
            Top = 94
            Width = 112
            Height = 17
            AutoSize = False
            Caption = '3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object RzLabel8: TRzLabel
            Left = 9
            Top = 115
            Width = 96
            Height = 17
            AutoSize = False
            Caption = 'Limite de Cr'#233'dito:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_limite: TRzLabel
            Left = 97
            Top = 115
            Width = 96
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$ 1.000,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object RzLabel13: TRzLabel
            Left = 9
            Top = 131
            Width = 96
            Height = 17
            AutoSize = False
            Caption = 'Utilizado:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_utilizado: TRzLabel
            Left = 97
            Top = 131
            Width = 96
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$ 1.000,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object RzLabel15: TRzLabel
            Left = 9
            Top = 147
            Width = 96
            Height = 17
            AutoSize = False
            Caption = 'Dispon'#237'vel:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_disponivel: TRzLabel
            Left = 97
            Top = 147
            Width = 96
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$ 1.000,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_uf: TRzLabel
            Left = 161
            Top = 56
            Width = 18
            Height = 17
            AutoSize = False
            Caption = 'ES'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_cep: TRzLabel
            Left = 185
            Top = 56
            Width = 65
            Height = 17
            AutoSize = False
            Caption = '29830-000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_codigo: TRzLabel
            Left = 8
            Top = 3
            Width = 65
            Height = 17
            AutoSize = False
            Caption = '00000001'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object lb_cred_atualizado: TRzLabel
            Left = 9
            Top = 281
            Width = 272
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Atualizado em 01/01/2009 as 18:00'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object RzMemo1: TRzMemo
            Left = 8
            Top = 163
            Width = 275
            Height = 118
            TabStop = False
            Color = clWhite
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object pn_tampa: TFlatPanel
            Left = -1
            Top = -2
            Width = 291
            Height = 298
            ParentColor = True
            Visible = False
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 0
          end
        end
        object ed_cred_prestacao: TRzSpinEdit
          Left = 210
          Top = 405
          Width = 47
          Height = 21
          AllowKeyEdit = True
          FlatButtonColor = clBlack
          Max = 100.000000000000000000
          Min = 1.000000000000000000
          Value = 1.000000000000000000
          Color = clBlack
          FlatButtons = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = 14511872
          FrameHotColor = clBlack
          FrameHotStyle = fsNone
          FrameStyle = fsNone
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 3
          OnEnter = ed_cred_prestacaoEnter
          OnExit = ed_cred_prestacaoExit
          OnKeyPress = ed_cred_prestacaoKeyPress
        end
        object pn_veiculo: TFlatPanel
          Left = 1000
          Top = 322
          Width = 318
          Height = 64
          ParentColor = True
          ColorHighLight = clBlack
          ColorShadow = clBlack
          TabOrder = 4
          object RzLabel21: TRzLabel
            Left = 9
            Top = 22
            Width = 73
            Height = 17
            AutoSize = False
            Caption = 'KM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object sh_consumid_km: TShape
            Left = 6
            Top = 37
            Width = 93
            Height = 24
            Brush.Color = clBlack
            Pen.Color = clSilver
            Shape = stRoundRect
          end
          object RzLabel22: TRzLabel
            Left = 109
            Top = 22
            Width = 73
            Height = 17
            AutoSize = False
            Caption = 'Placa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object sh_consumid_placa: TShape
            Left = 106
            Top = 37
            Width = 89
            Height = 24
            Brush.Color = clBlack
            Pen.Color = clSilver
            Shape = stRoundRect
          end
          object RzLabel16: TRzLabel
            Left = 204
            Top = 22
            Width = 78
            Height = 17
            AutoSize = False
            Caption = 'Vendedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object sh_consumid_vendedor: TShape
            Left = 202
            Top = 37
            Width = 94
            Height = 24
            Brush.Color = clBlack
            Pen.Color = clSilver
            Shape = stRoundRect
          end
          object RzLabel17: TRzLabel
            Left = 5
            Top = 7
            Width = 288
            Height = 22
            Alignment = taCenter
            AutoSize = False
            Caption = 'VE'#205'CULO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            ShadowColor = clBlack
          end
          object ed_consumid_km: TRzEdit
            Left = 7
            Top = 38
            Width = 89
            Height = 21
            Text = ''
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FocusColor = 14511872
            FrameStyle = fsNone
            FrameVisible = True
            FramingPreference = fpCustomFraming
            ParentFont = False
            TabOnEnter = True
            TabOrder = 0
          end
          object ed_consumid_placa: TRzEdit
            Left = 107
            Top = 38
            Width = 85
            Height = 21
            Text = ''
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FocusColor = 14511872
            FrameStyle = fsNone
            FrameVisible = True
            FramingPreference = fpCustomFraming
            ParentFont = False
            TabOnEnter = True
            TabOrder = 1
          end
          object ed_consumid_vendedor: TRzEdit
            Left = 203
            Top = 38
            Width = 90
            Height = 21
            Text = ''
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FocusColor = 14511872
            FrameStyle = fsNone
            FrameVisible = True
            FramingPreference = fpCustomFraming
            ParentFont = False
            TabOrder = 2
            OnKeyPress = ed_consumid_vendedorKeyPress
          end
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 339
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          Caption = 'CREDI'#193'RIO'
          Color = 6960384
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
        end
        object cbPegoPor: TRzComboBox
          Left = 73
          Top = 72
          Width = 235
          Height = 22
          Style = csOwnerDrawFixed
          Color = clWhite
          Ctl3D = False
          FlatButtons = True
          FocusColor = 14511872
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentCtl3D = False
          TabOrder = 6
        end
      end
    end
  end
  object pop_consumid: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.1.1'
    Left = 254
    Top = 176
    object MenuItem2: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = MenuItem2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = frmModulo.query
    Left = 152
    Top = 216
  end
  object query: TUniQuery
    Connection = frmModulo.conexao
    Left = 137
    Top = 152
  end
end

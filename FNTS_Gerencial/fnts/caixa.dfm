object frmcaixa: Tfrmcaixa
  Left = 369
  Top = 152
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Livro Caixa'
  ClientHeight = 627
  ClientWidth = 1015
  Color = 5460819
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = POPPRINCIPAL
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlatPanel1: TFlatPanel
    Left = -6
    Top = 47
    Width = 885
    Height = 111
    Color = clSilver
    ColorHighLight = clSilver
    ColorShadow = clSilver
    TabOrder = 0
    object Bevel3: TBevel
      Left = 288
      Top = 8
      Width = 274
      Height = 16
      Visible = False
    end
    object Bevel2: TBevel
      Left = 234
      Top = 8
      Width = 52
      Height = 16
      Visible = False
    end
    object Label8: TLabel
      Left = 8
      Top = 44
      Width = 62
      Height = 14
      Caption = 'Situa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Bevel4: TBevel
      Left = 76
      Top = 35
      Width = 180
      Height = 28
      Visible = False
    end
    object LSITOPERADOR: TLabel
      Left = 75
      Top = 38
      Width = 112
      Height = 25
      Caption = 'FECHADO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object RzPanel1: TRzPanel
      Left = 668
      Top = 2
      Width = 214
      Height = 106
      BorderOuter = fsNone
      BorderColor = 12223546
      BorderWidth = 3
      Color = clGradientInactiveCaption
      TabOrder = 0
      object Label9: TLabel
        Left = 226
        Top = 76
        Width = 107
        Height = 18
        Caption = 'Caixa Geral:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object LSITCAIXA: TLabel
        Left = 48
        Top = 52
        Width = 108
        Height = 29
        Caption = 'ABERTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Panel4: TPanel
        Left = 3
        Top = 3
        Width = 208
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Caixa Geral'
        Color = 12223546
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object RzPanel2: TRzPanel
      Left = 6
      Top = 2
      Width = 661
      Height = 106
      BorderOuter = fsNone
      BorderColor = clBlack
      BorderWidth = 3
      Color = 14678491
      TabOrder = 1
      object Panel3: TPanel
        Left = 3
        Top = 3
        Width = 655
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Operador'
        Color = 12223546
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object Panel6: TPanel
        Left = 5
        Top = 29
        Width = 651
        Height = 33
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label13: TLabel
          Left = 29
          Top = 7
          Width = 48
          Height = 18
          Caption = 'Data:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LDATACAIXA: TLabel
          Left = 83
          Top = 7
          Width = 110
          Height = 18
          Caption = '00/00/0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel7: TPanel
        Left = 5
        Top = 66
        Width = 651
        Height = 33
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Label5: TLabel
          Left = 29
          Top = 8
          Width = 82
          Height = 19
          Caption = 'Operador:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LCODOPERADOR: TLabel
          Left = 123
          Top = 8
          Width = 60
          Height = 19
          Caption = '000001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object LNOMEOPERADOR: TLabel
          Left = 207
          Top = 8
          Width = 436
          Height = 20
          AutoSize = False
          Caption = 'NOME DO OPERADOR'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
      end
    end
  end
  object PageView1: TPageView
    Left = 0
    Top = 208
    Width = 879
    Height = 404
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    BackgroundColor = clBtnFace
    BackgroundKind = bkSolid
    Color = clGray
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ParentColor = False
    ShowTabs = False
    Spacing = 0
    TabHeight = 17
    TabOrder = 1
    TabStyle = tsWhidbey
    TopIndent = 3
    OnChange = PageView1Change
    object PageSheet1: TPageSheet
      Left = 0
      Top = 0
      Width = 879
      Height = 404
      Caption = 'Rela'#231#227'o de Lan'#231'amentos'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 879
        Height = 482
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object wwDBGrid1: TwwDBGrid
          Left = 0
          Top = 0
          Width = 879
          Height = 286
          Selected.Strings = (
            'CODOPERADOR'#9'6'#9'Caixa'#9#9
            'DESCRICAO_MOVIMENTO'#9'21'#9'Movimento'#9'F'#9
            'HISTORICO'#9'63'#9'Hist'#243'rico'#9'F'#9
            'VALOR'#9'10'#9'Valor - R$'#9#9
            'ENTRADA'#9'10'#9'Entrada'#9#9
            'SAIDA'#9'11'#9'Saida'#9'F'#9)
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alTop
          DataSource = dscaixa_mov
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
          OnDrawDataCell = wwDBGrid1DrawDataCell
          PaintOptions.ActiveRecordColor = clBlack
        end
        object bcaixaaberto: TButton
          Left = 487
          Top = 128
          Width = 225
          Height = 25
          Caption = 'Tratar botoes - CAIXA ABERTO'
          TabOrder = 1
          Visible = False
          OnClick = bcaixaabertoClick
        end
        object bcaixafechado: TButton
          Left = 488
          Top = 96
          Width = 225
          Height = 25
          Caption = 'Tratar Botoes - CAIXA FECHADO'
          TabOrder = 2
          Visible = False
          OnClick = bcaixafechadoClick
        end
        object Panel5: TPanel
          Left = 0
          Top = 289
          Width = 973
          Height = 144
          BevelOuter = bvNone
          Color = 12223546
          Enabled = False
          ParentBackground = False
          TabOrder = 3
          object Bevel9: TBevel
            Left = 103
            Top = 64
            Width = 417
            Height = 23
          end
          object Bevel8: TBevel
            Left = 46
            Top = 64
            Width = 58
            Height = 23
          end
          object Label48: TLabel
            Left = 2
            Top = 66
            Width = 36
            Height = 13
            Caption = 'Conta:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 49
            Top = 66
            Width = 51
            Height = 17
            Color = clWhite
            DataField = 'CODCONTA'
            DataSource = dscaixa_mov
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object DBText2: TDBText
            Left = 107
            Top = 66
            Width = 409
            Height = 18
            Color = clWhite
            DataField = 'conta'
            DataSource = dscaixa_mov
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object Bevel10: TBevel
            Left = 526
            Top = 165
            Width = 2
            Height = 85
          end
          object Bevel13: TBevel
            Left = 552
            Top = 151
            Width = 160
            Height = 35
          end
          object Label4: TLabel
            Left = 595
            Top = 145
            Width = 85
            Height = 13
            Caption = 'Saldo do Caixa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel8: TPanel
            Left = 2
            Top = 3
            Width = 518
            Height = 53
            BevelOuter = bvNone
            Color = 12223546
            ParentBackground = False
            TabOrder = 0
            object Label10: TLabel
              Left = 297
              Top = 94
              Width = 32
              Height = 13
              Caption = 'Total:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Bevel11: TBevel
              Left = 311
              Top = 81
              Width = 79
              Height = 23
            end
            object Bevel12: TBevel
              Left = 321
              Top = 75
              Width = 78
              Height = 23
            end
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 246
              Height = 19
              BevelOuter = bvNone
              Caption = 'ENTRADA'
              Color = clGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object RENTRADA: TJvCalcEdit
              Left = -2
              Top = 22
              Width = 248
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              AutoSize = False
              BorderStyle = bsNone
              Color = clWhite
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              ShowButton = False
              TabOrder = 1
              DecimalPlacesAlwaysShown = False
            end
            object RSAIDA: TJvCalcEdit
              Left = 270
              Top = 22
              Width = 243
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              AutoSize = False
              BorderStyle = bsNone
              Color = clWhite
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              ShowButton = False
              TabOrder = 2
              DecimalPlacesAlwaysShown = False
            end
            object Panel10: TPanel
              Left = 270
              Top = 0
              Width = 243
              Height = 19
              BevelOuter = bvNone
              Caption = 'SA'#205'DA'
              Color = 9932513
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object Panel11: TPanel
            Left = 534
            Top = 3
            Width = 339
            Height = 81
            BevelOuter = bvNone
            Color = 10933723
            ParentBackground = False
            TabOrder = 1
            object AdvReflectionImage1: TAdvReflectionImage
              Left = 40
              Top = 30
              Width = 57
              Height = 41
              AutoSize = False
              Picture.Data = {
                89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
                6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
                7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
                1F90000008724944415478DAC4D9DB7313D71D07F0DF4C269D49673AD349FA07
                347D6BFA929776A67DC824D399A643C0E152533B34144A42C026B8A48158C650
                68EA1BB6A5BDE982EE360E58DA5D49088CF15596718040A04DC0B2916C631B63
                5BBB928C0571621CF7DB07D5062339711C531EBE23CD4AABF9ECEF9CB3E7EC11
                0502A087133C076A6F9D258953C96B9C20AF254E3217A3D3967BE46113E4334E
                90C4A924B1CACF4556C91739C52EF16A9BC82AC322AB244556498A8C322A0B6A
                A7C8297522ABBC2F73CA8B12A7922CA8E4616274D27487FCA624798418798C31
                1219855A1A6728D8B5D012088068A9C006DB17E4E512CFCA7C4C23716A8FC82A
                988B9B79F07EFE982E0AF1A1E312A70E489C52E261623FF51F9DA45347EFAE00
                D034413E6B9C6436F6B4D730512EB1CA1D37134DC32C356E4681C82833B21033
                9D344C3EE735C4BF1FD0679C20AF25B1C6AD8DF6B9755188ECF2710BA151B875
                D184AC57B7788CF16F0106B1209DE7411D1D20591F2349A71E9EFBC19580A521
                5317AC173985DA5A66A9F302D23C1468C3820483A0B6E6599278B5CE553DBEA0
                1F3D8EB87551B899684BCB99190A7622CD43011B52B182CE3940CDB66972B1E3
                1F3D4E54A6D4B363C1B3B62FA9CB99B2CCB9A8A301D4D1000A9E057536807CFC
                C4E1134746F1FF069EA81A8587491C0FFA41C126CCBBC8EF4C92DF3149A7EBEE
                D2C963932FBB98C7DFAC19C32870E9C6E0754E6C395D7797FC8E49F23B93444D
                8E696A39364D678C534FD5978FA96E260A917B02405681C846515F3E8A06C317
                CFB51C9BA626C73451ABEB6B0A7866C96F9B2CAFAF1E7D42B087FA62F5187CD6
                3BF5ED9EAFA9D5F535D12926497E5DF21951ABCCB8B9E813078A9C0297761C3E
                ED9D5F9C6293440DA6BBE415121A1733FEE471F3F7C8717884B8B1C1748FC8A3
                8F93C4A9B7325FCD38A4AA7B902BEE433AF2D5CAA6621A52E597105935E30C25
                B1EAA447883F4DB210FBD9E2232B06B771002E4B082EF38D958DA517AEA361C8
                820A898DA557918D42E6635924716AC16238A9621AB5C14A580736C07EFD9DCC
                B9967A7574EF404D4F1E6A7AF2E1E8DEB9E0B34C7144DE84E552016A2A06E165
                A620716AA62A5A48E6627519E75A2606A9E23E6ABACA60195A0D5BCFD6F484B6
                C0DEB31535E1B7610B6D85B9FB0D5842B9B08652C7ECBD7F812DB425E3B9F69B
                1B61BD9A075DE175380FC570D29878041985C4A91D240BB1606AA5B25805AB60
                EDFF03ECD776A4C5717D276A7B76417F690B741FAF47D5B92C547FBC06FCE5B5
                E02FBC0967773E1CD7F3329F1BD90CDBA77BC01787A02B1884B3746421925120
                F16A98445619F9E6265E1C5813DA05FDA5CD286B5D0DFD67AF61DBE13FE3D5EC
                1D38E45D8FCACE55E02F6E424D68D7370285033DE0DE1B866E6F2F9CA5B7E033
                2CA8648C4456995A0ED0D99D0FDBE7DB7124B016C2D5D5C8ABDA8C5737EEC01F
                776FC31EE326F057B250DE9605F3BFB665443E0CE4DFBF055E13FE1F72043E43
                7C0E796FD9C0B9EA95B765C1D49D859C826DF8F5CBEFA2E44C368CD75E4775E7
                7A94B5AC0177E18D250185A2C83CB2A66CBE92F7486494B1E502F98B9B50D6BA
                06DAAE75D09D5F87EDA59BF1D2EFF2B1BD7433F84FD7A2A27D0DD8F3B9A809E5
                2F09F830D2597A0B270D8904C9FAD8C7CB192435A15D305DD98AF2B62C68BBD6
                E11FFE6C5476ACC7861D6FE1E5D7F2C15D5E8B8AC06A089FFC69C9154C43968F
                F493CCC7EA17BFCD2C0E745CDF09C7F59DA80A6E007B7915F69836E137AFBC8B
                DFBE9E87FDC773A0BBB81A951DEB60FBFC1D38BBF3BE1350288A802B0C832F0A
                7791C82A1F7C9F516CF9F7DBA8685F07E6D22A141872B09BCF85E1DAEF51DEF6
                3A8E5EDD86DA9E6F1FC599808226027D715F2DC942FC85E502E790B6CF77803D
                FF06F457D7437F753D98AE5C583FDBBEE82D6629405E1386A9F8662EC97C8C44
                4E89650496CDA0F6F241D8132FC1399C9D9EA16C3886B2513B928363B773E11C
                DE08E770368E8DE4A27624078EA1D477329D5BA3AE82FDC616080742E0FF3692
                5EC1A2C8FDA3076FFE904E1B93E411129569CB2D4685473B0587781C86A603B0
                346A613953FD8DB1366A616DD4C2D258FDEDDF6D2D85D9CF4328EE05BF6F30AD
                7AFAC2F0714B7184C8A79D204FD5C44FDCDAF4A5BEAC57E02ABB0761771CDABC
                31F005CACA65B70ABE200AA1A80FC2FEF03C4EBF3F0276EF0DE80F0EFECA5432
                4474B66E9A5AEAA7C96B4E58EAABC7D2963C3E7D02121B83A0E907B3370C41D3
                BF82E94B6B5AE6BD1E58CB6E357BA529925C5344AD27662920CED259EB573F72
                1D199F7EF496E3661478F5A9A947BF3F02665F6FA6FEB222E1351168FF1A828D
                1D7CDE75E2367DE41821F2EA13E4151274D27C8764733CA79E19CBF8D8F900D9
                07DDDE5EE8F7AF3C90D97703B5FF1CD5C8550A1D2F19A5E3A5A344ADFE196AF5
                CF505BC30CB5FB67C9CB27CCF555631957D88F13C9BCD70BBE381CF07B92D4DC
                304567BCA950D08EF97439414DE6AFE844F568EB62DB673E431C22FB00B92240
                4D04EC9E708F851978CA79A29FAC8E3EB23A53A14013E6D3D10CEA68FB0F359F
                B94F12AFB6BBAAC71745CE55F2FBF64976DF0DF085E16EBFF8C58FDB03F7A9B9
                799A9A9A1E8402E7F0209DA0CE8BA060676AFB4DD42A75EE0C4F5C2B327034A9
                F956280A371A8AFB7ED0DA324B9F5C01757682CE9D7B90C5373079957C8609F2
                9AE36FB9B5D1FB99563CCBED93DC0761701F84613E3458682B1D24C3FE08359E
                9AA6AE0BDF7587D534413E6B826436F6BCD790B067DACCFC2E485E13065F1881
                F1EF035E5349FF8BF69261B2970E91BE28BC4CA07182BCE638C97C6A13DDC326
                7E29F32A2771EAF8A3CD3D3770987D29245F184E8134F3B34452AF095B4C8706
                5F716847C9523940D60F87C85632B802C047FF86E0D56724565923B18A20724A
                ABC82A3D3E435C1159256928EE4B7285E198E1407FD850DC173416F7998D0707
                724C07069E351545C8FCE130D9AB6F93B9BC7F49C0FF0E00CCE2D35F93C0EA45
                0000000049454E44AE426082}
              Version = '1.5.0.2'
            end
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 339
              Height = 22
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Saldo do Caixa'
              Color = 4227327
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object RSALDO: TJvCalcEdit
              Left = 26
              Top = 29
              Width = 284
              Height = 47
              Margins.Left = 2
              Margins.Top = 0
              AutoSize = False
              BorderStyle = bsNone
              Color = clWhite
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -27
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              ShowButton = False
              TabOrder = 1
              DecimalPlacesAlwaysShown = False
            end
          end
        end
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 0
      Width = 879
      Height = 404
      Caption = 'Resumo do Caixa'
      Color = 4737096
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      ParentColor = False
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      ExplicitLeft = -6
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 179
        Height = 297
        Caption = 'Vendas'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label15: TLabel
          Left = 27
          Top = 22
          Width = 43
          Height = 13
          Caption = 'Dinheiro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 27
          Top = 46
          Width = 76
          Height = 13
          Caption = 'Cheque '#224' Vista:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 27
          Top = 70
          Width = 80
          Height = 13
          Caption = 'Cheque '#224' Prazo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 27
          Top = 94
          Width = 47
          Height = 13
          Caption = 'Credi'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 27
          Top = 118
          Width = 75
          Height = 13
          Caption = 'Cart'#227'o Cr'#233'dito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 27
          Top = 142
          Width = 71
          Height = 13
          Caption = 'Cart'#227'o D'#233'bito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 27
          Top = 166
          Width = 49
          Height = 13
          Caption = 'Conv'#234'nio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 30
          Top = 244
          Width = 56
          Height = 23
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Bevel6: TBevel
          Left = 5
          Top = 219
          Width = 169
          Height = 2
        end
        object Label22: TLabel
          Left = 27
          Top = 190
          Width = 53
          Height = 13
          Caption = 'Financeira:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object AdvShapeButton1: TAdvShapeButton
          Left = 1
          Top = 18
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC5460000048A4944415478DA004D00B2
            FF01CFEAD600A3BFA200EFEEF8002E1E2A00EDF6E300DDDFEB002B193C00D6E6
            C100151315002A2F2400C6C3CA3DB6D4B5335B3C5CC4D7DECBCC372C4400D1D8
            D4006F5F7000D7E8D40021152500028885010B6064646460616102E27F4A6F3E
            3EB1DF7AEC7292B086B460805990F6D3A70FDF72F1733E7AFDF1F5C2BFBFFF6D
            E560E3B8CBC2CCFC1FA40F2080500C6365616560626464FBFAF98BDDC9B3AF13
            FEFDB6F7F8C17B5958C99E81E115E70986974C6F1998E4388579C52584AFBE39
            6628C624DF3A7DFD84CB62E212CB14C5D426030410D05066A001CC0C3FFFFC94
            BE7EFF7A389F3853848AAEA8C9DD6BAF19BEFF916614168966F870E62D030BDB
            0D0666DE9D0C9F78AF33BCE57DCC20C72BC16023ABCF2D26AC68B16ECB763E16
            03B6290001004D00B2FF04E9EFE823FBFEF88C191A0D45292B0B0BEC18E100FA
            01F7002039EE00EFE1CF00EFDA0F0006022B0010043B0024164200FDF1DF0003
            E3E1005C4D4200171B100004FF0A00B607B9FB0CED08FF02004D00B2FF04D4DB
            D444E5F6E350915E8A00EA00DC00CFF0F900D7FDD500F405FD00FF1FF2001212
            E30009F5E80020F5FF0005E82F00111D3500F7E613001405150011001100C1CE
            CA00FCF80003F508F50002004D00B2FF03E715EA32FB07F94DF0ECED0013FF2C
            0035163F00280A2600FBFAF20009FA0B0047106600551D6F0048224A0005030C
            00B4D2ED00FDFE0500F407CF008CC28400C4E2C300EDF7EB15140A1AC6028845
            5896E3CDC76FAF196E3CB8C6C0CDCDC7F09BD990C148DC882145D09A81519081
            8185991D1E417F7EFC667870E93AC349C6830C677FDF66B0D0B56008540B6038
            76F338E3F5FB77F5000288458C5B7EFDCFDF4C47BE0BFCB43977E934C3E73FDF
            19C439F8190478F51838A0067DF8FE9661CBB5A50C8BD6EE6010110A66B0560E
            63D017FEC7E063E900967FCCF290E1D68F67EC0001004D00B2FF03EC0BEE0007
            01086E5E425D1835253500D6ECDB00CAD1C6000C090A000106FF00A4C8A00096
            C7980001070300643B6B0010042000ED0915001F0F0E001F1E0800BFD8BF00BB
            C4C2F326192FB202004D00B2FF0109580D000C0C09CF493B4130341A3E003923
            3800F3FCF000C0DDBE00E8F2E5002F1E2E004E3052001C0A1F00FDFFFD009BB3
            D600C5E3FD001507C4001009F5F4FCFA049E32293B93161120DC02882533209D
            E1CBCFAF3BCE3FBEA4CDF8FF042B3B1F0B83B1841943967D1E83302730EA99D8
            1818FE41C2ECDD8F6F0C172E9F6178FEF4FD4B1543AE05064AE693C584659FFE
            F8FD87E1F79F9F0C0001C478E6E71586272F9E305C38715DFFDEBB7BCD7F189F
            FB781A79335AAADA3328F2293030313132BCFAF68661D3E5350CC74F5EB9A52C
            6272D756DAA4849B5FF0DA0FF60F0C7F8016FDFE0BCA7EDC0C0001C478E8C349
            8647CF1F317C79FC9B41595E89A1657DB5173F8F689389B8B6B1ADB125C3E907
            57186E5D78B4475E407189A3AECD160121FEB7CCC01CF3FED56F86BF3CDF808E
            66821B061040F0BCF907181EDF7F7D67606563DDE6A0EBB1F7E19DCB811B776D
            D795E7D77E1E6E163FE7EFCF3F3F783884806ABE3170B270602B1F1800020C00
            1CFD9FF5CFFB79FB0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 9
          Version = '6.1.0.3'
        end
        object AdvShapeButton2: TAdvShapeButton
          Left = 1
          Top = 42
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 10
          Version = '6.1.0.3'
        end
        object AdvShapeButton3: TAdvShapeButton
          Left = 1
          Top = 66
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 11
          Version = '6.1.0.3'
        end
        object AdvShapeButton4: TAdvShapeButton
          Left = 1
          Top = 90
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
            CC000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004EE4944415478DA627C71E9
            0DC3BF1F1F183EBC7AC1F0F1EF5F061E313E8657072EABF17D3CD7FAFACC69F9
            2FE97591FF45C4EF32FCFECDC0C0F09FE13F0B2B03CBA2A50C3A71D10C3FB9B9
            1918807A6000208098600C46264686BFFF1918DE5FBC98A5A52EB0DDC448D64F
            E4C35BD3DF376F9B0AFFF9CB20F8FD3B83E0AFDF0CEC8F1E30FC7BF39A819185
            99011D000410D83046464686FF4CCC0C5F6FDD8F5714976897305453FA78FB35
            DBC3C7AF18185FBF90E263F9C7A0A228CEA0242FC2C0CDF68FE1EFB7AF204D18
            860104101313D090FFCCCC4C6F2E9E2DD6E0FF3E4546839FEFD3F98B0CA78E5D
            64D0F0B567103E77AAFCC5E933C1CC5C9C0C2C9C9C4017B180BCC1800D000410
            D0CEFF0C778F9F48E07B73A7554E4192FDCB96550C97375F6290F67466D072D6
            6050D97546ECE0B64D73AFB0FC661052565EFB1BE855266666062690A1680020
            80983D8D0DF438F72F996BCCF24CF0C3E57B0C97779E6450D452669073B467F8
            C62EC0C0252EC520C5F68FE3D186B54E4F19D9AEB1C9283CFA74F4B4A3B099F1
            2F167E814F0CFFFF313001C31B14E60001C4C2CECCA6C278EA9CD4933FCF19AE
            7E6360D0D656629012E760F87BEB38C37F656586AF12EA0CDCB6060C767F1944
            F61C383997FFF3BB9BAA8A6C76D7A7361FE70BCE8E60E1E27EC4F00F12A30001
            004D00B2FF037D7C85DECBD4D9FBE31F34E3F6131EF518E7D61D1205FB00FE09
            F70004FB010001FE0500FE0F1600001F21002406F40C19FBE01F180D0200F4BD
            BE1DE30D21D7030C0FCEFAF1F100FBF4F500028805188F3F19C5249A24031219
            58BEFC16BCB89461F1DF0B07BD5558FE00F91C0C0CBF99197EFC676360529466
            F825CCCEC0F1998FE1DB37668677C20ADF7875F5AF73282833FCFFF513EC3280
            0062F9FFFF3F032330E1FDFBF28981E51FEB7BC9A8F4D82BAB1897309CDAE2A5
            620E0A0F5606563616865F374F32FC79F38181C5CB8EE1E2B2C37F1F5B06F58B
            5A381EFDC8C60E4FB8000184886360BA01C52CCBFFBFEFA513D2A2AF9B44AC7A
            72F1D9BF7F2F2E317C3CB88FE1ED85330C0296BA0C77AE3C6338F8E8FD4B61BF
            904E0666E6FFFF8029FD1F30B183304000810DFB0F4C7F4CCC4C0CFF8059EAFB
            FDE70C7F1EBCFBC0A1EB587AE42DF7F70B07EF307CBC738D414A9287E1E1B113
            0C670F9C63F8A4A7C77EF7D96DA95F2FEE31707C7DCDC0FE0582010288859915
            E80D062686B787F632B0BCFDC000F236301131FCFBFEC55FF0EB476E01C13F0C
            B2BCFF186E9F79C4B09D559CE1A78D3583B5B383F08E03C7BB84D8D9134539D8
            DEFDFA03CCB7407D0001C4EC6969CBF01BC8F8FEE30BC31F012E86DF7C1C0CBF
            0538197E70326B883C3A1BA8F4E717C3895F1CBF6E9886CE9188AF697ECBCC7C
            E4F9C38B32EA2AAAF68F9FBC62131016DF05CA8E40AF310004100B2FB7088380
            893403385B012138F840909171C96B7149C98D572EAA719A386C12D0D7DBCACB
            26F647E4EF7B86BB77AF1E7BC6F06406C33FE6C2E3A70E1DD3D7D15DC3C32BCC
            0010402C5ABA5698990C68262B0BF33F3E31B9CEEF36BE0CFF7E7E6360FCF999
            E12FE32F863FBF7F31F0F1705F109552087AF0F445C79307573AA5C5445F098B
            481F02082016902456F09F99E1EF7760E9F0F513032485FF874BFD0526053E7E
            E1673A4252E9F76E5DAF3B76FC44F96F06E6C70001C4C24026F807B4E02FC39F
            EF62625255FF99D933CE5D38990B10404C0C1482DFBF7FFD9791959D6E6BE3B0
            0420C000CEA1E03031F1160F0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 12
          Version = '6.1.0.3'
        end
        object AdvShapeButton5: TAdvShapeButton
          Left = 1
          Top = 114
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 13
          Version = '6.1.0.3'
        end
        object AdvShapeButton6: TAdvShapeButton
          Left = 1
          Top = 138
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 14
          Version = '6.1.0.3'
        end
        object AdvShapeButton7: TAdvShapeButton
          Left = 1
          Top = 162
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000013000000100806000000F4C444
            62000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004D34944415478DA004D00B2
            FF01CBEBD700C4D1C100A4C3A000744C7900B6D0B000F9BED80032274900DAD9
            D600D3D3CB0038392C00F1F0F6003C3D4700F8F0D800C9C8E00018366B004A4B
            2B00C8BDD36B0E04FEF82D28239D028889814CC0CAC4C4B4EFD0E9F2870C0253
            1E7F603279F0FC3D034000313132323230333303A5FFA32806893332310BFCFA
            F5D7FCE7AF5F2A5FBE7E55FFF3EF9FC07F0646A0D2FFD22FDE7F9FCCA460DB21
            E068CFF0EAFF47750B5B15068000004D00B2FF04F7F8F817E9EAEB11020005ED
            09050CEC060406FFFA020200F1F4F556EAE3D48A43371D1F3E463EF723253007
            EAE3E7D1D4D2D2BA150D0339EA140A37F71F1D00DBF70000FBF40328EAEAEA06
            02004D00B2FF04AECCA958ABD29590231F20F0A9D292CAD3E3DCDD1EE8F916EC
            F0BC517C6834022F373500071A2F0900030F000023103141350B31F7EBE8006C
            A2C500C7E54600ED02070017050F07DEDDEB1302004D00B2FF03C80DC7392F39
            194810160308F202E923EBE7EC3548FF162A5341170138432800E7DCF700C7B9
            BA0003F9F40011130800FFF7E700060DFB00F7E4EE00AEE32A00E10A110004E2
            E5013510FDA802004D00B2FF0400FE0400F2EFF60003FFFA00FFFEFF0008FEF8
            00140BFC002F332E00D8C6D400BFC1DD0021211600C4B7D700D7D017003A4038
            00100EF8004331F9000D9FCA00FC131E00E7F90D080404F12B02004D00B2FF04
            01010400F9F8FC00F6F50000FCFB020003FDFE0019120C00B5B6CB00F3EEE800
            4049320029211D00F6EFF700CAC8D200AD9EAB002C331F0034261200330AC700
            D4E43200F4FAF600EFEFF51D0288E53FC33F861F40C398FE32327CFDCDC820FF
            9B9BC14C5381E1EBBFCF0C8246C60C12AA520C7F7F71805DAEAFA5C1C0C5F688
            E1D8AEAB0C8F2E7232B07D9360E079FF9AE1CBDFCF0CBFFFFC620508004D00B2
            FF020303FF00F3F3FC00FAEFFC00E9F7F50024FB0900070C0400211A12001516
            0E00F9FA0A00FBFAF500FCFAF900D3D3E200C1CADA0018180C00C6D3E3001B24
            41F41DF1CE003101D5EA232817AF02081866FF18BE7FFFC30032F407D0B9129C
            A20CDC7FFF33FCFC02F4FAEF5F0C82DC1C0C9FBFFF60F8F0F6138308F35B86EF
            DF3E31CCDAFB98818145F16391B1A3C9B75F17135C1DDC374B29C85F0108004D
            00B2FF0405020500F8F9F600F9FDF70004FA0200F7FB0800BDD4EB00F7FDF900
            FE02040012DEF4002C180A00F4EFFA009FBFE300141409001C0EF200122640A9
            262225DCEBEFF37C18181700FAFAFB000288E9C7CFEF0CFF802EF90B4CF5DC7F
            65BE7333293D79F7FF3FC3A73FCC0CFC02BC0CFF80161D38FA80E1DEABBB0CAA
            4A5C0C47CEBD6478FA4EFCBD89ADE3B9BFAC7F187805F818FEFCF903CC310C0C
            0001C414AC1173539455FC1FC3A7FF0CDEE6819B350D2D0C7F70DBF83FFFC67F
            FEC9E3FB0C265A7C0C9F81396DEFE90F0C9BF6DF67E010146608CD282F3270F4
            9EF98595934141531D1852FFC05910208018B75C38C270E8C66E6BD67FAC167A
            2A76ABBF5EDCFF888F4B0B18298FA419BE3DEEFAF0F06494AB8D2CC3DC15A718
            EE7E54B814105B52696862B4FD2F0B3059B272015DFE8B81F5EB5706664E4E06
            800062F90A4CD97CDC7C474D14CC8FFEFEC7C1F0E9DF1F607AFBC9C0C1CEFE54
            D73236E6F239FDD9476E5E8B93D1D57F15E4E2339D575CFEE1AF1FDF18988009
            1C94E7910140800100EC79ECDCFED49CA00000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 15
          Version = '6.1.0.3'
        end
        object AdvShapeButton24: TAdvShapeButton
          Left = 1
          Top = 186
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 16
          Version = '6.1.0.3'
        end
        object rvenda_dinheiro: TJvCalcEdit
          Left = 108
          Top = 18
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object rvenda_chequeav: TJvCalcEdit
          Left = 108
          Top = 42
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object rvenda_chequeap: TJvCalcEdit
          Left = 108
          Top = 66
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object rvenda_crediario: TJvCalcEdit
          Left = 108
          Top = 90
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object rvenda_cartaocred: TJvCalcEdit
          Left = 108
          Top = 114
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object rvenda_cartaodeb: TJvCalcEdit
          Left = 108
          Top = 138
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object rvenda_convenio: TJvCalcEdit
          Left = 108
          Top = 162
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
        end
        object rvenda_total: TJvCalcEdit
          Left = 108
          Top = 245
          Width = 65
          Height = 22
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 7
          DecimalPlacesAlwaysShown = False
        end
        object rvenda_financeira: TJvCalcEdit
          Left = 108
          Top = 186
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 8
          DecimalPlacesAlwaysShown = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 376
        Top = 8
        Width = 179
        Height = 297
        Caption = 'Recebimentos'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label27: TLabel
          Left = 27
          Top = 22
          Width = 43
          Height = 13
          Caption = 'Dinheiro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 27
          Top = 46
          Width = 76
          Height = 13
          Caption = 'Cheque '#224' Vista:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 27
          Top = 70
          Width = 80
          Height = 13
          Caption = 'Cheque '#224' Prazo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 27
          Top = 94
          Width = 37
          Height = 13
          Caption = 'Cart'#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 27
          Top = 118
          Width = 80
          Height = 13
          Caption = 'Boleto/Dep'#243'sito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 27
          Top = 151
          Width = 56
          Height = 23
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Bevel16: TBevel
          Left = 5
          Top = 139
          Width = 196
          Height = 2
        end
        object Bevel17: TBevel
          Left = 4
          Top = 184
          Width = 196
          Height = 2
        end
        object Label39: TLabel
          Left = 27
          Top = 206
          Width = 30
          Height = 13
          Caption = 'Juros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 27
          Top = 230
          Width = 54
          Height = 13
          Caption = 'Descontos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object AdvShapeButton8: TAdvShapeButton
          Left = 1
          Top = 18
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC5460000048A4944415478DA004D00B2
            FF01CFEAD600A3BFA200EFEEF8002E1E2A00EDF6E300DDDFEB002B193C00D6E6
            C100151315002A2F2400C6C3CA3DB6D4B5335B3C5CC4D7DECBCC372C4400D1D8
            D4006F5F7000D7E8D40021152500028885010B6064646460616102E27F4A6F3E
            3EB1DF7AEC7292B086B460805990F6D3A70FDF72F1733E7AFDF1F5C2BFBFFF6D
            E560E3B8CBC2CCFC1FA40F2080500C6365616560626464FBFAF98BDDC9B3AF13
            FEFDB6F7F8C17B5958C99E81E115E70986974C6F1998E4388579C52584AFBE39
            6628C624DF3A7DFD84CB62E212CB14C5D426030410D05066A001CC0C3FFFFC94
            BE7EFF7A389F3853848AAEA8C9DD6BAF19BEFF916614168966F870E62D030BDB
            0D0666DE9D0C9F78AF33BCE57DCC20C72BC16023ABCF2D26AC68B16ECB763E16
            03B6290001004D00B2FF04E9EFE823FBFEF88C191A0D45292B0B0BEC18E100FA
            01F7002039EE00EFE1CF00EFDA0F0006022B0010043B0024164200FDF1DF0003
            E3E1005C4D4200171B100004FF0A00B607B9FB0CED08FF02004D00B2FF04D4DB
            D444E5F6E350915E8A00EA00DC00CFF0F900D7FDD500F405FD00FF1FF2001212
            E30009F5E80020F5FF0005E82F00111D3500F7E613001405150011001100C1CE
            CA00FCF80003F508F50002004D00B2FF03E715EA32FB07F94DF0ECED0013FF2C
            0035163F00280A2600FBFAF20009FA0B0047106600551D6F0048224A0005030C
            00B4D2ED00FDFE0500F407CF008CC28400C4E2C300EDF7EB15140A1AC6028845
            5896E3CDC76FAF196E3CB8C6C0CDCDC7F09BD990C148DC882145D09A81519081
            8185991D1E417F7EFC667870E93AC349C6830C677FDF66B0D0B56008540B6038
            76F338E3F5FB77F5000288458C5B7EFDCFDF4C47BE0BFCB43977E934C3E73FDF
            19C439F8190478F51838A0067DF8FE9661CBB5A50C8BD6EE6010110A66B0560E
            63D017FEC7E063E900967FCCF290E1D68F67EC0001004D00B2FF03EC0BEE0007
            01086E5E425D1835253500D6ECDB00CAD1C6000C090A000106FF00A4C8A00096
            C7980001070300643B6B0010042000ED0915001F0F0E001F1E0800BFD8BF00BB
            C4C2F326192FB202004D00B2FF0109580D000C0C09CF493B4130341A3E003923
            3800F3FCF000C0DDBE00E8F2E5002F1E2E004E3052001C0A1F00FDFFFD009BB3
            D600C5E3FD001507C4001009F5F4FCFA049E32293B93161120DC02882533209D
            E1CBCFAF3BCE3FBEA4CDF8FF042B3B1F0B83B1841943967D1E83302730EA99D8
            1818FE41C2ECDD8F6F0C172E9F6178FEF4FD4B1543AE05064AE693C584659FFE
            F8FD87E1F79F9F0C0001C478E6E71586272F9E305C38715DFFDEBB7BCD7F189F
            FB781A79335AAADA3328F2293030313132BCFAF68661D3E5350CC74F5EB9A52C
            6272D756DAA4849B5FF0DA0FF60F0C7F8016FDFE0BCA7EDC0C0001C478E8C349
            8647CF1F317C79FC9B41595E89A1657DB5173F8F689389B8B6B1ADB125C3E907
            57186E5D78B4475E407189A3AECD160121FEB7CCC01CF3FED56F86BF3CDF808E
            66821B061040F0BCF907181EDF7F7D67606563DDE6A0EBB1F7E19DCB811B776D
            D795E7D77E1E6E163FE7EFCF3F3F783884806ABE3170B270602B1F1800020C00
            1CFD9FF5CFFB79FB0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 8
          Version = '6.1.0.3'
        end
        object AdvShapeButton9: TAdvShapeButton
          Left = 1
          Top = 42
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 9
          Version = '6.1.0.3'
        end
        object AdvShapeButton10: TAdvShapeButton
          Left = 1
          Top = 66
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 10
          Version = '6.1.0.3'
        end
        object AdvShapeButton12: TAdvShapeButton
          Left = 1
          Top = 90
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 11
          Version = '6.1.0.3'
        end
        object AdvShapeButton14: TAdvShapeButton
          Left = 1
          Top = 114
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000023149444154388D8593CD4B945114C67F77DE77669A699C1C6DD2B111
            9D489292843692106D22AA450B350C2A025BB869D126EABF2884D68A0C989BB6
            4141F461B8485C0CA40B03C1B172EC436DE69D6966EE7B4F8BF16BF2EB81C33D
            70EF79CE7D9E7BAE621DC3C3C994D7EB6D161140101144585F2B512814FE0402
            81DE81813B531B756A234926C757FA6EF4D46A57D81502CFC7C6D0BABCA294BA
            3C38786F0AC0B3B92F8276855279F7F85B72510ABACF77454A4EEEF5D3ABD71E
            5CAFAFB7ECAA1607C0B26C3EBE79CBE9572F6B4FD8F693D678FCDC264145FBDE
            504AD17DE1226BD353E4F279BEB92ECAE3B9B24DC2FEDD8BCE0ABA98C78DC770
            6FDF65B1AC657675B5A7CA83BD50CA66087FEE85E5117EFEFA4DA131C6525FFF
            DAE3F9F98903094AD90CA1999B38B240DD97119A0BEF683BD58EF17A4B00FB7A
            5029EEC7913492D6F8558470E212B58D4D9BE7B711986ACD7F32D4CCF6E3C822
            9276F1A9082B6787A0B10BED1A8C31FF136CDD40EB32C1D42D1CDF5764C1C592
            080BED43D8E10EB29965B23E2197CB599D9D9D353B088C117E2C7E229A68C59F
            FA4E5E0799083DA4BCA4C9CD7DC0B27D34374531C62022A68A4004B46BD0D949
            CAE100338533BC9F3B8AE34F531BC9133BDEC2B186382D8918D353936E2A9572
            36098C115C23384E81F117B3F842718C7592BA44948E9636A20D3102C1109665
            73387408A5D44E136D4B71241CE4FEA367B8462AD3AD3C28A5AA063DE8B776BE
            42B1585C4A8E8EFAD6B5ED88CA17DFF24A6B9D01F80710133F0B484C1B3A0000
            000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 12
          Version = '6.1.0.3'
        end
        object rrec_dinheiro: TJvCalcEdit
          Left = 108
          Top = 18
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object rrec_chequeav: TJvCalcEdit
          Left = 108
          Top = 42
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object rrec_chequeap: TJvCalcEdit
          Left = 108
          Top = 66
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object rrec_cartao: TJvCalcEdit
          Left = 108
          Top = 90
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object rrec_boleto: TJvCalcEdit
          Left = 108
          Top = 114
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object rrec_total: TJvCalcEdit
          Left = 108
          Top = 151
          Width = 65
          Height = 22
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object rrec_juros: TJvCalcEdit
          Left = 108
          Top = 202
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          NumGlyphs = 2
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
        end
        object rrec_desconto: TJvCalcEdit
          Left = 108
          Top = 226
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 7
          DecimalPlacesAlwaysShown = False
        end
      end
      object GroupBox3: TGroupBox
        Left = 568
        Top = 8
        Width = 201
        Height = 137
        Caption = 'Pagamentos'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label44: TLabel
          Left = 27
          Top = 22
          Width = 55
          Height = 13
          Caption = 'Com Caixa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 27
          Top = 46
          Width = 57
          Height = 13
          Caption = 'Com Banco:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 27
          Top = 70
          Width = 88
          Height = 13
          Caption = 'Cheque Terceiros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 56
          Top = 106
          Width = 56
          Height = 23
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel18: TBevel
          Left = 5
          Top = 99
          Width = 185
          Height = 2
        end
        object AdvShapeButton11: TAdvShapeButton
          Left = 1
          Top = 18
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC5460000048A4944415478DA004D00B2
            FF01CFEAD600A3BFA200EFEEF8002E1E2A00EDF6E300DDDFEB002B193C00D6E6
            C100151315002A2F2400C6C3CA3DB6D4B5335B3C5CC4D7DECBCC372C4400D1D8
            D4006F5F7000D7E8D40021152500028885010B6064646460616102E27F4A6F3E
            3EB1DF7AEC7292B086B460805990F6D3A70FDF72F1733E7AFDF1F5C2BFBFFF6D
            E560E3B8CBC2CCFC1FA40F2080500C6365616560626464FBFAF98BDDC9B3AF13
            FEFDB6F7F8C17B5958C99E81E115E70986974C6F1998E4388579C52584AFBE39
            6628C624DF3A7DFD84CB62E212CB14C5D426030410D05066A001CC0C3FFFFC94
            BE7EFF7A389F3853848AAEA8C9DD6BAF19BEFF916614168966F870E62D030BDB
            0D0666DE9D0C9F78AF33BCE57DCC20C72BC16023ABCF2D26AC68B16ECB763E16
            03B6290001004D00B2FF04E9EFE823FBFEF88C191A0D45292B0B0BEC18E100FA
            01F7002039EE00EFE1CF00EFDA0F0006022B0010043B0024164200FDF1DF0003
            E3E1005C4D4200171B100004FF0A00B607B9FB0CED08FF02004D00B2FF04D4DB
            D444E5F6E350915E8A00EA00DC00CFF0F900D7FDD500F405FD00FF1FF2001212
            E30009F5E80020F5FF0005E82F00111D3500F7E613001405150011001100C1CE
            CA00FCF80003F508F50002004D00B2FF03E715EA32FB07F94DF0ECED0013FF2C
            0035163F00280A2600FBFAF20009FA0B0047106600551D6F0048224A0005030C
            00B4D2ED00FDFE0500F407CF008CC28400C4E2C300EDF7EB15140A1AC6028845
            5896E3CDC76FAF196E3CB8C6C0CDCDC7F09BD990C148DC882145D09A81519081
            8185991D1E417F7EFC667870E93AC349C6830C677FDF66B0D0B56008540B6038
            76F338E3F5FB77F5000288458C5B7EFDCFDF4C47BE0BFCB43977E934C3E73FDF
            19C439F8190478F51838A0067DF8FE9661CBB5A50C8BD6EE6010110A66B0560E
            63D017FEC7E063E900967FCCF290E1D68F67EC0001004D00B2FF03EC0BEE0007
            01086E5E425D1835253500D6ECDB00CAD1C6000C090A000106FF00A4C8A00096
            C7980001070300643B6B0010042000ED0915001F0F0E001F1E0800BFD8BF00BB
            C4C2F326192FB202004D00B2FF0109580D000C0C09CF493B4130341A3E003923
            3800F3FCF000C0DDBE00E8F2E5002F1E2E004E3052001C0A1F00FDFFFD009BB3
            D600C5E3FD001507C4001009F5F4FCFA049E32293B93161120DC02882533209D
            E1CBCFAF3BCE3FBEA4CDF8FF042B3B1F0B83B1841943967D1E83302730EA99D8
            1818FE41C2ECDD8F6F0C172E9F6178FEF4FD4B1543AE05064AE693C584659FFE
            F8FD87E1F79F9F0C0001C478E6E71586272F9E305C38715DFFDEBB7BCD7F189F
            FB781A79335AAADA3328F2293030313132BCFAF68661D3E5350CC74F5EB9A52C
            6272D756DAA4849B5FF0DA0FF60F0C7F8016FDFE0BCA7EDC0C0001C478E8C349
            8647CF1F317C79FC9B41595E89A1657DB5173F8F689389B8B6B1ADB125C3E907
            57186E5D78B4475E407189A3AECD160121FEB7CCC01CF3FED56F86BF3CDF808E
            66821B061040F0BCF907181EDF7F7D67606563DDE6A0EBB1F7E19DCB811B776D
            D795E7D77E1E6E163FE7EFCF3F3F783884806ABE3170B270602B1F1800020C00
            1CFD9FF5CFFB79FB0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          Version = '6.1.0.3'
        end
        object AdvShapeButton13: TAdvShapeButton
          Left = 1
          Top = 42
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
          Version = '6.1.0.3'
        end
        object AdvShapeButton15: TAdvShapeButton
          Left = 1
          Top = 66
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 6
          Version = '6.1.0.3'
        end
        object RPAG_DINHEIRO: TJvCalcEdit
          Left = 124
          Top = 18
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object RPAG_CHEQUEAV: TJvCalcEdit
          Left = 124
          Top = 42
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object RPAG_CHEQUEAP: TJvCalcEdit
          Left = 124
          Top = 66
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object RPAG_TOTAL: TJvCalcEdit
          Left = 124
          Top = 107
          Width = 65
          Height = 22
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
      end
      object GroupBox5: TGroupBox
        Left = 191
        Top = 9
        Width = 179
        Height = 296
        Caption = 'Ordem de Servi'#231'o'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object Label1: TLabel
          Left = 27
          Top = 22
          Width = 43
          Height = 13
          Caption = 'Dinheiro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 27
          Top = 46
          Width = 76
          Height = 13
          Caption = 'Cheque '#224' Vista:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 27
          Top = 70
          Width = 80
          Height = 13
          Caption = 'Cheque '#224' Prazo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 27
          Top = 94
          Width = 47
          Height = 13
          Caption = 'Credi'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 27
          Top = 118
          Width = 75
          Height = 13
          Caption = 'Cart'#227'o Cr'#233'dito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 27
          Top = 142
          Width = 71
          Height = 13
          Caption = 'Cart'#227'o D'#233'bito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 30
          Top = 243
          Width = 56
          Height = 23
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Bevel14: TBevel
          Left = 5
          Top = 219
          Width = 169
          Height = 2
        end
        object AdvShapeButton16: TAdvShapeButton
          Left = 1
          Top = 18
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC5460000048A4944415478DA004D00B2
            FF01CFEAD600A3BFA200EFEEF8002E1E2A00EDF6E300DDDFEB002B193C00D6E6
            C100151315002A2F2400C6C3CA3DB6D4B5335B3C5CC4D7DECBCC372C4400D1D8
            D4006F5F7000D7E8D40021152500028885010B6064646460616102E27F4A6F3E
            3EB1DF7AEC7292B086B460805990F6D3A70FDF72F1733E7AFDF1F5C2BFBFFF6D
            E560E3B8CBC2CCFC1FA40F2080500C6365616560626464FBFAF98BDDC9B3AF13
            FEFDB6F7F8C17B5958C99E81E115E70986974C6F1998E4388579C52584AFBE39
            6628C624DF3A7DFD84CB62E212CB14C5D426030410D05066A001CC0C3FFFFC94
            BE7EFF7A389F3853848AAEA8C9DD6BAF19BEFF916614168966F870E62D030BDB
            0D0666DE9D0C9F78AF33BCE57DCC20C72BC16023ABCF2D26AC68B16ECB763E16
            03B6290001004D00B2FF04E9EFE823FBFEF88C191A0D45292B0B0BEC18E100FA
            01F7002039EE00EFE1CF00EFDA0F0006022B0010043B0024164200FDF1DF0003
            E3E1005C4D4200171B100004FF0A00B607B9FB0CED08FF02004D00B2FF04D4DB
            D444E5F6E350915E8A00EA00DC00CFF0F900D7FDD500F405FD00FF1FF2001212
            E30009F5E80020F5FF0005E82F00111D3500F7E613001405150011001100C1CE
            CA00FCF80003F508F50002004D00B2FF03E715EA32FB07F94DF0ECED0013FF2C
            0035163F00280A2600FBFAF20009FA0B0047106600551D6F0048224A0005030C
            00B4D2ED00FDFE0500F407CF008CC28400C4E2C300EDF7EB15140A1AC6028845
            5896E3CDC76FAF196E3CB8C6C0CDCDC7F09BD990C148DC882145D09A81519081
            8185991D1E417F7EFC667870E93AC349C6830C677FDF66B0D0B56008540B6038
            76F338E3F5FB77F5000288458C5B7EFDCFDF4C47BE0BFCB43977E934C3E73FDF
            19C439F8190478F51838A0067DF8FE9661CBB5A50C8BD6EE6010110A66B0560E
            63D017FEC7E063E900967FCCF290E1D68F67EC0001004D00B2FF03EC0BEE0007
            01086E5E425D1835253500D6ECDB00CAD1C6000C090A000106FF00A4C8A00096
            C7980001070300643B6B0010042000ED0915001F0F0E001F1E0800BFD8BF00BB
            C4C2F326192FB202004D00B2FF0109580D000C0C09CF493B4130341A3E003923
            3800F3FCF000C0DDBE00E8F2E5002F1E2E004E3052001C0A1F00FDFFFD009BB3
            D600C5E3FD001507C4001009F5F4FCFA049E32293B93161120DC02882533209D
            E1CBCFAF3BCE3FBEA4CDF8FF042B3B1F0B83B1841943967D1E83302730EA99D8
            1818FE41C2ECDD8F6F0C172E9F6178FEF4FD4B1543AE05064AE693C584659FFE
            F8FD87E1F79F9F0C0001C478E6E71586272F9E305C38715DFFDEBB7BCD7F189F
            FB781A79335AAADA3328F2293030313132BCFAF68661D3E5350CC74F5EB9A52C
            6272D756DAA4849B5FF0DA0FF60F0C7F8016FDFE0BCA7EDC0C0001C478E8C349
            8647CF1F317C79FC9B41595E89A1657DB5173F8F689389B8B6B1ADB125C3E907
            57186E5D78B4475E407189A3AECD160121FEB7CCC01CF3FED56F86BF3CDF808E
            66821B061040F0BCF907181EDF7F7D67606563DDE6A0EBB1F7E19DCB811B776D
            D795E7D77E1E6E163FE7EFCF3F3F783884806ABE3170B270602B1F1800020C00
            1CFD9FF5CFFB79FB0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 7
          Version = '6.1.0.3'
        end
        object AdvShapeButton17: TAdvShapeButton
          Left = 1
          Top = 42
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 8
          Version = '6.1.0.3'
        end
        object AdvShapeButton18: TAdvShapeButton
          Left = 1
          Top = 66
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 9
          Version = '6.1.0.3'
        end
        object AdvShapeButton19: TAdvShapeButton
          Left = 1
          Top = 90
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
            CC000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004EE4944415478DA627C71E9
            0DC3BF1F1F183EBC7AC1F0F1EF5F061E313E8657072EABF17D3CD7FAFACC69F9
            2FE97591FF45C4EF32FCFECDC0C0F09FE13F0B2B03CBA2A50C3A71D10C3FB9B9
            1918807A6000208098600C46264686BFFF1918DE5FBC98A5A52EB0DDC448D64F
            E4C35BD3DF376F9B0AFFF9CB20F8FD3B83E0AFDF0CEC8F1E30FC7BF39A819185
            99011D000410D83046464686FF4CCC0C5F6FDD8F5714976897305453FA78FB35
            DBC3C7AF18185FBF90E263F9C7A0A228CEA0242FC2C0CDF68FE1EFB7AF204D18
            860104101313D090FFCCCC4C6F2E9E2DD6E0FF3E4546839FEFD3F98B0CA78E5D
            64D0F0B567103E77AAFCC5E933C1CC5C9C0C2C9C9C4017B180BCC1800D000410
            D0CEFF0C778F9F48E07B73A7554E4192FDCB96550C97375F6290F67466D072D6
            6050D97546ECE0B64D73AFB0FC661052565EFB1BE855266666062690A1680020
            80983D8D0DF438F72F996BCCF24CF0C3E57B0C97779E6450D452669073B467F8
            C62EC0C0252EC520C5F68FE3D186B54E4F19D9AEB1C9283CFA74F4B4A3B099F1
            2F167E814F0CFFFF313001C31B14E60001C4C2CECCA6C278EA9CD4933FCF19AE
            7E6360D0D656629012E760F87BEB38C37F656586AF12EA0CDCB6060C767F1944
            F61C383997FFF3BB9BAA8A6C76D7A7361FE70BCE8E60E1E27EC4F00F12A30001
            004D00B2FF037D7C85DECBD4D9FBE31F34E3F6131EF518E7D61D1205FB00FE09
            F70004FB010001FE0500FE0F1600001F21002406F40C19FBE01F180D0200F4BD
            BE1DE30D21D7030C0FCEFAF1F100FBF4F500028805188F3F19C5249A24031219
            58BEFC16BCB89461F1DF0B07BD5558FE00F91C0C0CBF99197EFC676360529466
            F825CCCEC0F1998FE1DB37668677C20ADF7875F5AF73282833FCFFF513EC3280
            0062F9FFFF3F032330E1FDFBF28981E51FEB7BC9A8F4D82BAB1897309CDAE2A5
            620E0A0F5606563616865F374F32FC79F38181C5CB8EE1E2B2C37F1F5B06F58B
            5A381EFDC8C60E4FB8000184886360BA01C52CCBFFBFEFA513D2A2AF9B44AC7A
            72F1D9BF7F2F2E317C3CB88FE1ED85330C0296BA0C77AE3C6338F8E8FD4B61BF
            904E0666E6FFFF8029FD1F30B183304000810DFB0F4C7F4CCC4C0CFF8059EAFB
            FDE70C7F1EBCFBC0A1EB587AE42DF7F70B07EF307CBC738D414A9287E1E1B113
            0C670F9C63F8A4A7C77EF7D96DA95F2FEE31707C7DCDC0FE0582010288859915
            E80D062686B787F632B0BCFDC000F236301131FCFBFEC55FF0EB476E01C13F0C
            B2BCFF186E9F79C4B09D559CE1A78D3583B5B383F08E03C7BB84D8D9134539D8
            DEFDFA03CCB7407D0001C4EC6969CBF01BC8F8FEE30BC31F012E86DF7C1C0CBF
            0538197E70326B883C3A1BA8F4E717C3895F1CBF6E9886CE9188AF697ECBCC7C
            E4F9C38B32EA2AAAF68F9FBC62131016DF05CA8E40AF310004100B2FB7088380
            893403385B012138F840909171C96B7149C98D572EAA719A386C12D0D7DBCACB
            26F647E4EF7B86BB77AF1E7BC6F06406C33FE6C2E3A70E1DD3D7D15DC3C32BCC
            0010402C5ABA5698990C68262B0BF33F3E31B9CEEF36BE0CFF7E7E6360FCF999
            E12FE32F863FBF7F31F0F1705F109552087AF0F445C79307573AA5C5445F098B
            481F02082016902456F09F99E1EF7760E9F0F513032485FF874BFD0526053E7E
            E1673A4252E9F76E5DAF3B76FC44F96F06E6C70001C4C24026F807B4E02FC39F
            EF62625255FF99D933CE5D38990B10404C0C1482DFBF7FFD9791959D6E6BE3B0
            0420C000CEA1E03031F1160F0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 10
          Version = '6.1.0.3'
        end
        object AdvShapeButton20: TAdvShapeButton
          Left = 1
          Top = 114
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 11
          Version = '6.1.0.3'
        end
        object AdvShapeButton21: TAdvShapeButton
          Left = 1
          Top = 138
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 12
          Version = '6.1.0.3'
        end
        object ros_dinheiro: TJvCalcEdit
          Left = 108
          Top = 18
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object ros_chequeav: TJvCalcEdit
          Left = 108
          Top = 42
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object ros_chequeap: TJvCalcEdit
          Left = 108
          Top = 66
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object ros_crediario: TJvCalcEdit
          Left = 108
          Top = 90
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object ros_cartaocred: TJvCalcEdit
          Left = 108
          Top = 114
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object ros_cartaodeb: TJvCalcEdit
          Left = 108
          Top = 138
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object ros_total: TJvCalcEdit
          Left = 108
          Top = 244
          Width = 65
          Height = 22
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
        end
      end
      object GroupBox6: TGroupBox
        Left = 568
        Top = 145
        Width = 201
        Height = 63
        Caption = 'Outros'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 16711808
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        object Label17: TLabel
          Left = 27
          Top = 15
          Width = 47
          Height = 13
          Caption = 'Entradas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 27
          Top = 39
          Width = 35
          Height = 13
          Caption = 'Sa'#237'das:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object AdvShapeButton22: TAdvShapeButton
          Left = 1
          Top = 9
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C0000033A4944415478DA
            62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
            0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
            C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
            0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
            4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
            8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
            32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
            C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
            6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
            9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
            01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
            A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
            0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
            818591854113A8F9EC9D730CEF5E3C65E0F8CEC0F0F91B30507F7F67F8C0F093
            E137279B10400031BB243829FEFCFDD300649A10B720C3E91B67194404851984
            F98419A405A519CEDC3EC7F0F9CD4B06114E26062B63330667530F861F2CAF18
            5EBEBDC9F0F2C13369800062626064A8FCF3EF0FC383970F189EBC79C260AB6D
            C3C0CAC4060EB033B7CE32BCFCF282E1E3B3670C061AFA0C7F99FE32E84BBA32
            FC65FCCD60A16BC5F0EFF7AF10800062AA766C78FEEBF7AF392A62AA0C779EDF
            6378F8F21150331FC3E99B67186E3EB9C520C62DCEF0E6E32B0656461E063FCD
            5C706C153BCF625016D30331390002081C0BBFFEFCEA79F8EEC15F50A0DD7A7A
            8BE1F4ADD30CD71EDDF8CFC4C8B4F3C6A31BD56F3FBEFA71F5D931868EDD8990
            54BA2B91E1EEAB4B20E60F8000821AF0FBDE8BF72F37AF3AB1F21F28CAAE3DBC
            FE879585C50C18D2596BD236B4011352EF894BC718D8185818365F9EC6C0060C
            DC23170E82B44E05082078424A5D9E68084C5DB3819AEA8189642B7A0AB5C891
            EA00525940CC0BC49F8178DA8929CF2A00020C00148B47725AC4E10000000000
            49454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          Version = '6.1.0.3'
        end
        object AdvShapeButton23: TAdvShapeButton
          Left = 1
          Top = 33
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C000003484944415478DA
            62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
            0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
            C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
            0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
            4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
            8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
            32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
            C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
            6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
            9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
            01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
            A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
            0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
            818591854113A8F9EC9D730C62674F31E8DD7CC0F0FBC923867F22C20C27A585
            198E294809010410B34B8293E2CFDF3F0D40A609710B329CBE71964144509841
            984F98415A509AE1CCED730C72572E3358BFFDC2A0E71DC7A01A950F8C092E06
            BE7BF7FF495CBDC10C10404C0C8C0C957FFEFD6178F0F201C393374F186CB56D
            185899D8C00176E6D65986975F5E30C89D39CFA06A1FC4C071F70003E3C24806
            AE7BEB1914E58599243E7E0A010820A66AC786E7BF7EFF9AA322A6CA70E7F93D
            86872F1F0135F3319CBE7986E1E6935B0C62DCE20C2CAF5E317048283230E46E
            02A6B0770C0C95F71858BEDE6060FEC7A8001040E058F8F5E757CFC3770FFE82
            02EDD6D35B0CA76F9D66B8F6E8C67F2646A69D371EDDA8FECBFCFFC9B70B5B19
            181A24197E963332BC07E24F2F5F3300C59F010410D480DFF75EBC7FB979D589
            95FF405176EDE1F53FAC2C2C66C090CE5A93B6A18D4B487CEED5E387FE3CFFC1
            C9F0899995E1FD3B46607432FE05A6A0690001044F48A9CB130D81A96B365053
            3D30916C454FA14723E42ABEBE7B96CEFC97511E68F353A0AEE9EEBBFEB40104
            18008C544EEB59A391F10000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          Version = '6.1.0.3'
        end
        object routro_entrada: TJvCalcEdit
          Left = 124
          Top = 11
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object routro_saida: TJvCalcEdit
          Left = 124
          Top = 35
          Width = 65
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
      end
      object GroupBox7: TGroupBox
        Left = 568
        Top = 210
        Width = 201
        Height = 95
        Caption = 'Resumo Di'#225'rio'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object Label24: TLabel
          Left = 27
          Top = 20
          Width = 47
          Height = 13
          Caption = 'Entradas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 27
          Top = 43
          Width = 35
          Height = 13
          Caption = 'Sa'#237'das:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 27
          Top = 66
          Width = 30
          Height = 13
          Caption = 'Saldo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object AdvShapeButton25: TAdvShapeButton
          Left = 1
          Top = 15
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C0000033A4944415478DA
            62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
            0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
            C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
            0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
            4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
            8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
            32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
            C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
            6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
            9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
            01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
            A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
            0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
            818591854113A8F9EC9D730CEF5E3C65E0F8CEC0F0F91B30507F7F67F8C0F093
            E137279B10400031BB243829FEFCFDD300649A10B720C3E91B67194404851984
            F98419A405A519CEDC3EC7F0F9CD4B06114E26062B63330667530F861F2CAF18
            5EBEBDC9F0F2C13369800062626064A8FCF3EF0FC383970F189EBC79C260AB6D
            C3C0CAC4060EB033B7CE32BCFCF282E1E3B3670C061AFA0C7F99FE32E84BBA32
            FC65FCCD60A16BC5F0EFF7AF10800062AA766C78FEEBF7AF392A62AA0C779EDF
            6378F8F21150331FC3E99B67186E3EB9C520C62DCEF0E6E32B0656461E063FCD
            5C706C153BCF625016D30331390002081C0BBFFEFCEA79F8EEC15F50A0DD7A7A
            8BE1F4ADD30CD71EDDF8CFC4C8B4F3C6A31BD56F3FBEFA71F5D931868EDD8990
            54BA2B91E1EEAB4B20E60F8000821AF0FBDE8BF72F37AF3AB1F21F28CAAE3DBC
            FE879585C50C18D2596BD236B4011352EF894BC718D8185818365F9EC6C0060C
            DC23170E82B44E05082078424A5D9E68084C5DB3819AEA8189642B7A0AB5C891
            EA00525940CC0BC49F8178DA8929CF2A00020C00148B47725AC4E10000000000
            49454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          Version = '6.1.0.3'
        end
        object AdvShapeButton26: TAdvShapeButton
          Left = 1
          Top = 38
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C000003484944415478DA
            62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
            0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
            C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
            0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
            4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
            8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
            32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
            C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
            6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
            9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
            01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
            A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
            0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
            818591854113A8F9EC9D730C62674F31E8DD7CC0F0FBC923867F22C20C27A585
            198E294809010410B34B8293E2CFDF3F0D40A609710B329CBE71964144509841
            984F98415A509AE1CCED730C72572E3358BFFDC2A0E71DC7A01A950F8C092E06
            BE7BF7FF495CBDC10C10404C0C8C0C957FFEFD6178F0F201C393374F186CB56D
            185899D8C00176E6D65986975F5E30C89D39CFA06A1FC4C071F70003E3C24806
            AE7BEB1914E58599243E7E0A010820A66AC786E7BF7EFF9AA322A6CA70E7F93D
            86872F1F0135F3319CBE7986E1E6935B0C62DCE20C2CAF5E317048283230E46E
            02A6B0770C0C95F71858BEDE6060FEC7A8001040E058F8F5E757CFC3770FFE82
            02EDD6D35B0CA76F9D66B8F6E8C67F2646A69D371EDDA8FECBFCFFC9B70B5B19
            181A24197E963332BC07E24F2F5F3300C59F010410D480DFF75EBC7FB979D589
            95FF405176EDE1F53FAC2C2C66C090CE5A93B6A18D4B487CEED5E387FE3CFFC1
            C9F0899995E1FD3B46607432FE05A6A0690001044F48A9CB130D81A96B365053
            3D30916C454FA14723E42ABEBE7B96CEFC97511E68F353A0AEE9EEBBFEB40104
            18008C544EEB59A391F10000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          Version = '6.1.0.3'
        end
        object eentradas: TJvCalcEdit
          Left = 84
          Top = 15
          Width = 108
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object esaidas: TJvCalcEdit
          Left = 84
          Top = 39
          Width = 108
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object eatual: TJvCalcEdit
          Left = 84
          Top = 63
          Width = 108
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
      end
      object GroupBox4: TGroupBox
        Left = 792
        Top = 6
        Width = 549
        Height = 198
        Caption = 'Demonstrativo financeiro'
        TabOrder = 3
        Visible = False
        object Grid: TStringGrid
          Left = 2
          Top = 15
          Width = 545
          Height = 181
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          ColCount = 1
          DefaultColWidth = 754
          DefaultRowHeight = 12
          FixedColor = clBlack
          FixedCols = 0
          RowCount = 5000
          FixedRows = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRangeSelect, goRowSelect]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object GCego: TGroupBox
        Left = 9
        Top = 309
        Width = 546
        Height = 89
        Caption = 'Fechamento Cego'
        Font.Charset = ANSI_CHARSET
        Font.Color = 33023
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Visible = False
        object Label23: TLabel
          Left = 34
          Top = 39
          Width = 43
          Height = 13
          Caption = 'Dinheiro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 34
          Top = 64
          Width = 41
          Height = 13
          Caption = 'Cheque:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 89
          Top = 17
          Width = 51
          Height = 13
          Caption = 'Apontado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 173
          Top = 17
          Width = 50
          Height = 13
          Caption = 'Diferen'#231'a:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 259
          Top = 31
          Width = 77
          Height = 13
          Caption = 'Diferen'#231'a Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object AdvShapeButton27: TAdvShapeButton
          Left = 8
          Top = 35
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC5460000048A4944415478DA004D00B2
            FF01CFEAD600A3BFA200EFEEF8002E1E2A00EDF6E300DDDFEB002B193C00D6E6
            C100151315002A2F2400C6C3CA3DB6D4B5335B3C5CC4D7DECBCC372C4400D1D8
            D4006F5F7000D7E8D40021152500028885010B6064646460616102E27F4A6F3E
            3EB1DF7AEC7292B086B460805990F6D3A70FDF72F1733E7AFDF1F5C2BFBFFF6D
            E560E3B8CBC2CCFC1FA40F2080500C6365616560626464FBFAF98BDDC9B3AF13
            FEFDB6F7F8C17B5958C99E81E115E70986974C6F1998E4388579C52584AFBE39
            6628C624DF3A7DFD84CB62E212CB14C5D426030410D05066A001CC0C3FFFFC94
            BE7EFF7A389F3853848AAEA8C9DD6BAF19BEFF916614168966F870E62D030BDB
            0D0666DE9D0C9F78AF33BCE57DCC20C72BC16023ABCF2D26AC68B16ECB763E16
            03B6290001004D00B2FF04E9EFE823FBFEF88C191A0D45292B0B0BEC18E100FA
            01F7002039EE00EFE1CF00EFDA0F0006022B0010043B0024164200FDF1DF0003
            E3E1005C4D4200171B100004FF0A00B607B9FB0CED08FF02004D00B2FF04D4DB
            D444E5F6E350915E8A00EA00DC00CFF0F900D7FDD500F405FD00FF1FF2001212
            E30009F5E80020F5FF0005E82F00111D3500F7E613001405150011001100C1CE
            CA00FCF80003F508F50002004D00B2FF03E715EA32FB07F94DF0ECED0013FF2C
            0035163F00280A2600FBFAF20009FA0B0047106600551D6F0048224A0005030C
            00B4D2ED00FDFE0500F407CF008CC28400C4E2C300EDF7EB15140A1AC6028845
            5896E3CDC76FAF196E3CB8C6C0CDCDC7F09BD990C148DC882145D09A81519081
            8185991D1E417F7EFC667870E93AC349C6830C677FDF66B0D0B56008540B6038
            76F338E3F5FB77F5000288458C5B7EFDCFDF4C47BE0BFCB43977E934C3E73FDF
            19C439F8190478F51838A0067DF8FE9661CBB5A50C8BD6EE6010110A66B0560E
            63D017FEC7E063E900967FCCF290E1D68F67EC0001004D00B2FF03EC0BEE0007
            01086E5E425D1835253500D6ECDB00CAD1C6000C090A000106FF00A4C8A00096
            C7980001070300643B6B0010042000ED0915001F0F0E001F1E0800BFD8BF00BB
            C4C2F326192FB202004D00B2FF0109580D000C0C09CF493B4130341A3E003923
            3800F3FCF000C0DDBE00E8F2E5002F1E2E004E3052001C0A1F00FDFFFD009BB3
            D600C5E3FD001507C4001009F5F4FCFA049E32293B93161120DC02882533209D
            E1CBCFAF3BCE3FBEA4CDF8FF042B3B1F0B83B1841943967D1E83302730EA99D8
            1818FE41C2ECDD8F6F0C172E9F6178FEF4FD4B1543AE05064AE693C584659FFE
            F8FD87E1F79F9F0C0001C478E6E71586272F9E305C38715DFFDEBB7BCD7F189F
            FB781A79335AAADA3328F2293030313132BCFAF68661D3E5350CC74F5EB9A52C
            6272D756DAA4849B5FF0DA0FF60F0C7F8016FDFE0BCA7EDC0C0001C478E8C349
            8647CF1F317C79FC9B41595E89A1657DB5173F8F689389B8B6B1ADB125C3E907
            57186E5D78B4475E407189A3AECD160121FEB7CCC01CF3FED56F86BF3CDF808E
            66821B061040F0BCF907181EDF7F7D67606563DDE6A0EBB1F7E19DCB811B776D
            D795E7D77E1E6E163FE7EFCF3F3F783884806ABE3170B270602B1F1800020C00
            1CFD9FF5CFFB79FB0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          Version = '6.1.0.3'
        end
        object edCegoDinheiro: TJvCalcEdit
          Left = 89
          Top = 34
          Width = 79
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object AdvShapeButton28: TAdvShapeButton
          Left = 8
          Top = 60
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          Version = '6.1.0.3'
        end
        object edCegoCheque: TJvCalcEdit
          Left = 89
          Top = 59
          Width = 79
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object edCegoDinheiroDif: TJvCalcEdit
          Left = 173
          Top = 34
          Width = 79
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object edCegoChequeDif: TJvCalcEdit
          Left = 173
          Top = 59
          Width = 79
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object edCegoDifTotal: TJvCalcEdit
          Left = 259
          Top = 48
          Width = 79
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 15916445
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
        end
        object btnConciliar: TAdvGlowButton
          Left = 359
          Top = 20
          Width = 168
          Height = 61
          Caption = 'Conciliar Caixa Cego'
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
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F4000000097048597300000B1300000B1301009A9C1800000A4F694343505068
            6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
            DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
            114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
            7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
            11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
            07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
            801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
            7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
            450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
            305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
            99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
            99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
            BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
            EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
            E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
            814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
            582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
            00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
            6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
            44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
            801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
            3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
            21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
            46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
            74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
            6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
            128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
            51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
            37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
            DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
            E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
            B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
            DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
            197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
            0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
            E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
            C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
            D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
            744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
            AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
            53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
            4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
            35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
            8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
            4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
            6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
            A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
            67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
            DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
            1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
            9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
            D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
            EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
            7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
            F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
            0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
            D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
            C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
            17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
            8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
            91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
            31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
            C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
            2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
            B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
            6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
            1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
            66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
            CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
            61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
            FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
            D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
            F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
            625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
            F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
            E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
            9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
            DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
            D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
            058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
            AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
            1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
            D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
            830000F9FF000080E9000075300000EA6000003A980000176F925FC546000002
            B74944415478DABC57B1729B40107D62546A26FA04B9A0919ACB50A80CD42AAC
            B429302AA98CBE00EB0B2255297D51416B35D422A58A8CAF911B35F80F28E893
            66C9ACCF801022DE19660EEE8E7BFB766FEF5D0F0084B715004200737C8CED00
            AC9474558F16DF0318E2632D03E018E479B1F81AC057008A0D4CE89BD4262F00
            2CA9DDC68600C23EA37DADA4BBA49024009E014049D7296813DE16003C008E92
            AEA2B12980A79620E6067BF9553494743300293DDC5EA95F67A8B57100A1F0B6
            4396943600416D50DF2DB50336EFFB35007AC2DBFE61EF85D7B6362E0120B444
            2D5810D700E86BEF237A74B34BBE892EB6820EA02CEE5DDB1B27FB1AA5CE783A
            9957B070CE54E45B3BFDE3B71FBF1FB8832F87E38EEA8ED001ACC6D3494075A1
            4D51F90C00796CDA143239989D52EAFB97A8E3E964F47238AE8AAD6B683FB96B
            49EB32F2AD348FCD07F22E04F09CC7A6887C6BAD6DD52FBC781925F1B9D4D2C8
            B7641E9B238DBD21F37CD5A40EB4B5E2E765A1B3F3D8B423DF4AAA0AD6B500B8
            F71E25F2CD6076EAD159913160ABFF0160C1AA610AC0A1C4C360769274587116
            64970092C8B712CAFA398064303BBD39190904003C56B1607418FBD7BAE293C7
            A617F9560AE0671700B8F776C339210044BE25BB005097F9B52C74118236DE43
            039C5E036051E1FDA7862C044ABA69C1E2A50024955CAFC4FB776C507D78C742
            1E9B43D29F99D161EC058F312DF254214603927D1BAE889CF174B23FE3FD8216
            79AC3B96A9028A1AA99F51C5BC888126999F51CDDF9C11AB4300419922CA2A50
            F3D8D79D98CE60762AB4E28E8EE72AC0F7796CAE8D12F1D9D6FB1D5B1CECA253
            CB0267E0966D319B31A1C8FBB652ADCEEEFB74519C03085E0E4750FC365A589A
            A8603B8F4DA1B1109CBB9EF5895E9B254650A2946F08687886D27D1E9B4B9A73
            471AA1564FF41A5ECF1D25DD849230EC28140980E5DF0100602B0E80107E5922
            0000000049454E44AE426082}
          Transparent = True
          TabOrder = 7
          OnClick = btnConciliarClick
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
          Layout = blGlyphRight
        end
      end
    end
  end
  object Panel2: TPanel
    Left = -5
    Top = 156
    Width = 978
    Height = 52
    BevelOuter = bvNone
    Color = 12223546
    ParentBackground = False
    TabOrder = 2
    object btcaixapp01: TAdvGlowButton
      Left = 13
      Top = 5
      Width = 154
      Height = 41
      Caption = 'Rela'#231#227'o de Lan'#231'amentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A4331433935383734313433393131453538383333393345443632
        3645333446362220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A433143393538373531343339313145353838333339334544363236453334
        4636223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4331433935383732313433393131
        453538383333393345443632364533344636222073745265663A646F63756D65
        6E7449443D22786D702E6469643A433143393538373331343339313145353838
        3333393345443632364533344636222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E7306DC5F000005A54944415478DAA497
        7B6C53551CC77FB7EFADDB606CD910110393818E84A1644671468D8E05790483
        125F046378982C44602A89311AD48846893AA31213987F1843D048505E135103
        0A82A01B8A050604F760D960EFAD5BB7B67E7FE37BEB6DD76D054EF269EFBD3D
        F79CDFF9BD6B3CB8B952AE6278C01DE06E30198C0206E804E7C011F03B684E74
        414782F36E05CBC03C70CB08731BC04EF019F8ED7A05180BD6737373D4815FC1
        69700984A90915EC4E900B9E25DF8057C0DFD722C063E07D7003EFBF031F81C3
        A06D88775CA0809B3F0D1682F9E079BE3B68D88658E865B0959BEB690B0C43E6
        F983A1BD9D7DA13620B1E037C19C00E61E04CF5013AA013B28039B1215E025F0
        06AF3F04B39C36E368634FBFB8EC361997E28C8BFE76A0B547423088610CBCAB
        4EF9084FAF6339F864241314830DBC5E8585CAFAB062754740329C76292B9E24
        133392E2AAECFC65BF941FBB287B6B3AC4036146392367FB009C05DF8295E014
        4D3B30EC93163C675E8F073F0137D888CD5FEFEE0F49536F48A6A4B965CB825C
        C9CDF28A138BC7232BD52545B9199209410FD5B64B2BCC92EAB49B6B9F6674CC
        05B3C11E3A73940954EDA90C9DB5785F2E0782F2EA5D37CAF627F2863C79EC78
        343F4B763E95274537A5CAFE16BF690EA10F7CCEBC51663E34988826514D3AF2
        C0C9166C3E0D9B962F9A6A5D5F432D0704197EC205D59417C03FE6C4204C57BA
        AB5A7E8049B23D114BA7818B20193C04F6991A58C9EFEF757395FA9CBF4F96E2
        34E1E803BE43F5E9BC7D44AF77330BCE8DD8D666C886E21CF883213DFD9155DA
        2DE1F882690295E671CB06905E24C36193F464A7188985AD8E14B0032C311FB8
        B1C6EA99E3A4A1B7DF3AEF63A0E1FA806A5E179C4E076C04BFE88CCAAE5E593A
        3553A68D4D89DDA47B041750794BA3727876B254FB038250361F5DA09FA95D8A
        F5E31EFEF033F0EB051C5F3C0823BBCD88DD403DB19EC9C9C367FACE6DF41DA1
        7F44C684748F94E466CABEBA76199FE4341FFF080AC14C9BA5B89C8A2407E38A
        130D71C21AE00367185E2741AB654EC0FAC21898716A6692F8025172F9CC9F55
        03E9BC694AB0327AF94E32EF33C09F74C485CC2351A30B9B8F8ED6A629B0C39A
        09C3090AE0A7379BA168F03BD9723DD2085B537187A98E045EEC672CDF0C9C96
        0DF5BB8765B92D8175D2CCF51C2C1AC2EA75E56958E239A05836EAA0AAC3DC30
        C408C98B17AA5E975D5AA37D6AB2690A073D5A180D7AAA3E3796E8412E56478C
        11C4A0AA93A93D0F4BAF751CB1DE9C69EA961DD5CD52E075591F17F2FB844A7B
        9C0E3881FD9E4CF7BAA5DC7749FE6AE88CD7136A51D1FC7D82DEDC113327CA09
        EBDB7BA5024264B82285497B8C59D45E85832ADCCEB66B35588CE226B5A8849D
        3DC15801FA287DE130F60D596FB2535C92829CD2F7BF0996306B1ED243382CE9
        7119DBB0B5E1B0D4CE80CAD61FA8914F47B9AD95F06DB09FB11E8EE31F490CC9
        C8A8AAEF944CBBCDEAF46B78BDD15A0DCD9EEF61360EF3EDA848E7BB02928462
        F2E5C22948A95EB9DAF1C5B1065979B0460A52DD42577A0BACA3E3E7C4169752
        AA585BEF3541A82107EAF307C3F2E2DEF3B21B3E110A25962AFE456BB6E970DD
        C0E6D3BD4EA102E670731D25F15A3275A8156033784F532EECB66D224C7119D5
        6CCECEB35272AA45525D3679323F3B6E83B2C7D72C4791F38F37764B45B35FEE
        1FED1948EB388B3ADD579CF62EB3A6C49AC01C6516095799DD8B56333589AF37
        38B070BADB3E4880B3F0F84A7FBF144073EAF5743C35EBD78C8E5DBC97E10430
        DBA7E5BCDECACEB661E0059C487BC56068F04BEA2F0E100E47FA83756CF18591
        B628B65A0ED560ACE0E9752C66D553D5E5EBE24930AA86562C9AB4F0FB646EEC
        B36CFE260BD5A0B83646F8737A3B3DB7C8F24C3BE7A3ECFF1A198E6398CA0B38
        D74C9F7F80D7D8295DD37FC3E36CA38BD837EA29EE23C30DED13B7806D2C60D7
        FDEFB882E829EF0533401653B38D054AFF9257B1B3AA4A3457FC27C0000404C9
        2E2180A6960000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = btcaixapp01Click
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
    object btcaixapp02: TAdvGlowButton
      Left = 176
      Top = 5
      Width = 154
      Height = 41
      Caption = 'Resumo do Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A4233454344383532313433393131453538423733383146424530
        3135364136412220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A423345434438353331343339313145353842373338314642453031353641
        3641223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4233454344383530313433393131
        453538423733383146424530313536413641222073745265663A646F63756D65
        6E7449443D22786D702E6469643A423345434438353131343339313145353842
        3733383146424530313536413641222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EEDDD6825000005E94944415478DAAC97
        696C545514C7CF6CEDD076289D2965AD38CAD220105011014550D6A8C816115C
        88C4252CEE8A1AA3C1F849DCC05D50341A013F880650103770098A880BA50865
        6B4BDA0243E94A67A6D319FFE7F5FFEA9B6737D093FCF2F67BCF3DF76CCF317B
        ED5E394B190E6680FEA03348807A70106C06DF834847077377F0BD5C300FDC00
        2E6DE3BD074121155909F6FE5705BA80C7C02290C17BD56007D80F4ED20259A0
        2FB80CF4238BC1DBE05970F85C149804DE00415EAB699773F2B23614560B2D04
        D3C15D602EB81FBCD3D207CE5606BA076CE1E4BF836BC118B0DE9CFC4C435C6A
        4134961087A3F9BB4AF0157D6404C7C8A02596755401D5FA659EBFCF157DEE74
        3AE4447D4C0E5747E4586D54B23BB9A55B9A4752DC0E29AC8C481C1B61514465
        27980296F2FA11F05C7B5BA0AB7C8BE74F9B1FEBC047AB2232B6B74FB2D33D92
        E171C94D4373C4E3764AD1E9B0ACFBE3846C2BAEC67B0EF17B5D92E2724822D1
        3CA68EB30F7C041EA693AE341F3A2C6118000520872FDCEDC6AA4F871BA500AB
        9EDB374B9E991414A76D99A6FC595A2B1B0B42B2ADA45AD45A5D61A1583C617D
        E501F0229D7608C8B72BF03A58A063818B41635D342E8134B70CEF91210B46F5
        6A7572ABEC29AB95C7B71E91BAC684744F775B2D21B4C28D603B186BF5811C4E
        AE325F27D7B9765485655C9F4C5934BAB77DF234E0035EBB0283A1EC6B53FB49
        568A4BCAEB62A256B4C8025AE02A30CAAAC0624BA8FDAA1F1DAE8ECAC2FE7E99
        39A4AB7580DE601D38CD7C50029EB72BD127CB2BCB260725806DA8C2165AA402
        BCC2F3474D05DC8C5531BDB4B4AE41C6F5F4C9D28941C9486DF6D3AE74A6D934
        E543BCD6E31ABB127DB3D3645A3FBF1C0FC7EC8FCC08D308C9550586810B4148
        F7462DAD1F75F7A5D8CDBE9A317D25B88D0E35869E3D87693849AE1F1490817E
        AF912F2C7208FC003C60AA2A30920F7E52B3D63724E4A22E5E999CE7B77E743E
        B80E3CC98FADF202B764A15D8134F881CD074CD9CEE33055208F171A82D280D0
        0978DD9297936EDF7B6184B42447581993248648B045812966E8F955816C5E94
        B6115D87781CDFC2330717B1FF2C4A7A258F294E4B24181BE581C94EC2070A43
        67AC1F94D179B446DC67B9EF65BA4E63D54B125D7D65246664C8D64427AFE2B9
        9654E9E471C85164BE35BB8F4B637226536FDFC68A98CFA2530E6EB1E48FA4D4
        9E8A543D332F2025B511BB2F98F923EEE4FE096BB8A1F5059D53E56BE4F6A2CA
        70D2968271B4829745EA1756BE1F597EBF0099E6072E4C3A01B964209CBA3A92
        940F0698BD8593554BE57273052EDC75A3A07C082BD446FE15C7AFB2F9D03099
        003E01D3A8C4D56093EE6D73F2C84891F1C12C2939D3601D63048FFB9C6C304E
        71D0A1A615BAA106ACD81792F57B42AD6D9F35B8435442BDFB0AF02DE8653E8C
        34C6C5F38F1F04684995CDAA400DD8684BC986122333BDB2A1B0420E263B646B
        126292FA99797EB4DE543FAA8FC50DAB526EE63669A3F39B797B398FF3A8A121
        99A8EDA7D0842CD972448E56D47744094D485335099A8B2A46BFF0E9810AC94D
        6FDE9527787C49D7E91A344BFB4D39CEB41A6407FCB1616358C187480DA1A0EC
        3A562305E575528310CDED926AD47A258A64A3EF59BCBC0E1C50A7ADC0BEAFDE
        5526453551631C7645BA55C5E0767B3F3048CB39CFEF641FD7D4366170F5E262
        14A9EEC892BD7CCDAB91683C8EC1DD321755B3330AD7909E4DCDF386FC90ACDA
        5D2E113CD7AA882D1D6349C1B3CC453A6C3F26F782150C39D5F4B3A494E7684A
        D5E158222991A8BF94861BC4878D9E31A0A9866C3A58692435AEFC12B09591B3
        8A7DA7B4A480D988DECAF339ACFFED8A2A0767972234AC464F80F053C78372A3
        189A9AE876F1DF21D15657ACA5F65D9EAFA54572DA5340ADA06E10C4F6048D52
        2EE9B8B7048FBEE3E49AA4AEB14EDED67FC17C965E735BF2D9C19CD70163F8E9
        433B591F5C6C72A7B08B4AB65C3B3FA79AE99E627231FE47B812F3EFA89E2B4A
        A595B4B999087A58CAAEB66CEF9DEBBFE197445BB63B98C1A693B6446BC407E0
        4D6D31FE8FBFE3356438F3FD60FE077AD90F4459E3FF6263FB4D471B83BF0518
        00B872DA9E2F05C0FC0000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = btcaixapp02Click
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
  object pnl1: TPanel
    Left = 879
    Top = 48
    Width = 137
    Height = 565
    BevelOuter = bvNone
    Color = 6723891
    ParentBackground = False
    TabOrder = 3
    object bincluir: TAdvGlowButton
      Left = 28
      Top = 148
      Width = 83
      Height = 61
      Caption = 'Incluir'
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
        1F90000008114944415478DAC4996B6C93E715C78F5475D22A4D9AC6A47EDB56
        50271589065448207142B817125FE25C80006D40A0B5ABD0A441C7C23A41416C
        48D3BE4C95360DA9ADB8A4B939972A0112B29CC749C6AA96EE46E25B204460BF
        EF6BBF6F9CC431F12597FF3ED8E4E2C4C44E53EDC34FB22C3D8F7E7ACE73CE79
        7C4CE71834970F19749E41A5AC52296B54CE4364642F1DE0009958A352F65311
        FBC8C8CA6B46A1BC6712CAC745C2FB37A3501E1B851288214B66E1ED3209EF75
        A3504E9B58596F622F15B1970CAC52190F53190F5309AB54CA2AE959A1333C41
        97125CCE318852152CE7312AE2A15545C25769125EBB5128788661CEE767E885
        3CEF7B93F00E988472C9C0EA4FF6F308EDE7916F2E58C61A1D663F19D8F76289
        D02E1B8577C420E40532E96010CA4491F0FDA584875795B2B67CC13256A99487
        A85C0CE90B84FC402F2418BFA1DCACA40CBD90FD25C25751CADAF3053F8C4B3D
        13BB18A79C87A8502817629BAE8C58A2646C5FEF474656E82C4FD1E5392ECFA0
        F371B1F37304CF31A854F8AEEF159E45EFD74A52286418847CE73447E922837E
        9B0055306638CEA0631CA562A1DC48E7AEE9594161027A4E57D6633DCCE37494
        41871974240E9D66D069069D61D0FB0C3209FF85DDE249CA1B1759156CEF90A1
        6B93A06B8F91D326615B870C73972FE57DF60A370C42ABFA25832AE32EEFC74E
        30406F73804E70908E89917C8390520EAB8115E4DF91F169FF28FEED1FC75D39
        88BB7210FF1A0AA1A67F183BDBDD3074A9A94742785021FC1527788C2A384015
        1C203AC2213ACA212AE3A72FEC161ED5206498D2086DD66D09FF51C70100989E
        8C01E0911AC0EBD536ECE99050DC93AAA48CDDC28D121E5B75944374844344C7
        394A3FE7093A24462EEF13EEB4EE8D9E1564B749604F10C02482E31104C72300
        A6F0B51CC0BAAA5E64D6DA61603965C902E146B9F0579FE4497A9727898E7184
        CA39F4DD02214FA45B4E96125C5F63C7C61A1B741647CA9226A1A0504830F0F0
        5A130788DE62950E08F5AC7E19B52E15C1AC7A07B2EBEC69491A8404B3F0FD79
        3F0F13195826BD90DDCBA961A90AE636381324B554F61F35B3EF4532B1B67AB9
        45361DC1859229DC49560D6414DE5FA45284F58B50D019CBE2CE4504EFC901AC
        ABB663639D03D91627B22D4EE4589CC8AAB5614BBD03059D324CDDEA12F7D17B
        858A84F7BAE1394538FF8E8C2DB73DC86E9316B0F9B684D5CD6EDC7E32962038
        8D2F3CA378F993FBF8F1B55EBC7AA36F869FDEE8C39AABF7B1E65A2F36DF74C3
        DCA32E5AD60C42419150049985D7BA5882E845AC437CDA3F827FF8C6C19EE002
        3ADD41DC7E3C8627A3218423D119C170240A653484D6877EDC1AF0A3EDD1F002
        3A07FD687069305B15ECB3FA92087A5D6414CAA20952C80AB6B449700EC58B30
        269332158922F034322318781A46341C8DAF9B4E02301D8E6047930B5BDBDCC9
        124723A350C69309EADA25DC9583C0F46CF8560A4C4E421A1947BEC5818C6A5B
        B2C409FEDF057734B9B0AEAA37597607C920143979883DB0FB43F1504D25611A
        939128024FC3F3421C0947E78473B175C054248A9D4D2E64D4D89395203F9508
        DFDF174D1256B0AD43464DBF1F7D6A00FF94C7F0B51C58C0179E5128A32184C2
        B349120A47A18D85F19514C03D29B0E83A9BF614DD8F47B0BDC985376A171673
        738F0F45C2FB90CCC25B9DEC716AEEF26167BB07199FD9F07A551F36D4DAB1BE
        669675D576BCFCC97DB43EF403989E5707BF94025873BD0F6B3FB3CD5B33970D
        B576E4363891172FE47325F52CA3B447EB21A350CE3CB72F76A9D8D32121B336
        D6F8B3EA1D336CAC73E047577B716B607881E03D2980D7AA6CD810EF268964D6
        39E67599DC44C906270A3BA4AB64626DED522DA7B847858165E82CB1C63FB391
        C589576FF4A1EDD142C1C55A5DAAE4353A915D6F477EA3EB2099D94746A168E9
        4AE6357E7B82F1B047F39BFB5FA2FDEC27B350FF601012D295CC6EF89604EB1D
        D035BAAA725B1F10E9D94F05ECFF61618A4FFDE21E6D4632ABD6B6E282790D2E
        6CB1D89073CB9199DBEE223ACE117A872374400C5D2948F1C9FFEC24B7D43BB0
        E6EA7F575430ABAE0FBB9B07DB2BAC1A1DB66A44277882DEE5092AE7D0F7DE14
        5224D5DFC3C53D2A0A3A65ACBED60BEBA03FDEAE27630070694164D4D8919986
        A0CEE2C4A6FAFB286D1B7CE59D4E858EDE9189CA78984A79980EF1281D14DA01
        7D1AD30453B78ACD37DD687069180D45208D86208D8C231089A2EBC90836D4D8
        B1390DC1CDB536EC6975571677FB482F24D20B89E8144FD0299EA05FF1049DE2
        29328BA12BFB8427E557B5B95B85D9AA60579313F916077634BBB0ABD985ED4D
        AEB4429B596F435E93834F8A009DB28ED3498E416F316638C6A0431CA602F1A4
        23D5509B44EC3DB7B5CD8D8C6A1BD655F521A3C68E376AEDF33AC4526CAAB3DB
        4DED032FFCAC7B80DEE6075411872AE3A3864A069D65D0073C4D67384A25C2D7
        99CE49262BE64B915D6F478EC5D1F75E7BF0FBE744947E23A254C9911966C66D
        17197481419718F4BBF8F8AD40C8D7D3996EA523A96B7042677140D7E8B895D7
        ECFACE079D93F4C7AE98C35CA7E70E304B78880E8AA1E305428EEAD3C8EEC48E
        932897637120C7E2C0B6A687BFDEDD3A40799FBBE8F49D30FDDEBAFC11F02B25
        42FD7876F0B8BC93D4599CD0353890DFD8DFB8A7E5C1FA3DAD83B4ABE511E536
        3B972798384437B1B6A948F8FE64125E65A921BAB94785BE538E85B2DE81BC06
        6740D7E0BC92DFE2DAB6F7D62015B60ED0AE9601DAD932B03282097F43BC6464
        456F14CA4726A174C4A7FEBED9BF2114CD241457498F662DECF0FC5567711ED8
        DAE4FC415E938BF26FF6D39B371FD1BE96872909FE6F008F83EB725A3ED50800
        00000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bincluirClick
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
    object balterar: TAdvGlowButton
      Left = 28
      Top = 212
      Width = 83
      Height = 61
      Caption = 'Alterar'
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
        1F900000080B4944415478DACCD97D6C13E71D07F09F5475121D952A5A69FFAC
        D3289D265835A125B109797142C8DDD94E020DB4B0499B52606BA5ADDBA4B132
        A4556AB796A24E9BAA092DB11D423A12C0F6DDD971DEB0EF9CB3F3421A62DFD9
        0E792D813681F212C668422821C0777FD87971088C12A3ED8FEF1F7792ED8F7E
        CFFD9EE7B9C7648042F3938B20196EFB89D30432F679881D70934915A864A081
        8A232E2A39554F464D244EE557731AFF4B5613AAD888E067557E8455F97156E5
        C7D930FF0513155A594DA8E1547E37A7896B8D9A40A68848C5AA48E65E0F15F5
        7AC81C13C974AA8E8C61810C37A4F86F2FF0D0C302370D355249C4B5C21415F7
        729AD0CFAA3C66137622E95AE5C1869C60C373D79C269CE134E1FD6255FCAEB9
        AF9E8AFBEA5300ECF7103B5847665578D2D4E3DE6F54F96BCC6298870CA33AC1
        85F969362A5614F7D43D6BEE7191A9770940535F3D3103EE6263B7E334137282
        7944583292071376820D39AF7231A1CCDCEB79303007CA6CB2A150365AC90085
        D89848A690F06EFC0B970EBB27E138D6A80A07385520C32D3F65A395B2E77972
        A010E5DF519262B81324C3949FD88850C37539929EA3C7926E07D89053CA9B94
        C87027788F87760C2BB3F9C5676DB46D58A202D559FBB8404C220BEF6F083B82
        5B3FF5D2EB9FB72599A8683240E644364FB6D2A698E75DA6F358CA61C6308F8D
        1A8F1F0CD991DEE78069C1C8309FD851A2BA8EBC3C1E24F36490CC93012A9A0C
        10157DE68967B4810A46EAF20AC20E70E1D4E372634EBC346447D5D166FC5EF2
        E0C5E1633086797033D35098C7C690031BCEBACB8A461B665D543AECA5D23312
        BDD2D7F484A9C33EC6849D60B514E25401B99A1DABFA6B61713601BF3E819BEF
        04B1ED1311DF3F6D4F42322A0F63C7316CE96D7C76CB59894A87BD44259764DA
        7459216EC8B39FE9B2A7B672AA80DCB01DAB066B61B33701BF6AC1B57D41E08F
        ADF8EA9D20B6758A5873DA0E5358981BEA2E3B98C1BA639B2EB5D0A64B32D1AB
        917A7A55F32C3386F8E9422DF5B817BBAA50712E0A0C4F60E2BD202EEF6EC2C5
        0F03B8FB761078BB0DBF531A90363837F9331A0FF6A4035B55F79A6DD17AA22D
        BD8D648EBAF716861D29C399540772C34EAC8CCAA8383B088C7D852BD33731FA
        C518C6DE5770717723A6FFDC0EECE9C09BF65AAC39550B738F7BF6F38561274C
        51B17C4B6F2351912612A70AA34CCA2AE7408EE6C10BAA07555D1F00572630F6
        6F60F4FC059CBB3D8991F397817D9DC05B4194B90F6345EB47D07B2D60424E98
        6373484E15BE2CD2C427C918115E60538C5BD9D381EAF6B700D70A4CB5EFC4E7
        5781D1ABC0C8B98B980270F7F435BC565385E5ED1F41275B917EBC1C19BE38D2
        944032AA139C269410A709BF792CB8A63598F66663D2FD6D8CB7EDC4C8D5BBB8
        3901DC1D9BC0CF340F962B7F85CE67815EB24227DB90B60892D3041B7111B166
        A9CBD9BDB8D5B8E5CDC2B8AF00D77DF9B8E17E1E38F173E05F17F0D32E1F9EAE
        FB003AC91AC7CD4BBAB7228174C01C7381D58400B15131C8869C4B6A8838AE7D
        1637EDCDC6B86F03AEFBF231EEDB08F87440D32A94491F627973353216C1CD22
        672AD9ED80F954DD10B12A7F6EE9954BE01A17E20AE2385F067649EFC571BE8A
        FBE2663233DC8521C7156255FE466A8775212E1DBBA47D784A72252A6779206E
        3E522759AF3F127031DCE2958BE39649AE459FB9FF960C9FE53AB161FEC2D759
        7B1FA5728F824BE42A313D6207DBED4C5143CCE1764AFBF04D49FC5AC39A1C0B
        7472E530B151F1D8C374F1C33744BC72719CED117171A05EB6B513A70A7BFED7
        0DB1E8F32759B14EB6FE938C1171CDFF43432C06CCF457FE988C9A40ACCA5FB9
        1F70A32A6275A405D5ED7B1E77432CCC2DBDDFF61495F6369029EAFACBFDB65B
        2FC55AF0B7CE3F01F5DFC3B4370B1389E52BB50DB1707AB1422F5B8F64B65412
        6D0DBBA934243EC79D74C6378BF37085AA801F6A3EF485DF0094745C6BCA7D4C
        0D313F366448E558EF2FD765B758898ACE1DA7E2F33E62FADD36E664F2963F5F
        75214BF5E074E40D2062C64D85C1974D06C09791D286485A8B7DE558277FECCB
        0F8894A7F0449BCFCBB4F9BC422F7F7AFC69AED33135FFEC255BF5A05015705B
        DD0EC4F2811E33D096061C4FC38E143644F2F01E40764BF5CADC80937294A344
        A57D2EDAD2E7A2D2C13A6207C4ED05A1B9D7CE2CD583ADEA510C7495A1ABB30C
        8D5DBFC5D1136FE235793F9EF139528E4BF75520D35FBB373FE02483524B06E5
        0891695C8E6742A6E289162A8AD559D9C4DB1DA30A2889F2C8E9A8C1F38D87F0
        ADE6C378CE6BC777A45A644A96940D6B7C5A29875EAA500C8A87F2142F199426
        32284D443BCE0467F3FA483BFD64C8471B4FDA6536F1BECA6802F2A30DC8EAA8
        C5DAE672A4FB52875A50BDFE6CFFC1273604AAC8A054CE860AA794B9DC0AD086
        A900E55D97888D082DECC9F8E111A70930F7B861E8A8415A737CAF963A5C0574
        92A537C7DFF08C41F19341F19141F1CE86B2A02C482BE522406C8F48A66EA186
        09C7CF05E7237FD4FC8F14222B9AF592F51B86163FE52B9D6450DA9272FF03CC
        8848E6DE7A62FADDBBB86EC72D26E404AB0930C7968ECC902CD04916AC93ABFE
        B04E3E483AA982725ABC94A7B491415192F2E013D6FE7A6287EAC81C16561A63
        AEAA9943C7A5212DD04B95AE4CB972ED7A7F35E9E5434B00F6D5133B9838E51F
        6AA4624DCC3046C4BF7311F1E20C32EDBEC87BEE8DEB24AB2D53B6E667F93FA6
        F5721565FA0F915EAE4A1170A0818A23E2CCDF10CB8C9A506CEEA93B90DB7158
        4EF759FA7592F5720231AE93AC57F4926D482FD9827AD96AD5C9B6ED3AC9B642
        2F592953B65196BF9A32E5830F05FCCF00AAD5CA2D4DE4BAAB0000000049454E
        44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = balterarClick
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
    object bexcluir: TAdvGlowButton
      Left = 28
      Top = 276
      Width = 83
      Height = 61
      Caption = 'Excluir'
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
        1F90000009AC4944415478DABC99FB6F5BE519C71F093189494813EC0F80FD30
        0DD05426B631DAAE491B274DDDE6E6E3737C5CE79E1CDB8993A6494ADB946449
        53CA65FB6597A24D306063058198D46DD286C6B81746D7D116145AFB388993C6
        3EBE9DF31EDBC7CED549BFFBC169523769D2A6B01F3E3F1CEB7DE58F9FC7CFF3
        3E7E4DE8EFA73C068FD2425F1F31DE49C6DE364AD67988092ECAD47552426C25
        436C279D7793C64B0F68BCD3C304E74B4C70BEABF1D284C64BC6226126BA3E62
        82F3A4C63B0FE8BCF361C6BB48E7DDC4C4164AD5B693B1B79D747B2BA5440F31
        CE49D9C33D842707E97A1FBA59C1C9866E4A889E7B74C1DDC378A757E3255C45
        B536E3DA678D97A072CDD0ACCBCF8C7706182F1D67B696FB8CBA7D9476ECFB0A
        041D6D94AC6F2326B8EF4CDA5B9FD104673227B352E8665073FBB2BAE8FA5DCA
        DE76AFEEF0DC6E04DB2959EB298B73CD232AD7B461B195D16D826A6DD6D95E77
        BD616F27C6B9D6103CDA9FCFF141C2403FE9363731CE35A8F11234EB5723964F
        2E13CCEA3AC178172D3CD14B78FAD80A1F425F7F3E034769E1482F319BF364DC
        D298F73DFA3A588CE6BFB2078F10060757F8106AFA7354F713EA9EA46C6D0FA9
        42E3AB5FA7D46AC4F9860F676B0E12EA8FE75C16BD08DD03391E3F4A38708C0C
        5BDBD158453DFEDF82B1CA7A24B996D7D03948383448E8EE27740F1019CE2E32
        9C5D94F63C4E29574761DC7A0B69159CD00409ACA00AEC2766B02D65391E3543
        373BC01C9E9B97B44A88730D484A6DF586E7E09217CD361EA259A987A66A0EDC
        112B6F54556BD3F2269B0BAAD901B558805A625BC9760EAA4940F4B99711FEF3
        DF1179E5CD1C7F790BCAFE3EC41F2901DB695F7D6FB10DEA4EFBF2075D2CC668
        790326ABBBEE9D958ED06CE321A2F9F65E9AEF1C20A3AEFD9958E575A9E59AC0
        EA3BC0A40360CDDD2B7178C01A3A1166498400288B44008CBEF1575CDE6C46C2
        F9F8EA7BA503604D5DD06D2EB0BC54372055EB797D7E7F3FCDB7F71219622719
        B6FD776956299BD7E72C8D508BAC303E3D8FC9F97964D2532B3116999C417A6A
        16996B4867A6914AA69136A656DD3B959D47321845886B845E560B76358ABC84
        38D78494B0EF4143EC224A3B3A2921B4F4C4AF4D2D2F41AB6A805A50897454C3
        34B02633D905CCCC6431333B8F99D9794CCF64310360668D3D590053002E950A
        B8BCAD1C297BCB92A46A6D822EB87F9BDEDB49C4ECADC4046770C529C1354133
        3B907CEE0F489DBD003D330D3D3D053D95B96D1273F3601786107DF975C83B79
        7CF95829826535482E4AAAD66630C19962F6D63B89D95CDFB96165896E683F28
        429C97105475047503C170FCF68831285700B9B1034377DF07B9C8025FB11517
        0B2B102CBF4ED2E62A2726B83AD63A6359A91D5A751B94893042E96928516D89
        489C41896A082D3E87630CE158FE6B57D75C259C4C4361290C3BDCF06E2A846C
        E2209B38F88A2CF992B9EA7E8198E83AB9E6595B590F56568BF0B92184B20B79
        6FB611C2D373080D8F432EB5C1F7D8AE25C13CC9B21A24C516E8A2EB0362A2EB
        43955B43906B02DBC121F2F6E95C2B896A8869098C4D4471E6FC250C8F2988B3
        2494A8860B5F0EE3FCD03094A886384B623810C299CF2E62784C414CCBAD0967
        AF2074E122E4C20AF8B6EEC9135C92DC5E81E09E6A188E563F69BC145ABBC337
        831554217AEA9F7982A3E3617CF0E9E7904783D0120694A886FF5CF0E2CCB94B
        50A21AB48401DFC804DEFFE43CE4D120D445C10880E0E9B3F03D5A02B9A06285
        E0B264258265351A69BC34B5DE31C4369721FAEAA93CC1C0E5083E3E3B047F20
        04554F41896AF8EC0B19FFFDDC0725AA41D553904783387DE60BF80321C4AF11
        9CF8C77BF06D2A84BCA36A55C1AB92DE1D55999B13DC5286D8AF7E9F138CB1DB
        16BCFCC6DFE07D682BE422CB0D0517C990669522EB0A1654217EE4698466B250
        D4C46D0B8EBFF81ABCDF7D743D39C8264E27DDEEFE64CD22E125B0222BD48E3E
        28893414DDD8B8608C21022070FC97EB0AFA4C160C9BF851D245D7EBEB0AEE14
        A14ADD50222A945466E3825A12E1B9798CB41DCEA5784D410EC3C5D68F49135C
        87D6FD31B4DB01CDD18A70208850667AC382E1441AE1441AC3F5EDF03D5CB86E
        8AFDC5DC2BA48BEE07D71D26CB6BA1714D087F2923349BDDB8A0310925A2C1CF
        37C1F743D3FA112CB1DA4913DDA4F192B6A660550398B91A91B39F23B4808D0B
        CE6411F28D422EE1E1DB6C5E2F8273FE12EE9B64D8F7534270FF62C5B8B5EA69
        F21142D8B86004C0C4FBFFCE45AFB0F2C6723B2C904BACAF8D94D98812C23E4A
        F06DDF5EB75036EF41EC8F6FDEB6E0E5536FC1FBFD9FDEB049FB8BACB864AA84
        B7DCFA6399138966DA7A68767F2F256B3D2FC42A1BD616FCCD8B080188B32446
        C7C378FF930BF08D2C1F7567CE5DC2A79F5D5C3AEABCC31378F7F439F8468250
        592AD703FFF426BC0F6CBE6193BE545481F122C7DB5A590769E5ED440BEE23B4
        E0E9A3D9868377C72B1B67D51B4C366C6B39E2CF9E40E80A1051139850E2F00E
        5FC6782886A8AA43896AF00742F0074250A21AA2AA8EF160145E7F6E4D24AE23
        0260ECB9976FDC038B2C18329563BCB2FEFE68958722952E22BDA683F4EA0E4A
        3674915ED72AC6B9D5A3C8B65522DEFB2C942B80624C22924C43CD4C2392CC20
        A4A7A0240CC4D35388A7A7A0240C84F414A2A9CCD21A2561200A20F0F313AB0B
        1673B85458855091A3276E69A030574D614B0D51B6B33747771F2D74F553CAE6
        793E56B552929588509BBB11D29250E6E6114E666E8DF414A200469F780ADEEF
        3DB66A6ABDBB2CEF19E51D34653E4053E64E9A327712A1F6E8220384FAE334E7
        384C314BFD3B2B04ADCDD0050913CD5DF036EEC37063C7ADD1B41F235237E4DD
        76C8852BC72C6F41857794B7DF1170D7D348432D8D34E620F4F42F736480AEF4
        0E50F6600F319BF33DD5D298778BC07809BA4940E01113861EDA0AEFA642F836
        15C27B5314E4AA775B19E49DC2B25851157C26CBC54C61E7B7E676FC8CE64A8E
        D06C71CF128463FDCB0CF6139E1A240C1ECD5DBF59A493D7178D6E7321696FC1
        D82E3B2E1656DCCC44B2E6CCE72BB1BC259770DF982FEC256C7D96B06590B0E5
        D8126B5C60BAC8B0B753A2B6B539CE35CFE52E30AF9114DD1B96F41559E03359
        306A120E8F9A45F2957234537088B0ED4942417F1EEB5F0137B411135CF727C4
        9697AEFEA856F966E8361712A21B63E65B902CCA8D517E93706AD86C7B78AC54
        A440A948BE9D960D0AEE6DA3449D8798CD4D93F55D94105B7FA40BAE5F33DE19
        CD493A7392BB445CDC5EB1629EBB4E30259BB8176433BF7DCC5C4B813D7B2950
        6AA3D152DB572078EDDF10B676D279F75D1A2F9569BCF3846E73BD93B4B778C7
        CCF6B8774795219B384336719ADF64F5FB4DD60FE562EE797FB15594775AEF91
        4BACE4DF2DD098B9864677DB6F4AF07F0300CBC7E9D9495EFE5F000000004945
        4E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bexcluirClick
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
    object brelatorio: TAdvGlowButton
      Left = 28
      Top = 340
      Width = 83
      Height = 61
      Caption = 'Relat'#243'rios'
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
      TabOrder = 3
      OnClick = brelatorioClick
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
    object LMDButton1: TAdvGlowMenuButton
      Left = 28
      Top = 84
      Width = 83
      Height = 61
      Caption = 'Menu'
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
        1F90000008714944415478DACC99EB5353771AC79F994E77A63BB3333BEDFE01
        DB76BB3BD5DD1977D56D3BDB9B5B909B48772D5E42CE4982A8ABAD522BAB0255
        010502C11B4A2139270105A9B3AEDAEDAA808A97B6FA625FACB62B901BA062CD
        E55C12C24D12F0BB2F4290901095A1DA179F3999936F92CF79CEF9FDCEEF3CA1
        1D17411329FA0AB4ADF53E319C489A3A99561FF110C34B9479B89F185E2696F7
        12CB0BC4F2E2AB2C277CC8728289E5C55686136E339CE06338C1C71884BB2AA3
        F815CB0B0D2C27E4B0BC3487E504623891949C449A43BDA4AAF591A65622759D
        44190691F25A02B4F3EB70971D1741F4A8822BEB0788E13DCF33BC94CB706207
        C30908A1343C78FD609F7BF2BE2E86138A959CF4CBCCC33E52D7F5CD8CE09A46
        2F319CF4ACBAD6A36538D1CB70113FFCB8045426A98635F6BE9059274F5F90E5
        44D2D479685583273543EFB647A9C8B4511ADC501ADCB2A65654ABEBE4D88285
        971146F115D08E4B20B549A20CBD5034535291B8C1706E641884830C27D2A7E7
        47A9E42A227C685B2BC228B804CA3F374A2AA3D8A0A87145BDBE66920CBD1B4A
        83FBDCD6A600155E46840F29798CC398409ABA61521B5D477E48A968A838E765
        CDA121624C0873A29C53A09C53A02D4DA04DA7404ACE5BB8FC33079EB4E08A6A
        07147AB971E3BF822E212FDA70C247EB8FFB68E3977D947DA2F75D86734D316D
        3C9CE964C33EA37761FD31AFFA937FF7D1FAE3BDB4E1848F28AB619856370E93
        AA76F09965079D023369B46A8C029656BB11A77322BEC285F8DD91C4E99C48DE
        E786DA2842C50B48DE17DC172D1B5F117C2FBD5A40A6498C1838CBAA1C604D03
        2FAC6E1CA6AC8661A28F8E8F50F617239455EFD32AAA9D11479656E946EE3F25
        B4B6F7A3E9DB3E9C89426BFB008E5CF56269B51B4B6B44D45FE9456B7B7FD46C
        D3B77DB8D03E80829322D20EB8C1F2E1928A1A27B2EABD47B3BF18A18F8E8F10
        290C3E52E87DCF65E88500CB47967E41990B07CF7B01DC0710980240F2F6E39D
        221B12F7B820FAFC0FCD1BCEDDC59CFC4E64D67AC224595E4086DE0585DE3B5B
        61F011A9F93E62793997E15C512FDEF80A172A9A3C0002181C1A46FF6024C008
        2CDFF7E34FDB3BF0FA762B6EF40C0218899A1D181A06701FFBCF38F0EB8FBFC3
        92FD3DC8ACF34CAAA41B2C2F57ABF83E2295512296137BA61A5D8F23F876A105
        7373DB71ADCB076034A660659313B336B5216E57079654F6445692137A5546E9
        59628DD24BB186FFE30ACECF37E37A77DF43050F3439313BA71D89A556C4EFEA
        885A49D6282D26352F663F0DC1AA162766E5B423496B1B93348755526910A0E2
        458E5446A98189B11078128221C9B85025C724595EBC446A937459A97FFA8213
        2BF9D7FD3DD0D4CA5019252B319C7027D6295E50E61C9B663036754403E81DB8
        87370B2CF843AE190E79E8A1F9C397DD7865635B98E003C9F14A8AC470C2602C
        C1C5956EE41F97D0FA3F19CDD724345FF7A0F99A1CC6C5362F1ABF11F0E75D56
        BC5960C1A14B022EB6F546E49AAFC968BE2EE3629B0F7947EF607EBE3942305C
        F276FF430557D68A48AF163127BF0B2F6DF80EBFFAF8065ED9D816C6CBD93730
        FBEFED4829B3215567C7EF36B7E3E5ECC8DCC4FC1BDBCD48ABB047150C492694
        58FA4969101C3157BF9C00152F62D5210F9655DD414A99158BCAED61A4EA82DB
        D0972F2AB78DEF8BC6629D1D296536244E21374152264DAD742523C62049D8ED
        82F6B407FDF7FC907C7E38E42138A4A1E0760CDFA01FFFEDF2E19D220B5EFBD4
        8CABE65EF806FD6199104E7908BEC100F69E76E0B79BDB63567091AEB3935446
        E968ACE78DF7742EEC6BF1001801E01FDB4E06B82B0DE2AD020BE6E69961770C
        8C0D929129F37CAB0BBFF924B6604AB9FD1B52F1C296A73D5147A5D486E432FB
        615219A5593F56C145159D2B88E525623841FCD1096A6DFE9472FB4F49C5FB88
        E565DD4C2CB7664A30A1C486149DADF12FFBED440A838756D4787E91A17723DA
        82F5490B2697D911BFD3828452CB1F532A2C441F1EBB47EB4F0C53D6610F9751
        13B9E48FD3B9B0A739388AEF8FF8311288041845B76B006F155A302FCF8CF69E
        7E00F7A3664747FC00809A732EBCBA2952306EA7194BF6DF3EBBF6A848AB8E88
        446B3E1FA5B5FF18254DDDBD9F2DAF720D4FEEBDC455B8B0BB490610C0E8881F
        017F2421C1B70B2D98976F46DBEDA060B46CF080A6165C50D08615D5375F5C77
        D449ABEA1D44AB1B655A7544A675C7BCF4B7CFA5E54A8333ECB150A117B1AA4E
        C43AD36DACACE9C41AEE26564F62ADF116326BBA91506AC3C2121BD4D5DD586B
        BC15915BCDDDC49AB1FCD27D9D882BB686C9C5EFB2E083CAEF7395BC9BD2ABEE
        D2D2CFEE126D3E13A0CD670294DB12A09C53A3A4E43C8615139EEED446010A83
        88840A07E6E59BF1FB2D37303FDF8C79F91DE3CCCDEDC06BDBCC482EB321A5DC
        8637B6993137B7232C334E5E30FF6E9105A9136E8F713BCD48D45A2E669FF4D1
        96A641DAF4659088D6076BBA474A83E3FCE46B51532B83E10424696D58586C8E
        790F9D0EEF15593AD2AB3A9F5959DF45ACC93E0EE5B6E0016783ADB7AD4D7E52
        F1E205458D6B4AC9F85D3323B9B0D88284126BDB8613FD3FDF7EC14F7967FD94
        DB323C0EEDFC1A61845A60AA60FBAD8131FC70954C2CB521A1C4D294A4B5FE64
        DBF951D2FD27D89F9CE83375879517495DEBA1AC7A4F5686DEED0F2D28949C00
        8D49061BAAE43424134AAC58586C456A45F7D6B43D5D94A4B5D0E6D3C3C1DEE4
        E3B480330F79684DA397949CF4A2CAE431851EAA959C1B1A53A892F6473EDD89
        A5C1554AAAAEF364DAEECE39EFEFBD45EFEFBD4989A5D314D4D479C69AE8F258
        135D9ECFF05225C3894EA541803AC6E94E2C0D9F4292B5365FB2D6C62597D916
        A41FB845E995DD94B627C80C0886FF0DA1E284E7185E4C6539E1A0A6563ECF70
        42474AB9DD9D586AF525696DBE24AD4D4C29B75B93CBEC9793B4364352997D79
        4AB9EDF9D4722BA5E86CF441E52D5AB2AFEB9104FF3F004F4BDE6E330E332500
        00000049454E44AE426082}
      Transparent = True
      TabOrder = 4
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
      DropDownButton = True
      DropDownSplit = False
      DropDownMenu = popopcoes
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 1015
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
    Fill.Color = 6723891
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
      Width = 52
      Height = 23
      Caption = 'Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bfechar: TAdvMetroButton
      Left = -3
      Top = -2
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
  object Panel13: TPanel
    Left = 0
    Top = 612
    Width = 1015
    Height = 15
    Align = alBottom
    BevelOuter = bvNone
    Color = 6723891
    ParentBackground = False
    TabOrder = 5
  end
  object qrcaixa_mov: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcaixa_movCalcFields
    SQL.Strings = (
      'select * from c000044')
    Params = <>
    Left = 493
    Top = 315
    object qrcaixa_movCODOPERADOR: TWideStringField
      DisplayLabel = 'Caixa'
      DisplayWidth = 6
      FieldName = 'CODOPERADOR'
      Size = 6
    end
    object qrcaixa_movDESCRICAO_MOVIMENTO: TStringField
      DisplayLabel = 'Movimento'
      DisplayWidth = 21
      FieldKind = fkCalculated
      FieldName = 'DESCRICAO_MOVIMENTO'
      Size = 25
      Calculated = True
    end
    object qrcaixa_movHISTORICO: TWideStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 63
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcaixa_movVALOR: TFloatField
      DisplayLabel = 'Valor - R$'
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcaixa_movENTRADA: TFloatField
      DisplayLabel = 'Entrada'
      DisplayWidth = 10
      FieldName = 'ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcaixa_movSAIDA: TFloatField
      DisplayLabel = 'Saida'
      DisplayWidth = 11
      FieldName = 'SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcaixa_movCODIGO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object qrcaixa_movCODCAIXA: TWideStringField
      DisplayLabel = 'CX'
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrcaixa_movDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qrcaixa_movCODCONTA: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object qrcaixa_movMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrcaixa_movCODNFSAIDA: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODNFSAIDA'
      Visible = False
      Size = 10
    end
    object qrcaixa_movconta: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'CODCONTA'
      Visible = False
      Size = 30
      Lookup = True
    end
  end
  object dscaixa_mov: TDataSource
    DataSet = qrcaixa_mov
    Left = 429
    Top = 283
  end
  object POPPRINCIPAL: TPopupMenu
    Left = 525
    Top = 283
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = Incluir1Click
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = Alterar1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = Excluir1Click
    end
    object Relatrios2: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = Relatrios2Click
    end
    object Opes1: TMenuItem
      Caption = 'Op'#231#245'es'
      ShortCut = 119
    end
    object Sair2: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair2Click
    end
  end
  object popopcoes: TPopupMenu
    Images = ImageList1
    Left = 493
    Top = 283
    object N1: TMenuItem
      Caption = ':: TALOS 1.0.0.0 ::'
      Enabled = False
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MFECHAMENTO_CAIXA: TMenuItem
      Caption = 'Fechamento de Caixa'
      ImageIndex = 56
      OnClick = MFECHAMENTO_CAIXAClick
    end
    object AberturadeNovoCaixa1: TMenuItem
      Caption = 'Abertura de Novo Caixa'
      ImageIndex = 21
      OnClick = AberturadeNovoCaixa1Click
    end
    object ReaberturadeCaixa1: TMenuItem
      Caption = 'Reabertura de Caixa'
      ImageIndex = 55
      OnClick = ReaberturadeCaixa1Click
    end
  end
  object ImageList1: TImageList
    Left = 461
    Top = 283
    Bitmap = {
      494C01014F005100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004001000001002000000000000040
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000015415700285F85004887BA003F899C00357E4A0042864500649C6600B4CF
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7FBFD00EDE8
      E300A4774A00AE7A4100AD783C00AC773B00AC773B00A9743800A9753C009767
      3A00EAE5E000F7FBFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F9F60074AE
      78002A65810093C6F80090C8F8004084C8002367A80097C1B1007DBF9900307B
      3300629B6500ECF3EC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9D2EA00277ACD00BF8D
      5300B4804200D2AE8400D2AE8400D0AA7E00B8844600D1AD8200D2AE8400AF7A
      3E00A8753B003381CE00B3CFE80000000000D8D8D800CDCDCD00CACACA000000
      0000C4C4C400C2C2C200BFBFBF00BDBDBD00BABABA00B8B8B800B6B6B600B4B4
      B40000000000B1B1B100AFAFAF00BCBCBC0000000000F6FAF60067AC6C006FB6
      85004288A900DFF1FE005399D7001979BD004897C4004185B90072BF9F009FD9
      BB0065A779004C8C4F00EBF2EC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000297DD00081B9ED00C08E
      5400D7B89300CDA57700CBA27400B9926F00B17E4300C99E6D00C79B6800D2AD
      8400B783480082BBEE002A77C90000000000D3D3D300FEFEFE00E1E1E100CBCB
      CB00DEDEDE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00D4D4
      D400B4B4B400D1D1D100FEFEFE00AFAFAF000000000083C28A0075BF8C0098D6
      B200549D8A0079B5D4008FB6D00054C8E3005ADEF40077CFEC004395CF005495
      760080C0980066A87A00629B6500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A7DCE0077B2E900CDA5
      7800D1AD8200CFA87C00B68758004C4DA50076617B00B5834A00C3925B00C08D
      5400C69966007DB7EC002E77C80000000000D6D6D600FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00F4F4F400EDEDED00EBEBEB00E9E9E900E8E8E800EFEFEF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00B1B1B100D0EAD30055AF5F00B4E9D20068BB
      73006DBC700087A4840074B7D200C1F5FC0062DEF6005CE1F70078D2EF004495
      D60055947400A5DBBF002F7A3200B5D0B6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0B9A200C2915A00E1C9
      AF00B5814300B6824400B7875400495ACF004F5FD100B9864B00B27E4000BE89
      4D00CFA87C00BD8C5700CAB29D0000000000D9D9D900FEFEFE00C5B59300E3A8
      6800FEBA6300FEBB6400F6AD5C00CEAC8000D7D7D700EAEAEA00E9E9E900E7E7
      E700E7E7E700E7E7E700FEFEFE00B3B3B3008BCE940091D6AE009FDDB30083C5
      6F00A7CF7F00C4A45B00919A760076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004495D5006AB49E0080BD9B00629B65000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFD00D8BFA500B17C
      4000B37F4100DBBE9D00BD894B00C3B5BB005D66C700B2804C00D2AF8700C190
      5800AE7A3E00C9AE9500FDFBFA0000000000DCDCDC00FEFEFE00D3AA7800EEBB
      8D00FEBF6500F8A45300FEA55B00E3AE7300D7D7D700EDEDED00B6B6B600B6B6
      B600B6B6B600B6B6B600FEFEFE00B5B5B5006EC57900AFE8CE0082D38F00BEDB
      8900C2CA8100CBA15500D9AE5B00A5AE7F0078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F1004299D5008FC9BF00418544000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F5F100C7AA
      8C00B07C3E00D7BD9F00958170005471A300425DB400A1785E00D8BD9F00B37F
      4100CAAB8E00F9F6F3000000000000000000DEDEDE00FEFEFE00F9C78800CC9A
      7E00A1B4B800AFC2C400AB938900F2B97700D7D7D700F0F0F000EEEEEE00ECEC
      EC00EAEAEA00E9E9E900FEFEFE00B8B8B80065C47100BDEEDC0072D07C008FD0
      6B00BBDF9D00C6A65D00D2AF5D00C598520097BA8E007BD3EC00C3F5FC006BDC
      F5006CC9EC0062A2D600629FD1003B8350000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF9
      F700AF8E6C00527190009BCBF700AED3F600AED3F600A4CEF50050789900A88A
      6B00FAF8F600000000000000000000000000E1E1E100FEFEFE00FBCB8D00B2B0
      B4009CC7F200A0CDF7007499BC00FACB8D00D7D7D700F3F3F300B6B6B600B6B6
      B600B6B6B600B6B6B600FEFEFE00BBBBBB0066C57300BDEFDB0080D7820076DA
      6C00BEE49900CBDEA600C9A75C00C1BC6B00B7D98A0079CB8A007DD4E900B1E2
      F8008ABFE600ADD2F500C3DFFB00639DCD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000617FA100A5C9ED00AACBE900A6CFF500A7CFF500AACBE900A6CCED005881
      AD0000000000000000000000000000000000E3E3E300FEFEFE00FBCB8D008199
      B9004C7FB5002F629600254D7600F7C88C00D7D7D700F6F6F600F4F4F400F2F2
      F200F0F0F000EEEEEE00FEFEFE00BEBEBE0072CA7E00B2EBD1009AE1A1009CE9
      8C00D3ECB600CFE9C600CEB86D00CBB06500CAC8740075DA66004DCC810076BD
      E600B3D1EF00E4F2FE00ABD1EE00478CBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C659E00BCD6EE00A2C8EC009EC4E70073A0CC0080AFDC00B6D2EA002C6B
      A700FBFDFE00000000000000000000000000E4E4E400FEFEFE00FBCB8D00EEC1
      8700B09A7600A5957500CEAA7700FBCB8D00D7D7D700FBFBFB00EBB57300E5AD
      6900DFA45F00DA9C5500FEFEFE00C1C1C10093D69C0097DDB400B4EACB00B0EE
      A600C8EDA800D0E9C800D4CE8C00D8CA8A00CCB36500BBBB660099D5700067CE
      950057A4D70084B0DA00459CCF0057A497000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000103773007792B40089B6E3006692C20010345A0014385E001B3858000F31
      5400F8F9FA00000000000000000000000000E5E5E500F9F9F900F9F9F900F8F8
      F800F8F8F800F8F8F800F7F7F700F7F7F700F6F6F600F6F6F600F5F5F500F5F5
      F500F4F4F400F3F3F300F3F3F300C5C5C500DAF1DD0063C47000BFF2E100B4EE
      B300B4EFAB00C0ECB600D3E2B600D8D79B00D9D29400CCB46C00C6B26C00B4CA
      830093DE9900AEE6CC00479B4E00C4DEC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000365178000E488E000B3D75000B3D72000D3D7200103E6F000E3560001430
      500000000000000000000000000000000000F3F3F300EAEAEA00EAEAEA00E9E9
      E900E8E8E800E6E6E600E5E5E500E3E3E300E1E1E100DFDFDF00DDDDDD00DBDB
      DB00D9D9D900D7D7D700D5D5D500E7E7E7000000000098D8A10086D69F00BFF1
      DD00C6F1D500D4EED400CFE8CE00D4DAA500DBDDAA00DACC8F00D6C78A00C8C0
      8D00BCD4AE0079C690007DBD8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AEB0B300274C7C000E4889000E4887000D4480000B3D72001A3C5F00A2A5
      A800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFEFC0085D18F008BD7
      A100CCF4E700D3ECD900CDECD200CEDEAE00D5DDB400D3D3A100CDCFA000C3CF
      A90086C8900071BD7900F5FAF500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A1A5AB00123E79000C3D7C000B3B75001138680091969E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFD0099D8
      A10064C57100A4E0BA00B9E9CB00C4DFBD00C4D9B300BCD6AF00A5D6AB005FBE
      6A0089CD9100F7FCF80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9F1DC0095D79E0074CB7F0067C6730064C571006EC87A0090D59900D2ED
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000113D55F7285F87FB4988BDFB428DBCC17896AE53AAAAAA1E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B6583FB94C7F9FF91C9F9FF4185C9FF2367AAFF9DABB7FFAAAAAA210000
      00000000000000000000000000000000000000000000FCFCFF000353FF00014D
      FF00E5ECFE00000000000000000000000000000000000000000000000000F4F5
      FF000151FF000353FE00F9F9FD00000000000000000000000000F7FBFD00F6F5
      F500D1967900AA543700AC4B2A00AD492500AC472500A9472800A64C3100C67E
      5F00F4F2F300F7FBFD000000000000000000000000000000000069A8DF0D5A5A
      5A253D3D3DC44D4D4DDF494949F8474747FF474747FF454545FF474747ED3838
      38C65656562A69A9E10D00000000000000000000000000000000000000000000
      00004389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF458BC3FFA0AEBBFFABAB
      AB210000000000000000000000000000000000000000FCFFFF000151FF000050
      FF00E2E9FF00000000000000000000000000000000000000000000000000F1F7
      FE000050FF000151FF00F6F7FE000000000000000000B9D2EA00277ACD008762
      6200BE5F3400FDB86000FDB86100FDB86100FDB86100FDB86000FDB86000B048
      23007E6972003381CE00B3CFE80000000000000000006DA2D3792579CDFB5E5E
      5EFF4F4F4FFF848484FF848484FF808080FF545454FF838383FF848484FF4A4A
      4AFF454545FF2E7ECEF86DA2D383000000000000000000000000000000000000
      00001D699C637AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0EDFF4E9ADAFFA5B1
      BBFFABABAB21000000000000000000000000F3F7FF00ABC4FF000858FE000656
      FF00A0BAFD00ADCAFF00ADCAFF00ADCAFF00ADCAFF00ADCAFF00ADCAFF00A8C1
      FF000656FF000854FE00A7C1FC00EFF5FF0000000000297DD00081B9ED009E65
      5700F4BA8300FEAB5A00FDA75900FDA15600FD9B5200FEA25400FE9E4F00F7AD
      7700A35D490082BBEE002A77C9000000000000000000297DD1FE82BAEEFF5F5F
      5FFF8F8F8FFF7A7A7AFF777777FF6D6D6DFF4E4E4EFF727272FF6F6F6FFF8484
      84FF555555FF83BCEFFF2A77CAFE000000000000000000000000000000000000
      0000BABABA3B83A6B7F976B9D6FFC2F6FDFF63DFF7FF5DE2F8FF79D3F0FF4897
      DBFFA7B2BBFFABABAB210000000000000000DCE8FE00014DFF00115CFF00115C
      FF000C5BFE000C58FE000C58FE000C58FE000C58FE000C58FE000C58FE000C58
      FE00115CFF00135EFD00004CFE00D0E2FF00000000002A7DCE0077B2E900B29D
      9300FEB65F00FEB56200FDB16000FDAB5C00FDA45800FC9D5200FD964D00FE8C
      4200BB8E81007DB7EC002C76C7000000000000000000287CCEFC78B3EAFF7A7A
      7AFF838383FF7E7E7EFF5D5D5DFF494949FF4C4C4CFF555555FF646464FF5F5F
      5FFF6D6D6DFF7EB8EDFF2974C7F800000000000000000000000000000000BDBD
      BD3BBCBCBCF6E5E5E5FFB0D4E5FF77CBE7FFC7F7FDFF5EDCF5FF5AE1F7FF7BD4
      F1FF4A98DCFF9DAEBEFFACACAC2100000000DCE8FE000050FF00135EFF00135E
      FF000C58FE000C58FE000C58FE000C58FE000C58FE000C58FE000C58FE000C58
      FE00135EFF00135EFF00004CFE00D3E0FD0000000000E0C9BC0089534300FBC7
      AA00FED09700FDC66C00FDBE6700FDB86300FDB05D00FDA75800FC9F5300FEB6
      7900FDA87F00874F4100D3BBAF0000000000000000004C4C4C6C636363FFA4A4
      A4FF505050FF525252FF5B5B5BFFB8B8B8FFC1C1C1FF575757FF4D4D4DFF5A5A
      5AFF7E7E7EFF606060FE46464673000000000000000000000000C1C1C13BC0C0
      C0F6E7E7E7FFFDFDFDFFFBECD6FFBEC4A0FF79D3EEFFC7F7FDFF5FDCF5FF5BE2
      F7FF7AD6F2FF4E9FDEFFA1AFBBFFACACAC1FDCE7FF000459FF00286CFF004A7E
      FF000B56FF00115CFF00115CFF00115CFF00115CFF00115CFF00115CFF000E59
      FF003F7CFF003B79FE00034FFE00D3E0FD0000000000FFFEFE00DEB9A400C34B
      1E00F5E3D500FEE3A300FED37100FEC86800FEBF6200FEB55E00FEC07F00F5D6
      C500C4481E00D7AF9A00FDFCFB00000000000000000049494902777777894C4C
      4CFF4E4E4EFF979797FF595959FFABABABFFA5A5A5FF545454FF868686FF6262
      62FF4A4A4AFE44444478484848050000000000000000C5C5C53BC3C3C3F6E8E8
      E8FFFDFDFDFFFBECD6FFFDCD88FFFFD598FFC1CEB2FF7DD4EDFFC4F6FDFF6CDD
      F6FF6DCAEDFF63A3D7FF649DD0FF6F9BC138DDE9FF000053FB00C8D6FF00F2F3
      FF00135EFF00115CFF00115CFF00115CFF00115CFF00115CFF00115CFF000656
      FF00EDEFFE00E6F0FF000047FA00D2E3FF000000000000000000FDFAF900D9B3
      9D00BB471B00F3E1D3004D7AA8004C7AA7004C7AA7004D7AA800F2D5C200BD45
      1B00D4AC9700FBF8F600000000000000000000000000000000004848480E4949
      49834B4B4BFF989898FF5C5C5CFF557CA3FF557CA3FF4C4C4CFF989898FF4E4E
      4EFF4C4C4C844848480C0000000000000000C9C9C93DC7C7C7F6E9E9E9FFFDFD
      FDFFFBEBD3FFFFCC83FFFFD498FFFFD79EFFFFD69BFFB5C6A8FF81D5EDFFB2E3
      F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7000000000133F300C7D9FF00DFEB
      FD000656FF000450FF000450FF000450FF000450FF000450FF000450FF00004A
      F900D7E3FF00DDE9FF000622EB00F3F7FF00000000000000000000000000FDFB
      FA00A0827400336CA6009BCBF700AED3F600AED3F600A4CEF5003373AD00987B
      7000FBF8F7000000000000000000000000000000000000000000000000006946
      32083D3D3DAB416F9EFF9CCCF8FFAFD4F7FFAFD4F7FFA5CFF6FF4176A6FF3737
      37AC65422E0A000000000000000000000000CBCBCBF6EBEBEBFFFDFDFDFFFAFA
      FAFFFBF3E7FFFECE89FFFFD496FFFFD59AFFFFCF8BFFFDE2BCFFAFE4F4FF77BE
      E7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E800000000578AFF002368FF005A8C
      FF001C5DFD002065FF002065FF002065FF002065FF002065FF002065FF001D66
      FF004F87FF003D7AFF004579FC00000000000000000000000000000000000000
      00005B80AA00A5C9ED00AACBE900A6CFF500A7CFF500AACBE900A6CCED005681
      AD00000000000000000000000000000000000000000000000000000000000000
      0000305D8FC8A6CAEEFFABCCEAFFA7D0F6FFA8D0F6FFABCCEAFFA7CDEEFF2E62
      9ACC00000000000000000000000000000000CDCDCDFFFDFDFDFFFDFDFDFFFCFC
      FCFFF7F7F7FFFDF5EAFFFECF8AFFFFCC83FFFDE2BCFFFDFDFDFFDCDCDCFF92BB
      CAFF58A5D8FF85B1DBFF469DD0FF2B95D15E00000000000000003B79FE007CA7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000B3C7FF002E69FE0000000000000000000000000000000000000000000000
      00002E68A100D8E7F60096C4F0008DBAE4007EA8D00088B4DE00CCDEED002E6F
      AB00FBFDFE000000000000000000000000000000000000000000000000000000
      0000184878F79BB7D1FFA3C9EDFF9FC5E8FF74A1CDFF81B0DDFF96B3CEFF1A4C
      7EF96AA0D206000000000000000000000000CECECEFFFDFDFDFFE0E0E0FFCACA
      CAF9C8C8C8E2F7F7F7FFFBF3E8FFFDE3BDFFFDFDFDFFDEDEDEFFC3C3C3FFBDBD
      BD150000000000000000000000000000000000000000000000008CB5FF002368
      FF00000000000000000000000000000000000000000000000000000000000000
      0000477FFE006597FE0000000000000000000000000000000000000000000000
      00000B3D86007B96B70089B6E300709BC700143F6D001843710021446A00153E
      6800FAFBFC000000000000000000000000000000000000000000000000000000
      0000113667FF2A4B71FF4C759EFF3B638EFF11355BFF28527BFF1C3959FF1032
      55FF58738E0B000000000000000000000000D0D0D0FFFDFDFDFFCDCDCDFF0000
      0000CACACACDF3F3F3FFFBFBFBFFFDFDFDFFE0E0E0FFC7C7C7FFC0C0C0150000
      0000000000000000000000000000000000000000000000000000D7E3FF001D66
      FF00000000000000000000000000000000000000000000000000000000000000
      00002464FD00C8D6FF0000000000000000000000000000000000000000000000
      00000E4A960011579E000E4989000E4A8600104A8600144B8400114074001B3D
      6400000000000000000000000000000000000000000000000000000000000000
      0000375279FF255A93FF0C3E76FF245485FF0E3E73FF265584FF163E69FF1430
      50FE00000000000000000000000000000000D2D2D2FFFDFDFDFFE2E2E2FFCECE
      CEFFE0E0E0FFFDFDFDFFFDFDFDFFE2E2E2FFCBCBCBFFC4C4C415000000000000
      000000000000000000000000000000000000000000000000000000000000BBCF
      FF007EA4FD00DDE5FF00DCE8FE00DCE8FE00DCE8FE00DCE8FE00DDE5FF00A3BD
      FF00AAC3FF000000000000000000000000000000000000000000000000000000
      0000909FB800114E950011579A0011579800105292000E4986000E3E71008795
      A300000000000000000000000000000000000000000000000000000000000000
      00005F636980284D7DFF2D6196FF0F4988FF2C6093FF0C3E73FF1B3D60FF595E
      638E00000000000000000000000000000000D3D3D3FFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFE4E4E4FFCDCDCDFFC8C8C81500000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFD
      FF00195FFE004880FF00477FFE00477FFE00477FFE00477FFE004783FF001D62
      FE00F6FBFE000000000000000000000000000000000000000000000000000000
      0000000000008B9BB5001B4F91000F4A8F000E478900194881008595AA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000565D688D133F7AFF0D3E7DFF0C3C76FF123969FF4E56639D0000
      000000000000000000000000000000000000D5D5D5FFD4D4D4FFD2D2D2FFD1D1
      D1FFD0D0D0FFCECECEFFCDCDCDFFCBCBCB150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEE1D400D3B08C000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA47B0000000000E3CDB700D0AB
      850000000000E5D1BC00E1C9B00000000000000000000000000000000000D3EA
      F600000000000000000000000000000000000000000000000000000000000000
      0000D0E3F200FCFDFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A812900027A
      1D00DEEEE1000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECECEC00F5F5F500000000000000
      000000000000000000000000000000000000E8D7C40000000000E1CAB200CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E3CDB600E4CFBA0000000000000000000000000054AF
      DF0051A7D400B6D8EB0000000000000000000000000000000000C4DDEE004F97
      CD001875BB0000000000000000000000000000000000DFB49200D49C7300D095
      6700CD916200CA8D5D00C8895A00C6865500C2835100C283510008822C0042A0
      5E00147B2300A4814800CFA07C00000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00AFAFAF00B5B5B500F4F4F4000000
      000000000000000000000000000000000000E4CFBA00CDA57C0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E4CFB90000000000000000000000000075C8
      EB007FCBEA004BA7D300429DCD00A5CFE700B2D6EB00489BCF003494CE0063B8
      E2003C8FCC0000000000000000000000000000000000D6A07400F7F1EC00F6EF
      E900F5ECE500F3E9E100219651001B904900158E43000F8A3B00399E5D007FC0
      950045A2610016862F00A5875200000000000000000000000000000000000000
      00000000000000000000EEEEEE00B3B3B300DFDFDF00D7D7D700B5B5B500F4F4
      F4000000000000000000000000000000000000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A000000000000000000000000000000000092D5
      F0007ECDEE00ACE4F6008BD0EA0053AED9004AAAD9007AC9E90095DDF5006CC1
      E8005BA4D50000000000000000000000000000000000D8A37900F8F2ED00EAD1
      BD00FEFEFE00EAD2BE00289A5A008FC9A8008CC7A40089C5A00087C49D0069B5
      840081C1960047A465000F7D2500CFE6D4000000000000000000000000000000
      000000000000EEEEEE00B6B6B600E1E1E100FCFCFC00FCFCFC00D8D8D800B5B5
      B500F4F4F400000000000000000000000000CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A00000000000000000000000000AEE1
      F4006DC7EB00B0E8F80095DFF600A6E5F700A2E3F70090DDF5008BDAF5005FB8
      E3007DB9DF0000000000000000000000000000000000DCA77D00F8F2EE00EACF
      B900EACFBA00EACFBA00309E620093CCAC006EB98D006AB7880065B5840060B2
      7F0066B4810082C197003B9F5B00038027000000000000000000000000000000
      0000EFEFEF00BABABA00E3E3E300FCFCFC00FAEBD400FCD19600FCFAF600D8D8
      D800B6B6B600F4F4F4000000000000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100000000000000000000000000C5E9
      F70058BFE800B3E9F9005BCFF20051CBF10048C8F0003FC4EF009BE0F60053B0
      DE009DCCE70000000000000000000000000000000000DEA98100F8F2EE00E9CD
      B600FEFEFE00EACFBA0036A26A0095CDAF0093CCAC0090CAA9008FCAA70073BB
      8F0089C6A00045A4670008863400F0F8F300000000000000000000000000EFEF
      EF00BDBDBD00E4E4E400FCFCFC00FAEBD500FCCC8500FECE8B00F9D09600F8F6
      F200D8D8D800B6B6B600F4F4F4000000000000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A00000000000000000000000000FAFDFE006EC4
      E8008FD6F000B4EAF90061D1F20058CEF1004ECAF00044C7EF007ED7F40081CD
      EA00479FD100F2F8FC00000000000000000000000000E0AD8600F9F3EF00E9CA
      B100E9CBB200E9CBB2003CA46E0037A26D0033A067002F9C610054AE7B0090CA
      A9004EAA7300188F4500BB855200000000000000000000000000F0F0F000C1C1
      C100E6E6E600FCFCFC00FAEBD500FCCC8700FED49700FED59B00FECF8D00F6CB
      8C00FCFBFA00D8D8D800B6B6B600F5F5F500CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000FDFEFF0076C7E8006EC7
      E800BCEBF90078DAF50067D4F3005DD0F20054CCF1004AC9F00041C5EF009BDE
      F40056B0DA004EA2D000F4F9FC000000000000000000E2B08B00F9F5F000E9C8
      AD00FEFEFE00E9C8AF00FEFEFE00FEFEFE00FEFEFE00E7C6AB0038A2680059B2
      800027975600E9E1D500C58554000000000000000000F1F1F100C4C4C400E7E7
      E700FCFCFC00FAEBD500FCCC8700FED49700FED69D00FED59A00FECD8800FCE0
      B900FCFCFC00D6D6D600B4B4B400F8F8F800E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B1000000000080CDEB0071CAE900C3EE
      F90098E3F70078DAF5006DD6F40063D2F30059CEF20050CAF10046C8F00062CF
      F2009ADEF40054B0DA0057A7D300F7FBFD0000000000E4B38E00F9F5F100E8C5
      A900E8C5AB00E9C6AB00E8C6AC00E8C8AD00E8C8AF00E7C6AB003DA36D00309E
      6400E0C9B100F1E6DD00C789580000000000F2F2F200C8C8C800E8E8E800FCFC
      FC00FAEAD200FECB8200FED39700FED69D00FED59A00FECE8A00FCE1BB00FCFC
      FC00D8D8D800B8B8B800F8F8F8000000000000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A000000000091DDF4006AD1F0008CD9F3009FDF
      F500AEE6F700BFEDFA00B9EBF90069D5F3005FD1F20094DFF600A8E5F70090D9
      F2007ECEEE0063C2EA0041ACE10060B3E00000000000E6B69300FAF6F300E8C2
      A500FEFEFE00E7C3A800FEFEFE00FEFEFE00FEFEFE00E7C6AB00FEFEFE00FEFE
      FE00FEFEFE00F6F0EA00CA8E5E0000000000CCCCCC00EAEAEA00FCFCFC00F9F9
      F900FAF2E600FDCD8800FED39500FED49900FECE8A00FCE1BB00FCFCFC00D9D9
      D900BCBCBC00F9F9F9000000000000000000CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A00FBFEFF00D9F5FC00B5EBF90092E0
      F5006DD5F10045C7EC00A1DFF500B5EAF9009DE3F7009CDDF40069C7EC005CC5
      EA0082D4EF00A6E0F400CCECF800F2FAFD0000000000E8B99700FAF6F300E8C2
      A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2
      A500E8C2A500FAF6F300CD92630000000000CCCCCC00FCFCFC00FCFCFC00FBFB
      FB00F6F6F600FCF4E900FDCE8900FECB8200FCE1BB00FCFCFC00DBDBDB00BFBF
      BF00F9F9F900000000000000000000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1CAB2000000000000000000000000000000
      000000000000C9F0FA0073D1F100BEEDF900B7EAF90067C6EC00ABDEF3000000
      00000000000000000000000000000000000000000000EABC9A00FAF6F300FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FAF6F300D096690000000000CDCDCD00FCFCFC00DFDFDF00CACA
      CA00CDCDCD00F6F6F600FAF2E700FCE2BC00FCFCFC00DDDDDD00C2C2C200F9F9
      F9000000000000000000000000000000000000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A00000000000000000000000000000000000000
      0000000000000000000074D5F20099DDF40095DCF30050B9E400FDFEFF000000
      00000000000000000000000000000000000000000000EBBE9D00FAF6F3009BD4
      A40097D2A00093CF9C008FCD97008ACA920086C88D0081C588007DC2830079C0
      7F0075BD7B00FAF6F300D39A6E0000000000CFCFCF00FCFCFC00CCCCCC000000
      0000D4D4D400F2F2F200FAFAFA00FCFCFC00DFDFDF00C6C6C600FAFAFA000000
      000000000000000000000000000000000000CDA57C0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1CAB200D6B695000000000000000000000000000000
      00000000000000000000DCF5FC0048C9ED0062C9EE00C4E8F600000000000000
      00000000000000000000000000000000000000000000EEC5A700FAF6F300FAF6
      F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6
      F300FAF6F300FAF6F300D7A2770000000000D1D1D100FCFCFC00E1E1E100CDCD
      CD00DFDFDF00FCFCFC00FCFCFC00E1E1E100CACACA00FAFAFA00000000000000
      000000000000000000000000000000000000E7D5C100CEA8810000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA57C0000000000EFE2D5000000000000000000000000000000
      00000000000000000000000000008EE0F5006ED0F00000000000000000000000
      00000000000000000000000000000000000000000000F7E0D100F0C7AB00ECBF
      9E00EABD9C00EABB9900E8B99500E6B69200E5B48F00E3B18B00E1AE8700DFAB
      8300DCA87F00DBA47C00E1B5950000000000D2D2D200FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00E3E3E300CCCCCC00FAFAFA0000000000000000000000
      00000000000000000000000000000000000000000000EBDBCA00CEA881000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E4CFB900E2CBB400000000000000000000000000000000000000
      0000000000000000000000000000ECF9FD00DDF4FC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D4D400D3D3D300D1D1D100D0D0
      D000CFCFCF00CDCDCD00CCCCCC00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C862
      1AFFC65C19FFC45518FFC05217BF00000000000000000000000000000000B233
      129BB63912FF000000000000000000000000000000000000000000000000C862
      1AFFC055189B00000000000000000000000000000000BB4114BFB93E14FFB73A
      13FFB63912FF0000000000000000000000000000000000000000000000000000
      0000C04E16FFB741149B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B030119BB43312FF0000
      000000000000000000000000000000000000000000000000000000000000CD6B
      1EFFE1A87BFFD8915EFFC65918BF000000000000000000000000B63E14A0C664
      33FFB73C13FF000000000000000000000000000000000000000000000000CD6B
      1EFFD38142FFC45919A0000000000000000000000000BD4A16BFD2804EFFD894
      5EFFB73C13FF0000000000000000000000000000000000000000000000000000
      0000C45918FFCC713BFFB94515A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B43913A0C45F31FFB73913FF0000
      000000000000000000000000000000000000000000000000000000000000CF74
      2CFFE3AC83FFDB9765FFC8621ABF0000000000000000BD4A16A2CA6B38FFDA97
      63FFBB4114FF000000000000000000000000000000000000000000000000CF74
      2CFFE3AC83FFD38144FFC65C19A20000000000000000C05217BFD48553FFDA97
      63FFBB4114FF0000000000000000000000000000000000000000000000000000
      0000C9621AFFDFA375FFCF743CFFBD4A16A20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD4A16A2C96B37FFDA9562FFB94014FF0000
      000000000000000000000000000000000000000000000000000000000000D27B
      39FFE5B18AFFDE9D6DFFCD6B1EBF00000000C45A19A9D0773DFFDD9F6EFFDC9B
      6AFFBD4A16FF000000000000000000000000000000000000000000000000D27B
      39FFE5B18AFFE4AE86FFD68546FFC6601AA900000000C65918BFD68B57FFDC9B
      6AFFBD4A16FF0000000000000000000000000000000000000000000000000000
      0000CD6E23FFE1A87EFFE0A679FFD0773DFFBD5017A900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C45C19A9D0773DFFDD9F6EFFDC9B69FFBD4715FF0000
      000000000000000000000000000000000000000000000000000000000000D884
      45FFE8B691FFE1A477FFCF742CC0CB691EACD38144FFE0A77AFFDA9763FFDE9F
      70FFC05217FF000000000000000000000000000000000000000000000000D884
      45FFE8B691FFE3A97FFFE4B189FFD6874BFFC8631AACC8621AC0D9925EFFDE9F
      70FFC05217FF0000000000000000000000000000000000000000000000000000
      0000D27735FFE4AF87FFDFA172FFE1A97CFFD07A3FFFC05318ACB74515040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CB702A04CD6E27ACD68548FFE1A97CFFDB9866FFDEA171FFC05217FF0000
      000000000000000000000000000000000000000000000000000000000000D98B
      52FFE9BB98FFE6B38EFFD27B39ECDE9E6DFFE4AE86FFDFA171FFDB9762FFDFA3
      76FFC65918FF000000000000000000000000000000000000000000000000D98B
      52FFE9BB98FFE3AA7FFFE3AB82FFE5B28BFFDD9966FFCD6B1EECDFA374FFDFA3
      76FFC65918FF0000000000000000000000000000000000000000000000000000
      0000D68443FFE7B590FFE0A374FFE0A477FFE2AB81FFD37F43FFC65919B30000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D68041B3DC955FFFE5B38BFFE0A477FFDC9A67FFE1A67AFFC65C19FF0000
      000000000000000000000000000000000000000000000000000000000000DF92
      5CFFEBC09EFFE9BB98FFD68443F8E1A273FFE6B38EFFE1A779FFDD9C6BFFE1A8
      7EFFC8621AFF000000000000000000000000000000000000000000000000DF92
      5CFFEBC09EFFE6B087FFE6B189FFE8B792FFDF9D6EFFCF722AF8E2AB81FFE1A8
      7EFFC8621AFF0000000000000000000000000000000000000000000000000000
      0000DB8E53FFEABB99FFE3AA80FFE3AB81FFE4B18AFFD6884BFFC6621AE20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D98950E2E09D6BFFE8B895FFE3AB81FFDFA172FFE3AD83FFC9651BFF0000
      000000000000000000000000000000000000000000000000000000000000E19B
      65FFEDC4A5FFE8B48FFFD98B52BFD48041A4DD9764FFE6B590FFE2A97EFFE4AD
      85FFCD6B1EFF000000000000000000000000000000000000000000000000E19B
      65FFEDC4A5FFEABA97FFEABE9EFFDF9D69FFD17B39A4D27B39BFE0A273FFE4AD
      85FFCD6B1EFF0000000000000000000000000000000000000000000000000000
      0000E19762FFECC1A1FFE8B792FFE9BB99FFDD9761FFCD722CA4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D98D53A4E0A071FFE9BB99FFE5AF86FFE6B28DFFCF722AFF0000
      000000000000000000000000000000000000000000000000000000000000E2A0
      70FFEFC8ABFFEAB996FFDF925CBF00000000D684479EDF9A66FFE7B58FFFE6B2
      8DFFCF742CFF000000000000000000000000000000000000000000000000E2A0
      70FFEFC8ABFFEEC3A6FFE5A67AFFD8894E9E00000000D88445BFE3A87BFFE6B2
      8DFFCF742CFF0000000000000000000000000000000000000000000000000000
      0000E2A06EFFEEC7A8FFEDC2A3FFE3A475FFD684479E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DB905A9EE3A475FFE9BB99FFE8B995FFD47C3AFF0000
      000000000000000000000000000000000000000000000000000000000000E6A6
      77FFF0CBB0FFECBE9DFFE19B65BF0000000000000000D6854A8EDF9D69FFE7B4
      90FFD27B39FF000000000000000000000000000000000000000000000000E6A6
      77FFEFC8ADFFE8B088FFDF97628E0000000000000000D98B52BFE4AE84FFE8B7
      94FFD27B39FF0000000000000000000000000000000000000000000000000000
      0000E6A779FFEFC8ADFFE8B087FFDD95608E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DD95608EE5A67AFFEABD9AFFD9874AFF0000
      000000000000000000000000000000000000000000000000000000000000E8AB
      80FFF2CEB4FFEEC1A2FFE2A070BF000000000000000000000000D8894C87D989
      4AFED88445FF000000000000000000000000000000000000000000000000E8AB
      80FFE8A77BFEE2A27287000000000000000000000000DF925CBFE7B38BFFEABC
      9AFFD88445FF0000000000000000000000000000000000000000000000000000
      0000EAAB80FFE8A97CFEE2A27487000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DF996587E19762FEDD9059FF0000
      000000000000000000000000000000000000000000000000000000000000EAAB
      80FFEAAB80FFE8A97EFFE6A677BF00000000000000000000000000000000D98D
      5387D98950F4000000000000000000000000000000000000000000000000E8AB
      80F4E8A97E8700000000000000000000000000000000E19B65BFDF9560FFDD90
      59FFD98B52FF0000000000000000000000000000000000000000000000000000
      0000E8AB80F4E8A97E8700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E19B6B87E19965F40000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4DFEF005EA6D30057A2D200BDDAED00000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C7007B7B7B00757575007676760076767600767676007777770074747400A6A6
      A60000000000000000000000000000000000000000000000000000000000C795
      6100C9976400C9966400C9966400C9966400C9966300C8966300C8966300C997
      6400C7946100000000000000000000000000000000000000000000000000C795
      6100C9976400C9966400C9966400C9966400C9966300C89663006A7F4B00216C
      3800186A36002472400084B09400000000000000000000000000000000000000
      0000DCEDF60077B7DB002C8DC7008ECCEA006EB6E1003F8DC7006BACD700D5E7
      F30000000000000000000000000000000000000000000000000000000000B0B0
      B000C9C9C900C9C9C900C9C9C900C9C9C900CACACA00C9C9C900C8C8C8007070
      700000000000000000000000000000000000A1A1A1007979790057575700C694
      6000F8F6F500F8F0EB00F8F0EA00F7EFE800F6ECE500F3E9E000F1E7DD00F9F7
      F500C6936000232323004A4A4A0095959500A1A1A1007979790057575700C694
      6000F8F6F500F8F0EB00F8F0EA00F7EFE800F6ECE50082A78800278B520063B9
      8C0094D1B10063B98C00278B5200517E61000000000000000000EEF6FB0095C9
      E4003E9BCD0081C3E400CBF3FE00C3EEFE008AD1F00089CDEF005EA3D6002E8B
      C60085BADD00E7F2F8000000000000000000000000000000000000000000ABAB
      AB00D2D2D200A9A9A900C7C7C700A9A9A900C4C4C400A9A9A900CDCDCD007C7C
      7C00000000000000000000000000000000006A6A6A00A6A6A600B4B4B4008080
      8000AEABA900C4BFBC00C4BFBC00C4BFBC00C4BFBC00C4BFBC00C4BFBC00ACA9
      A7002B2B2B00B4B4B4009A9A9A00222222006A6A6A00A6A6A600B4B4B4008080
      8000AEABA900C4BFBC00C4BFBC00C4BFBC00C4BFBC001F6E3C0061B98A005FB9
      8600FEFEFE005FB8860066BB8E0018683500FAFDFE00B1D9EC0054AAD4007CBF
      DF00C6EDFB00CBF1FE00A7E7FE0093DFFD0040B9E60044B0E30089C9EE0081C0
      EA005296CF003D92C900A0C9E400F6FAFD00000000000000000000000000A9A9
      A900D4D4D400C2C2C200C1C1C100BFBFBF00BCBCBC00BCBCBC00CECECE007A7A
      7A00000000000000000000000000000000006F6F6F00B4B4B400B4B4B4009494
      94008080800080808000787878006D6D6D006060600051515100424242004141
      41006D6D6D00B4B4B400B4B4B400242424006F6F6F00B4B4B400B4B4B4009494
      94008080800080808000787878006D6D6D0060606000307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A360072BCDD0076BCDB00BEE4F500DAF5
      FE00C0EDFE00A4E4FE009EE2FE0093E0FD0045C0E90039B4E50036A9E10055AE
      E40086C5EC0073B2E300498FC90057A0D100000000000000000000000000A6A6
      A600D5D5D500A2A2A200C1C1C1009F9F9F00BEBEBE009F9F9F00CECECE007676
      76000000000000000000000000000000000074747400BABABA00BABABA008C8C
      8C00D3D3D300B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800D2D2
      D20082828200BABABA00BABABA002929290074747400BABABA00BABABA008C8C
      8C00D3D3D300B8B8B800B8B8B800B8B8B800B8B8B80047885F008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E001968360045A9D300E6FAFD00DCF5FE00C0EE
      FE00B6EAFE00AAE7FE00A3E3FE0095E0FD0047C5EA003FBCE8003CB3E50037A8
      E100319EDD006AB5E50082C3ED002987C500000000000000000000000000A2A2
      A200D7D7D700C5C5C500C3C3C300C0C0C000BFBFBF00BDBDBD00CECECE007373
      73000000000000000000000000000000000079797900D6D6D600D6D6D6009696
      9600D7D7D700BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00D6D6
      D6008D8D8D00D6D6D600D6D6D6003E3E3E0079797900D6D6D600D6D6D6009696
      9600D7D7D700BEBEBE00BEBEBE00BEBEBE00BEBEBE0087A6920060AA800094D3
      B300B9E5CF0069BA8E002C8E560029563A004EAED600E1F5FB00D3F2FE00C8EF
      FE00BDECFE00B2E9FE00ACE6FE007BD8FD0047C6EE0042C3E90042BDE7003EB4
      E50039AAE2003FA6E00082C4EB00328DC7000000000000000000000000009F9F
      9F00D9D9D9006EBD770075C47E009F9F9F00C1C1C1005D51D300CECECE006F6F
      6F00000000000000000000000000000000007D7D7D00F8F8F800F8F8F800AAAA
      AA00DEDEDE00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00DEDE
      DE00A2A2A200F8F8F800F8F8F800606060007D7D7D00F8F8F800F8F8F800AAAA
      AA00DEDEDE00CACACA00CACACA00CACACA00CACACA00CACACA0093AF9D005E97
      73004E8D65004889600095B9A2006060600051B1D700E1F5FB00D6F3FE00CDF1
      FE00C7EEFE00B9EAFE0091DAFA0055C0F00047C1F8003ABCEF0046C4EB0044BC
      E80041B4E50046B0E50087C9ED003490C8000000000000000000000000009C9C
      9C00DBDBDB00CACACA00C8C8C800C5C5C500C3C3C300C0C0C000CFCFCF006C6C
      6C000000000000000000000000000000000083838300FBFBFB00FBFBFB00CACA
      CA00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100C5C5C500FBFBFB00FBFBFB007070700083838300FBFBFB00FBFBFB00CACA
      CA00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100C5C5C500FBFBFB00FBFBFB007070700053B4D700E1F5FC00D9F3FE00D4F2
      FE00BCEAFE0088D4F60068C8F4004BB3E8008CD9FA008BDBFE0047C3F80037B5
      EB0047BEE7004EBAE7008BCFEF003793C9000000000000000000000000009999
      9900DDDDDD00F69C2000F69D2000F59E1F00F59F2000F4A02000D5CCBC006868
      68000000000000000000000000000000000096969600D1D1D100E7E7E7007C7C
      7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00E7E7E700C3C3C3006C6C6C0096969600D1D1D100E7E7E7007C7C
      7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00E7E7E700C3C3C3006C6C6C0055B6D800E1F7FC00D3F2FE00AFE3
      F90085CEF0007ECFF40077CFF4004BB0E300AFE3F900B5E8FE009AE0FE0077D5
      FD003FBCF4003CB4E8008FD4F0003895CA000000000000000000000000009595
      9500DFDFDF00F6991F00F6DAA200F5D9A200F5D9A400F4AE2F00D8CDBD006464
      640000000000000000000000000000000000DDDDDD0099999900CBCBCB00C68A
      4D00F8F3EC00FDE7D700FDE7D600FCE4D200FBE3D000F9DFC600F8DCC200F9F3
      EC00C6844900C2C2C20073737300CDCDCD00DDDDDD0099999900CBCBCB00C68A
      4D00F8F3EC00FDE7D700FDE7D600FCE4D200FBE3D000F9DFC600F8DCC200F9F3
      EC00C6844900C2C2C20073737300CDCDCD004FB4D800E0F7FD00CCEAF80091D1
      EC0083CBEA006EBEE40055B0DA003A93C700CDEBF900D8F4FE00B8E9FE0094DE
      FD0076D4FE00A4E3FE0083DBFA003193C9000000000000000000000000009393
      9300E4E4E400F7971E00F7D79C00F6D9A000F6D9A100F5AB2E00D8CEBD006060
      60000000000000000000000000000000000000000000CECECE0086868600C488
      4B00F8F3EE00FDE6D600FCE6D400FBE5D100FAE0CB00F7DBC100F5D9BC00F9F3
      EE00C382470060606000BCBCBC000000000000000000CECECE0086868600C488
      4B00F8F3EE00FDE6D600FCE6D400FBE5D100FAE0CB00F7DBC100F5D9BC00F9F3
      EE00C382470060606000BCBCBC000000000091D1E7004DB4D800A4D8EC00D1EA
      F400BDDDEC0094C8DD0088C2DA006FB7D50068B8DC008FD6F4007ECEF4009CDA
      F700A9E2F90083C9EB0050A5D40079B9DC000000000000000000000000008F8F
      8F00E7E7E700F8941D00F6982600F7961D00F6961D00F19C2A00DAD4CB005C5C
      5C00000000000000000000000000000000000000000000000000FBFBFB00C58B
      4E00F8F3EF00FBE5D200FCE6D200FAE2CC00F9DFC700F4D5BA00F2D3B400F7F3
      EF00C3844900F9F9F90000000000000000000000000000000000FBFBFB00C58B
      4E00F8F3EF00FBE5D200FCE6D200FAE2CC00F9DFC700F4D5BA00F2D3B400F7F3
      EF00C3844900F9F9F900000000000000000000000000CEEBF40078C6E1007DC5
      DF00D0EDF600F5FEFE00EFFDFE00CAECFA004FACD9008AD6F600A9E0F80094D5
      F10061B1DA0063B1D800C2E0F000000000000000000000000000000000009191
      9100D8D8D800DFDFDF00E3E3E300E3E3E300E0E0E000DDDDDD00DBDBDB005858
      580000000000000000000000000000000000000000000000000000000000C78C
      5000F8F4F000FBE2CE00FBE3CE00F9E0C900F8DCC300F3E8DE00F6F1EB00F4EE
      E800C27F4700000000000000000000000000000000000000000000000000C78C
      5000F8F4F000FBE2CE00FBE3CE00F9E0C900F8DCC300F3E8DE00F6F1EB00F4EE
      E800C27F47000000000000000000000000000000000000000000FCFEFE00B8E2
      F00064BEDD0091CEE400E5F7FB00E2F5FD00AEDCF100B1E3F60071BFE00055AE
      D600ACD7EB00F8FCFD000000000000000000000000000000000000000000C5C5
      C500ABABAB00A1A1A10099999900979797009898980096969600B2B2B2005555
      550000000000000000000000000000000000000000000000000000000000C78C
      5100F8F4F000FBE2CC00FAE2CC00F8DFC700F7DBC100FCFAF700FBE5CC00E1B5
      8300D5A78300000000000000000000000000000000000000000000000000C78C
      5100F8F4F000FBE2CC00FAE2CC00F8DFC700F7DBC100FCFAF700FBE5CC00E1B5
      8300D5A783000000000000000000000000000000000000000000000000000000
      0000F0F9FC00A2D8EA0055B6D9009BD4E90087CBE6004DAFD60098D0E700ECF6
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000929292005151
      510000000000000000000000000000000000000000000000000000000000C487
      4C00F6F1EB00F7F3ED00F7F2EC00F7F2EC00F7F1EB00F1E5D600E1B17C00DA94
      6800FDFBFA00000000000000000000000000000000000000000000000000C487
      4C00F6F1EB00F7F3ED00F7F2EC00F7F2EC00F7F1EB00F1E5D600E1B17C00DA94
      6800FDFBFA000000000000000000000000000000000000000000000000000000
      00000000000000000000E1F2F80083C9E40079C4E100DCEFF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000949494008787
      870000000000000000000000000000000000000000000000000000000000E7CE
      B800D6A97C00C78B4F00C78B4E00C9905400CA8F5400C4884C00DCAF8D000000
      000000000000000000000000000000000000000000000000000000000000E7CE
      B800D6A97C00C78B4F00C78B4E00C9905400CA8F5400C4884C00DCAF8D000000
      00000000000000000000000000000000000000000000359CD8003098D7002B93
      D600278FD500228BD4001D87D3001983D200147FD100107BD0000D78D0000975
      CF000672CE00036FCE00006DCD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0EEE1007BB4
      7E00CDE2CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003CA2D900BBEAF900BBEA
      FB00BEEDFD00C5F3FE00CDF7FE00D2F9FE00CFF7FE00C6F1FE00B9E8FB00B2E3
      F800AFE1F700AFE1F7000470CE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFD
      FE00E7EEF40000000000000000000000000000000000FCFDFC0095C4970060A6
      65006AAD6E004E985200DCEBDC00E7F1E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042A7DA00BEEBFA0058CE
      F40040AFEB004DB9EE0059C1EE005FC5EE005BC3EE004BB5EE0036A4E5002999
      E00037B7ED00B0E2F7000874CF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFBFD006494
      BA0021669C0080A8C500000000000000000000000000E9F3EA007DBB8100B6DD
      BA0066AB6B0074B579004E97510082B78500AACEAC0000000000000000000000
      00000000000000000000000000000000000000000000000000004CA2E900459D
      E7003D99E6003494E5001D8BE1001F8BE100208CE3001888E2001182E2000980
      E000027CDF000078DE0000000000000000000000000048ACDB00C0EDFA005ED2
      F6006BDAFB007EE4FE008EECFE0096F1FE0092ECFE007BDEFE005ACBF70045BD
      EE003BB9ED00B2E2F8000D78D000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFCFD006E9BC100548C
      BB0088B4DC00175E9600000000000000000000000000ABD2AE009BCC9F006EB1
      72008CC69100A9DBAE0075B57A00509A540076B67A0066A76900D0E4D100E1ED
      E20000000000000000000000000000000000000000000000000054A6EA00B5E5
      F80094D0F0004AA6E70059AEEA007CC1ED00BAEDFA00B9EDF800B6ECF800B2EC
      F800B1ECF800007CE1000000000000000000000000004DB1DC00C2EEFA0064D5
      F7004BB5EB0059BCEE0094EAFE002F96DC004C81AA0083E0FE0040A8E800319E
      E00041BDEE00B3E4F800127DD100000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFD007AA3C9006396C4009CC0
      E3006598C6003070A4000000000000000000F2F9F3007ABA7F0076B67B0090CA
      9600AADDB0009BD6A100A9DCAF0076B67B005FAB6400ADD7B1008AC390007CB3
      7F0096C29900E6F0E600000000000000000000000000000000005CAAEA00B3E2
      F700319EE5003AAAE800A7E8F7004DB9EA0059D5F2004FD3F20047D1F10041D0
      F100B3ECF8000780E20000000000000000000000000052B6DD00C5EFFB0069D8
      F7007BE1FC008FE7FE0098E8FE00319EDE00538AB10089E1FE0069CFF8004FC4
      F00045C0EF00B5E6F8001782D200000000000000000000000000FFFEFE00E8CE
      B900DAB29200D2A57F00CFA07B00D1A68400ADA0980074A1CB00AACAE70075A3
      CD003F7AAE00DEE8F1000000000000000000AED5B1007EBC830096CD9B00ACDE
      B2006EB2730095D49C009CD7A200A9DCAF0077B77B0071B97500C2E6C700B1D9
      B4006CB97100559D5800ABCDAC00DAE9DA0000000000000000005CABEB0054AC
      EA0046AEEA00ABE8F800ACE9F90055BAEA0061D8F30059D5F2004FD3F20048D1
      F200B6ECF8001084E30000000000000000000000000057BADE00C6F0FB006EDB
      F80055BAEC0060BCEE009AE6FE0034A5E1004AA3E0008FE1FE0048ACE80037A3
      E20048C3EF00B7E7F8001D87D3000000000000000000FFFEFE00E8C9AF00E7C8
      AD00F4E0CC00F6E4D200F6E4D000F2DCC700DEB99B00C6A7900085ADD4004F86
      BA00E1EAF3000000000000000000000000007ABA7F008DC79200AEDEB400A0D9
      A60097D69E0096D59D007DBF820081C08600AADCAF0078B87C0062AD6600C3E6
      C700C0E3C300B8DFBD004E995200F3F8F30000000000000000005DACEA0082C2
      EF00D2F2FB00D0F2FB00B1ECF9005ABBEC006BD9F30061D8F30059D5F20050D3
      F200B9EDFA001989E4000000000000000000000000005BBEDF00C7F2FB0074DE
      F80088E5FC0094E6FE0099E4FE00A9EDFE00A7ECFE0098E2FE0073D4F80058CB
      F2004EC7F000BAE8F900238CD4000000000000000000F1DBC700ECCFB600F7E7
      D800F4DDC700F2D7BC00F2D5BA00F3DAC100F6E3D100DEBA9C009F969400E3EC
      F50000000000000000000000000000000000C7E4CA007CBA81008EC79300AFDF
      B500A1D9A7007EC08400A3CFA600DCEDDE007FB78200AADDB00079B87E00559E
      5900C3E6C70077B77B00A3CAA50000000000000000000000000070B5ED009DD0
      F30077C9EF0071C6EF006DC5EF005FBDEC0075DCF4006BDAF30063D8F3005AD5
      F200BDEEFA00228EE7000000000000000000000000005FC1E000C8F2FB00CAF2
      FC00D3F5FD00D6F5FE00D7F3FE00DFF7FE00DEF7FE00D9F4FE00CCF0FB00C1EC
      F900BCEAF900BCEAF9002A92D5000000000000000000EDCDB100F6E6D600F5E0
      CB00F3DAC100F3D9BF00F2D7BC00F2D6BA00F3DAC100F2DDC800D1A787000000
      00000000000000000000000000000000000000000000EEF7EF007FBC83008FC8
      9400AFDFB50084C18900F6FBF70094C19600DCEDDE0081C18600AADDB0007AB9
      7E00579F5B0058A05C00FCFDFC0000000000000000000000000078B8EF00DAF5
      FB009BE6F70094E4F7008EE2F60085E0F6007DDEF40075DCF4006CDAF30063D8
      F300BFEFFA002B93E80000000000000000000000000060C2E000879FA7009090
      90008D8D8D0059B8DB0054B7DE0050B4DD004CB0DC0048ACDB0045A7D6007777
      770075757500647D8C003098D7000000000000000000EFCDAE00F8EBDE00F4DE
      C700F4DCC500F3DBC200F3D9C000F2D8BD00F2D6BC00F7E5D200D2A57F000000
      00000000000000000000000000000000000000000000000000000000000082BE
      860090C99500B0DFB500D8F2DC00F6FBF700A3CFA6007DBF83009ED8A400ABDD
      B1007ABA7F0058A05C00000000000000000000000000000000008BC4F300DCF6
      FC00A1E7F7009CE6F70094E4F7008EE2F60086E0F6007EDEF50076DCF4006CDA
      F300C3EFFA003697E90000000000000000000000000000000000B0B0B000C5C5
      C50093939300FBFBFB0000000000000000000000000000000000FBFBFB007C7C
      7C00AAAAAA0095959500000000000000000000000000F3D2B400F8ECE000F5E0
      CB00F4DEC800F4DDC600F3DBC300F3DAC100F3D9BF00F7E6D500D6AA86000000
      0000000000000000000000000000000000000000000000000000000000000000
      000083C0890091CA9600B0E0B50084C289007FC0840098D69F0097D69E009ED8
      A400ABDEB1007CBA80005DA2610000000000000000000000000092C7F400E0F6
      FC00A9E9F800A2E7F8009CE6F70095E4F7008FE2F60087E0F6007FDEF50076DC
      F400C7F0FA003F9DEA0000000000000000000000000000000000BBBBBB00C3C3
      C300A0A0A000EDEDED0000000000000000000000000000000000EBEBEB008888
      8800A8A8A800A3A3A300000000000000000000000000F7DBC000F8EADD00F6E6
      D500F5E0CB00F4DFC900F4DDC700F4DCC400F5E0CA00F4E1CF00DEB898000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000085C18A0092CB9700B0E0B600A2DAA8009AD7A10072B37600AEDE
      B30086C28B0064A96800F6FAF60000000000000000000000000096CBF500F8FC
      FE00EFFAFD00EFFAFD00EFFBFD00EDFAFC00EEFAFC00EEFAFC00EFFAFC00EFFA
      FC00F6FCFD0049A2EC0000000000000000000000000000000000D3D3D300B9B9
      B900BEBEBE00A5A5A500F2F2F200FDFDFD00FDFDFD00F1F1F10092929200A7A7
      A7009D9D9D00C3C3C300000000000000000000000000FBE9D700F7E1CB00F9ED
      E200F6E6D500F5E1CD00F5E0CA00F5E2CF00F8E9DC00EBCEB400EBD3BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086C28B0093CB9800B1E1B600A2DBA900AFDFB5008BC5
      91006DB07200F7FAF70000000000000000000000000000000000B1DBFC00F9FD
      FE00F9FDFE00F9FDFE00F9FDFE00F9FDFE00F9FCFD00F9FCFE00F9FDFE00F9FD
      FE00F9FCFE0052A7ED0000000000000000000000000000000000FBFBFB00ADAD
      AD00C3C3C300BDBDBD00A0A0A000959595009292920096969600ADADAD00ADAD
      AD0095959500FBFBFB00000000000000000000000000FFFFFE00FAE3CD00F8E1
      CC00F9EBDD00F8EDE100F8ECE100F7E8D900EFD4BC00ECCFB600FFFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087C28C0093CC9900B2E1B60092CA970076B6
      7B00F7FBF7000000000000000000000000000000000000000000B5DEFD00A1D1
      F9009BD0F80096CCF70091C9F6008BC5F50084C1F4007DBEF30075B9F3006DB5
      F00064B1EF005CACEF000000000000000000000000000000000000000000EEEE
      EE00ADADAD00BBBBBB00C9C9C900CBCBCB00C9C9C900C1C1C100ACACAC009A9A
      9A00E9E9E900000000000000000000000000000000000000000000000000FBEA
      D900F9DCC200F5D5B800F3D2B400F2D3B700F4E0CD00FFFFFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000088C38E0095CC9A007FBD8400F8FB
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00D0D0D000B9B9B900B0B0B000ADADAD00B2B2B200C8C8C800FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008AC48F00F8FBF8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004AA0D5004298CF004092
      CE0097C6DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000174259002A6188004B89BD006FA8CC00E3EDF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1E7E300CAAA9B00A16A50008F573D008D563D0099685100C5A99B00EEE7
      E3000000000000000000000000000000000066BBE600C3EAF6007EE0F5009EE5
      F6003E90CB008EBFD700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DAB69F00CFA18500C083
      5E002C64810093C6F80090C8F8004084C8002264A50092716200A76E4D00A66D
      4C00A56E4D00A8755600BA8F750000000000000000000000000000000000DFC8
      BD00A2654700B17F5600D4B69200DAC2A500D9C2A500D1B38F00AA795100915F
      4700D8C6BD0000000000000000000000000043AFE200C5F3FA0042D5F00047DA
      F40081E0F4003C8ECA0088BAD300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000045964D00409048003B89420037823D00327C38002E76330029702E00256A
      2A00226526001F6122001C5D1F00195A1D0000000000C7906A00FEFEFE00FEFE
      FE004288A900DFF1FE005399D7001979BD004897C400488EC600DBE9F600FEFE
      FE00FEFEFE00FEFEFE00AB775900000000000000000000000000E2CCBD00A25B
      3B00CAA67C00D7BA9E00C29B7600B5896100B3855F00BD957100D0B29600C4A2
      760088563D00D8C6BD0000000000000000004DB3E300BAEEF90038D0F00027C4
      ED004DDBF50084E1F6003F92CD0086B8D100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00004B9E53007DB783007AB2800078AE7D0076AB7B0074A7780074A4770073A1
      760073A07600739E7600729C74001C5E200000000000C1815800FEFEFE00AE66
      2B007465560079B5D4008FB6D00054C8E3005ADEF40077CFEC004F9AD900D6D8
      DC00EFE4DD00FEFEFE00A66F4E000000000000000000F4ECE400B3774900CEA9
      8000D9BBA100BD906500B98B6100B6885E00B2835D00B0825C00AF825B00CCA9
      8C00C5A4780094614800EFE8E4000000000043AFE200EFFBFD00AFEDF90042D7
      F30027C7ED0040D6F30088E1F6004092CE007FB2CD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000008CBE910089BA
      8E0050A65A005CA56300579E5D00549A5A00509456004D8F520049894E004685
      4A0043804700407C4400709D73002063240000000000C3855900FEFEFE00AE66
      2B00CC9E73007C6D570075B9D600C1F5FC0062DEF6005CE1F70078D2EF004897
      DB00D8D9DC00FEFEFE00A7704E000000000000000000DBBC9B00BE905D00DFC1
      A700C4956B00C1906800E0CAB700FDFCFB00FEFEFD00E9DBCF00B3845D00B284
      5D00D3B49800AD7A5500C7A99B000000000090D0EE0043AFE20043AFE200AAE9
      F8004DD7F2002AC8EE003CD5F20089E0F6003F91CD004E93C100287CD5002B84
      D7005EA4CD00FFFFFF00FFFFFF00FFFFFF0000000000000000008FC39400C4DE
      C60056AE60006FB5770069AE710064A86A0060A265005A9B5F0056965B005391
      5800508D5500428147006F9E72002469290000000000C4855A00FEFEFE00AE66
      2B00CC9F7400AC632A00B0D5E60076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004A98DB00D5E7F600AB714F000000000000000000C58F5100DABB9B00D4AC
      8800C6976B00C2946800C0926600ECDED200F9F6F300BA8A6200B8896200B789
      6100C49C7700D1B792009F69510000000000FFFFFF00FFFFFF0043AFE200F0FB
      FD00BAF0FA007AE3F50027D1EF0036D3F40082DFF5003DA8E2009FF2FB00A8F4
      FB002A81D6005AA0CA00FFFFFF00FFFFFF00CDE3CF00CBE1CD007FBC8600A3CB
      A7005BB565006DB5750067AF6F0061A968005BA36200579D5D00529758004E91
      54005492590047874C0070A1730029702E0000000000C6875900FEFEFE00B36D
      3200CFA47D00B16B2D00FEFEFE00B4D5DC0078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F10050A1E1009C7967000000000000000000C0823B00E2C6AE00CFA1
      7500C4986A00C3966900C3956800EDDFD300FAF6F300BE8F6500BD8E6400BD8E
      6300BD916800DEC5A90095553A0000000000FFFFFF00FFFFFF0090D0EE0043AF
      E20044B1E20075C4E900ABEDF90038D5F1004CDAF40064E3F6003BCDF10031C8
      EE0084EEFA002A80D600569BC600FFFFFF00CEE5D000F3F9F40092CA9800C6E2
      C9005FBB6A0086C58D007CBE840074B87B006CB1740067AB6D0060A467005498
      5B005A9A5F004B8D500071A576002F77340000000000C7895A00FEFEFE00B675
      3F00D0A58200B5723700FEFEFE00EFE4DD00BADEE8007CD3ED00C3F5FC006BDC
      F5006CC9EC0062A2D6006397C800E5EFF70000000000C6884100E3C8AF00CFA2
      7900CB9C7000C6996B00C4976A00FEFEFE00FEFEFD00C2956800C0936700C193
      6700C2976C00DEC4AA0098583A0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFF0090D0EE006EC3E9007FE4F6003CD0F0005CDAF40068DEF5004FD6
      F20033CCEE0084EEFA00287ED5005298C400D0E7D200F5FAF60096CF9C00CEE7
      D00063C06E0099D1A0008FC9960084C28B007BBB820073B57A006DAE73005DA1
      630062A468005094560074AA7900347F3A0000000000C98B5B00FEFEFE00BB7E
      5300B97C4B00B97B4900FEFEFE00EFE4DD00EFE4DD00AAD4DE0080D4ED00B1E2
      F8008ABFE600ADD2F500C3DFFB006AA1D30000000000D19D5B00DFBB9E00DAB2
      9200CE9F7400CC9D7100CA9B7000DCBEA200DCBEA100C4986A00C4986A00C397
      6A00D0AA8400D7B99600AB6D510000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0043AFE200D4F6FB0088E6F7007DE3F6007DE3F6007DE3F60081E4
      F60046D5F10037CDEF00ADF4FB00287BD500D1E9D400F6FBF70098D39F00D3EA
      D50066C57200B1DBB500A5D5AB009CCFA1008FC8950085C18B007BBA820067AB
      6F006FAD7500579B5D007AB17F003A87410000000000CA8D5D00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B0E5F40076BD
      E600B3D1EF00E4F2FE00ABD1EE005895CB0000000000E6C8A400CC9B6700E6CA
      B300D3A47900CF9F7600CE9D7300FAF7F400FAF7F400CA9D7000CA9C7000CCA0
      7600DEBFA400B8895A00D2AE9A0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0043AFE200BDF1FA007DE3F6007DE3F60080E4F60093E8F700BBF0
      FA008AD9F20048DCF400C0F7FC002F8FD900D3EBD500F8FCF8009BD6A200D8EE
      DB007DCE88007DCD86007AC9840076C5800072C27C006FBD78006CB8740061AE
      690065AE6C0055A15D006BAB710067A76D0000000000CC916000FEFEFE00ECC3
      9A00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00AFBC
      B00057A4D70084B0DA00459CCF00B0D8EE0000000000F9F0E700D2995900D8B1
      8B00E5C9B200D5A87C00D0A47800E1C3A700E0C2A700CFA17500D0A37600DCBC
      A100CFAB8400B3754900F3EAE40000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0043AFE200DDF7FB008CE6F7007DE3F60093E8F700BBE8F70043AF
      E20041ABE200EDFBFD003197DC006AAFD500D4EDD700F9FCF9009EDAA500DEF1
      E000DBEFDD00D6ECD900D4EBD600D0E8D300CCE5CF00C9E2CC00C5DFC800A2C6
      A400C7DEC90085B58900000000000000000000000000CF976700FEFEFE00ECC3
      9B00F3D9C000F3D9C000F3DAC100F3DAC100F3DAC100F3DAC100F3DAC100F3DA
      C100ECC39A00FEFEFE00C0835800000000000000000000000000F1DCC500D091
      4E00D8B18B00E5CCB700DFB99C00D6AA8400D5A88100D8B29000E0C1AA00D3AD
      8500B3703D00E5D0BD000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0090D0EE0043AFE200CDF4FB008CE6F700A0EBF80043AFE20043AF
      E200FEFEFE0038A0DE006AAFD500FFFFFF00D5EED800F9FDFA00B2E2B800B2E1
      B700B0DFB600AEDDB500ADDBB300ABD9B000A9D6AE00A7D3AB00A5D0A9008ABD
      8F00A3CBA700A1C8A500000000000000000000000000D5A37700FEFEFE00ECC3
      9B00ECC39B00ECC39B00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00ECC3
      9A00ECC39A00FEFEFE00C78E640000000000000000000000000000000000F1DD
      C500D59B5A00CF9F6900DFBE9F00E2C4AD00E2C4AD00DEBB9E00C7966100C389
      4800E9D5BD00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0090D0EE0043AFE200CDF4FB009DEAF800BDF1FA00FDFE
      FE0043AFE2008BCBEB00FFFFFF00FFFFFF00D6EFD900FAFDFA00FAFDFA00FAFD
      FA00FAFDFA00FAFCFA00FAFCFA00F9FCFA00F9FCFA00F9FCF900F9FBF900CADF
      CC000000000000000000000000000000000000000000E1BD9D00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00D5A98800000000000000000000000000000000000000
      0000FAF1E700E9CBA700D7A16400CE904D00CC904900D09B5A00E3C6A100F7EE
      E40000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0090D0EE0043AFE200DDF7FB00DDF7FB0043AF
      E20090D0EE00FFFFFF00FFFFFF00FFFFFF00DEF3E100DEF2E100DEF2E000DDF1
      E000DCF0DF00DCEFDE00DBEEDD00DAECDC00D9EBDB00D8EADA00D7E8D900D6E7
      D8000000000000000000000000000000000000000000E9CFB800E3C1A400D7A8
      7E00CD925E00CC925F00CC915E00CB8F5E00CC916000CC926200CA906000CD94
      6800D4A78300D7AD8A00D6AB8A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0090D0EE0043AFE20043AFE20090D0
      EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ACC3DC00C0897400CA6F
      3300D17D4000D27D4000D07B4000CC793E00B35E3E00B1B9C800C3DCF300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0067A3D9395282B67AA45537B0CB70
      34FFD27E41FFD37E41FFD17C41FFCD7A3FFFA94823DF64749380727272FF5C5C
      5CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000519BE1007084AB00C77D5800FEB9
      6500FEB66000FEAF5D00FEB15C00FEB35B00DD87560086727D004B9AE500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F91DFE67185ACFFC87E59FFFFBA
      66FFFFB761FFFFB05EFFFFB25DFFB69976FF696969FF83757DFFA2A2A2FF8B8B
      8BFF656565575D5D5DFD595959B9FFFFFF000000000000000000000000000000
      0000F4ECE500D6B9A100B5835900AB734400AA714200B17D5200D2B49B00F2EA
      E3000000000000000000000000000000000079B88000569D5D00619B65004577
      490058745A007B7B7B0086868600888888008A8A8A008B8B8B00686868005B7C
      5E0047854D005F986300397A3E0058895A003584D20092ABCB00E6AE7200FEB7
      5E00FDAF5E00FDA65A00FC9F5400FE964C00FC924C00B29EA1004D95DD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003484D2FC93ACCCFFE7AF73FFFFB8
      5FFFFEB05FFFFEA75BFFFDA055FFA0A0A0FFC9C9C9FFA5A5A5FFCACACAFFC2C2
      C2FFA1A1A1FFC4C4C4FF6D6D6DFF6E6E6E03000000000000000000000000E7D5
      C600BA885E00D6BAA200E8D9C900EBDFD000EBDFD000E7D7C700D2B49B00AF7A
      4C00E2CEBE0000000000000000000000000069B8720065B36F0071BE7C0061B3
      6C005D906100E4E4E40081818100A8A8A800ABABAB0088888800E1E1E10075BB
      7D0083C98E0073C07F0054A35D0032753700DCC2B500B6745B00FCD6B100FED5
      8300FEC96400FEBF5D00FEB35500FEA65600FEC49100D57C5A00B7907E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00984A2155B46F55F5FDD7B2FFFFD6
      84FFFFCA65FFFFC05EFFF9B35CFFCDA37EFFC9C9C9FFBDBDBDFF989695FB9494
      94F0B5B5B5FFC2C2C2FF6D6D6D9C656565120000000000000000E9D8CB00BD8B
      6100E6D4C300E4D1BE00C8A58400B78D6600B5896400C4A07F00DFCBB900E2CF
      BD00AE754700E3CFC0000000000000000000E2F3E400C3E3C7007BB98200518D
      5700A1C0A300EFEFEF007D7D7D00A3A3A300A5A5A50084848400EFEFEF00A0D5
      A70058AE610069AD71009FC7A300BFD7C100FFFFFF00DCB29B00CE795900FEE7
      BF00ACA98500A69D7C009F917400F6C99B00E3937400C8826400FBF7F500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A83B0164CD7352F3FFE8
      C0FFADAA86FFA79E7DFFA5A5A5FFB7B7B7FFE1E1E1FF9C9C9CFF993F0B0AFFFF
      FF00959595F0D5D5D5FF999999FF656565FF00000000F7F1EB00C89C7800E9D7
      C800E2CCB900BF936A00B98B6100CEAF9300CEAF9300B6885E00B1866000D9BF
      A900E3D0BF00B5825800F4ECE600000000000000000000000000000000008A8A
      8A00EFEFEF00EEEEEE007A7A7A009D9D9D00A0A0A00080808000EEEEEE00F3F3
      F30070707000E5E5E5000000000000000000FFFFFF00FFFFFF00CA9E86006F7B
      950072ACE60080B0E2007CB1E6006B97C30073542B005BA3630058A7670058A6
      660055A2630053935500BFB2B900C3DCF300FFFFFF00FFFFFF00913302796D79
      94FA73ADE7FF81B1E3FFB4B4B4FFCACACAFFE8E8E8FF868686FF59A868FF59A7
      67FF939794FFE2E2E2FFB6B6B6FF878787FF00000000E5CFBC00E3CBB800E9D5
      C400C6987000BE8F6500BE8F6500F6F0EB00F5EFE900B6885E00B6885E00B488
      6200E1CDBA00D8BCA500D8BDA700000000000000000000000000000000009090
      9000F0F0F000EEEEEE0076767600989898009B9B9B007B7B7B00EEEEEE00F3F3
      F30075757500E5E5E5000000000000000000FFFFFF00FFFFFF00BBB6B90072A3
      D500ABD0F100ADD6FC00AFD3F40091BFE6005382880078CE930076CD8D0075CD
      8E0075CD90006AB37300598E59004B9AE500FFFFFF00FFFFFF00564A526672A4
      D6FEACD1F2FFAED7FDFFB0D4F5FFA5BACDFFD2D2D2FFABABABFF818181FF8A8A
      8AFFB4B4B4FFCACACAFF7D917DFF4C9BE6FF00000000D8B39500EEE0D200D8B4
      9400C6976B00C2946800C0926600BE8F6500BE8F6500BA8A6200B8896200B789
      6100CAA68500E9DBCB00C1946E000000000000000000C7DBEA00669CC2008C8E
      9000F5F5F500EEEEEE0073737300757575007676760077777700EEEEEE00F3F3
      F300898A8C004D608D00C1C8D90000000000FFFFFF00FFFFFF006B8EB700A6BE
      DA0095C4F000A0CFFA0095C5F200B5CEE3004079A60077CD8E0074CC88006FCA
      820069CA7A0069C878005F9560004D95DD00FFFFFF00FFFFFF00235794ABA7BF
      DBFF96C5F1FFA1D0FBFF96C6F3FFBABABAFFDADADAFFBFBFBFFFD6D6D6FFD8D8
      D8FFB8B8B8FFD4D4D4FF888888FF5095DBFF00000000D9B29200F1E3D800D0A4
      7900C4986A00C3966900C3956800F9F5F100F2E9E000C1946C00BD8E6400BD8E
      6300BF946C00EEE2D400C08F660000000000C7DCEC003A84BA005695C1003E80
      B200DBDDDF00ECECEC00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00DEE0
      E2002C4A8000395E8F00263F7900C1C8D900FFFFFF00FFFFFF00617DA8004F68
      9900627FAD007BA5D5005472A400425C9100436697007BCF9E0076CD960070CC
      8D0071CC87009CD7AA006CAF6F0088A68A00FFFFFF00FFFFFF0032578FC45069
      9AFF6380AEFF7CA6D6FF5573A5FF7E8CA8FFB6B8BAFF88CBA4FFC0C0C0FFBEBE
      BEFF81C491FFA6ADA7FF8DA88EFF3569399600000000E0BB9C00F1E4D900D0A5
      7D00CB9C7000C6996B00C4976A00E1CBB500F7F2ED00F5EDE700D8BCA000C193
      6700C49A7000EFE1D500C698700000000000619AC9005294C50079AED2005696
      C3004286B900CCCECF00EDEDED00EEEEEE00EEEEEE00EEEEEE00D8D9DA003763
      9600436F9E005B8BB0003B639300556A9600FFFFFF00FFFFFF00C5CBD5004461
      9500405A8F00405A8F00405A8F00405A8F006E8E9D00839892007C938800748B
      7E00A3D4B00081BE840077AD7B00F6F9F700FFFFFF00FFFFFF00243B5F434461
      95FD415B90FF415B90FF415B90FF415B90FF6F8F9EFF849993FFB6B7B7FFB4B4
      B4FFA4D5B1FF82BF85FF277E2DA02673300A00000000E9C9AF00F2E4D800DEBA
      9D00CE9F7400CC9D7100F4EAE200E3CAB300E6D2BE00FAF7F500E4D2BE00C397
      6A00D5B39000EDDFD100D2AB8A0000000000FAFCFD003E84BD005192C50078AD
      D2005496C3004186B900C9CACB00ECECEC00EEEEEE00D8DADB003C75A5004C7F
      AD006A99BC004674A100385C9000FAFBFC00FFFFFF00FFFFFF00FFFFFF00ACB6
      C4004B699A00405C910045629700567886006D79930072ACE60080B0E2007CB1
      E6006B97C30067906900F6F9F600FFFFFF00FFFFFF00FFFFFF00FFFFFF002541
      6661426195F1415D92FF436096FB2D5769CC6B7792FA73ADE7FF81B1E3FF7DB2
      E7FF6C98C4FF2B652EB62C75350BFFFFFF0000000000F5E4D600F3E2D300EEDB
      CC00D4A77D00CF9F7600FAF7F400FBF7F400FBF7F400FAF7F400D0A78000CEA3
      7A00E9D4C200E9D3C100E8D3C1000000000000000000FAFCFD003D80BD004F90
      C50075ACD2005394C5004088BB00D1D3D400D1D3D4004082B300548CBA0076A4
      C6004F83B1003D6FA200FAFBFD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BBB6B90072A3D500ABD0F100ADD6FC00AFD3
      F40091BFE6007D91AA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00564A526672A4D6FEACD1F2FFAED7FDFFB0D4
      F5FF92C0E7FF405E82ADFFFFFF00FFFFFF0000000000FDF9F500F0D2BA00F5E8
      DC00EBD7C500D6AB8000DBBA9900F5EBE200F4EBE100E3C7AD00D1A67A00E5CD
      B900F0E1D400DEBA9B00FAF4F000000000000000000000000000FAFCFD003B7F
      BB004C8FC30072AAD2005193C5003A82B9003B84B8005594C1007CABCE005490
      BB00427FB000FAFCFD000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007AA0C400B7CFE60095C4F000A0CFFA0095C5
      F200B5CEE3004A92C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000F54968DB8D0E7FF96C5F1FFA1D0FBFF96C6
      F3FFB6CFE4FF3183BFDFFFFFFF00FFFFFF000000000000000000FBF1E900F2D3
      BA00F6E9DE00EDDDCF00E2C0A600D7AD8800D6AB8500DCBA9B00EAD5C600F2E5
      D800E3C0A200F5E9DE000000000000000000000000000000000000000000FAFC
      FD003B7DBA004A8CC2006FA9D10070A9D10073ABD10079AED2005596C3004488
      BA00FAFCFD00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0078A3C60033ADE40064B7E5008CC7F5003AAC
      E5001CA6E400309DD600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00155F9D9234AEE5FF65B8E6FF8DC8F6FF3BAD
      E6FF1DA7E5FF2397D4EFFFFFFF00FFFFFF00000000000000000000000000FCF2
      EA00F5D9C300F8E8DB00F5E7DC00F2E4D900F2E4D900F4E6DB00F4E3D500ECCC
      B300F8ECE3000000000000000000000000000000000000000000000000000000
      0000FAFCFD00397AB800478AC10069A5CF006DA8D0005092C5004288BE00FAFC
      FD0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C3CFD90022A3DE0018A5E40018A5E40018A5
      E40018A5E40082ABC500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001C4A6F4321A3DFFD19A6E5FF19A6E5FF19A6
      E5FF19A6E5FF236B9990FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFAF700FBECE100F7DDC800F5D8C000F4D6BE00F4D8C200F8E8DB00FDF8
      F500000000000000000000000000000000000000000000000000000000000000
      000000000000FAFCFD00427EBA003476B600367AB8004687C000FAFCFD000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8BECD00309CD4001AA4E30023A1
      DE0076A6C300FAFAFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001A547C612597D3F11BA5E4FF21A0
      DEFB226F9F9D22374E06FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFCFD00E9F0F700E9F0F700FAFCFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F4539000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF0000000000636363995D5D5DD2585858FF8181
      81FF797979FF6E6E6EFF616161FF525252FF434343FF363636FF2B2B2BFF2323
      23FF232323FF242424FF232323D12323237A00000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE00000000006A6A6AFDA7A7A7FFB5B5B5FF8181
      81FF898989FF898989FF898989FF898989FF898989FF898989FF898989FF8080
      80FF2C2C2CFFB5B5B5FF9B9B9BFF232323FF00000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006537
      26005E35270061362600EBDFDD000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006537
      26005E35270061362600EBDFDD0000000000707070FFB5B5B5FFB5B5B5FF9595
      95FF818181FF818181FF797979FF6E6E6EFF616161FF525252FF434343FF4242
      42FF6E6E6EFFB5B5B5FFB5B5B5FF252525FF00000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006537
      26005E35270061362600EBDFDD000000000000000000ECE3E000B9763C000000
      0000AF6A3700AC673400A25B2D009C552B0000000000B7907000743D24006B3A
      25000000000062362600EBE0DE000000000000000000ECE3E000B9763C000000
      0000AF6A3700AC673400A25B2D009C552B00E5DED60086461B00000000000000
      00000000000062362600EBE0DE0000000000757575FFBBBBBBFFBBBBBBFF8D8D
      8DFFD4D4D4FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFD3D3
      D3FF838383FFBBBBBBFFBBBBBBFF2A2A2AFF00000000ECE3E000B9763C00B572
      3B000000000000000000A25B2D009C552B008E49230086461B00F7F5F4000000
      00006136250062362600EBE0DE000000000000000000ECE2DF00BC7A3E000000
      0000B6743C00B4703B00AC673700A862320000000000C094710080421D00753E
      23000000000063372600EBE0DE000000000000000000ECE2DF00BC7A3E000000
      0000B6743C00B4703B00AC673700A8623200E6DFD600934D2600E4DED7000000
      0000B197810063372600EBE0DE00000000007A7A7AFFD7D7D7FFD7D7D7FF9797
      97FFD8D8D8FFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFD7D7
      D7FF8E8E8EFFD7D7D7FFD7D7D7FF3F3F3FFF00000000ECE2DF00BC7A3E00BA78
      3E000000000000000000AC673700A86232009B542900934D2600F7F5F4000000
      00006637260063372600EBE0DE000000000000000000ECE3E000C17F3D000000
      0000D79F6200D69D6000B7743C00B36F3B0000000000CA9B72008D4922008243
      1D000000000069392500EBDFDD000000000000000000ECE3E000C17F3D000000
      0000D79F6200D3985900B7743C00B36F3B00E8DFD500A0592D00995A3100E8E2
      DC008B603D0069392500EBDFDD00000000007E7E7EFFF9F9F9FFF9F9F9FFABAB
      ABFFDFDFDFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFDFDF
      DFFFA3A3A3FFF9F9F9FFF9F9F9FF616161FF00000000ECE3E000C17F3D00C17F
      3F000000000000000000BF7E4200BB794000A6603100A0592D00F7F6F4000000
      00006F3C230069392500EBDFDD000000000000000000ECE3E000C8873C000000
      0000CD8D3C00CD8D3C00DBA25A000000000000000000D7A67500BC8250000000
      0000000000007C402000ECE2DF000000000000000000ECE3E000C8873C000000
      0000CD8D3C00CC8C3C00EACBA500F6F3EF00EBE1D400B16D3900D0A37C00B47A
      4B00000000007C402000ECE2DF0000000000818181F9FCFCFCFFFCFCFCFFCBCB
      CBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFC6C6C6FFFCFCFCFFFCFCFCFF707070FE00000000ECE3E000C8873C00C989
      3D000000000000000000E0AA6900DDA76A00C4854400FCFCFB00FAF8F7000000
      000087461C007C402000ECE2DF000000000000000000ECE3E000CB8B3B000000
      0000ECE1CF00ECE0CE00C8883E00DFA9690000000000DAA87600A8623100C28C
      60000000000086451C00ECE2DF000000000000000000ECE3E000CB8B3B000000
      0000ECE1CF00ECE0CE00CE8F4200E9C69D00ECE2D500B4713B00FAF9F700ECE7
      DF000000000086451C00ECE2DF0000000000818181D2D2D2D2FFE8E8E8FF7D7D
      7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D
      7DFF7D7D7DFFE8E8E8FFC4C4C4FF565656DC00000000ECE3E000CB8B3B00CE8E
      39000000000000000000E4B67C00E3B37C00BF7E4100E5C5A200000000000000
      0000904B220086451C00ECE2DF000000000000000000ECE2DF00CD8D3800EBCA
      9D00EBCA9D00EBCA9C00C9893D00C6853E00E8D1B600D2995F00AC673600A55F
      2F00DCCAB5008F4B2200EBE0DE000000000000000000ECE2DF00CD8D3800EBCA
      9D00EBCA9D00EBCA9C00C9893D00C6863E00E7C49D00B7753C00C2854F00DCBB
      9B00C4956F008F4B2200EBE0DE0000000000818181459A9A9AFFCCCCCCFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFC3C3C3FF747474FF4747474500000000ECE2DF00CD8D3800D090
      370000000000000000000000000000000000BC7A3D00B7753C00FAF8F6000000
      000098512A008F4B2200EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700CF8F3700CC8C3A00C7873E00C5843E00BC7A3E00B9773C00AF6B3800A964
      34009F582D0098512800EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700CF8F3700CC8C3A00C7873E00C5843E00BC7A3E00B9773C00AF6B3800A964
      34009F582D0098512800EBE0DE00000000000000000081818163818181F39898
      98FF9B9B9BFF9B9B9BFF9A9A9AFF999999FF979797FF969696FF969696FF9595
      95FF7F7F7FFF595959F3535353630000000000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500BC7A3E00B9773C00BE7E4600C184
      4D009F582D0098512800EBE0DE000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF00000000000000000000000000818181098181
      813F9C9C9CFFD7D7D7FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFD7D7D7FF9696
      96FF6666663F60606009000000000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD00000000000000000000000000000000000000
      00009C9C9CFF9C9C9CFF9B9B9BFF9B9B9BFF9A9A9AFF999999FF979797FF9696
      96FF0000000000000000000000000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD0000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F4539000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006537
      26005E35270061362600EBDFDD000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B0079402000744224006537
      26005E35270061362600EBDFDD000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B007B411F006D3B25006537
      26005E35270061362600EBDFDD000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006A3D
      24005E35270061362600EBDFDD000000000000000000ECE3E000B9763C00B572
      3B0000000000EDE8E100A25B2D009C552B008E492300DBD0C300865330006B3A
      25006136250062362600EBE0DE000000000000000000ECE3E000B9763C00B572
      3B0000000000EDE8E100A25B2D009C552B00B3825C00F2EFED0000000000D0C5
      B5006136250062362600EBE0DE000000000000000000ECE3E000B9763C00B572
      3B0000000000EDE8E100A25B2D009C552B00B07D5600F3F1EF00F5F3F100A688
      6B006136250062362600EBE0DE000000000000000000ECE3E000D69F6500E5CA
      AB00AF6A3700AC673400A25B2D00C4936A00BC916F0086461B00C7B3A100FCFB
      FB00C8BCAD0062362600EBE0DE000000000000000000ECE2DF00BC7A3E00BA78
      3E0000000000EEE8E100AC673700A86232009B542900CDA68700A4775300753E
      23006637260063372600EBE0DE000000000000000000ECE2DF00BC7A3E00BA78
      3E0000000000EEE8E100AC673700A8623200F4F2EF00FDFCFC00CFBDA9000000
      00006637260063372600EBE0DE000000000000000000ECE2DF00BC7A3E00BA78
      3E0000000000EEE8E100AC673700A8623200D4B39300DED2C400DACFC300FEFE
      FE006637260063372600EBE0DE000000000000000000ECE2DF00D9A26600E7CB
      AA00B6743C00B4703B00AC673700CD996C00C7997100934D260000000000C2AA
      94000000000063372600EBE0DE000000000000000000ECE3E000C17F3D00C17F
      3F0000000000F1EBE500BF7E4200B8763D00A6603100BC835300CAAB90008243
      1D006F3C230069392500EBDFDD000000000000000000ECE3E000C17F3D00C17F
      3F0000000000F1EBE500BF7E4200B8763D00F9F7F500F5F3F000C49C7E000000
      00006F3C230069392500EBDFDD000000000000000000ECE3E000C17F3D00C17F
      3F0000000000F1EBE500BF7E4200B8763D00AE6A3600D6AC8700CDB198000000
      00006F3C230069392500EBDFDD000000000000000000ECE3E000DCA56600EAD8
      C200D79F6200BF7E4100B7743C00D6A26F00D09E7200A0592D0000000000A06E
      4A000000000069392500EBDFDD000000000000000000ECE3E000C8873C00C989
      3D0000000000F5F2EE00E0AA6900D2965200B7743C00B16D3900FEFEFD00D1AB
      8A0087461C007C402000ECE2DF000000000000000000ECE3E000C8873C00C989
      3D0000000000F5F2EE00E0AA6900D2965200E5BE950000000000E6DED300F6F4
      F20087461C007C402000ECE2DF000000000000000000ECE3E000C8873C00C989
      3D0000000000F5F2EE00E0AA6900D296520000000000E6D7C500D8B08D000000
      000087461C007C402000ECE2DF000000000000000000ECE3E000E1AB6600EAD1
      AF00CD8D3C00CA8A3C0000000000F0E9E200DCAA7700B16D390000000000B77E
      5100000000007C402000ECE2DF000000000000000000ECE3E000CB8B3B00CE8E
      390000000000F6F3F000E4B67C00E3B37C00E6BE9400E2BB9200EEEAE4000000
      0000904B220086451C00ECE2DF000000000000000000ECE3E000CB8B3B00CE8E
      390000000000F6F3F000E4B67C00E3B37C00EADDCD00FEFDFD00DEC1A3000000
      0000904B220086451C00ECE2DF000000000000000000ECE3E000CB8B3B00CE8E
      390000000000F6F3F000E4B67C00E3B37C00F8F6F400EEE8E000E2CFB9000000
      0000904B220086451C00ECE2DF000000000000000000ECE3E000E2AD6700F7F5
      F100ECE1CF00E8BE8600E1AC6900F2EDE700DEAD7900B4713B0000000000E2D4
      C400FEFEFD0086451C00ECE2DF000000000000000000ECE2DF00CD8D3800D090
      3700000000000000000000000000000000000000000000000000000000000000
      000098512A008F4B2200EBE0DE000000000000000000ECE2DF00CD8D3800D090
      370000000000000000000000000000000000DAA36800FAF9F70000000000E2D2
      BE0098512A008F4B2200EBE0DE000000000000000000ECE2DF00CD8D3800D090
      370000000000000000000000000000000000DDA87000FDFCFB00FCFBFB00D6AA
      830098512A008F4B2200EBE0DE000000000000000000ECE2DF00DCA14C00EBCA
      9D00EBCA9D00E4B16D00C9893D00D99F5700D79E6100B7753C00C68C5700DDC0
      A200B88055008F4B2200EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500C6864700C3834300B9784000B572
      3E009F582D0098512800EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500BC7A3E00BE7D4100BB7A4300A964
      34009F582D0098512800EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500BC7A3E00BC7A3F00B36F3B00A964
      34009F582D0098512800EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700CF8F3700CC8C3A00C7873E00C5843E00BC7A3E00B9773C00AF6B3800A964
      34009F582D0098512800EBE0DE000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD0000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F4539000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006F3D24006537
      26005E35270061362600EBDFDD000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006537
      26005E35270061362600EBDFDD000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B007B411F006F3C25006537
      26005E35270061362600EBDFDD000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B0079402000724024006537
      26005E35270061362600EBDFDD000000000000000000ECE3E000B9763C00B572
      3B0000000000EDE8E100A25B2D009C552B00AF7A5200EDEAE500FAF9F800C4B3
      A1006136250062362600EBE0DE000000000000000000ECE3E000B9763C00B572
      3B0000000000EDE8E100A25B2D009C552B008E49230086461B00D8CEC300F1EE
      EC006136250062362600EBE0DE000000000000000000ECE3E000B9763C00B572
      3B0000000000EDE8E100A25B2D009C552B00B3825C00F0EDEA00F7F5F400BCA4
      8F006136250062362600EBE0DE000000000000000000ECE3E000B9763C00B572
      3B0000000000EDE8E100A25B2D009C552B0097552A00DBD0C300FCFCFC00CCBE
      AD006136250062362600EBE0DE000000000000000000ECE2DF00BC7A3E00BA78
      3E0000000000EEE8E100AC673700A8623200ECE8E100FAF9F800CDBAA5000000
      00006637260063372600EBE0DE000000000000000000ECE2DF00BC7A3E00BA78
      3E0000000000EEE8E100AC673700A8623200DAC4AA00D7C2AB00F2F0EE00FAFA
      F9006637260063372600EBE0DE000000000000000000ECE2DF00BC7A3E00BA78
      3E0000000000EEE8E100AC673700A8623200EAE5DE00F8F6F500CFBCA8000000
      00006637260063372600EBE0DE000000000000000000ECE2DF00BC7A3E00BA78
      3E0000000000EEE8E100AC673700A8623200DAC4AB0000000000C3A489000000
      00006637260063372600EBE0DE000000000000000000ECE3E000C17F3D00C17F
      3F0000000000F1EBE500BF7E4200B8763D00A7613100A8643100C49C7D000000
      00006F3C230069392500EBDFDD000000000000000000ECE3E000C17F3D00C17F
      3F0000000000F1EBE500BF7E4200B8763D0000000000F2EEEB00FAF9F800FDFD
      FD006F3C230069392500EBDFDD000000000000000000ECE3E000C17F3D00C17F
      3F0000000000F1EBE500BF7E4200B8763D00A6603100A25C2D00BA8F6E000000
      00006F3C230069392500EBDFDD000000000000000000ECE3E000C17F3D00C17F
      3F0000000000F1EBE500BF7E4200B8763D00F1EDE900FEFDFD00AB764F000000
      00006F3C230069392500EBDFDD000000000000000000ECE3E000C8873C00C989
      3D0000000000F5F2EE00E0AA6900D2965200B7743C00B16D3900F8F6F400E3D9
      CD0087461C007C402000ECE2DF000000000000000000ECE3E000C8873C00C989
      3D0000000000F5F2EE00E0AA6900D2965200C1814200F1EDE800E3D6C700F2EF
      EC0087461C007C402000ECE2DF000000000000000000ECE3E000C8873C00C989
      3D0000000000F5F2EE00E0AA6900D2965200E6D2B90000000000DFCDB900C496
      6F0087461C007C402000ECE2DF000000000000000000ECE3E000C8873C00C989
      3D0000000000F5F2EE00E0AA6900D2965200FAF9F700FAF8F700DDC7AE00C294
      6D0087461C007C402000ECE2DF000000000000000000ECE3E000CB8B3B00CE8E
      390000000000F6F3F000E4B67C00E3B37C00E8CCAB00EADFD200E4D7C7000000
      0000904B220086451C00ECE2DF000000000000000000ECE3E000CB8B3B00CE8E
      390000000000F6F3F000E4B67C00E3B37C00BB793D00C98C500000000000F2EF
      EC00904B220086451C00ECE2DF000000000000000000ECE3E000CB8B3B00CE8E
      390000000000F6F3F000E4B67C00E3B37C00E6C0960000000000D5A77D00D0A3
      7C00904B220086451C00ECE2DF000000000000000000ECE3E000CB8B3B00CE8E
      390000000000F6F3F000E4B67C00E3B37C00E7D1B70000000000D2A17600D9BD
      A000904B220086451C00ECE2DF000000000000000000ECE2DF00CD8D3800D090
      370000000000000000000000000000000000DEAA7300FAF9F70000000000E0CD
      B70098512A008F4B2200EBE0DE000000000000000000ECE2DF00CD8D3800D090
      370000000000000000000000000000000000BC7A3D00B7753C0000000000F2EF
      EC0098512A008F4B2200EBE0DE000000000000000000ECE2DF00CD8D3800D090
      370000000000000000000000000000000000DFAC750000000000000000000000
      000098512A008F4B2200EBE0DE000000000000000000ECE2DF00CD8D3800D090
      370000000000000000000000000000000000CA8C4A00ECE2D60000000000E5D9
      CB0098512A008F4B2200EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500BC7A3E00BF7E4000BB7A4200A964
      34009F582D0098512800EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500BC7A3E00B9773C00C3844C00BF81
      4A009F582D0098512800EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500C07F4000C3834300B9784000B572
      3E009F582D0098512800EBE0DE000000000000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500BC7A3E00BA783D00BC7C4400AB66
      34009F582D0098512800EBE0DE000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD0000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000406B0000406B0000406B
      0000406B0000406B0000406B0000406B0000406B0000406B0000406B0000406B
      0000406B0000406B0000406B0000000000000000000000000000000000000000
      0000E3E6F7009AA6E3004C61CB00354EC400334CC200455CC60094A1DE00E1E4
      F50000000000000000000000000000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F4539000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE2DF00ECE2DF00ECE3E000ECE2DF00EBE2DF00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF0000000000000000000000000000000000BFC7
      EF004B62D0005163D300838FE600949FED00949EEC00828DE4004B5CCD003C53
      C300B8C0E90000000000000000000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF000000000000000000ECE2DF0055970000528D
      00004C7F000048770000426B00003F6400003B5A00003A550000374D0000364B
      000034470700354A0000EBE2DF00000000000000000000000000C1CAF100465F
      D4007483E200A0ABF3007E8AEB005B66E3005A65E2007C86E9009EA7F0006E7B
      DC00314AC100B8C1E900000000000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000ECE2DF005A9E00005595
      0000508900004D81000047740000466E00003C6100003B5B000039520000374E
      000035480000354A0000EBE1DE000000000000000000E7EAFA00586FDD007787
      E500A2AFF4005666E6005564E5008891EC008791EB00525EE100515CE0009EA8
      F1006E7CDC004056C600E2E6F6000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006537
      26005E35270061362600EBDFDD000000000000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006537
      26005E35270061362600EBDFDD000000000000000000ECE3E0005EA300000000
      000000000000000000009CB86600FBFBFA00D8DFCE00517400008D9E6500F4F4
      F200C8CEBB00364B0000EBE2DF000000000000000000A7B4F0005F72DF00A3B2
      F600596DEA00586BE9005768E700FEFEFE00FEFEFE005461E4005360E200525E
      E1009EA8F1004F60D00097A3E0000000000000000000ECE3E000B9763C00B572
      3B000000000000000000A25B2D009C552B008E49230086461B00F7F5F4000000
      00006136250062362600EBE0DE000000000000000000ECE3E000B9763C00CA8D
      500000000000B7753D00A25B2D009C552B000000000000000000000000000000
      00006136250062362600EBE0DE000000000000000000ECE2DF0063A800000000
      0000AAC87B00A9C67900FDFDFC00D1DDC200FAFBFA00B1C28C0000000000D3D9
      C70000000000374E0000EBE2DF0000000000000000006A81E8008D9EEF008398
      F3005B72ED005A6FEB00596DEA008F9CF000A5AEF2005666E6005564E5005461
      E4007C88EA008490E6004D63CD000000000000000000ECE2DF00BC7A3E00BA78
      3E000000000000000000AC673700A86232009B542900934D2600F7F5F4000000
      00006637260063372600EBE0DE000000000000000000ECE2DF00BC7A3E00CE92
      540000000000BD7C4100AC673700A8623200F8F6F50000000000C8B19A00C5AE
      9A006637260063372600EBE0DE000000000000000000ECE3E00068AD00000000
      000083B632007EB21B0082B2210078AB000000000000C1D1A400000000006A89
      28009BAA760038520000EBE1DE0000000000000000005C75E9009FB2F600647F
      F1005E77EF005C75EE005B72ED00D2D8F900FEFEFE00586BE9005768E7005666
      E6005C6BE60098A4F0003B54CB000000000000000000ECE3E000C17F3D00C17F
      3F000000000000000000BF7E4200BB794000A6603100A0592D00F7F6F4000000
      00006F3C230069392500EBDFDD000000000000000000ECE3E000C17F3D00D398
      570000000000CD904E00BF7E4200B36F3B00BC7C4800F1EEEB00BF9575008243
      1D006F3C230069392500EBDFDD000000000000000000ECE3E00074B426000000
      000085BA460083BA4300F5F8F400E4ECDD0098BD5B006FA400000000000087A5
      4500AFBE8C003C5E0000ECE2DF000000000000000000607AED00A0B5F7006683
      F3005F7BF2005E79F0005E77EF00FEFEFE00FEFEFE005A6FEB00596DEA00586B
      E9005E6EE8009AA7F0004058CF000000000000000000ECE3E000C8873C00C989
      3D000000000000000000E0AA6900DDA76A00C4854400FCFCFB00FAF8F7000000
      000087461C007C402000ECE2DF000000000000000000ECE3E000C8873C00DCA1
      530000000000E4B57B00E0AA6900C1803F00C3834400BA794100E8E0D7000000
      000087461C007C402000ECE2DF000000000000000000ECE3E00077B736000000
      0000DDE9D200DDE9D100D9E6CB00E6EDDF000000000094BB5400F4F6F300FAFB
      FA00000000003E640000ECE2DF000000000000000000758CF20090A5F20087A0
      F700617FF300607DF2005F7BF200FEFEFE00FEFEFE005C75EE005B72ED005A6F
      EB008192F0008897EB00586FD7000000000000000000ECE3E000CB8B3B00CE8E
      39000000000000000000E4B67C00E3B37C00BF7E4100E5C5A200000000000000
      0000904B220086451C00ECE2DF000000000000000000ECE3E000CB8B3B00DFA5
      510000000000E8BF8800E4B67C00D79C540000000000EADED000E5D9CB000000
      0000904B220086451C00ECE2DF000000000000000000ECE2DF0078B73A00BBD4
      9800BBD49800BAD4980082B93E00B4CF8B00A3C672005EA100006B9F0000B3C9
      8B0084A44000436D0000EBE2DF000000000000000000B1BFFA006B80EB00A8BC
      FA006281F4006180F400617FF300FEFEFE00FEFEFE005E79F0005E77EF005C75
      EE00A4B4F7005C6FDC00A2AEEB000000000000000000ECE2DF00CD8D3800D090
      370000000000000000000000000000000000BC7A3D00B7753C00FAF8F6000000
      000098512A008F4B2200EBE0DE000000000000000000ECE2DF00CD8D3800E0A6
      5200000000000000000000000000E8BF8D00E8D3B9000000000000000000E1CF
      BA0098512A008F4B2200EBE0DE000000000000000000ECE3E00078B83B007BB9
      3F0079B83A0078B7360072B318006DB0000063A800005FA2000055950000518D
      00004B7E000046740000EBE2DF000000000000000000EBEEFE00748BF6008296
      EF00A8BCFA006281F4006281F400FEFEFE00FEFEFE00607DF2005F7BF200A5B8
      F8007A8CE9005C73E000E6EAFA000000000000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500BC7A3E00B9773C00BE7E4600C184
      4D009F582D0098512800EBE0DE000000000000000000ECE3E000CF8F3600D292
      3700D8993E00D5974100D1934400C9894200BC7A3E00C2814200B8753D00A964
      34009F582D0098512800EBE0DE000000000000000000ECE2DF007AB83D007AB8
      3D0078B7360076B62F0071B200006CAF000064A800005FA30000579800005491
      00004E8400004A7C0000ECE2DF00000000000000000000000000CED6FD006C85
      F7008396F000A8BCFA0089A2F7006A88F5006A88F50088A1F700A7BBF9007E91
      EB005971E400C5CEF500000000000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF000000000000000000EBE2DF00EBE2DF00EBE2
      DF00EBE2DF00EBE2DF00EBE1DE00EBE2DF00EBE2DF00EBE2DF00EBE1DE00EBE2
      DF00EBE1DE00EBE1DE00EBE1DE0000000000000000000000000000000000CED7
      FD00768DF9006D82ED0091A5F3009FB3F7009FB3F70090A5F200677CE8006880
      EC00C8D0F80000000000000000000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD000000000000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD000000000000000000406B0000406B0000406B
      0000406B0000406B0000406B0000406B0000406B0000406B0000406B0000406B
      0000406B0000406B0000406B0000000000000000000000000000000000000000
      0000EAEEFE00B5C2FC007C93F9006B85F6006983F500768EF400B0BDF800E9EC
      FD0000000000000000000000000000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F45390000000000000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5E7F7009EA9E100536AC6003E58BF003953BE004B66C10097A7DB00E1E6
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007AC8EC002CA6DF002AA3DE0028A0
      DC00269DDB00249AD9002297D8001F92D5001A8BD2001584CE00107DCB000C76
      C8000870C500056BC2000267C0005D9CD600000000000000000000000000C2C8
      ED005465CB003B51CB007479E7008E91ED008E91ED007077E300324CC0003F5B
      BD00B9C4E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E512BBFB06331EFBB7038FABE77
      3CFBC17B40FBC27E42FBC28045FBC38247FBC38649FBC3864AFBC3874BFBC387
      4BFBC3874CFABD8349F4AC7440E18E512BBF47B5E500BDE2F400F3FBFD00EEFA
      FD00EDFAFD00EDFAFD00EEFBFD00EEFBFD00EEFAFD00EDFAFD00ECFAFD00ECFA
      FD00EBFAFD00F1FBFD00AACDEA00297ECA000000000000000000C5C9EE00505F
      CC005B64DF00A0A5F4007D85EE005A62E800585CE6007C83ED009D9FF300505C
      D6003351B900B9C4E70000000000000000008E512BBFB06331EFBB7038FABE77
      3CFBC17B40FBC27E42FBC28045FBC38247FBC38649FBC3864AFBC3874BFBC387
      4BFBC3874CFABD8349F4AC7440E18E512BBFA35D31DEF8F3EEFDF5ECE4FEFBF5
      F0FFFBF7F1FFFBF7F3FFFBF8F4FFFCF9F5FFFCF9F5FFFCF9F6FFFCF9F7FFFCFA
      F7FFFCFAF7FFF7F1ECFDEAD9CCF7AB7642DDC3E7F70061BEE700F3FBFD00B4EE
      F90057D9F40057D9F40056D7F20057D6F10057D5F10056D8F30050D7F4004DD6
      F30061D9F500E9FAFD004392D100B5D4ED0000000000E8EAF9006470D300606A
      E200A0ABF400535EEB004F5BE9004C58E8004D58E5004B55E5004F55E5009DA1
      F300535FD5003F5CBE00E2E7F50000000000A35D31DEF8F3EEFDF5ECE4FEFBF5
      F0FFFBF7F1FFFBF7F3FFFBF8F4FFFCF9F5FFFCF9F5FFFCF9F6FFFCF9F7FFFCFA
      F7FFFCFAF7FFF7F1ECFDEAD9CCF7AB7642DDBE6F3CFEFCF9F5FFECD0BCFFF9E4
      D6FF184259FF2B6188FF4C8ABEFF70A4C4FFE2DCD7FFFEEADDFFFDEADBFFFDE8
      D8FFF8E0CDFFEACBB3FFF3EBE3FFC78B50FE000000005DC0EA009CD6F000E6F8
      FC008AE4F70059DAF5005AD9F3003CA0D4003CA0D40053D5F10051D7F4004FD5
      F300D7F5FB0087BEE40054A0D8000000000000000000ACB0E9004A55DA00A1AA
      F5005563EF005165ED004C58E8004C58E8004C58E8004C58E8004B57E5005159
      E5009EA2F400334FC30095A5DB0000000000BE6F3CFEFCF9F5FFECD0BCFFF9E4
      D6FFFEECDFFFFEEBDFFFFEEBDEFFFEEBDBFFFEEBDCFFFEEADDFFFDEADBFFFDE8
      D8FFF8E0CDFFEACBB3FFF3EBE3FFC78B50FEC27646FFFDFBF8FFF9E3D2FFECCF
      B9FF2E6784FF94C7F9FF91C9F9FF4185C9FF2668AAFFD0C2BCFFFDE6D4FFF7DE
      C9FFEBCAB0FFF8DBC4FFF8F2ECFFC98C50FF00000000E2F4FB0036B1E400F2FA
      FD00C2F1FA005BDBF5005BD9F30063DEF50056CAEA0054D5F10053D8F40093E6
      F700E2F3FA001B89D000DEEDF80000000000000000007277DC00808BED007D90
      F6005C72F2004C58E8004C58E8004C58E8004C58E8004C58E8004C58E8004E5A
      E8007A82EF00747AE1004B64C30000000000C27646FFFDFBF8FFF9E3D2FFECCF
      B9FFF8E1D0FFFDE7D6FFF4D5BDFFE9BFA0FFE9BFA2FFF4D3BDFFFDE6D4FFF7DE
      C9FFEBCAB0FFF8DBC4FFF8F2ECFFC98C50FFC57D50FFFDFBF9FFFDE9D8FFF9E1
      D0FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF4687BDFFCDB9ACFFEAC5
      A9FFF8DAC2FFFCDFC6FFF8F3EDFFC88D50FF000000000000000078CCEE008BD1
      EF00E9FAFD0093E5F7005BD9F30046B0DC003CA0D40055D6F1005BDAF400DDF7
      FC007CBFE60087C3E8000000000000000000000000006468DA00A0AAF6006F85
      F7006781F500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE004C58
      E8005B65E900959BF0003855BD0000000000C57D50FFFDFBF9FFFDE9D8FFF9E1
      D0FFEBCAB3FFECC5A7FFE3B698FFF7E7DDFFF7E8DEFFE3B697FFECC3A4FFEAC5
      A9FFF8DAC2FFFCDFC6FFF8F3EDFFC88D50FFC9865BFFFDFBF9FFFDE8D7FFFDE6
      D4FF9CA2A5FF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0EDFF4E96D3FFD5B8
      A4FFFCDBC0FFFCDBC0FFF8F3EDFFC88C50FF0000000000000000F6FCFE0044B9
      E700C7E9F600E5F9FC005CD9F3003CA0D4003CA0D40056D6F100C6F2FB00BFE2
      F3003AA3DC00F5FAFD00000000000000000000000000696DDB00AEB8F8007E92
      F9006F84EF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE004C58
      E8005D69ED00959CF0003C54BF0000000000C9865BFFFDFBF9FFFDE8D7FFFDE6
      D4FFEDC6ABFFDCAA89FFF9ECE3FFFFFBF9FFFFFCFAFFF9EEE6FFDCA887FFEDBF
      9CFFFCDBC0FFFCDBC0FFF8F3EDFFC88C50FFCC8E66FFFDFBF9FFFDE5D3FFF1CC
      B2FFE3B596FFB0C8D2FF76BAD7FFC2F6FDFF63DFF7FF5DE2F8FF79D3F0FF4996
      D8FFD9BAA5FFFCD7B7FFF8F3EDFFC88C50FF000000000000000000000000B8E5
      F70070C7EC00F8FDFE005DDBF3003DA1D4003DA1D4005BD8F300ECFAFD0067BA
      E400B2DCF200000000000000000000000000000000007C7EE200A4AEF4009CAA
      F900768BEF00535EEB00535EEB00535EEB00535EEB00535EEB00535EEB006276
      F100808DF300777EE800556AC80000000000CC8E66FFFDFBF9FFFDE5D3FFF1CC
      B2FFE3B596FFF9EAE0FFFFF9F5FFFEF3EAFFFEF4EDFFFFFBF9FFF9EDE5FFE3B0
      8DFFF0C19EFFFCD7B7FFF8F3EDFFC88C50FFD09670FFFDFBF9FFF1CDB1FFE3B5
      96FFF9E9DEFFFEF7F1FFB0CAD3FF77CBE7FFC7F7FDFF5EDCF5FF5AE1F7FF7BD4
      F1FF4A96D8FFCAB2A3FFF8F4ECFFC88C50FF0000000000000000000000000000
      000059C2EB00A8DEF300ECF8FC003DA2D5003DA2D500D3F4FB00A1D6F0005CB8
      E5000000000000000000000000000000000000000000B5B4EF007C82E900CCD3
      FB008A9CF9007D92F6007489ED006B83F5006B83F5006B83F5006B83F5006278
      F200A3AEF7003D4ECF009FAAE00000000000D09670FFFDFBF9FFF1CDB1FFE3B5
      96FFF9E9DEFFFEF7F1FFFDEDE1FFFEEFE4FFFEF1E7FFFEF3EAFFFFFAF7FFF9EC
      E3FFE2AE8AFFF0BC95FFF8F4ECFFC88C50FFD39D7BFEFBF6F2FFE3B496FFF9E8
      DCFFFEF5EEFFFDE9DAFFFDEADCFFBEDBDDFF79D3EEFFC7F7FDFF5FDCF5FF5BE2
      F7FF7AD6F2FF4F9BD7FFD0D4D7FFC88C50FE0000000000000000000000000000
      0000DAF2FB0039B7E700F8FCFE0093E8F8009DEAF900EBF9FD0030A9E000D7EE
      F9000000000000000000000000000000000000000000EBEBFB007877E200A2A6
      F200D3DAFC008699F9007E90EF00798DF0007E93F7007D91F800758BF700A7B5
      F700626DE2005767CC00E6E8F70000000000D39D7BFEFBF6F2FFE3B496FFF9E8
      DCFFFEF5EEFFFDE9DAFFFDEADCFFFDECDEFFFDEDE1FFFEEFE4FFFEF1E7FFFFFA
      F6FFF9EAE0FFE2AA85FFF1E4D9FFC88C50FED7AB91DCFDFAF8FEFCF5F1FFFFFC
      F9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCFAFFC1E9F4FF7DD4EEFFC4F6FDFF6CDD
      F6FF6DCAEDFF63A3D7FF69A1D4FF9C7C5AE00000000000000000000000000000
      00000000000073CDEF0093D7F100F2FBFD00E6F9FD008ED2EF0085CEEE000000
      0000000000000000000000000000000000000000000000000000CFCFF6006F6F
      E000A9ACF100D7DBFC00ADB9F90090A2F9008A9CF9009BA8FA00B9C6FB006F7A
      E8005361CD00C3C8ED000000000000000000D7AB91DCFDFAF8FEFCF5F1FFFFFC
      F9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCFAFFFFFCFAFFFFFCFAFFFFFCFBFFFFFD
      FBFFFFFDFCFFFBF6F3FFF8EFEAFDAB7743DBC89A7CBFD5A484F0D09770FBCC8F
      64FDCC8E62FDCB8E60FDCA8C5DFDC98B5BFDC88A58FD909785FE80D3EAFFB2E3
      F9FF8BC0E7FFAED3F6FFC4E0FCFF679DCFFD0000000000000000000000000000
      000000000000F1FAFE0043BDE900F0F9FC00D4EEF90042B7E700F1F9FD000000
      000000000000000000000000000000000000000000000000000000000000CFCF
      F6007878E1008D92EC00BDC2F700CBD2F800C3CAF800A9B3F300656FE100636D
      D500C6CAEF00000000000000000000000000C89A7CBFD5A484F0D09770FBCC8F
      64FDCC8E62FDCB8E60FDCA8C5DFDC98B5BFDC88A58FDC78856FDC68653FDC584
      50FDC4824DFCC1834DF7B27948E38E512BBF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000021B7E35A77BE
      E7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E80000000000000000000000000000
      000000000000000000008CD7F30084D3F00081D0EF00ACE0F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBFB00B6B5F0007C7EE100696ADD00676ADB007378DE00AEB2EA00E8E9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000032B0
      DE5358A5D8FF85B1DBFF469DD0FF2B95D15E0000000000000000000000000000
      00000000000000000000FDFEFF005CC6EE0068C9EE00FDFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000898989038383
      83CC7E7E7EFF797979FF747474FF707070FF6B6B6BCA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000174259002A6188004B89BD006FA8CC00E3EDF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C98A6100C2835700D28A6700E08E6F00DB8C6B00D98A
      6C00D6896D00CC8A6B00AA6C4300A55E2D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008F8F8F159292
      92FFD5D3D3FFE2E0DFFFDFDCDBFFE1DFDFFF707070F400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002D66840093C6F80090C8F8004084C800266AAD00D8E6F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA00EAEAEA00C5825400EECDB900DCFEFE0086EDC600A1F3D600A1F5
      D6008BEDC600DFFEFE00DCA18400AA693D00000000001838B2001838B2001838
      B2001838B2001838B2001838B2001838B2001838B2001838B2001838B2001838
      B2001838B2001838B2001838B200000000000000000000000000000000009090
      906F8B8B8BBDC4C2C1FFD4CFCEFF7B7B7BF67878789C797979D2747474FF7070
      70FF6B6B6BFF676767FF636363FF606060D70000000000000000F3F3F300C5C5
      C5004288A900DFF1FE005399D7001979BD004897C4003D83BC00A7B5C200F4F4
      F4000000000000000000000000000000000000000000F3F3F300C5C5C500A4A4
      A400A0A0A000AAAAAA00C27E5000EEB59900E9F2E70050BE83006EC8970070C8
      980053BE8300E3F3E800DC9B7A00A968390000000000F1F1F900EFF0F800EFF0
      F800EFF0F800F1F1F900EEEFF800EFF0F800F1F1F900EFF0F800EEEFF800EFF0
      F800EFF0F800EFF0F800EFF0F80000000000A7A7A78DA2A2A2CC9C9C9CCC9797
      97CC919191DE9E9E9EFF9A9A9AFF828282F8848484FF878786FF878685FFA2A0
      9FFFD3CECDFFD3CECDFFE8E5E5FF646464FF00000000E5E5E500A8A8A800CDCD
      CD009BB9CD0079B5D4008FB6D00054C8E3005ADEF40077CFEC004A96D6008893
      9D00E6E6E600000000000000000000000000E5E5E500A8A8A800CDCDCD00ECEC
      EC00F3F3F300F4F4F400C3805300E9B59600F2F2E900ECF0E500EEF0E500EEEF
      E500ECF0E400F2F4EC00D49B7800AF6F430000000000EFF0F8005568ED005062
      E1004858C9004452BC003E4AA5003C469800363F8600343B7D0032376E003136
      6A002F33640031366A00EEEFF80000000000AEAEAEFFE4E2E2FFD7D5D5FFD5D3
      D2FFD1CECDFFCAC4C3FFC8C3C2FFCDC9C8FFCCCACAFFCCCAC9FFD8D6D6FF7473
      73FFB9B1AEFFB7AFAEFFD3CECDFF686868FF00000000AFAFAF00DDDDDD00F2F2
      F200DADADA0095B7C80074B8D500C1F5FC0062DEF6005CE1F70078D2EF004796
      D90088929C00000000000000000000000000AFAFAF00DDDDDD00F2F2F200DADA
      DA00D1D1D100DADADA00C88A6000E5B49100E1A68000E0A68000DDA27C00DBA0
      7A00DA9E7800D89D7600D3997200BA7D560000000000EFF0F8005B6EF1005668
      EA004E5FDA004A5ACE004350B5003F4CA9003942910037408700333A76003136
      6D002F34660030356800EDEEF70000000000B4B4B4FFE0DDDDFFA7724DFFA772
      4DFFA7724DFFA7724DFFA7724DFFA7724DFFA7724DFFA7724DFFDAD5D4FF7878
      78FFBAB2B1FFB9B1AFFFD4CFCEFF6D6D6DFF00000000B2B2B200EFEFEF00DDDD
      DD00D3D3D300D1D1D10098BDCE0076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004694D700D6E7F7000000000000000000B2B2B200EFEFEF00DDDDDD00D3D3
      D300D1D1D100DADADA00C98C6400E9B79800DCA47D00DCA57F00DAA27B00D89F
      7900D89F7800D79E7700D79D7700BE835C0000000000F1F1F9006173F3000000
      0000F4F5FA00BBBFF100848CDC00000000000000000000000000B9B9D1000000
      00000000000031366A00EEEFF80000000000BABABAFFDEDBDBFFB5805AFFCE98
      70FFD8AE91FFD9AF91FFD9AF91FFDAAF91FFD6A077FFA7724DFFD7D3D1FF7E7E
      7EFFBBB4B3FFBBB3B1FFD4D0CFFF737373FF00000000B4B4B400F1F1F100E1E1
      E100D7D7D700D4D4D400DBDBDB00A3CBD80078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F10050A1E100DCE9F50000000000B4B4B400F1F1F100E1E1E100D7D7
      D700D4D4D400DBDBDB00C7875C00EEBEA000FCFBF900FDFBFA00FDFCFC00FDFC
      FB00FCFAF900FCFBFA00DCA78400C07E520000000000EFF0F8006477F4000000
      0000D2D4F800000000008A94EC0000000000A2A7DE009FA2D500BABCD7000000
      0000AFAFC60031366E00EEEFF80000000000C0C0C0FFDFDCDCFFB47F59FFCB95
      6EFFCD976FFFCF9971FFD19B72FFD29C74FFD49E75FFA7724DFFD7D4D3FF8484
      84FF3BA142FF379437FFD6D1D0FF787878FF00000000B6B6B600F2F2F200E6E6
      E600DCDCDC00D8D8D800DFDFDF00DADADA0096BFCC007BD3ED00C3F5FC006BDC
      F5006CC9EC0062A2D60068A2D400E5EFF700B6B6B600F2F2F200E6E6E600DCDC
      DC00D8D8D800DFDFDF00C6855A00EEBF9D00FEFEFE00CB926D00FEFEFE00FEFE
      FE00FEFAF600FEF7F000E3AE8B00C689600000000000F1F1F9006B7CF5000000
      00007383F60000000000929CF70000000000727DE2006C76D400BDBFDF000000
      0000353C7E0032397700EDEEF70000000000C5C5C5FFE1DEDCFFB37D58FFC791
      6BFFC9936DFFCB956EFFCD9770FFCF9971FFD19B73FFA7724DFFD9D5D4FF8B8B
      8BFFA0C8A4FF50A956FFD7D3D1FF7E7E7EFF00000000B7B7B700F3F3F300E9E9
      E900E0E0E000DCDCDC00E2E2E200DDDDDD00C8C8C80088B9C8007FD3EC00B1E2
      F8008ABFE600ADD2F500C3DFFB006AA1D300B7B7B700F3F3F300E9E9E900E0E0
      E000DCDCDC00E2E2E200CB8C6400F2CCAF00FEFEFE00E2C6B200FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00E9BEA000C8885F0000000000F1F1F9007484F6000000
      000099A3F900000000009DA6F800000000007584F6006F7EF100C1C4ED000000
      00003D479B0038418D00EFF0F80000000000CACACAFFE1DFDEFFB17C57FFC48E
      68FFC6906AFFC8926BFFCA946DFFCC966FFFCE9870FFA7724DFFDBD6D6FF9191
      91FFC1BBB9FFC0B9B8FFD7D3D3FF848484FF00000000B9B9B900F4F4F400EDED
      ED00E5E5E500E1E1E100E5E5E500E0E0E000CCCCCC00C1C1C10088BDCD0076BD
      E600B3D1EF00E4F2FE00ABD1EE005895CB00B9B9B900F4F4F400EDEDED00E5E5
      E500E1E1E100E5E5E500D3966D00D39D7A00CF977000D5A38100CC8D6700CC8F
      6800CF997400D0987200C78A6100EDDCD00000000000F1F1F9007988F6000000
      0000FEFEFE00FEFEFE00A1A9F80000000000E0E2F700DFE1F600C3C6F1000000
      00003F4CAB003B469A00EFF0F80000000000CECECEFFE2DFDFFFB07B56FFB17B
      56FFB17C57FFB27D58FFB37E58FFB47F59FFB5805AFFA7724DFFDCD8D7FF9898
      98FF8D8D8DFF8A8A8AFFD9D5D4FF8B8B8BFF00000000BABABA00F5F5F500EAEA
      EA00DDDDDD00D5D5D500D4D4D400D0D0D000C2C2C200BBBBBB00BFBFBF00AAD3
      E20057A4D70084B0DA00459CCF00B0D8EE00BABABA00F5F5F500EAEAEA00DDDD
      DD00D5D5D500D4D4D400D0D0D000C2C2C200BBBBBB00BFBFBF00E4E4E400AAAA
      AA000000000000000000000000000000000000000000EFF0F8007A89F600C7CB
      FA00BFC3FB0097A1F800909BF700C2C6FA00BEC2FA00BAC0FA00969FEE00B6BA
      ED004351BB003E4BA800EEEFF80000000000D3D3D3FFF1EFEFFFE2DFDFFFE2DF
      DFFFE1DFDEFFE1DEDDFFE0DDDCFFDFDCDBFFDEDBDBFFDEDBD9FFEDECEBFF9E9E
      9EFFC5BFBEFFC3BDBBFFDAD6D5FF919191FF00000000BCBCBC00F6F6F600E6E6
      E600EEEEEE00F5F5F500FAFAFA00F9F9F900EFEFEF00DDDDDD00C2C2C200E5E5
      E500ABABAB00000000000000000000000000BCBCBC00F6F6F600E6E6E600EEEE
      EE00F5F5F500FAFAFA00F9F9F900EFEFEF00DDDDDD00C2C2C200E5E5E500ABAB
      AB000000000000000000000000000000000000000000F1F1F9007B8AF6007E8C
      F6007B8AF6007988F6007484F6007080F5006477F4006173F3005668EA005062
      E1004857C7004350B600EEEFF80000000000D6D6D6F9D3D3D3FFD0D0D0FFCCCC
      CCFFC8C8C8FFC3C3C3FFBFBFBFFFBABABAFFB5B5B5FFB0B0B0FFAAAAAAFFA5A5
      A5FF949393FF929191FFDBD7D6FF989898FF00000000BEBEBE00F7F7F700FDFD
      FD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00E9E9
      E900ADADAD00000000000000000000000000BEBEBE00F7F7F700FDFDFD00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00E9E9E900ADAD
      AD000000000000000000000000000000000000000000EFF0F8007D8BF6007D8B
      F6007988F6007786F6007181F6006F80F5006477F4006274F300576AEE005366
      E8004B5CD4004756C400EFF0F800000000000000000000000000000000000000
      000000000000CFCFCF48CBCBCBE4DFDFDFFFEAEAEAFFCFCAC9FFCBC6C5FFCAC4
      C3FFC8C3C1FFC7C1C1FFDCD9D8FF9E9E9EFF00000000CBCBCB00E0E0E000FDFD
      FD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00CECE
      CE00C8C8C800000000000000000000000000CBCBCB00E0E0E000FDFDFD00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00CECECE00C8C8
      C8000000000000000000000000000000000000000000EEEFF800EEEFF800EEEF
      F800EEEFF800EEEFF800EDEEF700EEEFF800EEEFF800EEEFF800EDEEF700EEEF
      F800EDEEF700EDEEF700EDEEF700000000000000000000000000000000000000
      00000000000000000000D0D0D00FCCCCCCABDCDCDCFFE6E3E3FFE1DEDCFFDFDC
      DCFFDFDCDBFFDEDBDBFFEEECECFFA5A5A5FF00000000F4F4F400C6C6C600CFCF
      CF00E7E7E700F2F2F200FCFCFC00FBFBFB00ECECEC00DFDFDF00C1C1C100C0C0
      C000F6F6F600000000000000000000000000F4F4F400C6C6C600CFCFCF00E7E7
      E700F2F2F200FCFCFC00FBFBFB00ECECEC00DFDFDF00C1C1C100C0C0C000F6F6
      F60000000000000000000000000000000000000000001838B2001838B2001838
      B2001838B2001838B2001838B2001838B2001838B2001838B2001838B2001838
      B2001838B2001838B2001838B200000000000000000000000000000000000000
      000000000000000000000000000000000000CDCDCD9FC9C9C9FBC4C4C4FFC0C0
      C0FFBBBBBBFFB6B6B6FFB0B0B0FFABABABA70000000000000000FDFDFD00E8E8
      E800CFCFCF00C3C3C300B7B7B700B7B7B700C2C2C200CCCCCC00E9E9E900FEFE
      FE000000000000000000000000000000000000000000FDFDFD00E8E8E800CFCF
      CF00C3C3C300B7B7B700B7B7B700C2C2C200CCCCCC00E9E9E900FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600818181007C7C7C00BBBBBB00000000000000
      0000000000000000000000000000000000000000000082CEEC0040B3E100169F
      D70040ADDD0080C7E700E0F1F900FFFFFF00FFFFFF00E0F2FB007FC8EB003DA8
      DE001391D4003DA1D9007EC0E500E0EFF8000000000082CEEC0040B3E100169F
      D70040ADDD0080C7E700E0F1F900FFFFFF00FFFFFF00E0F2FB0048968B001B6E
      3E00186A36001B6D3E0048938800E0EFF8000000000082CEEC0040B3E100169F
      D70040ADDD0080C7E700E0F1F900FFFFFF00FFFFFF00E0F2FB005192D8000950
      BD000341BB00094EBC004485CF00E0EFF800000000000000000000000000E8E8
      E800F7F7F700FEFEFE008A8A8A00BCBCBC00B1B1B10068686800FEFEFE00F6F6
      F600E2E2E20000000000000000000000000097DBF2005ECAEC0089DFF50087E2
      F8006ED9F30046C0E5004EB3DF003FABDC001495D3002AA4DC0049C2EB0071D9
      F40070DDF60056D2F20038B7E40094CBEA0097DBF2005ECAEC0089DFF50087E2
      F8006ED9F30046C0E5004EB3DF003FABDC001495D30021868600278B520063B9
      8C0094D1B10063B98C00278B52005095870097DBF2005ECAEC0089DFF50087E2
      F8006ED9F30046C0E5004EB3DF003FABDC001495D300217DCF002564C9002076
      E5000478E9000063DC00044DBC004F8BD2000000000000000000B2B2B2006F6F
      6F0072727200F1F1F1008E8E8E00CACACA00C6C6C60070707000EFEFEF006767
      67004E4E4E0090909000000000000000000064CBEE008DDCF3009DE5FB0084DD
      F9007ADCF9006BD2F10023A8DE0060D0F00071DDF8002BB5EB007DD9F400B4ED
      FD00A6EAFD008EE2FA0057CEF0005FB5E30064CBEE008DDCF3009DE5FB0084DD
      F9007ADCF9006BD2F10023A8DE0060D0F00071DDF8001B6D3E0061B98A005FB9
      8600FEFEFE005FB8860066BB8E001B6D3B0064CBEE008DDCF3009DE5FB0084DD
      F9007ADCF9006BD2F10023A8DE0060D0F00071DDF8000750BE00629CF300177E
      FE000075F7000075ED000267E0000C50BC0000000000D3D3D300BBBBBB00DDDD
      DD00A5A5A5008787870084848400C3C3C300C1C1C1006D6D6D0073737300A5A5
      A500D1D1D1007F7F7F00ABABAB000000000015B6E800BEF0FC0073D8F6005AD0
      F50043CAF4008DE5FB0011A1DB0046C6F3002DB5F00012AEED00D5F6FE00BCEE
      FE00AAEAFE009EE6FE00ADEFFD000E97DB0015B6E800BEF0FC0073D8F6005AD0
      F50043CAF4008DE5FB0011A1DB0046C6F3002DB5F000307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A360015B6E800BEF0FC0073D8F6005AD0
      F50043CAF4008DE5FB0011A1DB0046C6F3002DB5F0000341BB00ADCCFD00FEFE
      FE00FEFEFE00FEFEFE00177EEE000341BB0000000000D5D5D500A5A5A500D4D4
      D400C4C4C400CACACA00D0D0D000C8C8C800C6C6C600CBCBCB00C4C4C400BCBC
      BC00CACACA006E6E6E00B4B4B4000000000017BAEB00BCEEFB0098E2FA0088DE
      F90073D8F80062D9F70012A7DF005AD1F80043C8F60015B4F000C1EFFC00CDF3
      FE00C5F3FE00B7EEFD0088DFF50030AAE50017BAEB00BCEEFB0098E2FA0088DE
      F90073D8F80062D9F70012A7DF005AD1F80043C8F600428761008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E00196C3C0017BAEB00BCEEFB0098E2FA0088DE
      F90073D8F80062D9F70012A7DF005AD1F80043C8F6000552BF008CB4F5004C91
      FE001076FE002085FE003F89EA000850BE000000000000000000D3D3D300C4C4
      C400C0C0C000C4C4C400C6C6C600A9A9A900A6A6A600C0C0C000BDBDBD00B4B4
      B400A9A9A900B0B0B000000000000000000018BFEE00A9E9FA0077D9F70060D3
      F50043CCF40065DAF70013ACE30035C0F1002AB6F00019B0F1001AB6F30013B2
      F00012AEEF0019ADED003EB8ED00B5E3F80018BFEE00A9E9FA0077D9F70060D3
      F50043CCF40065DAF70013ACE30035C0F1002AB6F000359FAC0060AA800094D3
      B300B9E5CF0069BA8E002C8E56005EA08D0018BFEE00A9E9FA0077D9F70060D3
      F50043CCF40065DAF70013ACE30035C0F1002AB6F0001B86DC003674D1008CB4
      F600B7D5FD0071A7F4002D6BCA00699EDD00B4B4B4009A9A9A00A5A5A500CECE
      CE00C5C5C500CBCBCB00B3B3B300E4E4E400E2E2E200A7A7A700C0C0C000BBBB
      BB00B8B8B8006D6D6D0069696900747474001AC3F000CEF4FD00C2EFFD00BCEE
      FD00A1E6FB0098E7FB0014B2E6005DD2F80047CBF70035C1F40060D2F70011A0
      DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF001AC3F000CEF4FD00C2EFFD00BCEE
      FD00A1E6FB0098E7FB0014B2E6005DD2F80047CBF70035C1F4005CB3B4005394
      73004E8D65004989610099BDA600FFFFFF001AC3F000CEF4FD00C2EFFD00BCEE
      FD00A1E6FB0098E7FB0014B2E6005DD2F80047CBF70035C1F4004098DF000D56
      C2000442BB001F59C00088A7DE00FFFFFF00BFBFBF00E1E1E100D1D1D100C5C5
      C500CCCCCC00B0B0B000E2E2E2000000000000000000E2E2E200A7A7A700C1C1
      C100B6B6B600BFBFBF00D1D1D100616161001AC7F300D9F6FD00D0F3FE00C2F0
      FE00B6EDFE00BEF1FD0016B6EA0039C3F2002CBAF1001FAFEE0050C6F30011A4
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF001AC7F300D9F6FD00D0F3FE00C2F0
      FE00B6EDFE00BEF1FD0016B6EA0039C3F2002CBAF1001FAFEE0050C6F30011A4
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF001AC7F300D9F6FD00D0F3FE00C2F0
      FE00B6EDFE00BEF1FD0016B6EA0039C3F2002CBAF1001FAFEE0050C6F30011A4
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3C3C300E8E8E800D5D5D500C8C8
      C800CDCDCD00A4A4A400DEDEDE000000000000000000E4E4E400ABABAB00C3C3
      C300B9B9B900C5C5C500DCDCDC006B6B6B0085E3FA0090E0F900DEF7FE00D6F6
      FE00CBF3FE00A8E8F90029C1EF0063D5F8004BCEF7003AC5F50067D5F80013A9
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF0085E3FA0090E0F900DEF7FE00D6F6
      FE00CBF3FE00A8E8F90029C1EF0063D5F8004BCEF7003AC5F50067D5F80013A9
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF0085E3FA0090E0F900DEF7FE00D6F6
      FE00CBF3FE00A8E8F90029C1EF0063D5F8004BCEF7003AC5F50067D5F80013A9
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2D2D200CACACA00C3C3C300D7D7
      D700CCCCCC00BBBBBB009D9D9D00DADADA00DCDCDC00A7A7A700C2C2C200C1C1
      C100CCCCCC0093939300939393009B9B9B00F3FCFF0034D1F7001DCAF5001AC7
      F4001FC6F30019C1F10078DBF7003BC6F3002FBEF20022B4EF006BD6F80013AE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FCFF0034D1F7001DCAF5001AC7
      F4001FC6F30019C1F10078DBF7003BC6F3002FBEF20022B4EF006BD6F80013AE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FCFF0034D1F7001DCAF5001AC7
      F4001FC6F30019C1F10078DBF7003BC6F3002FBEF20022B4EF006BD6F80013AE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000E0E0E000D3D3
      D300CBCBCB00C8C8C800B9B9B9009B9B9B00A0A0A000C1C1C100C5C5C500C0C0
      C000B6B6B600C1C1C1000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018C2F000A1E8FB0068D8F90050D1F8003DC8F60059CBF40014B2
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018C2F000A1E8FB0068D8F90050D1F8003DC8F60059CBF40014B2
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018C2F000A1E8FB0068D8F90050D1F8003DC8F60059CBF40014B2
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000E5E5E500C3C3C300DBDB
      DB00D3D3D300D8D8D800DADADA00D5D5D500D3D3D300D8D8D800D1D1D100CACA
      CA00C7C7C70079797900B9B9B90000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001AC5F20086E1F9003FCAF40033C3F20024B9F0005BCCF50016B6
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001AC5F20086E1F9003FCAF40033C3F20024B9F0005BCCF50016B6
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001AC5F20086E1F9003FCAF40033C3F20024B9F0005BCCF50016B6
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000E8E8E800DBDBDB00ECEC
      EC00DADADA00C4C4C400BDBDBD00D5D5D500D3D3D300AFAFAF00AFAFAF00CACA
      CA00E6E6E600B6B6B600C7C7C70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC8F300B9EFFC00A9E9FD00A1E8FD0078DCFA007ADEFA0016BA
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC8F300B9EFFC00A9E9FD00A1E8FD0078DCFA007ADEFA0016BA
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC8F300B9EFFC00A9E9FD00A1E8FD0078DCFA007ADEFA0016BA
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000E2E2E200CDCD
      CD00CECECE00F9F9F900C7C7C700DDDDDD00DCDCDC00B8B8B800F7F7F700B3B3
      B300A7A7A700C6C6C6000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BCBF500D5F6FE00BBEEFE00AAEAFE0099E5FE00A6ECFC0017BE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BCBF500D5F6FE00BBEEFE00AAEAFE0099E5FE00A6ECFC0017BE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BCBF500D5F6FE00BBEEFE00AAEAFE0099E5FE00A6ECFC0017BE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000F7F7
      F700FCFCFC0000000000CBCBCB00E4E4E400E3E3E300B2B2B200FEFEFE00FBFB
      FB00F2F2F200000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028D0F600A1E6FA00D2F5FE00C6F3FE00BAF0FE00A1E8FA0039CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028D0F600A1E6FA00D2F5FE00C6F3FE00BAF0FE00A1E8FA0039CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028D0F600A1E6FA00D2F5FE00C6F3FE00BAF0FE00A1E8FA0039CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EAEAEA00D4D4D400D2D2D200E6E6E600000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFF8FE0035D3F80020CEF6001BCBF50021CAF40046D2F500B8ED
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFF8FE0035D3F80020CEF6001BCBF50021CAF40046D2F500B8ED
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFF8FE0035D3F80020CEF6001BCBF50021CAF40046D2F500B8ED
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008585
      850080808000C5C5C50000000000000000000000000000000000BCBCBC006464
      6400616161000000000000000000000000000000000000000000000000008585
      850080808000C5C5C50000000000000000000000000000000000BCBCBC006464
      6400616161000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474007070700098989800C4C4
      C4009494940077777700000000000000000000000000CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474007070700098989800C4C4
      C400949494007777770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F5
      FE00928EF400504AEE001C14E700D6D5FB000000000000000000000000000000
      00000000000000000000000000000000000000000000CDCDCD0000000000CECE
      CE0099999900CACACA0000000000000000000000000000000000C0C0C0007E7E
      7E00BDBDBD006A6A6A00000000000000000000000000CDCDCD0000000000CECE
      CE0099999900CACACA0000000000000000000000000000000000C0C0C0007E7E
      7E00BDBDBD006A6A6A00000000000000000057B7630054B5600052B35D004FB1
      5A0000000000000000003CA0440035993C002F923500298B2E00000000000000
      0000207E23001F7D23001F7C22001F7C22000000000000000000CBCAFB00514D
      F2005755EA006B6CE600322CE800D7D6FB00A96A4700A86C4C00C49E8A00F9F6
      F4000000000000000000000000000000000000000000F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E007A7A7A00757575007171
      7100000000006F6F6F00000000000000000000000000F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E007A7A7A00757575007171
      7100000000006F6F6F0000000000000000005BBA6700A7D7AD00A4D6AB0053B4
      5E00000000000000000044A74D007EC5870071BF7B002F933500000000000000
      0000218125004FAC56004EAB54001F7C220000000000C6C6FC006161F2007C7E
      ED009398EA008C90E8003A36EB00D9D7FB00B16F4C00D58D6100B76542009B5A
      3700DDC8BD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00727272007979790000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00727272007979790000000000000000005EBD6B00ABD9B000A8D8AE0056B7
      620000000000000000004BAF56008DCB950082C78B00379B3E00000000000000
      00002586290052AE590050AD5700207E2300F3F3FF006666F7009498F100A4A9
      ED007A80E5009699EA00433FEE00DAD9FC00B7765100DA986F00E5A37E00CA7F
      5600A5543000D7BFB3000000000000000000000000000000000000000000A0A0
      A0009C9C9C0097979700929292008E8E8E008989890084848400808080007E7E
      7E00B0B0B000747474000000000000000000000000000000000000000000A0A0
      A0009C9C9C0097979700929292008E8E8E008989890084848400808080007E7E
      7E00B0B0B00074747400000000000000000062C06F005FBE6C005DBC69005ABA
      6700000000000000000053B45E004CB0570046A94F003EA24700000000000000
      00002B8E2F00268729002282250021802500F6F6FF00A6A6FB006565F8008384
      F300A2A7EE009FA4EC004E4BF000DCDBFC00C07D5700DDA07800DD885A00E5A5
      7E00CF865B00944D2600F5EFEC00000000000000000000000000D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB007878780000000000000000000000000000000000D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB007878780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAD1AE00B1D3B400EEF0FA00A9AA
      FB006363F7007B7DF2005857F300DDDDFD00C5855D00E0A78000DF916300D878
      4B00E6A78300BD6F4900C69E8900000000000000000000000000AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D0000000000000000000000000000000000AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D0000000000000000000000000000000000B7B7B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C5C5C0000000000000000006EB575008FBE92004E9B5400A6CA
      A900EBEFF600B1B1FB006160F700E0DFFD00CD8D6400E3AF8A00E29B6C00DC84
      5300E1956600D9966C00AC6D4B000000000000000000B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B900D9DAD9000786350037945000ABABAB00D3D3D300A3A3
      A300CFCFCF0088888800F9F9F9000000000000000000B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B90041AB77003AA870002B9F5F00229A5500D3D3D300A3A3
      A300CFCFCF0088888800F9F9F900000000000000000000000000BDBDBD00BBBB
      BB00B8B8B800B3B3B300ABABAB00A1A1A100989898008D8D8D00818181007676
      76006C6C6C006363630000000000000000005FB36800C9E7C700AED8AA0091BE
      930047944D009AC19D00F5F4F900F6F2F500D3966A00E6B69200E6A57600DF8F
      5C00DD8D5B00E5AC8700A65A31000000000000000000BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED00198F460045A4670047A46500439B5900ABABAB00E8E8
      E800A4A4A40099999900ECECEC000000000000000000BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED003FAC79009FD2B70098CDAF001D984D00ABABAB00E8E8
      E800A4A4A40099999900ECECEC00000000000000000000000000000000000000
      0000000000000000000000000000B5B5B500B0B0B00000000000000000000000
      00000000000000000000000000000000000063B96E00B5DFB0007ACB6E0091D1
      8800ACD8A80088B78A0082B38500F1DAC700D28C5900EEC7A800E5A57200E19A
      6600E1976500E6B28E00AF65390000000000C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000279756004EAA730089C6A00081C1960045A2610056A06900ABAB
      AB00D3D3D300AAAAAA00E0E0E00000000000C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000C1C1C1003AB07800A1D3B70098CEAE0016974800D7D7D700ABAB
      AB00D3D3D300AAAAAA00E0E0E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084CC8E00B9DEB70079CB6C0065C5
      580071C76500A7D9A20067A76C00D0E2D100E0AB8200E5B48D00EFCBAB00E4A5
      7000E8B08300E2AE8700C1805A0000000000C3C3C300FBFBFB00F8F8F800F8F8
      F800309E640059B2800090CAA90073BB8F0069B584007FC0950042A05E001680
      2D00F0F0F000D7D7D7009C9C9C00CECECE00C3C3C300FBFBFB00F8F8F800F8F8
      F80054BE90004CB9850069BF9600A3D3B70099CCAC0040A9690013933D000C85
      2D00F0F0F000D7D7D7009C9C9C00CECECE000000000000000000000000000000
      00000000000000000000E0A36C00D6985E00CC8B4F00C37D4100000000000000
      000000000000000000000000000000000000B6E2BC00B2D9B400A1D799006CC9
      5E0065C557007FCB7400A2CDA20062A76800F6EBE000D8935F00F1D0B100EAB8
      8C00EFC8A900D79B6F00DCB39A0000000000C4C4C400C4C4C400C2C2C200BFBF
      BF0041A470003BA0690054AE7B008FCAA70087C49D00399E5D000D8534000C7F
      2A00C4C4C400FAFAFA00E3E3E300A2A2A200C4C4C400C4C4C400C2C2C200BFBF
      BF0044BF8D007BCAA800AED9C00091CCAA007FC39B0092C9A5004AAA69001686
      3000C4C4C400FAFAFA00E3E3E300A2A2A2000000000000000000000000000000
      00000000000000000000E8AF7C00ECCABF00E9C2B700CD8C5000000000000000
      000000000000000000000000000000000000F6FCF7007ACC8700BDE0BD0093D3
      88006DC961006DC85F009DD5960092C09500B0D3B300EBC4A400E6B38D00F2D2
      B400E8BA9700CC855300FBF5F200000000000000000000000000000000000000
      0000000000000000000032A0660093CCAC008CC7A400148E4200000000000000
      0000A2A2A2009D9D9D0099999900D8D8D8000000000000000000000000000000
      0000000000003ABF80006FC79E00ABD7BC009ED0AF0054B3750067B67B000000
      0000A2A2A2009D9D9D0099999900D8D8D8000000000000000000000000000000
      00000000000000000000EFB88A00EFD3C800EDCCC100D79B5F00000000000000
      00000000000000000000000000000000000000000000D5F0DA009FD4A700B9DF
      BA00A6D99F007CCD6F007ECC7200AFD8AC0056A75D00F1F1E800E0A47200EAC1
      9D00DCA17200F0D9C80000000000000000000000000000000000000000000000
      0000000000000000000039A36E0095CDAF008FC9A8001C914900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000025BD690063C493005EBE86004AB06300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3BF9400EFB98A00E9B17E00E1A76F00000000000000
      0000000000000000000000000000000000000000000000000000DFF3E20089D2
      9400B3DBB600BBDFB900B8E0B400CDE9CA00A3CDA50095C89A00F3D9C300E2AB
      7C00F6E6D8000000000000000000000000000000000000000000000000000000
      000000000000000000003CA46E0036A26A00289A5A0022975100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFFFE000BB7500044B6630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9FD
      FA00BCE6C30092D49B006BC2780064BC70007FC58800ABD6B000FEFEFD00FEFB
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084B094002472
      4000186A36002472400084B09400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094AFE300225B
      C1000442BB001E59C00086A6DD000000000000000000D7A27900D2986D00D095
      6700CD916200CA8D5D00C8895A00C6865500C2835100C2835100C2835100C283
      5100C2835100C2835100C0835300000000000000000000000000000000000000
      0000B9BCF000676DDF004048D600434BD7004048D700353ED5005960DC00AFB2
      EE00000000000000000000000000000000000000000000000000000000008585
      850080808000C5C5C50000000000000000000000000087B29700278B520063B9
      8C0094D1B10063B98C00278B520080AD91000000000000000000000000008585
      850080808000C5C5C5000000000000000000000000008CAAE0002764C7002076
      E5000478E9000063DC00064EBD0086A6DD0000000000D6A07400F7F1EC00F6EF
      E900F5ECE500F3E9E100F2E6DD00F0E3DA00EFE1D700EFE1D700EFE1D700EFE1
      D700EFE1D700EFE1D700C4895C0000000000000000000000000000000000BABD
      F0005760DF008A96F50099A6FB0093A0F800909EF600929FF6007F8BED00404A
      D900AEB1EE0000000000000000000000000000000000CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474001D6B3A0061B98A005FB9
      8600FEFEFE005FB8860066BB8E001F6F3C0000000000CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474000E49B000629CF300177E
      FE000075F7000075ED000267E0001D58C00000000000D8A37900F8F2ED00EAD1
      BD00FEFEFE00EAD2BE00FEFEFE00EAD2BF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00EFE1D700C58B5E00000000000000000000000000BCBEF1005F67
      E000919DF600657CFE003D58FE003B57FE003752FD002F4BF8005269F600808C
      F0003F48D900ABAFED00000000000000000000000000CDCDCD0000000000CECE
      CE0099999900CACACA00000000000000000000000000307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A360000000000CDCDCD0000000000CECE
      CE0099999900CACACA000000000000000000000000000442BB00ADCCFD00FEFE
      FE00FEFEFE00FEFEFE00177EEE000442BB0000000000DCA77D00F8F2EE00EACF
      B900EACFBA00E9CCB400E9CCB400E9CCB400EAD0BC00E9CCB400E9CCB400E9CC
      B400E9CCB400EFE1D700C5895B000000000000000000C0C3F1006970E20098A5
      F7006F87FE004260FE003E5CFE003956FE003552FE00304DFE002B49FE00556C
      FA00828FF300404AD900ADB0EE000000000000000000F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E0045865D008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E001F6F3C0000000000F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E00124AB0008CB4F5004C91
      FE001076FE002085FE003F89EA00235BC10000000000DEA98100F8F2EE00E9CD
      B600FEFEFE00E9CCB400FEFEFE00E9CCB400FEFEFE00E9CEB900FEFEFE00E9CC
      B400FEFEFE00EFE1D700C78C5E0000000000000000008186E5009EACF8007891
      FE004E6DFE006D86FE008EA0FE00405EFE003B5AFE008195FE00647AFE002C4B
      FE00566DFE00828FF500585FDC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7C6B30060AA800094D3
      B300B9E5CF0069BA8E002C8E560080AD91000000000000000000000000000000
      0000000000000000000000000000000000000000000096B0E3003C75D1008CB4
      F600B7D5FD0071A7F4002E6CCB0093AEE10000000000E0AD8600F9F3EF00E9CA
      B100E9CBB200E9CCB400E9CCB400E9CCB400E9CCB400E9CCB400E9CCB400E9CC
      B400E7C7AD00EFE1D700C385530000000000000000006B70DF00AFBFFD005D7E
      FE005675FE0095A8FE00FEFEFE00AAB8FE009AABFE00FEFEFE009AAAFE003352
      FE003351FE0096A5FD003840D50000000000000000000000000000000000A0A0
      A0009C9C9C0097979700929292008E8E8E0089898900848484006D8977005992
      6E004E8D65004282590099BDA60000000000000000000000000000000000A0A0
      A0009C9C9C0097979700929292008E8E8E008989890084848400516DA0001A52
      B7000441BB000F49B00088A7DE000000000000000000E2B08B00F9F5F000E9C8
      AD00FEFEFE00E9C8AF00FEFEFE00E8CAB200FEFEFE00E9CCB400FEFEFE00E9CC
      B400FEFEFE00EFE1D700C58554000000000000000000767BE100B0BFFC006788
      FE005D7EFE005D7EFE00AEBEFE00FEFEFE00FEFEFE00B8C4FE004867FE003A5A
      FE003C5BFE0096A4FB00444DD800000000000000000000000000D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB007878780000000000000000000000000000000000D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB0078787800000000000000000000000000E4B38E00F9F5F100E8C5
      A900E8C5AB00E9C6AB00E8C6AC00E8C8AD00E8C8AF00E9CCB400E9CCB400E9CC
      B400E7CBB400EFE1D700C789580000000000000000007A7FE300B3C4FC006E91
      FE006387FE005F83FE00A7B9FE00FEFEFE00FEFEFE00AFBFFE004A6BFE004162
      FE004363FE0099A8FB004950D900000000000000000000000000AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D0000000000000000000000000000000000AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D00000000000000000000000000E6B69300FAF6F300FEFE
      FE00FEFEFE00E7C3A800FEFEFE00E8C5A900FEFEFE00E7C6AB00FEFEFE00E7C7
      AF00FEFEFE00F6F0EA00CA8E5E000000000000000000797EE300BACBFD007196
      FE006A8FFE009EB5FE00FEFEFE00C1CEFE00B4C4FE00FEFEFE0092A8FE00486A
      FE004668FE009FB0FD00464ED8000000000000000000B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B900DADADA00B2B2B200D6D6D600ABABAB00D3D3D300A3A3
      A300CFCFCF0088888800F9F9F9000000000000000000B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B900DADADA00B2B2B200D6D6D600ABABAB00D3D3D300A3A3
      A300CFCFCF0088888800F9F9F9000000000000000000E8B99700FAF6F30064A3
      FE0063A2FE0061A1FE0060A0FE005E9EFE005B9CFE005999FE005697FE005394
      FE005193FE00FAF6F300CD92630000000000000000009499E800AFC0F80093B2
      FE007098FE008FADFE00B0C4FE00678DFE005E84FE009BB1FE007694FE004F73
      FE00718DFE0092A2F6006D73E0000000000000000000BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED00BABABA00ECECEC00B2B2B200EAEAEA00ABABAB00E8E8
      E800A4A4A40099999900ECECEC000000000000000000BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED00BABABA00ECECEC00B2B2B200EAEAEA00ABABAB00E8E8
      E800A4A4A40099999900ECECEC000000000000000000EABC9A00FAF6F30063A3
      FE0078BCFE0074BAFE0070B8FE006CB7FE0067B2FE0060AFFE0059AAFE0053A6
      FE003A7CFE00FAF6F300D09669000000000000000000CDCFF400868FE700B0C1
      F80095B6FE00739CFE006F98FE006A92FE00658DFE006188FE005B82FE007B99
      FE0099A9F7006069E000BCBEF10000000000C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000C1C1C100DEDEDE00BABABA00DADADA00B3B3B300D7D7D700ABAB
      AB00D3D3D300AAAAAA00E0E0E00000000000C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000C1C1C100DEDEDE00BABABA00DADADA00B3B3B300D7D7D700ABAB
      AB00D3D3D300AAAAAA00E0E0E0000000000000000000EBBE9D00FAF6F30064A3
      FE0063A2FE005F9FFE005C9DFE005798FE005395FE004C8FFE00468AFE004183
      FE003C7EFE00FAF6F300D39A6E00000000000000000000000000CECFF400878F
      E700B1C2F80096B8FE0078A2FE0076A0FE00729BFE006B94FE0084A3FE00A0B0
      F7006871E200BEC0F1000000000000000000C3C3C300FBFBFB00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F2F2F200A6A6
      A600F0F0F000D7D7D7009C9C9C00CECECE00C3C3C300FBFBFB00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F2F2F200A6A6
      A600F0F0F000D7D7D7009C9C9C00CECECE0000000000EDC0A100FAF6F300FAF6
      F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6
      F300FAF6F300FAF6F300D69F730000000000000000000000000000000000CFD1
      F5008891E800B1C3F800BDD2FD00B9CDFC00B7CAFC00B7CAFD00A6B7F700727B
      E400C2C4F200000000000000000000000000C4C4C400C4C4C400C2C2C200BFBF
      BF00BCBCBC00B9B9B900B6B6B600B2B2B200AEAEAE00AAAAAA00A6A6A600A1A1
      A100C4C4C400FAFAFA00E3E3E300A2A2A200C4C4C400C4C4C400C2C2C200BFBF
      BF00BCBCBC00B9B9B900B6B6B600B2B2B200AEAEAE00AAAAAA00A6A6A600A1A1
      A100C4C4C400FAFAFA00E3E3E300A2A2A20000000000F2D1BA00EEC1A200ECBF
      9E00EABD9C00EABB9900E8B99500E6B69200E5B48F00E3B18B00E1AE8700DFAB
      8300DCA87F00DBA47C00DBA67F00000000000000000000000000000000000000
      0000CFD1F500989DE9007E83E3008084E4007C82E300747AE1008C91E600C7CA
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2A2A2009D9D9D0099999900D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2A2A2009D9D9D0099999900D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000174259002A6188004B89BD006FA8CC00E3EDF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000962F0E6B962F19B58B28
      0B80922B0C567D20093E62150536530F03314E0E03314B0D0227500E02120000
      0000000000000000000000000000000000000000000000000000909090008887
      8700868585008686860087878600888887008887870087878700878786008685
      8500868584009696960000000000000000000000000000000000000000000000
      00002D66840093C6F80090C8F8004084C800266AAD00D8E6F200000000000000
      00000000000000000000000000000000000000000000DFB49200D49C7300D095
      6700CD916200CA8D5D00C8895A00C6865500C2835100C2835100C2835100C283
      5100C2835100C2835100CFA07C000000000000000000C86E41E1AB4121AE0000
      00009E330F1F8F2B14A29E3224F0992D22F192291FEE832119E061130BAF430B
      0257500D0206000000000000000000000000000000000000000087878700C1C1
      C000BBBBBB00BBBBBB00BBBBBA00BBBBBA00BBBBBA00BBBBBA00BBBBBA00BBBB
      BA00C1C1C0008A8A890000000000000000000000000090909000888787008685
      85004288A900DFF1FE005399D7001979BD004897C4003C82BA00788592008685
      84009696960000000000000000000000000000000000D6A07400F7F1EC00F6EF
      E900F5ECE500F3E9E100F2E6DD00F0E3DA00EFE1D700EFE1D700EFE1D700EFE1
      D700EFE1D700EFE1D700C48A5D000000000000000000CC7540DBAF4322BB8D26
      0C37AA3C23C6C76E4DFFD08764FFCE8867FFCC8063FFC6755CFFB65444FF922A
      21FA4A0D0487510E020C000000000000000000000000000000008B8B8A00FEFE
      FE00EAEAEA00EAEAEA00E8E8E800E7E7E700E6E6E600E6E6E600E5E5E500E5E5
      E500FEFEFE008D8C8B0000000000000000000000000087878700C1C1C000BBBB
      BB007D9BAF0079B5D4008FB6D00054C8E3005ADEF40077CFEC004B96D600AFBA
      C3008A8A890000000000000000000000000000000000D8A37900F8F2ED00EACF
      BB00E6C0A300E6BEA000E5BD9E00E5BA9900E2B79400E0B48E00DDAF8800DBAA
      8200D8AD8800EFE1D700C58B5E000000000000000000C55E2594D18249F2C15B
      34E0D18659FFD89A70FFD28B63FFC36644F2BA5439DBBF6246F9C97B5FFFC572
      59FFA43B30FF510E036E6312030200000000000000000000000091909000FEFE
      FE00B3B3B30093939300E6E6E600B1B1B10092929200E2E2E200AFAFAF009090
      9000FAFAFA00919190000000000000000000000000008B8B8A00FEFEFE00EAEA
      EA00EAEAEA00A4C7D70075B8D500C1F5FC0062DEF6005CE1F70078D2EF004998
      DB00828C950000000000000000000000000000000000DCA77D00F8F2EE00EACF
      B900FEFEFE00FDFDFD00FDFEFD00FDFEFD00FEFEFE00FDFDFD00FEFEFE00FEFE
      FE00DAAF8B00EFE1D700C5895B000000000000000000C8621E39D68E4CEFE0A8
      71FFDEA574FFDA9C6CFFC16137CCAC3F1343A73B1128A3370F58BB573DE5BF61
      47FCC6745AFF983425D56D17052B00000000000000000000000094949400FEFE
      FE00E7E7E700E6E6E600E4E4E400E2E2E200E1E1E100DFDFDF00DEDEDE00DBDB
      DB00FEFEFE009494940000000000000000000000000091909000FEFEFE00B3B3
      B30093939300E6E6E6007DA1B30076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004594D700D6E7F700000000000000000000000000DEA98100F8F2EE00E9CD
      B600FEFEFE00BFDCC20061AA6800A0CCA400AAD1AE0067AD6D00AAD1AE00FEFE
      FE00DCB39000EFE1D700C78C5E000000000000000000D0702102CD6E258AE0A6
      67FFE2AD77FFD8965EFFAA3A199F94290D378E270C3B99310E43A73B168FAA40
      1EA2A53B1A9E902D18A9711A073600000000000000000000000099999800FEFE
      FE00B0B0B00090909000E1E1E100ACACAC008E8E8E00DBDBDB00A8A8A8008C8C
      8C00FAFAFA009998980000000000000000000000000094949400FEFEFE00E7E7
      E700E6E6E600E4E4E400E2E2E200AAD2DF0078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F10050A1E100DCE9F5000000000000000000E0AD8600F9F3EF00E9CA
      B100FEFEFE00FEFEFE0061AA6800D4E8D6008BC09000FEFEFE0061AA6800FEFE
      FE00DEB79500EFE1D700C3855300000000000000000000000000D2752328D98E
      42D1E3AE71FFE1A76DFFC96C38F6C25B32F5BD502FF7BD5533F4BA5434ECB64F
      32E8B34B32E6A83D2CEE731C07650000000000000000000000009D9C9C00FEFE
      FE00E2E2E200E0E0E000DBDBDB00DADADA00D6D6D600D2D2D200D2D2D200D0D0
      D000FEFEFE009D9C9B0000000000000000000000000099999800FEFEFE00B0B0
      B00090909000E1E1E100ACACAC008E8E8E00A7D1DD007BD3EC00C3F5FC006BDC
      F5006CC9EC0062A2D60068A2D400E5EFF70000000000E2B08B00F9F5F000E9C8
      AD00FEFEFE00FEFEFE0061AA6800D4E8D60095C69A00F8FBF8006BB07200FEFE
      FE00E0BC9C00EFE1D700C58554000000000000000000DC862614D984250BD479
      235AE09F50F0E5B477FFD9914CECD48445DED07D44DECC7844E2CF804DFBD696
      6AFFD49067FFC26547FF8323096B0000000000000000000000009F9F9F00FEFE
      FE00ACACAC008D8D8D00D7D7D700A4A4A40089898900CDCDCD007273E7005157
      DA00FAFAFA009D9D9D000000000000000000000000009D9C9C00FEFEFE00E2E2
      E200E0E0E000DBDBDB00DADADA00D6D6D600D2D2D20097C8D7007FD4EC00B1E2
      F8008ABFE600ADD2F500C3DFFB006AA1D30000000000E4B38E00F9F5F100E8C5
      A900FEFEFE00AAD1AE006BB07200D4E8D600AAD1AE0064AC6B00AAD1AE00FEFE
      FE00E3C0A300F1E6DD00C78958000000000000000000E2962916DF922E98D983
      252CD67F257EE7B26AFFD1742BA1CB641F1DC45B1D09C0541B46D07D44E3DB9E
      6EFFD99C70FFC0623EF498300E44000000000000000000000000A2A2A200FBFB
      FB00D9D9D900D6D6D600D1D1D100CDCDCD00C8C8C800C4C4C400C1C1C100BEBE
      BE00FEFEFE009F9F9F000000000000000000000000009F9F9F00FEFEFE00ACAC
      AC008D8D8D00D7D7D700A4A4A40089898900CDCDCD007273E7004079DD0076BD
      E600B3D1EF00E4F2FE00ABD1EE005895CB0000000000E6B69300FAF6F300E8C2
      A500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E4C5AA00F6F0EA00CA8E5E00000000000000000000000000E59B2A59EDBB
      5BFDDE9031A6DF973FD7D88533EDBD391496B336107EC55D29BBDE9F64FFE0AA
      76FFDA9A66FFB74C25ACAD411310000000000000000000000000A2A2A200FEFE
      FE00AF7A5500C28C6600C48E6700C58F6800C7916A00C9936B00C9946D00AF7A
      5500FEFEFE00A09F9E00000000000000000000000000A2A2A200FBFBFB00D9D9
      D900D6D6D600D1D1D100CDCDCD00C8C8C800C4C4C400C1C1C100BEBEBE00BBE4
      F30057A4D70084B0DA00459CCF00B0D8EE0000000000E8B99700FAF6F30064A3
      FE0063A2FE0061A1FE0060A0FE005E9EFE005B9CFE005999FE005697FE005394
      FE005193FE00FAF6F300CD926300000000000000000000000000EAA52C0DE7A5
      3293F0C56FFFEFC67CFFECBD70FFE3AA55FFE2A453FFE3AB65FFE6B479FFDFA7
      6AFFD18144DEBC501A3400000000000000000000000000000000A3A3A300FEFE
      FE00AF7A5500C08A6300C28C6500C48E6600C58F6800C7916A00C9936B00AF7A
      5500FEFEFE009F9F9F00000000000000000000000000A2A2A200FEFEFE00AF7A
      5500C28C6600C48E6700C58F6800C7916A00C9936B00C9946D00AF7A5500FEFE
      FE00A09F9E0000000000000000000000000000000000EABC9A00FAF6F30063A3
      FE0078BCFE0074BAFE0070B8FE006CB7FE0067B2FE0060AFFE0059AAFE0053A6
      FE003A7CFE00FAF6F300D096690000000000000000000000000000000000EBA7
      2D13E9A62F89EDBA52E6EEC36DFFEDC070FFEBBC70FFE9BA72FFE2A756FDD27C
      36BDBB4B173000000000B2431527AC3F13150000000000000000A2A2A200FEFE
      FE00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A671
      4C00FEFEFE009D9D9D00000000000000000000000000A3A3A300FEFEFE00AF7A
      5500C08A6300C28C6500C48E6600C58F6800C7916A00C9936B00AF7A5500FEFE
      FE009F9F9F0000000000000000000000000000000000EBBE9D00FAF6F30064A3
      FE0063A2FE005F9FFE005C9DFE005798FE005395FE004C8FFE00468AFE004183
      FE003C7EFE00FAF6F300D39A6E00000000000000000000000000000000000000
      0000EEAB2D02EAA62C36E79F2B6FE59E3194E2993196E19839AEE5AA53F3E19F
      4CE5CC6327C0B73C1263B7431686B64617270000000000000000A9A9A900FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00A2A2A200000000000000000000000000A2A2A200FEFEFE00A671
      4C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00FEFE
      FE009D9D9D0000000000000000000000000000000000EEC5A700FAF6F300FAF6
      F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6
      F300FAF6F300FAF6F300D7A27700000000000000000000000000000000000000
      0000000000000000000000000000EAA32B07E69B2A08E2952911DE8D2737DC8A
      2B8FE19F4ADDDC9242CCCD6E2282C8621E0E0000000000000000B2B2B200A8A8
      A800A7A7A700AAAAAA00ABABAB00ACACAC00ABABAB00AAAAAA00A7A7A700A3A3
      A300A2A2A200B5B5B500000000000000000000000000A9A9A900FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00A2A2A20000000000000000000000000000000000F7E0D100F0C7AB00ECBF
      9E00EABD9C00EABB9900E8B99500E6B69200E5B48F00E3B18B00E1AE8700DFAB
      8300DCA87F00DBA47C00E1B59500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200A8A8A800A7A7
      A700AAAAAA00ABABAB00ACACAC00ABABAB00AAAAAA00A7A7A700A3A3A300A2A2
      A200B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004092C800368AC5003588C4003386C3003284C2003083C1002F81
      C0002D7FBF002C7DBE002A7BBE005595CB000000000000000000000000000000
      000000000000000000000000000000000000D7CCC300A47D5D00B17F5500AE7D
      5100A3795800CFC1B7000000000000000000C3916D9BC38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB6805EFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD76
      56FFAB7554FFA97353FFA97151FFA370519B0000000000000000000000000000
      00000000000000000000B0947600855E330081593000A3825F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C9CCE00DCEBF500BCEDF800ABE9F700AAE9F700AAE9F700AAE9
      F700ACE9F700D3F2FA00A3C7E3006DA6D3000000000000000000000000000000
      00000000000000000000E6DFDA00A8876A00B1805700CAAA8800D0B39400BA8D
      6200B4865900AA764C00A27F6200E1D9D300C8926CFF525252FF535353FF5454
      54FF555555FF565656FF575757FF575757FF585858FF595959FF5A5A5AFF5B5B
      5BFF5C5C5CFF5C5C5CFF5D5D5DFFA97251FFA27541009D6F3C00976A37009264
      32008C5F2D008659280081532300926738008F643500714415006C3F1000683B
      0C0064370900603305005D3002005A2D00000000000000000000000000000000
      0000EEEEEE0088AEC3008DC1E00096E7F80060DBF5005ADAF4003187C1005ADA
      F40069DDF500B0E6F5003E8DC600DCEAF5000000000000000000000000000000
      0000F3F6F400FAFBFA00AC7F5600D4BA9E00D5BA9D00D2B79B00D0B29300B688
      5C00B98D6100B78C6000B1805500A7754D00CA946EFF4E4E4EFF3D3D3DFF3D3D
      3DFF3E3E3EFF3F3F3FFF414141FF424242FF434343FF444444FF454545FF4646
      46FF464646FF484848FF5A5A5AFFAA7353FFAA7D4900B28A5C00B28A5C00B28A
      5C00B28A5C00B28A5C00B28A5C007C502000784B1C00B28A5C00B28A5C00B28A
      5C00B28A5C00B28A5C00B28A5C00673B0D000000000000000000F7F7F700CCCC
      CC00A2A2A200C1C3C40064ACD400AADAEE0073DFF60057D9F40057D9F4005CDA
      F4008FE5F70091C0E00099C5E200000000000000000000000000C6D4C7006799
      6B0062A1690060A06800B07D5100E0CCB700D7BFA400D7BFA600D3B99C00B78B
      5F00B6895F00B78C6000B98D6100B07D5100CC976FFF4B4B4BFF383838FF3939
      39FF3A3A3AFF3C3C3CFF3D3D3DFF3F3F3FFF3F3F3FFF414141FF424242FF4242
      42FF444444FF454545FF575757FFAC7554FFAF824E009D6F3C00976A37009264
      32008C5F2D008659280081532300AA8F7300A98E7200714415006C3F1000683B
      0C0064370900603305005D3002006B3E1100FDFDFD00DADADA00ADADAD00C0C0
      C000E7E7E700EAEAEA00B3CDDA007ABCDE00A1E9F80060DBF5003086C10076E0
      F600B5DDEF004A95C200C9CED100FBFBFB00DCE4DD00759F790065A26B0092BF
      98009DC6A30070AB7700AE7D5000E2CFBB00D9C2AA00D2B79D00C6A27C00C097
      6E00B5885B00B6895F00B98D6100B07F5300CF9A72FF474747FF333333FF3434
      34FF363636FF373737FF393939FF3A3A3AFF3B3B3BFF3C3C3CFF3E3E3EFF3F3F
      3FFF404040FF414141FF555555FFAD7856FFB5875300A4764200F8F8F800F8F8
      F800F8F8F800F7F7F700F0F0F000E2E2E200F2F2F200F7F7F700F8F8F800F7F7
      F700E8E8E800F7F7F700613406006F431500BCBCBC00BDBDBD00E2E2E200F0F0
      F000E6E6E600DCDCDC00D8D9D9007DB9D400ABD8EB0081E2F7003287C100ABEC
      F900439DCE0096B3C400A5A5A500ADADAD00639E6B00A8CCAE00A5CBAB00A1C8
      A80098C49E006AA87300AD7B4E00DBC7AF00BE9E8000B78C6400D0B28E00D0B2
      8E00BA8F6500BB906700B6895F00B07D5100D19C73FF424242FF2F2F2FFF3030
      30FF313131FF333333FF343434FF363636FF363636FF383838FF3A3A3AFF3B3B
      3BFF3D3D3DFF3D3D3DFF525252FFB07A58FFB98C5700AA7C4800F8F8F800F0F0
      F000ECECEC00E6E6E600D2D2D200A4A4A400D6D6D600F3F3F300EDEDED00E9E9
      E900DBDBDB00F7F7F70065380A0073471900A7A7A700F4F4F400F1F1F100E6E6
      E600E3E3E300DEDEDE00DADADA00BFCFD50058AFD400B3EAF7008DE5F700B4DC
      ED006BACCB00BBBCBD00C8C8C8009797970061A06800BFD9C400ACCFB200AACD
      B0009DC7A5006CA97500947A7D005960C7004F57E2004E55DF00575EC7008F77
      8300BA8F6500D0B28E00C5A17A00A8784F00D49E75FF3D3D3DFF292929FFD1D1
      D1FFADADADFF2E2E2EFF2F2F2FFF313131FF323232FF343434FF363636FF3737
      37FF383838FF3A3A3AFF4E4E4EFFB27C5AFFBD905B00B0824D00F8F8F800CBCB
      CB00C8C8C800C4C4C400D2D2D200A5A5A500D7D7D700F3F3F300C9C9C900C5C5
      C500B9B9B900F7F7F7006A3D0F00794C1D00ADADAD00F2F2F200EFEFEF00EBEB
      EB00E9E9E900E3E3E300D9D9D900D7D7D7008DBCCE00A3D6EA00DBF3FA0057AF
      D500AABDC600BFBFBF00CACACA009D9D9D005F9F6700C4DDC800B3D3B800A3C8
      A90080AA9900606CC2004F57DF006567EA009292F3006062E900575AE3004851
      DB005F62BD00A5887E00C0997000B89F8A00D5A076FF393939FF252525FF2626
      26FFDEDEDEFF747474FF2A2A2AFF2C2C2CFF2D2D2DFF2F2F2FFF313131FF3232
      32FF343434FF353535FF4B4B4BFFB57E5CFFC1945F00B6885200F9F9F900F0F0
      F000ECECEC00E8E8E800D3D3D300A5A5A500D7D7D700F4F4F400EEEEEE00EAEA
      EA00DBDBDB00F7F7F700704314007E522200AEAEAE00F2F2F200F0F0F000EDED
      ED00E0E0E000C6C6C600CACACA00D0D0D000CACFD1006ABCD900AADAEC0083B7
      CC00BFBFBF00BFBFBF00CDCDCD009E9E9E005C9E6400B8D5BD0086B98E0070AB
      77005258DB006569EA009795F3009090F2008889EF005A5EE6005E61E8005C60
      E7005057E3004954D700E3DDDB00FBFAFA00D8A279FF343434FF202020FFCFCF
      CFFFA8A8A8FF242424FF252525FF262626FF282828FF2A2A2AFF2C2C2CFF2D2D
      2DFF2F2F2FFF313131FF464646FFB7815EFFC5976100BB8D5700F9F9F900CBCB
      CB00C9C9C900C4C4C400D3D3D300A6A6A600D7D7D700F4F4F400CACACA00C6C6
      C600BABABA00F7F7F7007649190083572700AFAFAF00F2F2F200E8E8E800DCDC
      DC00DDDDDD00C1C1C100D9D9D900FCFCFC00FCFCFC00B0D0DB0071BDD700CBD4
      D700BABABA00BABABA00CECECE009F9F9F00649F6B0085B98E0098C5A10073AC
      7B004E56E100B3B0F8009695F3009292F3008B8CEF005B5FE7005B60E6005C60
      E7005E61E8004E56E100E3E5F20000000000D9A379FF343434FF202020FF2121
      21FF222222FF242424FF252525FF262626FF282828FF2A2A2AFF2C2C2CFF2D2D
      2DFF2F2F2FFF313131FF464646FFBA8560FFC5986200C0925B00F9F9F900F1F1
      F100EEEEEE00E9E9E900D4D4D400B4B4B400DEDEDE00F4F4F400F0F0F000EBEB
      EB00DDDDDD00F8F8F8007C4F1F00895D2C00ACACAC00D7D7D700CCCCCC00CDCD
      CD00D0D0D000ABABAB00FEFEFE00FEFEFE00FEFEFE00FEFEFE00ABABAB00D0D0
      D000CBCBCB00C0C0C000BDBDBD009C9C9C0092B296007BB3840075AE7D006EAA
      77004D53E000B3B0F8009495F4006569EA006E70EB006D71EB00595BE4005B60
      E6005E61E8005057E100E3E5F20000000000DBA47AFF313131FF323232FF3333
      33FF343434FF353535FF363636FF373737FF393939FF3B3B3BFF3C3C3CFF3D3D
      3DFF3F3F3FFF414141FF434343FFBD8763FFC5986200C4965F00F9F9F900CCCC
      CC00C9C9C900C5C5C500F1F1F100DCD7D100EAE4DE00FBFBFB00CBCBCB00C8C8
      C800BCBCBC00F8F8F8008356250090623200CCCCCC00ADADAD00D4D4D400FCFC
      FC00FCFCFC00C6C6C600B4B4B400A2A2A200A2A2A200B4B4B400C6C6C600FBFB
      FB00FAFAFA00D1D1D100ADADAD00BFBFBF00FAFBFA00DEE6DF00CAD7CB006DA7
      76004B51DF00A1A1F300696BEB006062E9009692F6009692F6006367E8006465
      E9005B60E6004E56E100E3E5F20000000000DCA77BFFDBA47AFFDAA379FFD8A2
      79FFD7A178FFD59F76FFD39E74FFD19C73FFCF9A72FFCD9770FFCB956EFFC994
      6CFFC7916BFFC48F69FFC38D67FFC08B66FFC5986200C7996200F9F9F900F9F9
      F900F9F9F900F7F7F700D8C5B000B88E5E00B38A5B00D6C3AE00F8F8F800F8F8
      F800F8F8F800F8F8F8008A5C2B009668370000000000AAAAAA00FEFEFE00FEFE
      FE00FEFEFE00DFDFDF00ABABAB00D0D0D000D0D0D000AAAAAA00DFDFDF00FEFE
      FE00FEFEFE00FEFEFE00AAAAAA00000000000000000000000000000000000000
      0000545ADA007B7BF1009692F6006367E8005157E2005157E2006367E8009692
      F6007B7BF1004D56D800E9EAF50000000000DDAC85FDF1DCCEFFEAC1A0FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFCDC8C5FFE8B992FFCDC8
      C5FFE8B992FF4464FFFFE8C4A7FFC1906FFDF4EBE000C89A6300D2AD8100CFAB
      7F00CDA87C00CAA57A00C59F7300F2EAE000F1E9E000BA946900B7936900B38F
      6500AE8A6100AA865D0091633100EAE1D70000000000DEDEDE00BCBCBC00A2A2
      A200A1A1A100B0B0B000D5D5D500FCFCFC00FBFBFB00D2D2D200B0B0B000A1A1
      A100A2A2A200BCBCBC00DEDEDE00000000000000000000000000000000000000
      00009094D8006D6EEB006567EA005E61E8007777EF007373EF005E61E800686A
      EA006E70EB009094D6000000000000000000DDAC86C2DDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD8A179FFD5A076FFD49E75FFD29D73FFCF9A72FFCE99
      70FFCB966FFFC9946CFFC49A7AF4C39371C200000000F4EBE000F4EBE000F4EB
      E000F3EADF00F3EADF00F2E9DE000000000000000000F0E6DC00EFE5DB00EEE4
      DA00ECE3D900EBE2D800EAE1D700000000000000000000000000000000000000
      0000F8F8F800AAAAAA00FEFEFE00FEFEFE00FEFEFE00FEFEFE00AAAAAA00F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      0000FAFAFD00DFE0F000CBCDE7006062E2005056E1005056E1005E61E200C8CB
      E600DFE0F000FAFAFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00BABABA00A1A1A100A1A1A100BABABA00DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0EEE0008FBF91003A8C3E0024792800247628003A843E008FB99100E0EB
      E000000000000000000000000000000000000000000000000000000000000000
      0000E5F0E7009FC8A500559B5E003F8E48003B8C44004C95520097C19B00E1ED
      E200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5D9
      B600308E3400419F510086C999009AD2AA009AD1AA0082C695003C964B00307B
      3300B4D0B600000000000000000000000000000000000000000000000000C3DD
      C800569F630040984F007CC18E0095CFA50095CEA50077BD8800358C4100408C
      4700B9D5BB00000000000000000000000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A900000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A9000000000000000000000000B5DBBA00248E
      29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30065B6
      7C0023712600B4D0B60000000000000000000000000000000000C6DFCB00549F
      630063B37700A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30057A9
      6A0034853C00B9D5BB000000000000000000C8926CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA97251FF00000000C8926CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA97251FF0000000000000000E1F2E40032A0430071C1
      8600A7DAB1005FBB76005BB9720058B76F0058B46E0057B46E005AB67300A4D8
      B20068B77E00307F3400E0ECE1000000000000000000E9F3EB0066AB750069B8
      7C00A7DAB1005FBB76005BB9720058B76F0058B46E0057B46E005AB67300A4D8
      B20059A96B00418E4800E2EEE30000000000CA946EFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFE
      FAFFFCFCF9FFFFFFFFFFAA7353FF00000000CA946EFFFFFFFFFFEBB060FFFFFF
      FFFFB2B2B2FFAEAEAEFFA5A5A5FFFEFAF7FFA2A2A2FFFEFAF7FF989898FF9595
      95FF919191FFFFFFFFFFAA7353FF00000000000000008FD29F004BAF6300A9DC
      B30063C078005EBD700074C48400D3EBD80089CC980055B56B0057B46D005BB6
      7300A5D9B300409A4D008EBB90000000000000000000AED4B80052AA6700A9DC
      B30063C078005EBD70005FBB7600FEFEFE00FEFEFE0058B76F0057B46D005BB6
      7300A5D9B300378E420096C19A0000000000CC976FFFFFFFFFFFFFFFFCFFFFFF
      FDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFDFAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFC
      F7FFFBFBF6FFFFFFFFFFAC7554FF00000000CC976FFFFFFFFFFFFEFDFBFFFEFC
      FBFFFEFBF9FFFEFBF9FFFEFAF7FFFEFAF7FFFEFAF7FFFEFAF7FFFDF8F4FFFCF6
      F3FFFCF6F3FFFFFFFFFFAC7554FF00000000000000003EB45C0090D19E008CD3
      990063C2730078C88600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8
      710084CB960086C699003A8A3E00000000000000000076B7880089CB970088D2
      95006AC5790062C06F0054AA6400FEFEFE00FEFEFE0058B76F0058B76F005AB8
      710084CB96007ABD8C004C95540000000000D19C73FFFFFFFFFFFEFEFCFFFEFE
      FCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFA
      F6FFFBF8F4FFFFFFFFFFB07A58FF00000000D19C73FFFFFFFFFFEFB462FFFFFF
      FFFFB5B5B5FFB3B3B3FFABABABFFFEFAF7FFA8A8A8FFFDF8F5FFA2A2A2FF9E9E
      9EFF9B9B9BFFFFFFFFFFB07A58FF000000000000000026AF4800A5DBAE006FC9
      7E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFCFB0087CC95005AB8
      700066BD7C009FD6AE00227E2500000000000000000069B17E00A8DCB2007CCE
      890074CB8000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0058B7
      6F0066BD7C009BD3AA003A8B430000000000D49E75FFFFFFFFFFFEFEFCFFFDFD
      FBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7
      F2FFFBF5F2FFFFFFFFFFB27C5AFF00000000D49E75FFFFFFFFFFFEFCFAFFFEFB
      F9FFFEFAF8FFFEFAF8FFFEFAF6FFFEFAF7FFFCF7F4FFFCF7F2FFFCF6F0FFFCF5
      EFFFFCF4EEFFFFFFFFFFB27C5AFF00000000000000002DB65000A6DCB00071CB
      7F0065C67200AFE0B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF
      980068C07D00A0D6AD002283250000000000000000006DB48200B5E1BD008AD4
      960079C88500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0058B7
      6F0068C07D009CD3A9003E8E480000000000D5A076FFFFFFFFFFFDFDFCFFFDFD
      FBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3
      EFFFF8F2ECFFFFFFFFFFB57E5CFF00000000D5A076FFFFFFFFFFF3B663FFFFFF
      FFFFBABABAFFB8B8B8FFB2B2B2FFFEFAF7FFAFAFAFFFFCF6F0FFA9A9A9FFA7A7
      A7FFA5A5A5FFFFFFFFFFB57E5CFF00000000000000004AC46B0094D6A00090D6
      9A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3BF00FEFEFE00E2F3
      E5008AD098008ACD9C003B983F00000000000000000081BF9400ABDCB500A5DE
      AE0080CA8B007BC885006DBC7800FEFEFE00FEFEFE005AAB69005FBB76005BB9
      72008AD098007FC49100579D600000000000D8A279FFFFFFFFFFFDFDFAFFFCFC
      FAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0
      EAFFF6ECE8FFFFFFFFFFB7815EFF00000000D8A279FFFFFFFFFFFEFAF8FFFEFA
      F7FFFEFAF6FFFDF8F6FFFCF7F2FFFEFAF7FFFCF6F0FFFCF5EFFFFBF3ECFFFAF1
      EAFFFAF0E8FFFFFFFFFFB7815EFF00000000000000009ADEAC0056BE6F00AEE0
      B6006CCB790067C7710064C66F0062C46D0061C36D0062C37000B5E2BD006EC6
      7D00ABDEB40047A85D008EC793000000000000000000B8DBC30084C69600D1ED
      D60094D89F0089D293007EC78800FEFEFE00FEFEFE0078CC84006AC27B006EC6
      7D00ABDEB400449D5600A0C8A60000000000D9A379FFFFFFFFFFFCFBF9FFFCFB
      F8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EA
      E4FFF2E7DEFFFFFFFFFFBA8560FF00000000D9A379FFFFFFFFFFF6B965FFFFFF
      FFFFBDBDBDFFBBBBBBFFB7B7B7FFFEFAF7FFB5B5B5FFFCF3EDFFB1B1B1FFB0B0
      B0FFADADADFFFFFFFFFFBA8560FF0000000000000000E4F7E90048C465007ECD
      8F00ADE0B4006CCB790069C9750067C7710067C7730067C774006AC87800ABDE
      B30075C3880032A04200E1F1E3000000000000000000ECF6EF007EBE9200A9D9
      B600D7F0DB0091D79C0087CC920083CB8D008AD3950089D3940082D18D00AEDF
      B6006AB87C005AA26600E6F1E80000000000DBA47AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBD8763FF00000000DBA47AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBD8763FF000000000000000000000000BFECCA003CC2
      5B007ECD8F00AEE0B60091D79C0076CD820076CD820091D79C00ADE0B40077C7
      8A0026A03A00B5DFBD0000000000000000000000000000000000D1E9D90075BA
      8B00AEDBBA00DBF1DF00B5E3BC009ADAA40095D89F00A4DEAE00BFE7C40078C1
      890057A16500C4DEC9000000000000000000DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF00000000DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF00000000000000000000000000000000C0EC
      CB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5A0004FB8690034B2
      5400B6E3C100000000000000000000000000000000000000000000000000D1E9
      D9007EBE920093CDA300C2E5CA00CEEAD300C8E8CD00AEDCB7006CB87E0067AD
      7700C7E0CD00000000000000000000000000DDAC85FDE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFC1906FFD00000000DDAC85FDE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFC1906FFD000000000000000000000000000000000000
      0000E5F7E9009EE2B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5
      E700000000000000000000000000000000000000000000000000000000000000
      0000ECF6EF00B9DCC40082BF950070B685006DB4810078B98900B1D5BA00E8F3
      EB0000000000000000000000000000000000A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B00000000A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400100000100010000000000000A00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFF00F0000C003FFFFC0030000
      8001100880010000800100008001000080010000000000008001000000000000
      8001000000000000C003000000000000E007000000000000F00F000000000000
      F007000000000000F007000000000000F00F000080010000F00FFFFF80010000
      F81FFFFFC0030000FFFFFFFFF00F0000F03FFFFFFFFFFFFFF01F87E1C003C003
      F00F87E180018001F007000080018001F003000080018001E001000080018001
      C00000008001800180000000C003C00300008000E007E00700008001F00FF00F
      0000CFF3F007F007000FCFF3F007F007101FCFF3F00FF00F003FE007F00FF00F
      007FE007F81FF81F00FFFFFFFFFFFFFF9249EFF3FFC7FF3F4924E3C78001FE1F
      2492E0078001FC0F9249E0078000F8074924E0078000F0032492E0078000E001
      9249C0038001C000492480018001800024928000800100019249000080010003
      49240000800100072492F81F8001000F9249FC1F8001101F4924FC3F8001003F
      2492FE7F8001007F9249FE7FFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E1E7E787F3FFFF9FE1C7E387F1FFFF1FE187E187F0FFFE1FE107E087F07FFC1F
      E007E007F01FF01FE007E007F01FF01FE007E007F01FF01FE007E007F03FF81F
      E107E087F07FFC1FE187E187F0FFFE1FE1C7E387F1FFFF1FE1E7E787F3FFFF9F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FE00FE007E001F00FE00F00000000
      C003E00F000000000000E00F000000000000E00F000000000000E00F00000000
      0000E00F000000000000E00F000000000000E00F000000000000E00F00000000
      0000E00F800180010000E00FC003C0038001E00FE007E007C003E00FE007E007
      F00FFFCFE007E007FC3FFFCFE01FE01F8001FFFFC7FFFFFF8001FFE780FFFFFF
      8001FFC3807FC0038001FF83800FC0038001FF030003C0038001C0030000C003
      800180070000C0038001800F0001C0038001801F8001C0038001801FE003C003
      C3C3801FF001C003C3C3801FF801C003C003801FFC03C003C003801FFE07C003
      E007E03FFF0FFFFFF00FFFFFFF9FFFFFFFFF8000FFFFF07FF00F0000FFFF8001
      E0070000F0008001C0030000F000800180010000C000800180010000C0008001
      8001000000008001800100000000800080010000000080008001000000008000
      80010000000080008001000000038001C003000000038001E0070000000F8001
      F00F0000000F8001FFFF0000FFFFFFFF80000000FFFFFFFF00000000F00F0000
      00000000E007000000000000C0030000000000008001E003000000008001E003
      0000000080018001000000008001000000000000800100000000000080010000
      0000000080018001000000008001C00300000000C003E00700000000E007F00F
      00000000F00FF81F00000000FFFFFC3FFFFFFFFFFFFFFFFF80018001FFFF8001
      8001800100008001800180010000800180018001000080019089903900008C11
      9089901100008C119089900100008C119199900900008C119089900900008C31
      8001800100008F11800180018001800180018001C003800180018001F00F8001
      80018001FFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001800180018001
      8001800180018001800180018001800180018001800180018801882188018001
      8801881188018029880188118811802988018841889182298811881188118021
      8FF18F218F018001800180018001800180018001800180018001800180018001
      8001800180018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001800180018001
      8001800180018001800180018001800180018001800180018801880188018801
      8811880188118851881188818811881188018801884188018811882188418841
      8F218F218F718F21800180018001800180018001800180018001800180018001
      8001800180018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001F00F80018001
      8001E007800180018001C0038001800180018001800180019C0180018C1188F1
      902980018C11884190A180018C118801902180018C118811908980018C318891
      800180018F118E6180018001800180018001C003800180018001E00780018001
      8001F00F80018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFF0000
      E007FFFF00000000C00300000000000080010000000080018001000000008001
      800100000000C003800100000000C003800100000000E007800100000000F00F
      800100000000F00F800100000000F81FC00300000000F81FE0070000FFC0FC3F
      F00FFFFFFFE0FC3FFFFFFFFFFFFFFFFFC07FF07FFC00FFFFC07FF03FF0008001
      E000C00F800080010000800700008001000080070000800100008003000091D9
      0000800100009511000080000000951100008000000095110000800000009111
      00008000000F800100008007000F800100008007000F8001F8008007000F8001
      FC008007000F8001FF00C00F801FFFFFFC3F800080008000E007000000000000
      C00300000000000080010000000000008001000000000000C003000000000000
      0000000000000000018000000000000001800000000000000000000000000000
      C00300000000000080010000000000008001000000000000C003000000000000
      E407000000000000FC3F000000000000E3C7E3C7FFFFFFFF80038003FFFFE0FF
      A3C3A3C30C30C00F800B800B0C308007FFE3FFE30C300003E003E0030C300001
      C003C003FFFF0001C003C003DFFB000180018001C003000180018001FE7F0001
      00010001FFFF000100000000FC3F000100000000FC3F0001FC30F810FC3F8003
      FC3FFC3FFC3FC007FC3FFC7FFFFFE00FFFFFFFFFFFC1FFC18001F00FE380E380
      8001E007800080008001C003A380A380800180018000800080018001FF80FF80
      80018001E001E00180018001C003C00380018001C003C0038001800180018001
      800180018001800180018001000100018001C003000000008001E00700000000
      8001F00FFFF0FFF0FFFFFFFFFFFFFFFFFFFFFFFFF07FFFFF801FC003F03F8001
      9007C003800780018003C003800780018001C003800780018001C00380038001
      8001C00380018001C001C003800080018001C003800080018001C00380008001
      C001C00380008001C003C00380078001E004C00380078001F000C00380078001
      FE00C00380078001FFFFFFFF8007FFFFFFFFFFFFF800FF030000FC3FF800FC00
      00000000F000F00000000000C001C00000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      00000000000000010000000000000001000000008001F001000000008001F003
      00008181F00FF003FFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFF00FF00FFFFFFFFF
      E007E00700010001C003C0030001000180018001000100018001800100010001
      8001800100010001800180010001000180018001000100018001800100010001
      80018001000100018001800100010001C003C00300010001E007E00700010001
      F00FF00F00010001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object Qrsoma: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcaixa_movCalcFields
    SQL.Strings = (
      'select sum(entrada) total_entrada, sum(saida) total_saida, '
      '(select sum(entrada) from c000044 where movimento = 08),'
      '(select sum(saida) from c000044 where movimento = 08)'
      'from c000044')
    Params = <>
    Left = 525
    Top = 315
  end
  object qrresumo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select plano.conta, sum(caixa.valor) from c000035 plano'
      
        'JOIN c000044 caixa on plano.codigo = caixa.codconta and caixa.mo' +
        'vimento = 1 and plano.tipo = 1'
      'group by plano.conta')
    Params = <>
    Left = 461
    Top = 315
  end
  object qrmov: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 429
    Top = 315
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Livro Caixa'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 557
    Top = 283
  end
end

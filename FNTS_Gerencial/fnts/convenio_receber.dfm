object frmconvenio_receber: Tfrmconvenio_receber
  Left = 457
  Top = 128
  BorderStyle = bsNone
  Caption = 'CONTAS RECEBER | Conv'#234'nio'
  ClientHeight = 475
  ClientWidth = 889
  Color = 5460819
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -9
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 12
  object FlatPanel1: TFlatPanel
    Left = -1
    Top = 47
    Width = 782
    Height = 41
    ParentColor = True
    ColorHighLight = 5460819
    ColorShadow = 5460819
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 57
      Height = 13
      Caption = 'CONV'#202'NIO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 440
      Top = 16
      Width = 45
      Height = 13
      Caption = 'C'#211'DIGO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 592
      Top = 16
      Width = 59
      Height = 13
      Caption = 'DATA BASE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object locconvenio: TEdit
      Left = 71
      Top = 12
      Width = 337
      Height = 21
      CharCase = ecUpperCase
      Color = 15916445
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = locconvenioKeyPress
    end
    object Edit2: TEdit
      Left = 489
      Top = 11
      Width = 73
      Height = 21
      Color = 15916445
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edata: TJvDateEdit
      Left = 653
      Top = 12
      Width = 103
      Height = 21
      Color = 15916445
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowNullDate = False
      TabOrder = 2
      OnKeyPress = edataKeyPress
    end
  end
  object Button1: TButton
    Left = 555
    Top = 86
    Width = 209
    Height = 26
    Caption = 'FILTRAR - PRODUTOS E PARCELAS'
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 0
    Top = 327
    Width = 121
    Height = 25
    Caption = 'FECHAMENTO'
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
      A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
      FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
      9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
      35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
      6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
      9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
      A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
      C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    TabOrder = 2
    Visible = False
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 0
    Top = 343
    Width = 121
    Height = 26
    Caption = 'EXTRATO'
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      7940207D4A266F3D246537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
      A25B2D9C552B954F27AF7A52EDEAE5FFFFFFFAF9F8C4B3A1693B256136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
      D1975CFFFFFFEEE8E1B06C39AC6737A86232A45E2EECE8E1FAF9F8A36C43CDBA
      A5FFFFFFA68669663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
      35A76131A86431975129C49C7DFFFFFFBFA1896F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
      FFFFFFFFFFFFFFE6C29BB6733CAF6B39AA6533E1D1C0FEFEFDE4DDD5945C327B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EB7743CB16D39D3
      A276F8F6F4E3D9CD934F2687461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
      B37CC38241E8CCABEADFD2B8763EE4D7C7FFFFFFAC6E40904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542DEAA73FAF9F7FFFFFFFFFFFFE0CDB7
      A05A2C98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
      BF7E40C7894EBB7A42A96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    TabOrder = 3
    Visible = False
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 136
    Top = 343
    Width = 121
    Height = 25
    Caption = 'FECHAR'
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFF406B00ECE3E0ECE2DFEBE2
      DFECE2DFECE2DFECE2DFECE3E0ECE2DFEBE2DFECE2DFECE3E0ECE3E0ECE2DFEB
      E2DFEBE2DFECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E0539300538E004F87004C8000487900457200416C003F65003C
      61003B5D003A58003A5300395200374D00354B00354A00354A00354B00374E00
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF559700539200528D004F86004C
      7F00487700457000426B003F64003C5F003B5A003A5500385100374D00364B00
      354800344707354800354A00EBE2DF406B00FFFFFF00FFFFFF406B00ECE2DF5A
      9E00589900559500538F005089004D8100487900477400466E00476E003C6100
      3B5B003B5600395200374E003B5300354800344800354A00EBE1DE406B00FFFF
      FF00FFFFFF416C00ECE3E05EA300A2C36EFFFFFFFFFFFFFFFFFFFFFFFF699900
      9CB866FBFBFAFFFFFFD8DFCE5174003C5E008D9E65F4F4F2FFFFFFC8CEBB3B54
      00364B00EBE2DF416C00FFFFFF00FFFFFF406B00ECE2DF63A800A3C572FFFFFF
      BED39BAAC87BA9C6796EA400FDFDFCD1DDC27EA324FAFBFAB1C28C608200FFFF
      FFD3D9C7AAB58DFFFFFF92A071374E00EBE2DF406B00FFFFFF00FFFFFF416C00
      ECE3E068AD00A5C876FFFFFFA0C46D83B6327EB21B65A60082B22178AB00A6C2
      74FFFFFFC1D1A491AC59FFFFFF6A89283C5D009BAA765B7323385200EBE1DE41
      6C00FFFFFF00FFFFFF406B00ECE3E070B200A7C979FFFFFFFFFFFFFFFFFFEAF0
      E56AAE00A0C46DF4F8F4FFFFFFF3F6F275A400ADC481FFFFFF5C82003F64003C
      5E003A59003B5800EBE2DF406B00FFFFFF00FFFFFF406B00ECE3E074B426A7CA
      7AFFFFFF9DC56B85BA4683BA4372B31DF5F8F4E4ECDD9CC16598BD5B6FA4009A
      BA60FFFFFF87A545487200AFBE8C6C892E3C5E00ECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E077B736A7C97AFFFFFFE5EDDEDDE9D2DDE9D17EB83CD9E6CBE6
      EDDFCADBB0FFFFFF94BB54619B00F4F6F3FAFBFAEDEFE9FFFFFF7895383E6400
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF78B73A95C160BBD498BBD498BB
      D498BAD4987CB73982B93EB4CF8BC7D9AAA3C6725EA100589A006B9F00B3C98B
      C0CFA084A440457000436D00EBE2DF406B00FFFFFF00FFFFFF416C00ECE3E078
      B83B7BB93F7BB93F7AB83D79B83A78B73675B52C72B3186DB00067AD0063A800
      5FA2005A9D00559500518D004E84004B7E00487800467400EBE2DF416C00FFFF
      FF00FFFFFF406B00ECE2DF7AB83D7BB93F7AB83D7AB83C78B73676B62F73B422
      71B2006CAF0067AC0064A8005FA3005C9E00579800549100518C004E84004B7F
      004A7C00ECE2DF406B00FFFFFF00FFFFFF406B00ECE2DF7AB83D7AB83E7AB83C
      79B73877B63275B52A72B3186FB1006BAE0067AC0064A80060A4005DA1005A9C
      00569600539100518C004F86004E8300EBE2DF406B00FFFFFF00FFFFFF406B00
      EBE2DFEBE2DFEBE1DEEBE2DFEBE2DFEBE2DFEBE2DFEBE2DFEBE1DEEBE2DFEBE2
      DFEBE2DFEBE2DFEBE1DEEBE1DEEBE2DFEBE2DFEBE1DEEBE2DFEBE1DEEBE1DE40
      6B00FFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    TabOrder = 4
    Visible = False
    OnClick = BitBtn3Click
  end
  object PageView1: TPageView
    Left = 0
    Top = 86
    Width = 782
    Height = 388
    ActivePage = PageSheet2
    ActivePageIndex = 1
    AdaptiveColors = True
    BackgroundColor = clWhite
    BackgroundKind = bkSolid
    Color = clWhite
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ParentColor = False
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 5
    TabStyle = tsClassic
    TopIndent = 3
    object PageSheet1: TPageSheet
      Left = 0
      Top = 21
      Width = 782
      Height = 367
      Caption = ' RESUMO POR CLIENTE '
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = 14085624
      TabWidth = 0
      TransparentColor = clNone
      object Grid: TcxGrid
        Left = 0
        Top = 0
        Width = 782
        Height = 367
        Align = alClient
        TabOrder = 0
        object grid_qrcliente: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dscliente
          DataController.KeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'TOTAL'
              Column = grid_qrclienteTOTAL
            end
            item
              Format = '##0'
              Kind = skCount
              FieldName = 'CODIGO'
              Column = grid_qrclienteCODIGO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Header = cxStyle34
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object grid_qrclienteCODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            Options.Editing = False
            Width = 61
          end
          object grid_qrclienteNOME: TcxGridDBColumn
            Caption = 'CLIENTE CONVENIADO'
            DataBinding.FieldName = 'NOME'
            Options.Editing = False
            Width = 581
          end
          object grid_qrclienteTOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'TOTAL'
            Options.Filtering = False
            Width = 96
          end
        end
        object cvPeople: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto
          DataController.DetailKeyFieldNames = 'FilmID'
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          Styles.StyleSheet = GridCardViewStyleSheetDevExpress
          object cvPeopleName: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Name'
            Kind = rkCaption
            Position.BeginsLayer = True
          end
          object cvPeoplePersonLineID: TcxGridDBCardViewRow
            Caption = 'Occupation'
            DataBinding.FieldName = 'PersonLineID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Position.BeginsLayer = True
          end
          object cvPeopleFIRSTNAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FIRSTNAME'
            Position.BeginsLayer = True
          end
          object cvPeopleSECONDNAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SECONDNAME'
            Position.BeginsLayer = True
          end
          object cvPeopleNICKNAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'NICKNAME'
            Position.BeginsLayer = True
          end
          object cvPeopleBIRTHNAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIRTHNAME'
            Position.BeginsLayer = True
          end
          object cvPeopleDATEOFBIRTH: TcxGridDBCardViewRow
            DataBinding.FieldName = 'DATEOFBIRTH'
            Position.BeginsLayer = True
          end
          object cvPeopleLOCATIONOFBIRTH: TcxGridDBCardViewRow
            DataBinding.FieldName = 'LOCATIONOFBIRTH'
            Position.BeginsLayer = True
          end
          object cvPeopleBIOGRAPHY: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIOGRAPHY'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Position.BeginsLayer = True
          end
          object cvPeopleHOMEPAGE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'HOMEPAGE'
            Position.BeginsLayer = True
          end
          object cvPeopleID: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPeopleFilmID: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FilmID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPeopleBIRTHCOUNTRY: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIRTHCOUNTRY'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPeopleGender: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Gender'
            Visible = False
            Position.BeginsLayer = True
          end
        end
        object grid_qrproduto: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto
          DataController.DetailKeyFieldNames = 'CODCLIENTE'
          DataController.MasterKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle38
          Styles.Content = cxStyle39
          Styles.ContentEven = cxStyle40
          Styles.ContentOdd = cxStyle41
          Styles.FilterBox = cxStyle43
          Styles.Inactive = cxStyle48
          Styles.IncSearch = cxStyle49
          Styles.Footer = cxStyle44
          Styles.Group = cxStyle45
          Styles.GroupByBox = cxStyle46
          Styles.Header = cxStyle47
          Styles.Indicator = cxStyle50
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object grid_qrprodutoCODPRODUTO: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            Width = 73
          end
          object grid_qrprodutoColumn1: TcxGridDBColumn
            Caption = 'PRODUTO'
            DataBinding.FieldName = 'PRODUTO_1'
            HeaderAlignmentHorz = taCenter
            Width = 209
          end
          object grid_qrprodutoQTDE: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 56
          end
          object grid_qrprodutoUNIDADE: TcxGridDBColumn
            Caption = 'UND.'
            DataBinding.FieldName = 'UNIDADE'
            Options.Filtering = False
            Width = 34
          end
          object grid_qrprodutoUNITARIO: TcxGridDBColumn
            Caption = 'UNIT'#193'RIO-R$'
            DataBinding.FieldName = 'UNITARIO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 91
          end
          object grid_qrprodutoDESCONTO: TcxGridDBColumn
            Caption = 'DESC-R$'
            DataBinding.FieldName = 'DESCONTO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
          object grid_qrprodutoACRESCIMO: TcxGridDBColumn
            Caption = 'ACRESC.-R$'
            DataBinding.FieldName = 'ACRESCIMO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
          object grid_qrprodutoTOTAL: TcxGridDBColumn
            Caption = 'TOTAL-R$'
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
        end
        object cvPhotos: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DetailKeyFieldNames = 'FILMID'
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          OptionsView.CellAutoHeight = True
          Styles.StyleSheet = GridCardViewStyleSheetDevExpress
          object cvPhotosID: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPhotosFILMID: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FILMID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPhotosSCREEN: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SCREEN'
            PropertiesClassName = 'TcxImageProperties'
            Properties.FitMode = ifmProportionalStretch
            Properties.GraphicClassName = 'TJPEGImage'
            Options.ShowCaption = False
            Position.BeginsLayer = True
          end
          object cvPhotosICON: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ICON'
            Visible = False
            Position.BeginsLayer = True
          end
        end
        object grid_qrreceber: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsreceber
          DataController.DetailKeyFieldNames = 'CODCLIENTE'
          DataController.MasterKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle30
          Styles.Content = cxStyle31
          Styles.ContentEven = cxStyle32
          Styles.ContentOdd = cxStyle33
          object grid_qrreceberColumn1: TcxGridDBColumn
            Caption = 'VENDA/N'#186
            DataBinding.FieldName = 'CODIGO'
          end
          object grid_qrreceberDATA_EMISSAO: TcxGridDBColumn
            Caption = 'DATA COMPRA'
            DataBinding.FieldName = 'DATA_EMISSAO'
            Width = 110
          end
          object grid_qrreceberDATA_VENCIMENTO: TcxGridDBColumn
            Caption = 'DATA VENCIMENTO'
            DataBinding.FieldName = 'DATA_VENCIMENTO'
            Width = 141
          end
          object grid_qrreceberVALOR_ATUAL: TcxGridDBColumn
            Caption = 'VALOR - R$'
            DataBinding.FieldName = 'VALOR_ATUAL'
            Options.Editing = False
            Options.Filtering = False
            Width = 91
          end
        end
        object grid_produto_venda2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto2
          DataController.DetailKeyFieldNames = 'CODNOTA'
          DataController.MasterKeyFieldNames = 'CODVENDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle35
          Styles.Content = cxStyle36
          Styles.Header = cxStyle37
          object grid_produto_venda2CODPRODUTO: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            Options.Filtering = False
            Width = 55
          end
          object grid_produto_venda2Column1: TcxGridDBColumn
            Caption = 'PRODUTO'
            DataBinding.FieldName = 'PRODUTO_1'
            Options.Filtering = False
            Width = 201
          end
          object grid_produto_venda2QTDE: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            Options.Filtering = False
            Width = 50
          end
          object grid_produto_venda2UNITARIO: TcxGridDBColumn
            Caption = 'UNIT'#193'RIO-R$'
            DataBinding.FieldName = 'UNITARIO'
            Options.Filtering = False
            Width = 86
          end
          object grid_produto_venda2UNIDADE: TcxGridDBColumn
            Caption = 'UND.'
            DataBinding.FieldName = 'UNIDADE'
            Options.Filtering = False
            Width = 43
          end
          object grid_produto_venda2DESCONTO: TcxGridDBColumn
            Caption = 'DESC.-R$'
            DataBinding.FieldName = 'DESCONTO'
            Options.Filtering = False
          end
          object grid_produto_venda2ACRESCIMO: TcxGridDBColumn
            Caption = 'ACRESC.-R$'
            DataBinding.FieldName = 'ACRESCIMO'
            Options.Filtering = False
          end
          object grid_produto_venda2TOTAL: TcxGridDBColumn
            Caption = 'TOTAL-R$'
            DataBinding.FieldName = 'TOTAL'
            Options.Filtering = False
          end
        end
        object grid_cliente: TcxGridLevel
          GridView = grid_qrcliente
          Options.DetailTabsPosition = dtpTop
          object grid_receber: TcxGridLevel
            Caption = 'VENDAS/PRESTA'#199#213'ES'
            GridView = grid_qrreceber
            object GRID_PRODUTO_VENDA: TcxGridLevel
              GridView = grid_produto_venda2
            end
          end
          object grid_produto: TcxGridLevel
            Caption = 'PRODUTOS - TODOS'
            GridView = grid_qrproduto
          end
        end
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 21
      Width = 782
      Height = 367
      Caption = 'RELA'#199#195'O DE PRODUTOS'
      Color = clBtnFace
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      ParentColor = False
      TabColor = 15851719
      TabWidth = 0
      TransparentColor = clNone
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 782
        Height = 367
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto3
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'TOTAL'
              Column = cxGridDBTableView1TOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Header = cxStyle34
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object cxGridDBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'DATA'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object cxGridDBTableView1CODNOTA: TcxGridDBColumn
            Caption = 'VENDA'
            DataBinding.FieldName = 'CODNOTA'
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object cxGridDBTableView1CODPRODUTO: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            HeaderAlignmentHorz = taCenter
            Width = 61
          end
          object cxGridDBTableView1PRODUTO: TcxGridDBColumn
            Caption = 'PRODUTO'
            DataBinding.FieldName = 'PRODUTO_1'
            HeaderAlignmentHorz = taCenter
            Width = 173
          end
          object cxGridDBTableView1QTDE: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 48
          end
          object cxGridDBTableView1UNIDADE: TcxGridDBColumn
            Caption = 'UN.'
            DataBinding.FieldName = 'UNIDADE'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 28
          end
          object cxGridDBTableView1UNITARIO: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'UNITARIO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 60
          end
          object cxGridDBTableView1DESCONTO: TcxGridDBColumn
            Caption = 'DESC-R$'
            DataBinding.FieldName = 'DESCONTO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 53
          end
          object cxGridDBTableView1TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 75
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'CLIENTE'
            DataBinding.FieldName = 'NOME'
            Options.Filtering = False
            Width = 125
          end
        end
        object cxGridDBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto
          DataController.DetailKeyFieldNames = 'FilmID'
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          Styles.StyleSheet = GridCardViewStyleSheetDevExpress
          object cxGridDBCardViewRow1: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Name'
            Kind = rkCaption
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow2: TcxGridDBCardViewRow
            Caption = 'Occupation'
            DataBinding.FieldName = 'PersonLineID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow3: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FIRSTNAME'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow4: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SECONDNAME'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow5: TcxGridDBCardViewRow
            DataBinding.FieldName = 'NICKNAME'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow6: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIRTHNAME'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow7: TcxGridDBCardViewRow
            DataBinding.FieldName = 'DATEOFBIRTH'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow8: TcxGridDBCardViewRow
            DataBinding.FieldName = 'LOCATIONOFBIRTH'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow9: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIOGRAPHY'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow10: TcxGridDBCardViewRow
            DataBinding.FieldName = 'HOMEPAGE'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow11: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow12: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FilmID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow13: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIRTHCOUNTRY'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow14: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Gender'
            Visible = False
            Position.BeginsLayer = True
          end
        end
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto
          DataController.DetailKeyFieldNames = 'CODCLIENTE'
          DataController.MasterKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle38
          Styles.Content = cxStyle39
          Styles.ContentEven = cxStyle40
          Styles.ContentOdd = cxStyle41
          Styles.FilterBox = cxStyle43
          Styles.Inactive = cxStyle48
          Styles.IncSearch = cxStyle49
          Styles.Footer = cxStyle44
          Styles.Group = cxStyle45
          Styles.GroupByBox = cxStyle46
          Styles.Header = cxStyle47
          Styles.Indicator = cxStyle50
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            Width = 73
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'PRODUTO'
            HeaderAlignmentHorz = taCenter
            Width = 209
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 56
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'UND.'
            DataBinding.FieldName = 'UNIDADE'
            Options.Filtering = False
            Width = 34
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'UNIT'#193'RIO-R$'
            DataBinding.FieldName = 'UNITARIO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 91
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'DESC-R$'
            DataBinding.FieldName = 'DESCONTO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'ACRESC.-R$'
            DataBinding.FieldName = 'ACRESCIMO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'TOTAL-R$'
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
        end
        object cxGridDBCardView2: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DetailKeyFieldNames = 'FILMID'
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          OptionsView.CellAutoHeight = True
          Styles.StyleSheet = GridCardViewStyleSheetDevExpress
          object cxGridDBCardViewRow15: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow16: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FILMID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow17: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SCREEN'
            PropertiesClassName = 'TcxImageProperties'
            Properties.FitMode = ifmProportionalStretch
            Properties.GraphicClassName = 'TJPEGImage'
            Options.ShowCaption = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow18: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ICON'
            Visible = False
            Position.BeginsLayer = True
          end
        end
        object cxGridDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsreceber
          DataController.DetailKeyFieldNames = 'CODCLIENTE'
          DataController.MasterKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle30
          Styles.Content = cxStyle31
          Styles.ContentEven = cxStyle32
          Styles.ContentOdd = cxStyle33
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'VENDA/N'#186
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'DATA COMPRA'
            DataBinding.FieldName = 'DATA_EMISSAO'
            Width = 110
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'DATA VENCIMENTO'
            DataBinding.FieldName = 'DATA_VENCIMENTO'
            Width = 141
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'VALOR - R$'
            DataBinding.FieldName = 'VALOR_ATUAL'
            Options.Editing = False
            Options.Filtering = False
            Width = 91
          end
        end
        object cxGridDBTableView4: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto2
          DataController.DetailKeyFieldNames = 'CODNOTA'
          DataController.MasterKeyFieldNames = 'CODVENDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle35
          Styles.Content = cxStyle36
          Styles.Header = cxStyle37
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            Options.Filtering = False
            Width = 55
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = 'PRODUTO'
            Options.Filtering = False
            Width = 201
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            Options.Filtering = False
            Width = 50
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'UNIT'#193'RIO-R$'
            DataBinding.FieldName = 'UNITARIO'
            Options.Filtering = False
            Width = 86
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'UND.'
            DataBinding.FieldName = 'UNIDADE'
            Options.Filtering = False
            Width = 43
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'DESC.-R$'
            DataBinding.FieldName = 'DESCONTO'
            Options.Filtering = False
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'ACRESC.-R$'
            DataBinding.FieldName = 'ACRESCIMO'
            Options.Filtering = False
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'TOTAL-R$'
            DataBinding.FieldName = 'TOTAL'
            Options.Filtering = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
          Options.DetailTabsPosition = dtpTop
        end
      end
    end
  end
  object BitBtn4: TBitBtn
    Left = 215
    Top = 198
    Width = 121
    Height = 26
    Caption = 'RESUMO'
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
      A25B2D9C552B954F278E492386461B7E421DD8CEC3F1EEEC6437266136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
      D1975CFFFFFFEEE8E1B06C39AC6737A86232B77845DAC4AAD7C2ABD3C0ABF2F0
      EEFAFAF9B99F88663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DCA91
      5AFFFFFFF2EEEBE8E2DBFAF9F8FDFDFDCFC0AE6F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
      FFFFFFFFFFFFFFE6C29BB9773EE8DBCCE8DFD5A96431DFD2C3F2EFEC83441C7B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EC18142F1EDE8E2
      CEB7E3D6C7F2EFEC8F4B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
      B37CC38241BB793DC98C50FBFAF8FFFFFFF2EFEC975029904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542BC7A3DB7753CD49F6CFFFFFFF2EFEC
      9E572B98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
      B9773CB5723CC3844CBF814AA45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    TabOrder = 6
    Visible = False
    OnClick = BitBtn4Click
  end
  object bincluir: TAdvGlowButton
    Left = 6
    Top = 303
    Width = 119
    Height = 24
    Caption = 'F2 | Fechamento'
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
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002E14944415478DA
      62FCFFFF3F032500208058D0057AF6942AFFFDF737EACFDFBF717FFEFE91F8F3
      EF2FC3EFBF7F5E00F98B80F4B289E18BEF22AB070820466417F4EC2909FEF3F7
      DF645931654975097D064E561E865FFF7E31BCFAF28CE1F89D7D0CAFDEBC7EFE
      E7CF9FDC5971ABD7C2F4000410DC0088E6BF0B4D54ECB955C57419EE7EBAC5F0
      E2FB5386DFFF7E33F0B3F13388714A331CBDB593E1EA9DEB5F812E8B5F92B219
      6C084000810DE8DE5DA20474F66103252B2955713D8683CF77317CFBFA8DE1F7
      FF3F0C1C1CEC0CFF81F0E7BF9F0C9A7C3A0CC76EEE61B879FFEEB3DF7FFED8AE
      CBDE7D0F20809840A60035C708F08B4A298868301C79B197E1FBEF1F0CDF7E7F
      672834AE66C8D42E61F8F0F33DC3BB8F2F188E3F3FC060A1E6C8C0C8F6570A18
      1E3120BD0001043600E8F458793175861B1FAF30BCF9F486E1D3B74F0C1FBEBE
      8787CDD3FB8F187EFFFCCAF0F5F35B86279FEE3358AB5B8302361624071040E0
      580072A43958B9181E7EBE0F0CB49F0C9566AD283133357809982EDC19C5F0F4
      C33D061D6113B01E90184000415DF087E1EBEFCF0C9F7F7D62F8CDFC1B6FBCFF
      FFFB8F811118264003C07C800082B9E0E9D3F70F5578D879183E7C7FC7507828
      85E1EBAB4F0CB34256C16D06DBC6C8C420C527C7F0E8D57D90A54F41620001C4
      043560F185FB2719E4B81419FEFFFEC9C008345D48901BC5E67F7FFF3330FD63
      6490E55364D876712F580F481C2080602E58F2EF1773FAC93B07A42C955C188E
      3EDCC1F0E7DF1FB0CDFFFF821DCEC0C6C4CC60AFE4C9B0E3C216868F9FBF3C03
      063C38600002089E909216040113D29F85D212E2DCB6EA2E0C8F3FDE0706D87D
      86FFFFFE31C8082A31C8F0C9336CBFB899E1E4F52B5F81C93BFE7CC335704202
      082094A41C39CB2B18E89AC97F99FF48DA6BDA3088F349822C6778FCFE11C3CE
      F3FB183E7DF9F61CA83917A61904000288113D37FA4F7652061A12F51B9E99FE
      00BDF8179C99FEFEFBB3EC7CC37594CC0410408C94666780000300708A7F01A2
      891CF10000000049454E44AE426082}
    TabOrder = 7
    Visible = False
    OnClick = BitBtn1Click
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object bitbtn5: TAdvGlowButton
    Left = 124
    Top = 304
    Width = 103
    Height = 24
    Caption = 'F3 | Extrato'
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
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002B64944415478DA
      62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
      B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
      44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
      CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
      1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
      6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
      40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
      03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
      EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
      C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
      1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
      B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
      7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
      F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
      2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
      E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
      0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
      01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
      F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
      194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
      62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
      13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
      AE426082}
    TabOrder = 8
    Visible = False
    OnClick = BitBtn2Click
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 233
    Top = 304
    Width = 103
    Height = 24
    Caption = 'F4 | Resumo'
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
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002B64944415478DA
      62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
      B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
      44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
      CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
      1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
      6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
      40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
      03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
      EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
      C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
      1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
      B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
      7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
      F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
      2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
      E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
      0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
      01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
      F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
      194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
      62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
      13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
      AE426082}
    TabOrder = 9
    Visible = False
    OnClick = BitBtn4Click
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object bfechar: TAdvGlowButton
    Left = 689
    Top = 304
    Width = 75
    Height = 24
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
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002A04944415478DA
      62FCFFFF3F032500208058D005FEB6652BFFFBFF3FEAFFBF7F71FFFEFD930062
      06207E01C48BFEFDFDB74CA063D15D64F50001C488EC82DFAD59C1FFFFFD9FFC
      95914D924D598581858F0F22FEE923C3B7EBD71998BE7D7CFEEFDFDF5CB1BE95
      6B617A0002086EC0AF964CA0E67F0B7F8AC97173A9A932FC7DF690E11F108300
      93A41C0393943CC3A76BD7197EDCBAFCF5DFDFBFF1B2D336800D010820B0013F
      9B3294804E3CFC4B424E8A5B4D8DE1D7D15D608D5CB573C0F497FA2406867FFF
      19D86CDD183E5EB9CAF0E5FAF9677FFFFDB35599BBFD1E40003181FDFDF74FCC
      3726768466A0A140AFC0BDF6EFCF3F86BF7FFE337CDBBB9D814F438BE13F8FB0
      D49FDFBF63407200010436E0CF9F3FB1ECAA40673FB90FD6F8EF2FD000A02664
      03FEFDFECBF0F7D73F869FF7EE32F06BE830FCFEFD3B16240710403003A45905
      0418FE3CBE0FD608B3111E33408D7F7F43C47FDCB9CBC02A20C4F0E7F71F6990
      1C4000410CF8FD87E13FD0569846988DBF6F5D4178E137D490BF409701F19F3F
      BFC17200010475C1EFA73FDFBC0386B63CDCA920C5DF8FEC65F8B26139DCF67F
      409A455681E1DB9B37204B9F82F4020410CC058B3F5CB9C4C02CA500570CA2F9
      92F219780222C11AFF82C48036B32B2831BCBA701AE4EDC520BD000104360018
      204B7EBD7DF6ECFDD52B0C5C4E9E7043DE4DEE62783BB913AC11C417F0F26178
      7DE502C3FBC7B79F010D5802D20B1040F084742DD639189840160A689B710B02
      43F9C7FD7BE00003C9B32B2A81F11BA0E647C7777D05A69978A77D37C0090920
      805092F28550EB60600299CC21242529AC63C4C02E20084A120C3FDEBF637879
      FE24C3FB27778049F95FAECB819BF0A40C10408CE8B9F1A49F893250511430B4
      8199E92F6A66FAF76F99EBC1DB28990920801829CDCE0001060095D1AF4C86CE
      FBDD0000000049454E44AE426082}
    TabOrder = 10
    Visible = False
    OnClick = BitBtn3Click
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object RzPanel1: TRzPanel
    Left = 781
    Top = 44
    Width = 109
    Height = 436
    BorderOuter = fsNone
    Color = 5460819
    TabOrder = 11
    object bgravar: TAdvGlowButton
      Left = 7
      Top = 89
      Width = 89
      Height = 63
      Caption = 'Fechamento'
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
        1F90000006E84944415478DACC99D96F1BD715870F10A4400A1448DBFC014DDF
        6220690A7483D3C4164949B5648BE2CCBD33432D14B7992145CA5A2D8BAA544A
        949DA668FB52046861A346900AA98B3EF4B1459C1A49902275D2D4756D8B8B16
        3BB16B9B9CB943722411D17AFA406DA4A44475A9580F1F081218CE37E737F79E
        E12160340A25C446616578181855C1748621D7160226A830D7D60D59A91D4CA9
        030C1A009DCACFE854093141B9C004E5AF3A953FD1A96CAE718F49EABB4C50C6
        3541E963547E9E51150C1A00260521EF3A0966530718CE76C84B2160BC024B03
        11C0333128F781BD0ACE7B7A212B85BE66088108A34A5CA732AEA3113F6E7DAF
        531935DE8FFA96CF1955A61995CF3231F80DB3AD13669B4F5648D01D0626041E
        CF39DB5FD105255794D92EB417B4E2714B4C527F936F0A7FDD680EFD9F824D61
        C8B9422732BC7F4AE37D0F2DB6BDBA3ED488DF604D01B7E9EC00C6AB9F21381A
        2DE56C0C70240A5931008C5746752A974455398A4930A2BECAA80A2B3F1E02FC
        E9D8361FC0E1682923A3B03238044C54C6339C177522EF83DCB66A5E5AEA1F04
        8CC5B6F900B6468BB44401DBCEC0922B029AE01DDF4FA99DC850CFDB0BADFD80
        EEB34597352FC0DE9122A74601FBC6C014C2A369BB1BBF68C174A31B737CF00D
        EC8E019E8E01F646017B47004CA5074CA5076643A720AF761ECD90FD8F754788
        8C19DE833939EC3643FD1B5EB0E03D0D0B72040AAD7D8FA51BBC9A467CDB0FE6
        94DDA9E4C5103F3E68F0E07C4BCF530BF2202C784F032C770CC172F708986D1D
        AFA41BCBA2158A57A61D0FA0561F28BE9653D38EBA5D455DF457286A0FE65DA1
        8BCB5D5158EE180230A56E30C5AE2774222F95EF735A838AACD987E66B7538FB
        FB5A345FAFDBE4777538FBC75ACCFFD2815A6D3B6A35A18A4966781FE6859387
        4CA90760B6A91BB2423092D9215AAD3E88CCE5C1B9F75EC0C2D5EFE3DCFB874B
        B97218E7FFF503342FD6A02EFA30FDC33066EA95BD734C45AD41415D2C3B2FF1
        A121047E3DDBD40DC0A4103041B9B35397D08E0790B57A71FE2F562CBC7B04E7
        2F594A79D38273972C58B87618E72F5761B6B70599A0A0E1F2EF0DB70F8D1619
        0D41DD766E26287926851E0726AADFDCB5D4F5C593ADFC9DE0EA0D0E57FFC1EF
        CC0704316E474C36E0EAFB1457AFEC915B04F3E708DE39EAC19C18DCD66998A0
        36001394CEDD7AECBA207E2020C629E23F3F838F04C46B1471822F72730F183C
        E65E73E0BF9F73E003871773CE607915CF0393D4F1DD7AEDBAE0EA155AFCC28F
        4865B94BD0FC2DC16BDF72E0449503D3FC164922231395B78149EA3B1AFF6805
        6F7C9BC789A30E8C5B1C98E6D624891F99A8A440A7F2DDCFBB07BF08C1A485C7
        094B63A9249575D0A95C382882491B8F71CB5A258B71CF1D38C1A46DB3920F38
        EF1CE844BE7FD004D72B99B0720618CEC0DF0EC22229174C5A394CD590693024
        F5E241144C58399CACA1EF814E95D39FB7513F12411B8F93D5F4753044F5D041
        BC0793561EA76AA904BA18049DCAFA8113B4F18B53B5C297C17476415608FC7C
        A7C7AD472598B07018AF256FA41A9D0059F1246469F8A99D16CA86E0871431CE
        235E2595E51E41F342996035C1F89146BC554DBEF771BD04F06938020B5D4390
        7385CE671A3DA582750A1A6D3EC4148F98E6116F93CAB248B0F00782D79FDB14
        BCF1921D3FB637BF5908764241EE0058090CC24A6818163CFD5FC9347A174A06
        419C82469382E97E01EFF4D9F1FE2982F7FB2AC810C14FFC04E32F6EEE7DD75F
        68C0DB82FBE9FF044370D7A70218AD9D60B47442CED303ACAD5DCAF05BAA28CA
        685015EF1F55F0C6B314AF1EB2E3F567F9CAF10C8F37BFCB63AA76ADC51D71E0
        DDC69648A6D50BF78416B827B4022C750F15E91D86959E28E4C5D0B9B4C35B12
        75560A2013159CACA178B3CA5EBEDA2AC2C44B768CDBB8CB6657271406FAA0D0
        D30D85DE6E00748DAE3102E83E0B8BCD0390E6DC6F95FFA82E4AAAFB26197FD1
        3E31C33B1F9B91DD30D5EA82295711C0487493C111581D1A81A5FE083041B9AC
        71BE7DAF64BCCA81090B7773AEA3E7C9C5E84F607170101622910D00C7A29BC4
        A2802FC70063A3604801609C3CAE95B5C1AC14402654463261E53061E5FE9CAC
        265F5A1E1A06FCC5CF8A13AEB1B10D761F600A01309D61C8B6B6FB33BC7FB138
        C0DC5AC9878F3B61E53061E170FA9838307D4282A48DC0A7A706005F3EF3BF4F
        58F3EE3030417D3AEB6CBFB03E8FD6A8FFE1E2B6F298B071386913FE34F923F1
        F9DB7627CC9C902061E51F52707D882E0660DEDD0B59A9FD3B86A0FE8A51E581
        46FC1B71A7AA094E9449266C5CB9603E69E3CF27EB68D5ED3A17CCD435C14C83
        08D3C7C50A086EFD1B42EC0083069ED0A9FF844EE5577352F02D4354E393B542
        2661E5CCA48D3793365E4FD9482A6523EF24ABF973A96A22A56AC95793350492
        F502DCAA6B85E963CE3D09FE770018E5F4F57B2E20840000000049454E44AE42
        6082}
      Transparent = True
      TabOrder = 0
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
      Layout = blGlyphTop
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 7
      Top = 154
      Width = 89
      Height = 63
      Caption = 'Extrato'
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
      OnClick = BitBtn2Click
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
    object AdvGlowButton3: TAdvGlowButton
      Left = 7
      Top = 220
      Width = 89
      Height = 63
      Caption = 'Resumo'
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
        1F9000000B5D4944415478DABCD96B5053671A07F067A6B33BB33BB3333BED7E
        DDEEB6BB3BB375DBADEBB4B6DD2A5E0A0868EE090410444C38EFC985286A1514
        10B48A5C54EE979073C2D54ABD745DAAAD020928D45BD1E424012DA8ADD66DBB
        B6536AA7DBEA76FEFB21180C97DA8BDD0FFF219393CCF9E53979DEF7C9815CC8
        A77BD38702EAFE6F2E89124F4D17ADD43E6225413251F3E52C12025612FD3612
        7D26127CEC09516266C1C70BA28FEF1624F6BE20B1CF05897DEEF0B21BCE80A9
        4FF4F1ADA2C4D6093E365BF0F1247A4D24F82DD43C6223E7B08D9A03666A1AB2
        90C3CBD3B1FF6CA21328A4C91EFAAEC096ABEB4808581F162573B6E0E3870489
        E16E1CDE89C7A1E73C5CF8733EFEB2E8E55F11FC96DFB78CAEA6A68BAB1F00F0
        9295F68E66924332FDCC39642D127CFC6782979B82F9EEE1E090D81D67C05427
        0C673ED2326CF971C0E68B566A1BB1CA1A3DDC88C3930141FA31B8F0EA367AB9
        4F9B87F8B4A6E1FB007B911F96FEF1173505CCD4E86105773FF983804DAEE678
        45AB4489A7AE3BB93480AD533CD4FD4D7E587ABF29A0E3B773C9E9E75BED1732
        A6FD7E3DC8347A3838BCDCF137BFCCA1BE6F0AA778A871343F14C795ADD47C39
        879A7C5CDB4F53B599E3948CBDCDA31BC971755B98893A6F6DA1CE5B5BE8E8AD
        02FAE71785E4F0671634BC63F8BFE20489A161D000BBD7D2FE8FB1023A7AAB90
        3A6FE553E7AD2D44076F64D1811B59F48F8FD6D3A11BB6858277EA657506C2D3
        34C420FA18046FF0AFE89F145FF8FB451F43CB25867DD7183AAEF3107DFC9473
        38BC0C0E8F1107AE65A61DFE683D1DB89145076F6411B5BEBF81DAAF659338BA
        EEA1BA73C67FDFBB8C38BC0C828FA16D94A1FD0A43FBE5F15C6168B96882C3C3
        A3FD0A43C707C193EFBB167CBCF78A09F6F326B48D32BC7E93A1E33A832831EC
        EE62283ECA41F4F1680A98A656D2CBA1EE9C01E2C8DA47DAAFE550EBFB1B88F6
        7FB2990E7E9A4F6DA3B622FB60F8A56D7997A1FE1C435A0E87C4D51C523704A3
        E11872DBD371E02386AC4A13525EE6602C60301630A4ACE7B1AE3E1DFBFF9581
        3D3D66988A3818B63068380E8B96F17849B50A65AE64BC7AD504A77F2AD23E68
        40DB48E6AB073FC9A3FD9F6E26B20F67917D68CD2F1ABDEC8E38A931DAAF32D4
        9E665824E3F05C0487889860663F630657AC47EB751D54061EB39F619817CD61
        5E3487A7E798A0B5A4A0E3A61AEB6B199E7C8AC78B511C16C93944AA1822550C
        9B3A5468F0C5A379C8328E9C38AF2831347A32600FD866D987D7123505D69053
        B2640BDE8C299FA6ED3243DD1906592A87481587B8A4602262CCB05525A37E28
        0E0999E9582433858E2D8835216D731AECEFC661D35E3D229526C4EAC7DF9BC8
        61619C19597549A83C1F8BF2814434052CD3543203A264AE6D0AAC21127D1612
        24FEDA749D753FA0FDA20C0999ABA605D607E428EA5243B62203516A3E747C7E
        B41986AD2B50E3956347976C12F2DE2BC88F897ECBCF48F4591E9FA9F57F0CB0
        C623C79E532AE82C062C1E3F1EA33722228647CAC67454BEA344699F6A1AE4C4
        4E23FACC72724ABCED7E4055BA19114B5762D6FC65783E4E8F9764B6103071B5
        110B96F1F84B840CB317ABB030CE8C95B92B51755E811A8F022BF3D21029B3E1
        B9D804CC89D4607EAC11FA4C0EBB0754D875528512B7FA1EA4350C294ACC4EA2
        8F6F15BCDF0E7C49B7029A15EB50DFBC0FEB0B4A31677E5A08A836AD40A4D28A
        B25A118565B59817CD2125271555830AD4F9E5B0552663F68B2BB071DB2EB807
        CE62CDA6323CBF54871D6F69517E5A8912B73A0C79B7711C5E0E82C4BBC91930
        F54E99DD2601E7442B91B9A10400E0EE3F87DFCE9223B332088C498BC7D2F82C
        00C0575FFF177317A543BF3E1155830AD47AE5D8D0A4C7A34F2EC5C1377A0000
        B5CE0EFCEEA9A5C86ED5A3FA8222040CAFA405A2DF04D1C72E9120B1EBF7BBC4
        7363356059DB0100AF1F75E1F1BFAA43C0B8743DE2746B0000D76F7C8CE716AF
        42E2CB49A81A54A0EABC02F907E2F1C40B0AE4EDAC0500741C3E86DF3FA9C29A
        9A24D4F9E461C0C948A7DF749304897DF97D80878EF4CC087CFF838FC280E567
        94283AAEC58BF204241A720000672F04F0E7397AACDC92821A8F0225BDEA6F43
        7EF19302779D54A1E2AC121AEB72FC3DCA88B15B5FE2ABDB77B05866C6324332
        76BFAD42D978A3CC80FC821C5EF6AF9F0A58DAA746AD578EB4FCE57872EE7278
        FC970000295C1EE6297528EED660F7DBD3034BDC6A14752B3EA5A621537FE37D
        9AE407037BD5A895E4B05525E10F4F6B70B4A71F00B0A1A0024F4528B1B55387
        8AB3CA6971C52E15CA4E6847C9E937BDEAF0FE74C0EAF30AE4BD96803F3D2B47
        857D2F00A0E5B537F087BF2990DDA2478D473E33B04F7B92442FDB70BF4B7CEF
        32E3EA3F8747675866FEF3D59DB065A6B4578DF2334A6C3FAAC5ECC54A583716
        0300FC172FE38F4FEBC08A935127CD0074AB50D6AB6926D16799753FE07C4522
        52592ECE4B4328B7B762D6DCC41050664C428C6635862E8DC23D700E2F441A91
        BC213904DC3DA04269AF1A71A9A95024AD457D7307B25FD98DE7171B9196BB02
        359EE0EBA6ABE0AE93098924F8CC2448ECE6B70195693C16CA56616E4C3C2214
        2958B43433B493E86D062C5C66C23C5932221429C1AD6E735A0858DAA746C559
        25525F36E2C5A80CCC9ABF0CCF46EB10A5B420DE6208DBF226E5F6AE3EFD2FC9
        E95F4DA2642EB9DFB8F59232034B120C88D1674C3B2C44E9D21115BF2A342CDC
        0596B8838DC217A7226289393454446B19E292386C7B438B8A33E18DB2D3A544
        A94BD35EE14E24B2076CD4E0B7FEA6D1C3417C80D3CC64E0DA86242C889D00C6
        E81922553C36EF4B40F5F9892DAFB457831D5D0AEC7169E756BBF544AF7DB291
        0E7CB289DA46ACF6C64923FF8302560D2A90FB5A02A2D43C62122686D705B166
        AC6D4842AD77A2515E392647F5E9E46387476C7468C442B4F7C31CDAF7612E35
        BDF7F2AFEA0733BEBEF74753DB1586BAD30CB17A8685710CD1DA605E586481B5
        7C391A2FC9A03319101163C6121DC3121DC3BC483352B383E3D65DE0DDC5589E
        96818825662C8835617EB419CF3C9F09AE2835B827F7061B63EB9B32D40FA73D
        B6F7030B355FE388DA476DD4366AA38EAB59B46FD4AC77788C704CAAE0D2E546
        44AA32A6ADA0CE6C4044AC1931F10C31F10CF3A2A602CB4EA8B0E79412099906
        2CD1F248CD5E898CEDA9C8AA4FC2D64E5D70BBEB55A3A84B89EAD3C9D9764F3A
        550F2EA79A7752888E8C6DA623639BE9ADB15CEA1CCB2387DFDAD030680C0E8C
        7E06A7CF8CD2EE54E41D52626BA716DB3A75283CAC43D1710DCA4EA850785887
        BCFDF1D8722898BCFDF1D8D6A945595F785796F6A9B1ED881645C735A151ACCE
        27C79E534A14776BB0BD4B8E927E75CFEB9FD9E8E8D83A3AFCD91A3A3CB686A8
        F17241288EABAF90F86E3609178C5D82C4C1E16570FA79BCFA9E190D5222760D
        2C45F919052ACF29B1EBA40A3BBB35283FA344D5A00295E782A91A54044FDA33
        69D970A9517E5A893DA794D3AE7BDB8F29866AA4A4875A3E4C23E1BDD450E8AD
        AFF327723B9FBABFDE426F7E9943A28FF5046F1E71107D26340F5951792A193B
        BAE42876CDBCC17FDF14B995D8E956F90FF564FDBAA72F8F8EF5E7D05B27B243
        A113C80FCB000AA9175B82B7DF2EB0D6891F3026B40C5B51796A397674C91E08
        B2D8ADC24EB7F268895BF3F32E572E9DE9DE497DC70BE9C4F1ADA1CC7C03D367
        A2A6612BB5BE6B35347AB8DB0E4F06441F7F4F25652871FF30E44EB70A453D2A
        ECE98FDF583E9040C53D6A3AE2DA48FDAE6DE472E587E5DBEFB05EB2D2DECB99
        E4904C8F39872C824362E3484BA892DF1759EC5661975B77684F77C2ECCA8144
        AA38A5A79DDDAA1F060CBB897E652D0901EBB38264AA70FACD1F0691C9D8D13D
        FD77B2780A5C3356EA56D94B5CDA45D5AE14AAEE4EA2F281042A7F3BE1C10027
        FD1BE217A29F97B50C5BAB2A4F257715BB5443256EF5C7256EF5E7E3B959E6D6
        5E2A756B7A4BDDEA865297465FE6D23E5CE65253A94B4755AEE554D99DF89D80
        FF1B00A2177EFF42865FD10000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = Convenio1Click
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
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 889
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
    TabOrder = 12
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 48.000000000000000000
    object Label53: TLabel
      Left = 59
      Top = 14
      Width = 286
      Height = 23
      Caption = 'CONTAS RECEBER | Conv'#234'nio'
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
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(rec.valor_atual) total,'
      'cli.codigo,'
      'cli.nome,'
      'cli.codconvenio'
      'from'
      'c000049 rec,'
      'c000007 cli'
      'where'
      'rec.codcliente = cli.codigo '
      'and rec.situacao = 1 '
      'and rec.codigo = '#39'xxxxxx'#39
      'group by'
      'cli.codigo,'
      'cli.nome,'
      'cli.codconvenio'
      'order by'
      'cli.nome ')
    Params = <>
    Left = 688
    Top = 120
    object qrclienteCONVENIO: TStringField
      FieldKind = fkLookup
      FieldName = 'CONVENIO'
      LookupDataSet = frmmodulo.qrconvenio
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCONVENIO'
      Size = 40
      Lookup = True
    end
    object qrclienteTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrclienteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
  end
  object dscliente: TDataSource
    DataSet = qrcliente
    Left = 728
    Top = 120
  end
  object qrreceber: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'CR.*,'
      'CLI.CODCONVENIO'
      'from c000049 CR,'
      'C000007 CLI'
      'where'
      'cr.codcliente = cli.codigo'
      'and cr.situacao = 1'
      'order by data_vencimento')
    Params = <>
    Left = 688
    Top = 176
    object qrreceberCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrreceberCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrreceberCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrreceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrreceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrreceberDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrreceberCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrreceberCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrreceberVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberVALOR_ATUAL: TFloatField
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qrreceberTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qrreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrreceberNOSSONUMERO: TWideStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrreceberCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrreceberCODCEDENTE: TWideStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrreceberP5: TFloatField
      FieldName = 'P5'
    end
    object qrreceberP3: TFloatField
      FieldName = 'P3'
    end
    object qrreceberNUMERO_CUPOM: TWideStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrreceberVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberCOD_VENDA_ORIGINAL: TWideStringField
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrreceberVALOR_ATUAL_ANTERIOR: TFloatField
      FieldName = 'VALOR_ATUAL_ANTERIOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberEMAIL_ENVIADO: TIntegerField
      FieldName = 'EMAIL_ENVIADO'
    end
    object qrreceberCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
  end
  object dsreceber: TDataSource
    DataSet = qrreceber
    Left = 896
    Top = 424
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 376
    Top = 536
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15851719
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = 7355399
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor]
      Color = 10928328
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor]
      Color = 13228766
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor]
      Color = 13228766
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor]
      Color = 15725813
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15851719
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor]
      Color = clWindow
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor]
      Color = 15851719
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor]
      Color = 10928328
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor]
      Color = 15851719
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor]
      Color = 15851719
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor]
      Color = 16380136
    end
    object cxStyle42: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 344
    Top = 536
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'MOV.*,'
      'PRO.PRODUTO'
      ' from c000032 MOV,'
      'c000025 PRO'
      'WHERE '
      'MOV.CODPRODUTO = PRO.CODIGO')
    Params = <>
    Left = 624
    Top = 176
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrprodutoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrprodutoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrprodutoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrprodutoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrprodutoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrprodutoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrprodutoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrprodutoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrprodutoCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrprodutoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrprodutoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrprodutoQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
    end
    object qrprodutoECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrprodutoCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrprodutoCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrprodutoMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrprodutoLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrprodutoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodutoCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoPIS: TFloatField
      FieldName = 'PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoCOFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrprodutoCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrprodutoORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrprodutoDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 40
    end
    object qrprodutoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object qrprodutoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrprodutoPRODUTO_1: TWideStringField
      FieldName = 'PRODUTO_1'
      Size = 60
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 856
    Top = 392
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 440
    Top = 104
    PixelsPerInch = 96
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 14346217
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14346217
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14346217
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15988984
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10140352
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14872561
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15265520
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor]
      Color = clWindow
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle6
      Styles.Content = cxStyle7
      Styles.ContentEven = cxStyle8
      Styles.ContentOdd = cxStyle9
      Styles.FilterBox = cxStyle10
      Styles.Inactive = cxStyle15
      Styles.IncSearch = cxStyle16
      Styles.Selection = cxStyle19
      Styles.Footer = cxStyle11
      Styles.Group = cxStyle12
      Styles.GroupByBox = cxStyle13
      Styles.Header = cxStyle14
      Styles.Indicator = cxStyle17
      Styles.Preview = cxStyle18
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle20
      Styles.Content = cxStyle23
      Styles.ContentEven = cxStyle24
      Styles.ContentOdd = cxStyle25
      Styles.Inactive = cxStyle26
      Styles.IncSearch = cxStyle27
      Styles.Selection = cxStyle29
      Styles.CaptionRow = cxStyle21
      Styles.CardBorder = cxStyle22
      Styles.RowCaption = cxStyle28
      BuiltIn = True
    end
  end
  object LookAndFeelController: TcxLookAndFeelController
    SkinName = 'Black'
    Left = 824
    Top = 520
  end
  object qrproduto2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'MOV.*,'
      'PRO.PRODUTO'
      ' from c000032 MOV,'
      'c000025 PRO'
      'WHERE '
      'MOV.CODPRODUTO = PRO.CODIGO')
    Params = <>
    Left = 624
    Top = 120
    object qrproduto2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrproduto2CODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrproduto2CODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrproduto2UNITARIO: TFloatField
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2ICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2IPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2CFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrproduto2DATA: TDateField
      FieldName = 'DATA'
    end
    object qrproduto2NUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrproduto2CODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrproduto2DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrproduto2MOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrproduto2CODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrproduto2SERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrproduto2UNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrproduto2QTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2ICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2BASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrproduto2ECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
    end
    object qrproduto2ECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrproduto2CODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrproduto2CUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrproduto2CUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrproduto2CUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrproduto2ALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2CST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrproduto2LOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrproduto2MOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrproduto2LANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrproduto2VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrproduto2CODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrproduto2MARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrproduto2CREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2PIS: TFloatField
      FieldName = 'PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2COFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2LOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrproduto2CODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrproduto2TIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrproduto2CODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrproduto2ORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrproduto2DESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 40
    end
    object qrproduto2PRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object qrproduto2CODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrproduto2PRODUTO_1: TWideStringField
      FieldName = 'PRODUTO_1'
      Size = 60
    end
  end
  object dsproduto2: TDataSource
    DataSet = qrproduto2
    Left = 816
    Top = 504
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 312
    Top = 536
    PixelsPerInch = 96
    object cxStyle43: TcxStyle
    end
  end
  object cxStyleRepository5: TcxStyleRepository
    Left = 280
    Top = 536
    PixelsPerInch = 96
    object cxStyle44: TcxStyle
    end
  end
  object cxStyleRepository6: TcxStyleRepository
    Left = 248
    Top = 536
    PixelsPerInch = 96
    object cxStyle45: TcxStyle
    end
  end
  object cxStyleRepository7: TcxStyleRepository
    Left = 216
    Top = 536
    PixelsPerInch = 96
    object cxStyle46: TcxStyle
    end
  end
  object cxStyleRepository8: TcxStyleRepository
    Left = 184
    Top = 536
    PixelsPerInch = 96
    object cxStyle47: TcxStyle
    end
  end
  object cxStyleRepository9: TcxStyleRepository
    Left = 152
    Top = 536
    PixelsPerInch = 96
    object cxStyle48: TcxStyle
    end
  end
  object cxStyleRepository10: TcxStyleRepository
    Left = 120
    Top = 536
    PixelsPerInch = 96
    object cxStyle49: TcxStyle
    end
  end
  object cxStyleRepository11: TcxStyleRepository
    Left = 88
    Top = 536
    PixelsPerInch = 96
    object cxStyle50: TcxStyle
    end
  end
  object qrconvenio: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'MOV.*,'
      'PRO.PRODUTO'
      ' from c000032 MOV,'
      'c000025 PRO'
      'WHERE '
      'MOV.CODPRODUTO = PRO.CODIGO')
    Params = <>
    Left = 544
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 176
    object Fechamento1: TMenuItem
      Caption = 'Fechamento'
      ShortCut = 113
      OnClick = BitBtn1Click
    end
    object Extrato1: TMenuItem
      Caption = 'Extrato'
      ShortCut = 114
      OnClick = BitBtn2Click
    end
    object Convenio1: TMenuItem
      Caption = 'Convenio'
      ShortCut = 115
      OnClick = Convenio1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = BitBtn3Click
    end
  end
  object qrproduto3: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select'
      'MOV.*,'
      'CLI.NOME,CLI.CODCONVENIO,'
      'PRO.PRODUTO,'
      'CR.SITUACAO,'
      'CR.DOCUMENTO'
      'from c000032 MOV,'
      'c000025 PRO,'
      'C000007 CLI,'
      'C000049 CR'
      'WHERE'
      'MOV.CODPRODUTO = PRO.CODIGO'
      'AND MOV.CODCLIENTE = CLI.CODIGO'
      'AND MOV.CODNOTA = CR.CODVENDA'
      'AND MOV.MOVIMENTO <> 9'
      'AND CR.SITUACAO = 1'
      'AND CLI.CODCONVENIO = '#39'000042'#39)
    Params = <>
    LinkedFields = 'CODCLIENTE'
    Left = 400
    Top = 288
    object qrproduto3desconto_convenio: TFloatField
      FieldKind = fkLookup
      FieldName = 'desconto_convenio'
      LookupDataSet = frmmodulo.qrconvenio
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCONTO'
      KeyFields = 'CODCONVENIO'
      Lookup = True
    end
    object qrproduto3CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrproduto3CODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrproduto3CODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrproduto3UNITARIO: TFloatField
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3ICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3IPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3CFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrproduto3DATA: TDateField
      FieldName = 'DATA'
    end
    object qrproduto3NUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrproduto3CODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrproduto3DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3MOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrproduto3ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrproduto3CODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrproduto3SERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrproduto3UNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrproduto3QTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3ICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3BASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrproduto3ECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
    end
    object qrproduto3ECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrproduto3CODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrproduto3CUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrproduto3CUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrproduto3CUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrproduto3ALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3CST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrproduto3LOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrproduto3MOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrproduto3LANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrproduto3VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrproduto3CODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrproduto3MARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3CREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3PIS: TFloatField
      FieldName = 'PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3COFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3LOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrproduto3CODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrproduto3TIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrproduto3CODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrproduto3ORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrproduto3DESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 40
    end
    object qrproduto3PRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object qrproduto3CODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrproduto3NOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrproduto3CODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrproduto3PRODUTO_1: TWideStringField
      FieldName = 'PRODUTO_1'
      Size = 60
    end
    object qrproduto3SITUACAO_1: TIntegerField
      FieldName = 'SITUACAO_1'
    end
    object qrproduto3DOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
  end
  object dsproduto3: TDataSource
    DataSet = qrproduto3
    Left = 544
    Top = 160
  end
  object fxconvenio: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39282.595126944400000000
    ReportOptions.LastChange = 41479.834579421290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 32
    Top = 192
    Datasets = <
      item
        DataSet = fscliente
        DataSetName = 'fscliente'
      end
      item
        DataSet = fscontasreceber
        DataSetName = 'fscontasreceber'
      end
      item
        DataSet = fsproduto
        DataSetName = 'fsproduto'
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 53.913420000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 34.795300000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '000#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
          ParentFont = False
        end
        object LEMPRESA: TfrxMemoView
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 188.976500000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA1'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."LINHA1"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'iCloud 2.0')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA2'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o: [Date]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 404.409710000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000079000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 3.779530000000079000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ELPRO SOFTWARES')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Top = 3.779530000000079000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'www.elpro.com.br')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000079000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'suporte@elpro.com.br')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        Condition = 'fsproduto."CODCLIENTE"'
        OutlineText = 'fsproduto."CODCLIENTE"'
        object Memo6: TfrxMemoView
          Left = 4.559060000000000000
          Top = 0.031508269999989130
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 62.031540000000000000
          Top = 0.031508269999989130
          Width = 506.457020000000000000
          Height = 15.118120000000000000
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsproduto."CODCLIENTE"] - [fsproduto."NOME"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 135.622140000000000000
          Top = 16.795300000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 190.535560000000000000
          Top = 16.795300000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 439.984540000000000000
          Top = 16.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 515.575140000000000000
          Top = 16.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'UNIT'#193'RIO')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 659.197280000000000000
          Top = 16.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 5.338590000000000000
          Top = 16.795300000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DT.COMPRA')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 73.370130000000000000
          Top = 16.795300000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCTO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 589.386210000000000000
          Top = 16.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = -2.220470000000000000
          Top = 32.133890000000010000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = -3.779530000000000000
          Width = 744.567410000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = -2.000000000000000000
          Top = 15.118120000000010000
          Width = 744.567410000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        object Line5: TfrxLineView
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          Left = 648.299630000000000000
          Top = 3.779530000000022000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
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
            '[SUM(<fsproduto."TOTAL">-<fsproduto."DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 502.677490000000000000
          Top = 3.779529999999965000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO CLIENTE:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        DataSet = fsproduto
        DataSetName = 'fsproduto'
        RowCount = 0
        object Memo26: TfrxMemoView
          Left = 136.063080000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          DataField = 'CODPRODUTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 188.976500000000000000
          Width = 245.669450000000000000
          Height = 11.338590000000000000
          DataField = 'PRODUTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."PRODUTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 438.425480000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'QTDE'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsproduto."QTDE"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 514.016080000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'UNITARIO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsproduto."UNITARIO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 657.638220000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<fsproduto."TOTAL">-<fsproduto."DESCONTO">]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'DATA'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."DATA"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 71.811070000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'DOCUMENTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 586.827150000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'DESCONTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsproduto."DESCONTO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 740.409927000000000000
        object Memo36: TfrxMemoView
          Left = 648.299630000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
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
            '[SUM(<fsproduto."TOTAL">-<fsproduto."DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 502.677490000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO CONV'#202'NIO:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Width = 744.567410000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 132.283550000000000000
        Width = 740.409927000000000000
        object Shape2: TfrxShapeView
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo9: TfrxMemoView
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONV'#202'NIO:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 83.149660000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
      end
    end
  end
  object fscontasreceber: TfrxDBDataset
    UserName = 'fscontasreceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDA=CODVENDA'
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
      'NOSSONUMERO=NOSSONUMERO'
      'CODREGIAO=CODREGIAO'
      'CODCEDENTE=CODCEDENTE'
      'P5=P5'
      'P3=P3'
      'NUMERO_CUPOM=NUMERO_CUPOM'
      'VALOR_VENDA=VALOR_VENDA'
      'COD_VENDA_ORIGINAL=COD_VENDA_ORIGINAL'
      'VALOR_ATUAL_ANTERIOR=VALOR_ATUAL_ANTERIOR'
      'EMAIL_ENVIADO=EMAIL_ENVIADO'
      'CODCONVENIO=CODCONVENIO')
    DataSet = qrreceber
    BCDToCurrency = False
    Left = 104
    Top = 240
  end
  object frxDesigner1: TfrxDesigner
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
    Left = 32
    Top = 252
  end
  object fscliente: TfrxDBDataset
    UserName = 'fscliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONVENIO=convenio'
      'TOTAL=TOTAL'
      'CODIGO=CODIGO'
      'NOME=NOME'
      'CODCONVENIO=CODCONVENIO')
    DataSet = qrcliente
    BCDToCurrency = False
    Left = 88
    Top = 176
  end
  object fsproduto: TfrxDBDataset
    UserName = 'fsproduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'desconto_convenio=desconto_convenio'
      'CODIGO=CODIGO'
      'CODNOTA=CODNOTA'
      'CODPRODUTO=CODPRODUTO'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'ICMS=ICMS'
      'IPI=IPI'
      'CFOP=CFOP'
      'DATA=DATA'
      'NUMERONOTA=NUMERONOTA'
      'CODCLIENTE=CODCLIENTE'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'MOVIMENTO=MOVIMENTO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODGRADE=CODGRADE'
      'SERIAL=SERIAL'
      'UNIDADE=UNIDADE'
      'QTDE=QTDE'
      'VALOR_ICMS=VALOR_ICMS'
      'ICMS_REDUZIDO=ICMS_REDUZIDO'
      'BASE_CALCULO=BASE_CALCULO'
      'VALOR_IPI=VALOR_IPI'
      'SITUACAO=SITUACAO'
      'ECF_SERIE=ECF_SERIE'
      'ECF_CAIXA=ECF_CAIXA'
      'CODALIQUOTA=CODALIQUOTA'
      'CUPOM_NUMERO=CUPOM_NUMERO'
      'CUPOM_MODELO=CUPOM_MODELO'
      'CUPOM_ITEM=CUPOM_ITEM'
      'ALIQUOTA=ALIQUOTA'
      'CST=CST'
      'LOTE_FABRICACAO=LOTE_FABRICACAO'
      'MOVIMENTO_ESTOQUE=MOVIMENTO_ESTOQUE'
      'LANCADO=LANCADO'
      'VENCIMENTO=VENCIMENTO'
      'CODBARRA=CODBARRA'
      'MARGEM_DESCONTO=MARGEM_DESCONTO'
      'CREDITO_ICMS=CREDITO_ICMS'
      'PIS=PIS'
      'COFINS=COFINS'
      'LOJA=LOJA'
      'CODSUBGRUPO=CODSUBGRUPO'
      'TIPO=TIPO'
      'CODUSUARIO=CODUSUARIO'
      'ORIGEM=ORIGEM'
      'DESTINO=DESTINO'
      'PRODUTO=PRODUTO'
      'CODFILIAL=CODFILIAL'
      'NOME=NOME'
      'CODCONVENIO=CODCONVENIO'
      'PRODUTO_1=PRODUTO_1'
      'SITUACAO_1=SITUACAO_1'
      'DOCUMENTO=DOCUMENTO')
    DataSet = qrproduto3
    BCDToCurrency = False
    Left = 136
    Top = 176
  end
  object qrpgto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select cr.*, cli.nome from'
      'c000049 cr, c000007 cli'
      'where'
      'cr.codcliente = cli.codigo')
    Params = <>
    Left = 296
    Top = 337
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(rec.valor_atual) total,'
      'rec.documento,'
      'rec.codvenda,'
      'rec.data_emissao,'
      'cli.codigo,'
      'cli.nome,'
      'cli.codconvenio'
      'from'
      'c000049 rec,'
      'c000007 cli'
      'where'
      'rec.codcliente = cli.codigo'
      'and rec.situacao = 1'
      'and cli.codconvenio = '#39'000001'#39
      
        'group by rec.documento,rec.codvenda,rec.data_emissao,cli.codigo,' +
        'cli.nome,cli.codconvenio'
      'order by cli.nome')
    Params = <>
    Left = 680
    Top = 233
    object queryconvenio: TStringField
      FieldKind = fkLookup
      FieldName = 'convenio'
      LookupDataSet = frmmodulo.qrconvenio
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCONVENIO'
      Size = 40
      Lookup = True
    end
    object queryTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object queryDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object queryCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object queryCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSosDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object queryNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object queryCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
  end
  object fsconvenio: TfrxDBDataset
    UserName = 'fsconvenio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'convenio=convenio'
      'TOTAL=TOTAL'
      'DOCUMENTO=DOCUMENTO'
      'CODVENDA=CODVENDA'
      'DATA_EMISSAO=DATA_EMISSAO'
      'CODIGO=CODIGO'
      'NOME=NOME'
      'CODCONVENIO=CODCONVENIO')
    DataSet = query
    BCDToCurrency = False
    Left = 256
    Top = 240
  end
  object dsconvenio: TDataSource
    DataSet = qrconvenio
    Left = 568
    Top = 104
  end
  object qrcr_recibo: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'FILTRO'
        DataType = ftInteger
      end
      item
        Name = 'DATA_EMISSAO'
        DataType = ftDateTime
      end
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATA_VENCIMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_ORIGINAL'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_PAGO'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_ATUAL'
        DataType = ftFloat
      end
      item
        Name = 'CODCEDENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_JUROS'
        DataType = ftFloat
      end
      item
        Name = 'DATA_PAGAMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'CODVENDEDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CODCAIXA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VALOR_DESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'SITUACAO'
        DataType = ftInteger
      end
      item
        Name = 'CODVENDA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NOSSONUMERO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODREGIAO'
        DataType = ftString
        Size = 6
      end>
    Left = 472
    Top = 196
    object qrcr_reciboFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 2
      FieldName = 'FILTRO'
    end
    object qrcr_recibosituacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcr_reciboDATA_EMISSAO: TDateTimeField
      DisplayLabel = 'DT.COMPRA'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
    end
    object qrcr_reciboCODIGO: TStringField
      DisplayLabel = 'VENDA/NR.'
      DisplayWidth = 9
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcr_reciboDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'VENCTO.'
      DisplayWidth = 10
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcr_reciboDOCUMENTO: TStringField
      DisplayWidth = 11
      FieldName = 'DOCUMENTO'
    end
    object qrcr_reciboVALOR_ORIGINAL: TFloatField
      DisplayLabel = 'VALOR'
      DisplayWidth = 9
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboVALOR_PAGO: TFloatField
      DisplayLabel = 'VLR.PAGO'
      DisplayWidth = 9
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboVALOR_ATUAL: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 9
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_recibojuros: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcr_reciboDIAS: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Calculated = True
    end
    object qrcr_reciboRESTANTE: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcr_reciboCODCEDENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCEDENTE'
      Visible = False
      Size = 6
    end
    object qrcr_reciboTIPO: TStringField
      DisplayWidth = 11
      FieldName = 'TIPO'
      Visible = False
    end
    object qrcr_reciboVALOR_JUROS: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 11
      FieldName = 'VALOR_JUROS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboDATA_PAGAMENTO: TDateTimeField
      DisplayLabel = #218'LT.PAGTO.'
      DisplayWidth = 11
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcr_reciboCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrcr_reciboCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrcr_reciboCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrcr_reciboVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcr_reciboCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 7
    end
    object qrcr_reciboNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Visible = False
      Size = 30
    end
    object qrcr_reciboCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
    object qrcr_recibobanco: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'banco'
      KeyFields = 'codcedente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrcr_reciboagencia: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'agencia'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'agencia'
      KeyFields = 'CODCEDENTE'
      Visible = False
      Size = 10
      Lookup = True
    end
    object qrcr_reciboconta: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'codigo'
      LookupResultField = 'CODCONTA'
      KeyFields = 'codcedente'
      Visible = False
      Lookup = True
    end
  end
end

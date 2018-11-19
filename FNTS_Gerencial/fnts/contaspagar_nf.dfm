object frmcontaspagar_nf: Tfrmcontaspagar_nf
  Left = 448
  Top = 177
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CONTAS A PAGAR | Visuzalia'#231#227'o de Nota Fiscal'
  ClientHeight = 479
  ClientWidth = 746
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
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 41
    Width = 746
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 383
    Width = 746
    Height = 3
    Align = alBottom
    ExplicitTop = 387
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 15461355
    Enabled = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
    end
    object Label2: TLabel
      Left = 144
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 272
      Top = 12
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 8
      Width = 57
      Height = 21
      DataField = 'NUMERO'
      DataSource = dsnota
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 8
      Width = 81
      Height = 21
      DataField = 'DATA_EMISSAO'
      DataSource = dsnota
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 344
      Top = 8
      Width = 385
      Height = 21
      DataField = 'fornecedor'
      DataSource = dsnota
      TabOrder = 2
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 44
    Width = 746
    Height = 339
    Selected.Strings = (
      'CODPRODUTO'#9'6'#9'C'#243'digo'
      'produto'#9'47'#9'Produto'
      'UN_COMPRA'#9'5'#9'Un.'
      'CFOP'#9'6'#9'CFOP'
      'CST'#9'5'#9'CST'
      'QTDE'#9'7'#9'Qtde.'
      'UNITARIO'#9'8'#9'Unit'#225'rio'
      'SUBTOTAL'#9'8'#9'Subtotal'
      'DESCONTO'#9'8'#9'Desconto'
      'TOTAL'#9'10'#9'Total')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsitem
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel2: TPanel
    Left = 0
    Top = 386
    Width = 746
    Height = 93
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    TabOrder = 2
    object Label4: TLabel
      Left = 14
      Top = 3
      Width = 65
      Height = 13
      Caption = 'Base C. ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 88
      Top = 3
      Width = 52
      Height = 13
      Caption = 'Valor ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label54: TLabel
      Left = 159
      Top = 3
      Width = 71
      Height = 13
      Caption = 'Base C. Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label61: TLabel
      Left = 238
      Top = 3
      Width = 58
      Height = 13
      Caption = 'Valor Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label62: TLabel
      Left = 316
      Top = 27
      Width = 90
      Height = 13
      Caption = 'Total dos Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 30
      Top = 45
      Width = 26
      Height = 13
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 100
      Top = 45
      Width = 34
      Height = 13
      Caption = 'Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 164
      Top = 45
      Width = 64
      Height = 13
      Caption = 'Outras Desp.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label31: TLabel
      Left = 243
      Top = 45
      Width = 41
      Height = 13
      Caption = 'Valor IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 439
      Top = 27
      Width = 45
      Height = 13
      Caption = 'Desconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 535
      Top = 27
      Width = 65
      Height = 13
      Caption = 'Total da Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 16
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_ICMS'
      Alignment = taLeftJustify
      TabOrder = 0
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit2: TRzDBNumericEdit
      Left = 88
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_ICMS'
      Alignment = taLeftJustify
      TabOrder = 1
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit3: TRzDBNumericEdit
      Left = 160
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_SUB'
      Alignment = taLeftJustify
      TabOrder = 2
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit4: TRzDBNumericEdit
      Left = 232
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_SUB'
      Alignment = taLeftJustify
      TabOrder = 3
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit5: TRzDBNumericEdit
      Left = 312
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'TOTAL_PRODUTOS'
      Alignment = taLeftJustify
      TabOrder = 4
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit6: TRzDBNumericEdit
      Left = 16
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'FRETE'
      Alignment = taLeftJustify
      TabOrder = 5
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit7: TRzDBNumericEdit
      Left = 88
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'SEGURO'
      Alignment = taLeftJustify
      TabOrder = 6
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit8: TRzDBNumericEdit
      Left = 160
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'OUTRAS'
      Alignment = taLeftJustify
      TabOrder = 7
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit9: TRzDBNumericEdit
      Left = 232
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_SUB'
      Alignment = taLeftJustify
      TabOrder = 8
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit10: TRzDBNumericEdit
      Left = 520
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'TOTAL_NOTA'
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit11: TRzDBNumericEdit
      Left = 424
      Top = 44
      Width = 81
      Height = 21
      DataSource = dsnota
      DataField = 'DESCONTO'
      Alignment = taLeftJustify
      TabOrder = 10
      DisplayFormat = '###,###,##0.00'
    end
  end
  object bcancelar: TAdvGlowButton
    Left = 621
    Top = 409
    Width = 118
    Height = 48
    Caption = 'ESC | Retornar'
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
      702E6969643A3730373643394131453238323131453238424631414239324639
      3531323732392220786D704D4D3A446F63756D656E7449443D22786D702E6469
      643A373037364339413245323832313145323842463141423932463935313237
      3239223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
      7374616E636549443D22786D702E6969643A3730373643393946453238323131
      453238424631414239324639353132373239222073745265663A646F63756D65
      6E7449443D22786D702E6469643A373037364339413045323832313145323842
      4631414239324639353132373239222F3E203C2F7264663A4465736372697074
      696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
      7061636B657420656E643D2272223F3E85C699DD000004694944415478DABC99
      7D6855651CC7CFBD5397F992D82A6F6BE83F41D636415BBE4DD9302C16B39AD5
      1F2DDA1688CC22D4105F10054551D0A58822FEA1992ECA556CAB940AC5AD65A5
      942EC531342DA76C922FB8ADE6FBFCFEC6F7C08F67E7DC7BEE3967FBC287FB3C
      E7EDFEEE739EE7F7F2DC8855FD971540D9E069900ED2C0201EBF092E834BE024
      38EFF70B06F8B8E729500C5E02F91EAEEF04874035A862DFB322498CE0F3E043
      1A1775387F07DCEA79A6653DCC4F53D7C16EF031B810A6819B699CD6DFA016FC
      0E8E82AB7CB5B6813130158C07AF8311EADEFBE023B029A881326A9F80E7D4B1
      2F380A0792785362F01BA00CE4A9E3DF82F7C0BF7E0C2C00DFA9FE1FA09CA315
      446FF215A7B32F23FF0238E77471D4E5216F1BC6AD02134230CEE2429195FF29
      FB8F824690E5D54031A452F5DF052BAD70D5054AC07AF6878223E0A14406CA44
      AE53FDD9608FD5775A02D62823EB1319F81918C2F652F0B5D5F75A0E6AD8CE01
      CBDC16C98BE047B5BA0A3D7EC140FAC0A092683386ED2741AB39823B8D79E755
      8F80EFE9178F287E063393784EA96A579823385DCDBD0A3AD164348DAB7E98C3
      B9F7C1368FCF3946DF6BD1D1B7D923384F79783F2BF6272EB0C30EE7B69AF32A
      8E161AFEB2E7150F06AF2A1FD5E9730EDD67F2B0DBE1DC1A630AC5FBA167D92E
      B60DCC57FEE7700893BD94B1DB5419175F22D5A8303B326AC4D9BA905CC77CF0
      0EB8671C7F85D168449C7B4FF33305E44A3E98C10312B09BD485299CA87E7487
      D16834586D788B1C1A3119FCE370EF29D54E170347B2D3665C380AB4041C49B7
      FB631C8C19E017E35C13F3CA543130CA1023FAAF57A6135C19711292C1F497E5
      C63512A73BEC1F2227BA5D1ED06DF58F4A8CC1D0DFDB1D556E65A84308EB6B49
      CA35C9584C62C770B65B650E5E51F14FEB1AD3A188CFD1BCC64A6F814B71268B
      6785C3F14C551DB6C88D17D991C5328EC9A3A89DE9501055D21B985A0436B8DC
      3356B52F0E5006D931B5318457F70C38E8F056446F3162B9294BB9AA8628A387
      BD826786605C2E38E1605C170BA6AA04F717F153DC4FBB187817ECE341C9011F
      0F605C11E369AA833FCCF610A90AB83160D999BCED7FB61B05921F893FFBCA25
      7465AA24209ED6A976B53650E26333DB73D5AFF02289ABDFB8E47CB534AEDDC3
      730AD5FCDB617B179DF24F04BFB2DDC005E3453116DF1754EA1F61FBCB24CA86
      5696A0F7F879C3A970DF6BE7612CAE17F65334A9570352AEA79C1927E7D0C15A
      74B0A5FD605C8532AECE580FBD0CEC62E8B1B5AB8F47712707C2E25E629E979D
      8533DCFBB3B59175C5A0100D8B71F3A9CC8EB9DC09F3BC37F30347F2B62AAA64
      95CF0AC1B80FE8725E560392E992BCBA1A28FA0D3CCB52D062515DC3E2BED0A5
      C474D328AE7409A35BB81D671769996ADE27BD3F686B31586BFC20492AF7735B
      EE3847A083D70C633C96E83185BB163A6990F24236443F0FBA81A9355A154369
      7192DC78997833331C99D7FF7BF9D2888F5D7E793DB2A5FB1ADDC31309AE3FC7
      F8BC8F239E942201FF86788C656B0689B1806F619E29AFFD4F877AC7B31E0830
      00629EF941A5EB70210000000049454E44AE426082}
    Transparent = True
    TabOrder = 3
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
    Layout = blGlyphLeftAdjusted
  end
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 88
    Top = 248
    object qrnotafornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrnotaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrnotaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrnotaCODEMPRESA: TWideStringField
      FieldName = 'CODEMPRESA'
      Size = 10
    end
    object qrnotaCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrnotaMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrnotaESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qrnotaSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrnotaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrnotaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrnotaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrnotaCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
    end
    object qrnotaCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
    end
    object qrnotaCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
    end
    object qrnotaCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
    end
    object qrnotaCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
    end
    object qrnotaCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
    end
    object qrnotaCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
    end
    object qrnotaCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
    end
    object qrnotaCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
    end
    object qrnotaCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
    end
    object qrnotaCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
    end
    object qrnotaCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
    end
    object qrnotaCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
    end
    object qrnotaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qrnotaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotaBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnotaVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
    end
    object qrnotaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnotaSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnotaOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrnotaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrnotaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnotaTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
    end
    object qrnotaTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrnotaTRANSP_NOME: TWideStringField
      FieldName = 'TRANSP_NOME'
      Size = 60
    end
    object qrnotaTRANSP_FRETE: TWideStringField
      FieldName = 'TRANSP_FRETE'
    end
    object qrnotaTRANSP_PLACA: TWideStringField
      FieldName = 'TRANSP_PLACA'
      Size = 10
    end
    object qrnotaTRANSP_PLACAUF: TWideStringField
      FieldName = 'TRANSP_PLACAUF'
      Size = 2
    end
    object qrnotaTRANSP_IE: TWideStringField
      FieldName = 'TRANSP_IE'
      Size = 25
    end
    object qrnotaTRANSP_CNPJ: TWideStringField
      FieldName = 'TRANSP_CNPJ'
      Size = 25
    end
    object qrnotaTRANSP_ENDERECO: TWideStringField
      FieldName = 'TRANSP_ENDERECO'
      Size = 40
    end
    object qrnotaTRANSP_CIDADE: TWideStringField
      FieldName = 'TRANSP_CIDADE'
      Size = 30
    end
    object qrnotaTRANSP_UF: TWideStringField
      FieldName = 'TRANSP_UF'
      Size = 2
    end
    object qrnotaTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
    end
    object qrnotaTRANSP_ESPECIE: TWideStringField
      FieldName = 'TRANSP_ESPECIE'
    end
    object qrnotaTRANSP_MARCA: TWideStringField
      FieldName = 'TRANSP_MARCA'
    end
    object qrnotaTRANSP_NUMERO: TWideStringField
      FieldName = 'TRANSP_NUMERO'
    end
    object qrnotaTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
    end
    object qrnotaTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
    end
    object qrnotaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object qrnotaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object qrnotaOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object qrnotaOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object qrnotaOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 60
    end
    object qrnotaOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 60
    end
    object qrnotaOBS7: TWideStringField
      FieldName = 'OBS7'
      Size = 60
    end
    object qrnotaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnotaITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnotaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrnotaNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Size = 6
    end
    object qrnotaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object qrnotaCODREMETENTE: TWideStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object qrnotaICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qrnotaICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qrnotaDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
    end
    object qrnotaITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
    end
    object qrnotaITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
    end
    object qrnotaITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
    end
    object qrnotaITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
    end
    object qrnotaITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
    end
    object qrnotaITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
    end
    object qrnotaITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
    end
    object qrnotaITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
    end
    object qrnotaITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
    end
    object qrnotaITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
    end
    object qrnotaITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
    end
    object qrnotaITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
    end
    object qrnotaITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
    end
    object qrnotaITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
    end
    object qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
    end
    object qrnotaITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
    end
    object qrnotaITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
    end
    object qrnotaITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
    end
    object qrnotaITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
    end
    object qrnotaITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
    end
    object qrnotaITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
    end
    object qrnotaITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
    end
    object qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
    end
    object qrnotaITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
    end
    object qrnotaITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
    end
    object qrnotaITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qrnotaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
    object qrnotaCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
    end
    object qrnotaOBS8: TWideStringField
      FieldName = 'OBS8'
      Size = 60
    end
    object qrnotaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrnotaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrnotaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrnotaOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object qrnotaINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object qrnotaAPROVEITA_CREDITO_ICMS: TWideStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Size = 1
    end
    object qrnotaCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 50
    end
  end
  object qritem: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * FROM C000088')
    Params = <>
    Left = 120
    Top = 248
    object qritemCODPRODUTO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qritemproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 47
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 50
      Lookup = True
    end
    object qritemUN_COMPRA: TWideStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 5
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object qritemCFOP: TWideStringField
      DisplayWidth = 6
      FieldName = 'CFOP'
      Size = 6
    end
    object qritemCST: TWideStringField
      DisplayWidth = 5
      FieldName = 'CST'
      Size = 5
    end
    object qritemQTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 7
      FieldName = 'QTDE'
    end
    object qritemUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 8
      FieldName = 'UNITARIO'
    end
    object qritemSUBTOTAL: TFloatField
      DisplayLabel = 'Subtotal'
      DisplayWidth = 8
      FieldName = 'SUBTOTAL'
    end
    object qritemDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 8
      FieldName = 'DESCONTO'
    end
    object qritemTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object qritemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Visible = False
      Size = 10
    end
    object qritemITEM: TWideStringField
      FieldName = 'ITEM'
      Visible = False
      Size = 3
    end
    object qritemCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 10
    end
    object qritemCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Visible = False
    end
    object qritemUN_FRACAO: TWideStringField
      FieldName = 'UN_FRACAO'
      Visible = False
      Size = 5
    end
    object qritemFRACAO: TFloatField
      FieldName = 'FRACAO'
      Visible = False
    end
    object qritemDESCONTO_P: TFloatField
      FieldName = 'DESCONTO_P'
      Visible = False
    end
    object qritemICMS_RETIDO: TWideStringField
      FieldName = 'ICMS_RETIDO'
      Visible = False
      Size = 1
    end
    object qritemICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
      Visible = False
    end
    object qritemICMS_REDUCAO: TFloatField
      FieldName = 'ICMS_REDUCAO'
      Visible = False
    end
    object qritemICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
      Visible = False
    end
    object qritemICMS_VALOR: TFloatField
      FieldName = 'ICMS_VALOR'
      Visible = False
    end
    object qritemICMS_VALORRETIDO: TFloatField
      FieldName = 'ICMS_VALORRETIDO'
      Visible = False
    end
    object qritemICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object qritemICMS_NAOTRIBUTADO: TFloatField
      FieldName = 'ICMS_NAOTRIBUTADO'
      Visible = False
    end
    object qritemSUB_MARGEM: TFloatField
      FieldName = 'SUB_MARGEM'
      Visible = False
    end
    object qritemSUB_BASE: TFloatField
      FieldName = 'SUB_BASE'
      Visible = False
    end
    object qritemSUB_VALOR: TFloatField
      FieldName = 'SUB_VALOR'
      Visible = False
    end
    object qritemIPI_TIPO: TWideStringField
      FieldName = 'IPI_TIPO'
      Visible = False
      Size = 25
    end
    object qritemIPI_ALIQUOTA: TFloatField
      FieldName = 'IPI_ALIQUOTA'
      Visible = False
    end
    object qritemIPI_BASE: TFloatField
      FieldName = 'IPI_BASE'
      Visible = False
    end
    object qritemIPI_VALOR: TFloatField
      FieldName = 'IPI_VALOR'
      Visible = False
    end
    object qritemDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qritemTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qritemNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 10
    end
    object qritemFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object qritemOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Visible = False
    end
    object qritemSEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object qritemCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
      Size = 25
    end
    object qritemSUB_PRODUTOS: TFloatField
      FieldName = 'SUB_PRODUTOS'
      Visible = False
    end
    object qritemCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object qritemITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
    end
    object qritemICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
      Visible = False
    end
    object qritemALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
      Visible = False
    end
    object qritemCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      Visible = False
    end
    object qritemCREDITO_ICMS_BASE: TFloatField
      FieldName = 'CREDITO_ICMS_BASE'
      Visible = False
    end
    object qritemPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
      Visible = False
    end
    object qritemPIS: TFloatField
      FieldName = 'PIS'
      Visible = False
    end
    object qritemCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
      Visible = False
    end
    object qritemCOFINS: TFloatField
      FieldName = 'COFINS'
      Visible = False
    end
    object qritemCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
    end
    object qritemLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
      Size = 15
    end
    object qritemLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
      Visible = False
    end
    object qritemLOTE_FABRICACAO_DATA: TDateField
      FieldName = 'LOTE_FABRICACAO_DATA'
      Visible = False
    end
    object qritemPMARGEM: TFloatField
      FieldName = 'PMARGEM'
      Visible = False
    end
    object qritemPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      Visible = False
    end
    object qritemPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 152
    Top = 248
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 184
    Top = 248
  end
  object dsitem: TDataSource
    DataSet = qritem
    Left = 216
    Top = 248
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 248
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 128
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end

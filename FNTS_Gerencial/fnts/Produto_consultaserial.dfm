object frmProduto_consultaserial: TfrmProduto_consultaserial
  Left = 494
  Top = 482
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PRODUTO | Consulta Serial'
  ClientHeight = 240
  ClientWidth = 592
  Color = 11429670
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 592
    Height = 2
    Align = alTop
    ExplicitTop = 41
    ExplicitWidth = 477
  end
  object Bevel2: TBevel
    Left = 0
    Top = 238
    Width = 592
    Height = 2
    Align = alBottom
    Visible = False
    ExplicitTop = 262
    ExplicitWidth = 477
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 42
    Height = 13
    Caption = 'Produto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 54
    Top = 54
    Width = 50
    Height = 15
  end
  object Bevel4: TBevel
    Left = 111
    Top = 54
    Width = 355
    Height = 15
  end
  object lcodigo: TLabel
    Left = 60
    Top = 55
    Width = 42
    Height = 13
    AutoSize = False
    Caption = '000000'
    Transparent = True
  end
  object lproduto: TLabel
    Left = 116
    Top = 55
    Width = 338
    Height = 13
    AutoSize = False
    Caption = '000000'
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 73
    Width = 43
    Height = 13
    Caption = 'Unidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel5: TBevel
    Left = 54
    Top = 73
    Width = 50
    Height = 15
  end
  object lun: TLabel
    Left = 57
    Top = 74
    Width = 42
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'UN'
    Transparent = True
  end
  object Label7: TLabel
    Left = 112
    Top = 73
    Width = 33
    Height = 13
    Caption = 'Marca:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel6: TBevel
    Left = 162
    Top = 73
    Width = 304
    Height = 15
  end
  object lmarca: TLabel
    Left = 167
    Top = 74
    Width = 291
    Height = 13
    AutoSize = False
    Caption = 'UN'
    Transparent = True
  end
  object Label9: TLabel
    Left = 8
    Top = 105
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Compra:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel7: TBevel
    Left = 94
    Top = 105
    Width = 80
    Height = 15
  end
  object lcompra: TLabel
    Left = 97
    Top = 106
    Width = 74
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label11: TLabel
    Left = 198
    Top = 105
    Width = 56
    Height = 13
    Caption = 'Nota Fiscal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel8: TBevel
    Left = 260
    Top = 105
    Width = 59
    Height = 15
  end
  object lnf: TLabel
    Left = 263
    Top = 106
    Width = 56
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '000001'
    Transparent = True
  end
  object Label13: TLabel
    Left = 336
    Top = 105
    Width = 62
    Height = 13
    Caption = 'Pre'#231'o Custo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Bevel9: TBevel
    Left = 400
    Top = 105
    Width = 65
    Height = 15
    Visible = False
  end
  object lcusto: TLabel
    Left = 396
    Top = 106
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '1.000,00'
    Transparent = True
    Visible = False
  end
  object Label15: TLabel
    Left = 31
    Top = 124
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fornecedor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel10: TBevel
    Left = 94
    Top = 124
    Width = 371
    Height = 15
  end
  object lfornecedor: TLabel
    Left = 99
    Top = 125
    Width = 363
    Height = 13
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label17: TLabel
    Left = 45
    Top = 154
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Situa'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel11: TBevel
    Left = 94
    Top = 153
    Width = 131
    Height = 15
  end
  object lestoque: TLabel
    Left = 97
    Top = 154
    Width = 120
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'EM ESTOQUE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 15
    Top = 177
    Width = 75
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Venda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel12: TBevel
    Left = 94
    Top = 177
    Width = 80
    Height = 15
  end
  object lvenda: TLabel
    Left = 97
    Top = 178
    Width = 74
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label21: TLabel
    Left = 219
    Top = 177
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel13: TBevel
    Left = 260
    Top = 177
    Width = 61
    Height = 15
  end
  object lnumero: TLabel
    Left = 263
    Top = 178
    Width = 58
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '000001'
    Transparent = True
  end
  object Label23: TLabel
    Left = 368
    Top = 177
    Width = 28
    Height = 13
    Caption = 'Valor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel14: TBevel
    Left = 400
    Top = 177
    Width = 65
    Height = 15
  end
  object lvalor: TLabel
    Left = 396
    Top = 178
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '1.000,00'
    Transparent = True
  end
  object Label25: TLabel
    Left = 53
    Top = 196
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel15: TBevel
    Left = 94
    Top = 196
    Width = 371
    Height = 15
  end
  object lcliente: TLabel
    Left = 99
    Top = 197
    Width = 363
    Height = 13
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Panel1: TPanel
    Left = 477
    Top = 43
    Width = 115
    Height = 195
    Align = alRight
    BevelOuter = bvNone
    Color = 11429670
    ParentBackground = False
    TabOrder = 0
    object bfechar: TAdvGlowButton
      Left = 9
      Top = 9
      Width = 97
      Height = 63
      Caption = 'Sair'
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
        89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
        87000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000EC300000EC301C76FA8640000001974455874536F667477
        617265005061696E742E4E45542076332E352E343E8DCC760000040549444154
        6843D55A41675D41147E8410C2EB4FE82EDB27D5906D5621ABD055783C4229A1
        7415A224AB905509A574934A57A5FD09DD856A25124A29A574954D43B494F2FA
        7D7D73FBCE3BF7CE9D3373E7BEE870B8F7CE9CEF7C6766CEB973676EA793B90C
        87C31EE40E641372DF09AFF9AC97D95C7338905A80EC404E20D6C2B6D45968CE
        2001018667210F219FAC8C6BDA118358730954E255606800F95A43E80C751F20
        CF21CF9CF09ACF58E72BC41CC433326A007CC943E0D2915D354275D07ED5E950
        57173AB964C532B503E006E4A7B2C41EBB6702A869448C8A11A5AD7E53ECBFFA
        00DA57C47FE07E330BB800212684D8B2EC27DB01CA0CE495023CC7FDDD64D080
        22B121A7CA2639CC44DBACE8F9E368904405D83E6E34126ECE4B8CDD442EC96A
        30BEAB9CD830813103A8809D5ACF6B826A2418D8F5D9090DF882FA2C3C3F3779
        DD62237061DC1585DC66BDE650B92D1A3323B416B0569F5D60CBECB45DA98B86
        5DC89570A0718EB7920CB50327BE2B8A428EDD928EEAFD8B10E8B4EBC1EF4238
        31390AA860CE97EB9B352B41E8DD82BC81F45AD659130E90EBF8DD809B155919
        49E4CCE97EB738E11C8ED229F8A84E5EF9C7131587C2813D8B038A48A15EEB44
        8A8EE402FD3DC1F3897440CE2FD354F090217EA513B1EDAB3A1118FCAA2BCA28
        4E71372F1E5E5B7A5F0C29E77F311D04CCA41339C80B9BD7C2D03C1D58160F4E
        621C701D50EB444EF2CE9EFC745DA6035CEB17E565AC0306278223146313445F
        08BE7D3AB0251E1CC680A900F38D849C5ADE18B1DA05804C385B74402E1FD23F
        2046F11472A232C0ADE4DD68CB0FACEDAC0E3803B775978BFB410C594F262A39
        90650A0562A1F021C70894A650E3203692CFE2445510374AA33790854A69B42B
        E6E855EC1C0DE5F9507D823DB9E41F2DAB61247A2961E8F95EEC1B3BE40C7872
        E3B828E325BFCAAD4D1673DE3C9F632480211773E377162AA297D31E42B55926
        4547BD2CE537CBC4723AE983461132A5C8141D375DFD1F34AE01F7EBCBF32B30
        311DA1B79C9FA139AC62225647C6E94EC91608301BFDBF1FF56E14F4B6CAA2B5
        57DB6A874E5D8484B7559C037A63EBB42D62565C90979BBDF51B5BCE096E2DFE
        12F170643596BB1D381C091EE4643BF840C3BE50E4E5E3DCE44278B4A938C41D
        7840F940014C6D931776F5F6FA41C8E1AAACC477C36BE5040FEA5ADB2F7501FB
        5ED92487F8030E170F74A2EA886910DD23E1F7094F3F4B474CC9E4D52B9CE055
        877CEB4D1D01EE3A441FDB3260F376123300E4A31A5EDE7E83F01C38E59895BA
        BAD0862DDBA4F41EC0799AE83BE8FE8D3AC6C93B080FB99F3AE1359FB18E6DAA
        0A31B39F7E56FA0843739047902F1E32318F8941ACE9FC6AA03D82E1E2670FF6
        B0B570246EEE670FDFD40329662D6EC0325EF8ABCD0327BCE633D6A5A5448FD1
        3F94AE5FEFC8878B000000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bfecharClick
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
  object Panel2: TPanel
    Left = 0
    Top = 2
    Width = 592
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 133
      Height = 13
      Caption = 'Informe o N'#250'mero de S'#233'rie:'
    end
    object eloc: TRzEdit
      Left = 160
      Top = 13
      Width = 305
      Height = 21
      Text = ''
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 10550008
      ParentFont = False
      TabOrder = 0
      OnKeyPress = elocKeyPress
    end
  end
  object ptampa: TFlatPanel
    Left = 448
    Top = 275
    Width = 477
    Height = 179
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 2
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 216
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select seria.*, produt.produto, produt.codmarca, produt.unidade,'
      'produt.precovenda prv from c000022 seria, c000025 produt'
      'where seria.codproduto = produt.codigo')
    Params = <>
    Left = 312
    Top = 88
    object qrserial_produtomarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 50
      Lookup = True
    end
    object qrserial_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrserial_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrserial_produtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrserial_produtoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrserial_produtoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrinventario_produtoDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
    end
    object qrserial_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrserial_produtoCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrserial_produtoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrserial_produtoCODITEM: TWideStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrinventario_produtoDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
    end
    object qrserial_produtoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrserial_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrserial_produtoCODVENDA_ITEM: TWideStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrserial_produtoFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrserial_produtoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrserial_produtoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrserial_produtoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrserial_produtoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrserial_produtoPRV: TFloatField
      FieldName = 'PRV'
    end
  end
end

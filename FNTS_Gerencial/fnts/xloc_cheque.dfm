object frmxloc_cheque: Tfrmxloc_cheque
  Left = 113
  Top = 257
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CHEQUES | Localizar'
  ClientHeight = 352
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 44
    Width = 708
    Height = 3
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 44
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 648
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 670
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 658
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        'CHEQUE'
        'VENCIMENTO'
        'TITULAR')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 47
    Width = 708
    Height = 305
    Selected.Strings = (
      'VENCIMENTO'#9'9'#9'Vencimento'#9#9
      'NUMERO'#9'10'#9'N'#250'mero'#9#9
      'CODBANCO'#9'6'#9'Banco'#9#9
      'AGENCIA'#9'8'#9'Ag'#234'ncia'#9#9
      'CONTA'#9'15'#9'Conta'#9#9
      'TITULAR'#9'36'#9'Titular'#9#9
      'VALOR'#9'9'#9'Valor-R$'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 432
    Top = 240
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000040')
    Params = <>
    Left = 464
    Top = 232
    object queryCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrinventarioEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object qrinventarioVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrinventarioDATA_DEPOSITO1: TDateField
      FieldName = 'DATA_DEPOSITO1'
    end
    object qrinventarioDATA_DEPOSITO2: TDateField
      FieldName = 'DATA_DEPOSITO2'
    end
    object qrinventarioDATA_DEVOLUCAO1: TDateField
      FieldName = 'DATA_DEVOLUCAO1'
    end
    object qrinventarioDATA_DEVOLUCAO2: TDateField
      FieldName = 'DATA_DEVOLUCAO2'
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object queryCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object queryTITULAR: TWideStringField
      FieldName = 'TITULAR'
      Size = 80
    end
    object queryCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 6
    end
    object queryAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object queryCONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object qrinventarioDATA_CONTA: TDateField
      FieldName = 'DATA_CONTA'
    end
    object queryNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object queryVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object queryDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object queryLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
    end
    object queryCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object queryOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object queryOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object queryCODCONTAS_PAGAR: TWideStringField
      FieldName = 'CODCONTAS_PAGAR'
      Size = 6
    end
    object queryDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 50
    end
    object qrinventarioDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object queryCODCONTA_CORRENTE: TWideStringField
      FieldName = 'CODCONTA_CORRENTE'
      Size = 6
    end
    object queryCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
    end
  end
end

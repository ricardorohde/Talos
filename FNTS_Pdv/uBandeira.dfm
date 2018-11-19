object frmBandeira: TfrmBandeira
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmBandeira'
  ClientHeight = 240
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 324
    Height = 178
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyPress = cxGrid1DBTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid1DBTableView1CellClick
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnHorzSizing = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      Styles.Content = cxStyle1
      object cxGrid1DBTableView1BANCO: TcxGridDBColumn
        DataBinding.FieldName = 'BANCO'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 324
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 2368548
    ParentBackground = False
    TabOrder = 1
    object Label53: TLabel
      Left = 11
      Top = 10
      Width = 184
      Height = 23
      Caption = 'Bandeira do Cart'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 219
    Width = 324
    Height = 21
    Align = alBottom
    BevelOuter = bvNone
    Color = 2368548
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 324
      Height = 21
      Align = alClient
      Alignment = taCenter
      Caption = '"Enter" Seleciona "ESC" Cancela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExplicitWidth = 262
      ExplicitHeight = 18
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBanco
    Left = 104
    Top = 64
  end
  object qrBanco: TUniQuery
    Connection = frmModulo.conexao
    SQL.Strings = (
      'select * from bancos ban where ban.CARTAO_CREDITO = 1')
    Active = True
    Left = 128
    Top = 96
    object qrBancoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Required = True
    end
    object qrBancoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object qrBancoLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qrBancoCARTAO_CREDITO: TIntegerField
      FieldName = 'CARTAO_CREDITO'
    end
    object qrBancoFINANCEIRA: TIntegerField
      FieldName = 'FINANCEIRA'
    end
    object qrBancoADMINISTRADORA: TStringField
      FieldName = 'ADMINISTRADORA'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 232
    Top = 80
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end

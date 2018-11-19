object frmImpDelivery: TfrmImpDelivery
  Left = 0
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 4
  Caption = 'frmImpDelivery'
  ClientHeight = 382
  ClientWidth = 876
  Color = 16512
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_principal
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 876
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 16512
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 668
    object Label17: TLabel
      Left = 0
      Top = 0
      Width = 305
      Height = 41
      Align = alLeft
      Caption = ' Recebimento Delivery'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitHeight = 32
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 876
    Height = 319
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 47
    ExplicitWidth = 668
    ExplicitHeight = 341
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 876
      Height = 319
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 192
      ExplicitTop = 40
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.InfoText = 'Procurar por'
        FindPanel.ShowClearButton = False
        FindPanel.ShowCloseButton = False
        FindPanel.ShowFindButton = False
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'NUMERO'
          Width = 43
        end
        object cxGrid1DBTableView1DATA_EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'DATA_EMISSAO'
          Width = 62
        end
        object cxGrid1DBTableView1HORA_EMISSAO: TcxGridDBColumn
          Caption = 'Hora'
          DataBinding.FieldName = 'HORA_EMISSAO'
          Width = 50
        end
        object cxGrid1DBTableView1NOME: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'NOME'
          Width = 174
        end
        object cxGrid1DBTableView1ENTREGADOR_NOME: TcxGridDBColumn
          Caption = 'Entregador'
          DataBinding.FieldName = 'ENTREGADOR_NOME'
          Width = 116
        end
        object cxGrid1DBTableView1TIPO_ENTREGA: TcxGridDBColumn
          Caption = 'Tipo Entrega'
          DataBinding.FieldName = 'TIPO_ENTREGA'
          Width = 74
        end
        object cxGrid1DBTableView1DATA_ENTREGA: TcxGridDBColumn
          Caption = 'Data Entr.'
          DataBinding.FieldName = 'DATA_ENTREGA'
          Width = 56
        end
        object cxGrid1DBTableView1HORA_ENTREGA: TcxGridDBColumn
          Caption = 'Hora Entr.'
          DataBinding.FieldName = 'HORA_ENTREGA'
          Width = 56
        end
        object cxGrid1DBTableView1VALOR_LIQUIDO: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR_LIQUIDO'
          Width = 62
        end
        object cxGrid1DBTableView1VALOR_TAXA_ENTREGA: TcxGridDBColumn
          Caption = 'Taxa'
          DataBinding.FieldName = 'VALOR_TAXA_ENTREGA'
          Width = 47
        end
        object cxGrid1DBTableView1VALOR_TOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'VALOR_TOTAL'
          Width = 68
        end
        object cxGrid1DBTableView1LEVAR_MAQUINA_CARTAO: TcxGridDBColumn
          Caption = 'Lev. M'#225'q.'
          DataBinding.FieldName = 'LEVAR_MAQUINA_CARTAO'
          Width = 54
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 360
    Width = 876
    Height = 22
    Align = alBottom
    BevelOuter = bvNone
    Color = 16512
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 668
    object RzLabel1: TRzLabel
      Left = 11
      Top = 6
      Width = 102
      Height = 17
      AutoSize = False
      Caption = 'F2 - Selecionar'
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
      Top = 6
      Width = 148
      Height = 17
      AutoSize = False
      Caption = 'ESC - Cacnelar'
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
    Left = 169
    Top = 155
    object Finalizar1: TMenuItem
      Caption = 'Selecionar'
      ShortCut = 113
      OnClick = Finalizar1Click
    end
    object Retornar1: TMenuItem
      Caption = 'Retornar'
      ShortCut = 27
      OnClick = Retornar1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = frmModulo.qrDelivery
    Left = 328
    Top = 97
  end
end

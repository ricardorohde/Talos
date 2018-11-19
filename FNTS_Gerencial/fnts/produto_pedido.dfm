object frmproduto_pedido: Tfrmproduto_pedido
  Left = 542
  Top = 195
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'PRODUTO | Pedido ao Fornecedor'
  ClientHeight = 596
  ClientWidth = 1013
  Color = 5460819
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel99: TPanel
    Left = 0
    Top = 90
    Width = 850
    Height = 441
    Color = clSilver
    ParentBackground = False
    TabOrder = 2
    object pficha: TFlatPanel
      Left = -4
      Top = 1
      Width = 850
      Height = 413
      ParentColor = True
      ColorHighLight = clSilver
      ColorShadow = clSilver
      TabOrder = 0
      object Label1: TLabel
        Left = 28
        Top = 12
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 182
        Top = 12
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 332
        Top = 12
        Width = 27
        Height = 13
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 6
        Top = 44
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornecedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 522
        Top = 5
        Width = 56
        Height = 26
        Caption = 'Previs'#227'o de'#13#10'Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 516
        Top = 44
        Width = 92
        Height = 13
        Caption = 'Condi'#231#227'o de Pgto.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 8
        Width = 69
        Height = 21
        Color = 15916445
        DataField = 'CODIGO'
        DataSource = dspedido_produto2
        TabOrder = 0
        OnChange = DBEdit1Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object edata_cadastro: TJvDBDateEdit
        Left = 372
        Top = 8
        Width = 97
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'DATA'
        DataSource = dspedido_produto2
        Color = 15916445
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
          8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
          F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
          D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
          BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
          F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
          8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
          CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
          F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
          95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
          E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
          F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
          A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
          FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
          FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
          B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
          FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
          FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
          F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
          F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
          7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ImageKind = ikCustom
        ButtonWidth = 18
        ShowNullDate = False
        TabOrder = 2
        OnEnter = edata_cadastroEnter
        OnExit = edata_cadastroExit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 232
        Top = 8
        Width = 57
        Height = 21
        Color = 15916445
        DataField = 'NUMERO'
        DataSource = dspedido_produto2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object efornecedor: TDBEdit
        Left = 72
        Top = 40
        Width = 64
        Height = 21
        Color = 15916445
        DataField = 'CODFORNECEDOR'
        DataSource = dspedido_produto2
        TabOrder = 4
        OnEnter = DBEdit1Enter
        OnExit = efornecedorExit
        OnKeyPress = DBEdit1KeyPress
      end
      object blocfornecedor: TBitBtn
        Left = 136
        Top = 40
        Width = 25
        Height = 21
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
          9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
          C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
          A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
          E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
          F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
          DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
          F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
          D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
          F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
          DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
          F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
          E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 5
        OnClick = blocfornecedorClick
      end
      object DBEdit23: TDBEdit
        Left = 161
        Top = 40
        Width = 349
        Height = 21
        Color = 15916445
        DataField = 'fornecedor'
        DataSource = dspedido_produto2
        TabOrder = 6
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBDateEdit1: TJvDBDateEdit
        Left = 582
        Top = 8
        Width = 97
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'PREVISAO'
        DataSource = dspedido_produto2
        Color = 15916445
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
          8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
          F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
          D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
          BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
          F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
          8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
          CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
          F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
          95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
          E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
          F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
          A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
          FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
          FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
          B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
          FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
          FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
          F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
          F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
          7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ImageKind = ikCustom
        ButtonWidth = 18
        ShowNullDate = False
        TabOrder = 3
        OnEnter = edata_cadastroEnter
        OnExit = edata_cadastroExit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit14: TDBEdit
        Left = 618
        Top = 40
        Width = 230
        Height = 21
        Color = 15916445
        DataField = 'CONDPGTO'
        DataSource = dspedido_produto2
        TabOrder = 7
        OnEnter = DBEdit1Enter
        OnExit = DBEdit14Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object GroupBox1: TGroupBox
        Left = 711
        Top = 0
        Width = 137
        Height = 36
        Caption = 'Status'
        TabOrder = 8
        object Label7: TLabel
          Left = 2
          Top = 11
          Width = 133
          Height = 23
          Align = alBottom
          Alignment = taCenter
          Caption = '---'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 24
        end
      end
    end
    object panel22: TPanel
      Left = 1
      Top = 72
      Width = 848
      Height = 349
      BevelOuter = bvNone
      Color = 5460819
      ParentBackground = False
      TabOrder = 1
      object Bevel1: TBevel
        Left = 0
        Top = 1
        Width = 848
        Height = 3
      end
      object PageView1: TPageView
        Left = 0
        Top = 10
        Width = 848
        Height = 335
        ActivePage = PageSheet1
        ActivePageIndex = 0
        AdaptiveColors = True
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 16
        TabOrder = 0
        TabStyle = tsWhidbey
        TopIndent = 3
        object PageSheet1: TPageSheet
          Left = 0
          Top = 20
          Width = 848
          Height = 315
          Caption = 'Itens do Pedido'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 848
            Height = 315
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel3: TPanel
              Left = 0
              Top = 270
              Width = 848
              Height = 45
              Align = alBottom
              BevelOuter = bvNone
              Color = 5460819
              ParentBackground = False
              TabOrder = 2
              object FlatPanel2: TFlatPanel
                Left = 621
                Top = 9
                Width = 137
                Height = 25
                ParentColor = True
                Enabled = False
                ColorHighLight = clBtnFace
                ColorShadow = clBtnFace
                TabOrder = 0
                object Label3: TLabel
                  Left = 7
                  Top = 5
                  Width = 28
                  Height = 13
                  Caption = 'Total:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object DBEdit13: TDBEdit
                  Left = 49
                  Top = 2
                  Width = 86
                  Height = 21
                  Color = 15916445
                  DataField = 'TOTAL_NOTA'
                  DataSource = dspedido_produto2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  OnEnter = DBEdit1Enter
                  OnExit = DBEdit1Exit
                  OnKeyPress = DBEdit1KeyPress
                end
              end
              object panel_item: TFlatPanel
                Left = 3
                Top = 6
                Width = 228
                Height = 33
                ParentColor = True
                ColorHighLight = clBtnFace
                ColorShadow = clBtnFace
                TabOrder = 1
                object BitBtn9: TAdvGlowButton
                  Left = 5
                  Top = 5
                  Width = 209
                  Height = 27
                  Caption = 'F11 | Totalizar (Recebido / Faltas)'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
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
                    89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
                    F8000000097048597300000EC400000EC401952B0E1B00000187494441544889
                    B555C14AC340107D53AB85222D081E14BC895F20E9497B5FCC1FF81F5A109A80
                    603E44E85D4BEFE628D2B378EDC1839722A520D87D5E9A74934DD384C607213B
                    339B7D3BF37636421200D0ED0DA724DB00080022225C06A3B1E95B3707C0340C
                    DC83684E1D2BB4A3EF0C5FD6D8F465CD699941930061E0625B747BC3849D2030
                    B25F6D4904BEEF63341A4129857EBF1FC7B2FCD61A24411297B7CFD45A5B0F49
                    3A8E93787B9E97E927C98B9BA7DF684D92C90CAA804852A27A5E3082520A9D4E
                    074AA98DFEDC12154554A22CA44B24461FD80A97840020B07879B88A2B53B906
                    E9125904F7D7E7383D6EE17D3285371817B28F1A334CE64DF883B14568113867
                    8768ECEEA0DDDC2B641F3566008093E63C33238BE0F5E32BDE6111FBF3673FCE
                    00B04F62A5220300C94518B8EB45DE5A83BC4603B6D44000EA0DA7A8AC062624
                    EA843C82BBC7B752B68985D6F97711505E03133511E84D8D5656031352136051
                    B106661F50F37FFB205A2B0CDC98C5CCE01BA91F76592C779F385E92BEFDAAC6
                    1F9C11A1D4FA8CD7F70000000049454E44AE426082}
                  Transparent = True
                  TabOrder = 0
                  OnClick = BitBtn9Click
                  Appearance.BorderColor = 12631218
                  Appearance.BorderColorHot = 10079963
                  Appearance.BorderColorDown = 4548219
                  Appearance.BorderColorChecked = clBlack
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
            end
            object FlatPanel3: TFlatPanel
              Left = 516
              Top = 279
              Width = 103
              Height = 25
              ParentColor = True
              ColorHighLight = clBtnFace
              ColorShadow = clBtnFace
              TabOrder = 0
              object Label17: TLabel
                Left = 2
                Top = 4
                Width = 29
                Height = 13
                Caption = 'Itens:'
              end
              object DBText1: TDBText
                Left = 54
                Top = 4
                Width = 43
                Height = 13
                Alignment = taCenter
                DataField = 'ITENS'
                DataSource = dspedido_produto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object grid1: TwwDBGrid
              Left = 0
              Top = 0
              Width = 848
              Height = 255
              ControlType.Strings = (
                'produto;CustomEdit;COMBOPRODUTO;F')
              Selected.Strings = (
                'CODPRODUTO'#9'8'#9'C'#243'digo'#9#9
                'CODBARRA'#9'15'#9'C'#243'd.Barras'#9'F'#9
                'produto'#9'43'#9'Produto'#9#9
                'QTDE'#9'10'#9'Quantidade'#9#9
                'UNITARIO'#9'9'#9'Unit'#225'rio'#9'F'#9
                'TOTAL'#9'10'#9'Total'#9#9
                'RECEBIDO'#9'9'#9'Recebido'#9#9
                'FALTA'#9'10'#9'Falta'#9'F'#9)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alTop
              DataSource = dspedido_item
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              TabOrder = 1
              TitleAlignment = taLeftJustify
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
          end
        end
        object PageSheet2: TPageSheet
          Left = 0
          Top = 20
          Width = 848
          Height = 315
          Caption = 'Observa'#231#245'es/Complemento'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object DBEdit3: TDBEdit
            Left = 8
            Top = 16
            Width = 425
            Height = 21
            Color = 15916445
            DataField = 'OBS1'
            DataSource = dspedido_produto2
            TabOrder = 0
            OnKeyPress = DBEdit3KeyPress
          end
          object DBEdit4: TDBEdit
            Left = 8
            Top = 40
            Width = 425
            Height = 21
            Color = 15916445
            DataField = 'OBS2'
            DataSource = dspedido_produto2
            TabOrder = 1
            OnKeyPress = DBEdit3KeyPress
          end
          object DBEdit5: TDBEdit
            Left = 8
            Top = 64
            Width = 425
            Height = 21
            Color = 15916445
            DataField = 'OBS3'
            DataSource = dspedido_produto2
            TabOrder = 2
            OnKeyPress = DBEdit3KeyPress
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 88
            Width = 425
            Height = 21
            Color = 15916445
            DataField = 'OBS4'
            DataSource = dspedido_produto2
            TabOrder = 3
            OnKeyPress = DBEdit6KeyPress
          end
        end
      end
    end
  end
  object HeaderView1: THeaderView
    Left = 850
    Top = 47
    Width = 161
    Height = 552
    AdaptiveColors = True
    BorderStyle = bsNone
    Color = 5460819
    HeaderColor = clHighlight
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -16
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = [fsBold]
    HeaderSize = 0
    ParentColor = False
    object bitbtn8: TAdvGlowButton
      Left = 38
      Top = 355
      Width = 88
      Height = 59
      Caption = 'Fechar'
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
        1F90000008BB4944415478DABC995B6C235719C73FA96AA52290505BF1C40305
        09893EA0B6EC6EB3BBF12DB6E35BE2F8CCD533769C7437899DF832E34BD238C9
        6E3649292B150909550275511FD0B6EA43110F2090E852B515881740BCC0A26E
        572AECC59BDBDEC8C27A66EC3F0FF6E6EAC4D94BFBF0933DA3E3E39FBFF39D39
        DF3926CCCED2164E2D50FDE40C193A47565126AB18234BE7A836AE92A9736496
        6432758E8C1CFB8EA1B1B4A9716F991AFF7B23C7FE6DE4D8ED0691ABA6267C6C
        68DC595363254BE79E37758E0C9D274B8B90558C925552C82A0864162432B408
        D5675E21CCBD4ADB7D68DF821371B2F2DC53862E940D8D3B6FE418368860EB35
        8391EDDB7A5FE32E1A1AF77D4B8B7CC32A29648DAB8F42304A56294E96CE1E37
        F3D2694363378D6C0B99FB22629ABAF053AB283D6D15C54712C15E231BFEB49A
        ED7B48B1CDD18DC0C8F65D377571D02AB6159CDBCAA9D708B3A7C8CC0B646A7D
        F3BB0EE123116530B5C81B86C6A87E729A30FF831D3E84D9135B393547383145
        86C69F3532BD9F9FDCD65C7DBF3E3341989BDFE14398ED6F1227CC0F10661254
        CD726F1BD9FD7D819963A86B0CB56DD43506EB3E44AB19F6617DBA9FB030D870
        697A11E6C61BCC4F12E6C7C92AF273D574B07D875906680C2831A0B00B2506E8
        8DB66DFB4BF7C0CC47DEC15C81B0505EF722940709E501C2CC10D5268E3BAB99
        088C5CFB0951D3186A3AC399188F634CC4082F62B4499217718C09783DCA614D
        E3502BF0FB908CA09AEE43ADF4F22066861B4EE5416ABC993A4E98901F3332FE
        E546CE716D0531CEF0AB410E5F768878CE23E08097C78B4D0E78797CD72BE009
        878C1F0961A018413D2F605F6993F603E3D2D3983E4E280F10617A9470324756
        A9FF7435D3BB33F4CD3C831E06F2E1C6AB1E06CA61BCA930905DC4FB9C1B8876
        E08E741477A4A340B4037FE59D78C61BC5B8CF07C40F373E538C34FBE983A535
        FADE998BBDB00AF17771224B981925AA9518D58A7D4F1AB9B0D92A72668EE16E
        8EE1425AC4F931119F34F94C17F17A4CC6D7BA55BC2386B0A276E1BCE2C579C5
        8B15B50BBF9102F856288E02E3705170E26FF1202E6424FC332DE1C2980043E7
        61EA5C8BA872A8667A512B849FAB951891351125B32096ABBBAC10D0FB702BCB
        21A426F13D790C2E25059792825B49A15B4DA1379682571D45D7265CEA283CEA
        287A6229F86329B8D45138A349B8A2491C54D2F04B43B892F00105062BCFEF94
        CC4660E6859F581351225317C9D0B84BBBE65A53B0474DE2803C067753AE4B49
        C1D714EC5653E85247E1DE84574D3504D5D4C67D2585434A1A2165049F723654
        132ED40A426BC91CBB65EAC2E364EAC237F79C0C4D413E3682CEE828826AF2A1
        B0AB63E0D4617C26BB708B756035E1692959CD32983A1F262BCF697BCDAECF53
        704DEEC465EEE856C9CDF9AF7367C8D4B9B37B55289FB7E035D9B12E592F88B0
        F48D489A1AFB900C4DFCC8D8A352F92204D725FB3DA815EF0D770486C67F4246
        8E5D6E978337323C426A12F64720E850C71056477051EEC29D4D829B23B99193
        91153272ECBF7B0A6A11DCCD45C0C5927851C9A0379E423036BA4E28B687F4A6
        76C158E3B173389E452896C215D989FF6C136C21B9D656D0CC31201FC6C7C928
        0ECB4978952482CAC8569A42016504814DD7DBDBF995111C54D2782BCA50938F
        60719B5C0BC935327291CA9E55468E017906E4FAC07A051CF08BF08436700778
        04A463E849A471D027E205376B4456198627283468B6B505253883222E080ED4
        954E547611BC263B7085EFC46AC2739D4C4DFAA3D1A69C479EE17A86A127C4E3
        6037074F805FA7CB1781971B80937F193F7BFB1778EFD7E7E05392F07003F0F8
        B906CDB69D7E1EF68080BF886E584AE7AE72D764072A920D15D979914C8D7FB7
        DD46685DB047C0219FB01199A000B79F839BF5E3486F1C8BCB3700007E350947
        38B6F1439A6D6D0111F6A0883FEF4BD08EC568D71FC8D4D92BEDCAA0768201F9
        38BC4A12F1CC248EE54FC0A7A41054861F5A704975FD9CACBCF05CDBDA6F0F41
        4F8047775841904FA0A32B8C038E10025C3FBAFBD4ADEDEE5750B46375C0AD90
        A9F364E4D8CA030BDE1B665F046E1F6B1281DBCF3D94E035D961ACC4DD5F226B
        3C4A665E78BDBAD772D74670BFEC57F0AA64C7B2647BE796E220AAE5C354D37B
        9E31B2E15D4BFD2F56D089ABC211AC265C876E1EF311617288309522ABA09E69
        55F2DF135C4E33748704743C84A02320E27050C29F440FEABB085EE13AB03218
        FC5D75324DD5892411A6928499346122FE956A3A586DB551479EE14E8EC11910
        F0758F848E808443F7C94B0109DFF645F14240C63FA42E188AAD85A01D97D841
        AC0D88CF1AA93132868E136152224C8A8469956A25355A4DF7ED384D30730C28
        329C3BC6C1D71D4120C081F5F060216EDFF48678784302CE727E54155BCB65EE
        9270183786C2652393A0BBC312DD1D918830576C303F4E982B9095E7DFACA67B
        5AEFECC6395493415CE06CF89768C725D9B96F3E939C58921B4BDC92ECC0D5ED
        432B746049727E502FE884A93261A2409828126136B1C1FC20613A46D54CF8DC
        AE85C3B8002403B8291CC16DA9136B513BD6A2B6B6DC89DA703B6AC7A2ECD8B1
        0657243B2E4B2F9DFF5F827B0C896142BC9F104F10E20922CC96373145387582
        EAD3136468FC0746B6C5A4D1185094B03612C215BE1315D1DEEE79D6E6817C14
        15C9F6F7BBA5CC57EBB3270953538472791DC2ECC226E60973A709A7E69BC76F
        E1B32D97418DA15E12D725AF8AB60790B337D65BD9FEDB25C5F944EDC434E1F4
        0F090BF384858575763FC0CC370E30CD823A6464C3C6F68AC7D438D48BE20345
        B222DA50116D588C792757FB03B4AC38C8982C115E7DED818F809F35F3D25BEB
        A7A3BB0C77BB4856243B2AB21D4B6AD72F6FC403CFAFF4076935E1A7A5A8FD41
        05EF1DA2F38D43749D3B68E8FC8F0D8DBB6664D9FAEE6BF37057A46624257B93
        F549716B51729C59EEEF72DD1C0ED2EDFE5E5A8EFB69A5DFF7280477FC0DF1A4
        9963BDA6C6BD61E4D83953E3CFA3242DAD8D846E5744FBED6B927D6551717DB2
        18757DB4A838DF5C525CD165C5F5D48AECA4D5010FDD180AD0AD78685F82FF1F
        00DD1F66E5379775FE0000000049454E44AE426082}
      Transparent = True
      TabOrder = 12
      OnClick = BitBtn8Click
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
    object bitbtn5: TAdvGlowButton
      Left = 38
      Top = 477
      Width = 88
      Height = 59
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
      TabOrder = 11
      OnClick = bitbtn5Click
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
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 474
      Top = 5
      Width = 32
      Height = 32
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033A494441544889
        8D9541881C451486BF7FB62F12D12078D05B3CECE2620CD38B087A4AD6C34673
        B0266830E041101111A7938321EE26216C34C443B646444404118912956E0F06
        8398E83DB196C83A620E7A4B0EA210215E4CE67998AAB1333B339B7769AAEBD5
        FFBFFF55D55F3233C645B35D3E003C23698799CD4ABA37E6FF0174259D37B32F
        563BADDFC661681441B35D6E9174DCCC5A4026496666E93B58DC1FFF0B94920E
        06EF7EDF90202FAAE7817781BB801EF03D50011781AB31ED3E600E6801DB8106
        F037F06AF0EE93B10479511D34B363B1B81FCC6CDF6AA775699CFCA8761BB022
        69BB99F580A5D54EEBF83A8266BB7C41D287717C42D2A1E0DDCD49E035922949
        CB6676807E752F06EF3E1A10E445350DFC08DC09BC15BC5BBC1DE0E1C88BEA18
        F006701D980BDE5DCE00CCEC04B049D2776676B8569949226DEC6AA7D5A8033E
        B2FF2B03B870F2690104EF969AEDF251494F444CA766BB9C31B3B5BE323D1CBC
        EB0EC93760B05175926182983F2BE9A758D44319B04752069C19068F804A4A62
        1B7AC1BBC6705E2DBF9B17D5B79276027B32603EB2951316292991A466BBEC0D
        B76B28BE34B305603E03B6C69F17D2ECB6D7CAE7462CDADB10A7D2A0D92E7BD9
        D4588E84B5350336C7C19534DB109FC6CD257D638CF795FF891B9212D6E60C20
        F577A3504CD4840592EEA86366C03533BB9BFEF5FF13A067EC25555DBBE90DEC
        D4AD7EB49E2878773D2FAA2D31E55A06FC2CE971FADEB20670E99DD66723A40F
        4E922405EF948EE988988B2AD732E09C993D46DFB83E1E959D4E50DC1305EF36
        EAE9EEA8F27C069C06168127F3A29A0EDE5D1E055E6BC144F066BB9C8E77A007
        9CCE8277DDBCA8BE0176013E2FAA5DC1BB5E024FFB7A3BE0009256E8BF215F07
        EFBAC98B0E003B242D98D922B00CFD0B3609AC6E11B1A02560A7A47F06CE5AB3
        EB9725BD173DFDA8A43793928D229EFD45333B023424BD12BC7BFF160280BCA8
        8E0287E2F02CB02F78F7EB24F0BCA86680156021FE5A0EDE1D49F3EB9ECC66BB
        7C093829699399DD00CE4AAACCECA2A42B31FF7E2097B43B7ACE546CCBFED54E
        EB833ADEB8477F46D2DB66F654943CE9D1BF099C91F4FA28B523096AF2678167
        8179E041E09E38F517F00B700EF87C94CDA7F80FC741A7152023101900000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 10
      Visible = False
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dspedido_produto2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 82
      Top = 6
      Width = 72
      Height = 42
      Hint = 'Next record'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000036669545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61
        646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265
        663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73
        547970652F5265736F75726365526566232220786D6C6E733A786D703D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D
        4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A3444
        3538324345333046463345343131383932454130343642353242383133372220
        786D704D4D3A446F63756D656E7449443D22786D702E6469643A363237383534
        38374633313031314534413133314444363345433831363235412220786D704D
        4D3A496E7374616E636549443D22786D702E6969643A36323738353438364633
        313031314534413133314444363345433831363235412220786D703A43726561
        746F72546F6F6C3D2241646F62652050686F746F73686F702043533620285769
        6E646F777329223E203C786D704D4D3A4465726976656446726F6D2073745265
        663A696E7374616E636549443D22786D702E6969643A34443538324345333046
        46334534313138393245413034364235324238313337222073745265663A646F
        63756D656E7449443D22786D702E6469643A3444353832434533304646334534
        313138393245413034364235324238313337222F3E203C2F7264663A44657363
        72697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E
        203C3F787061636B657420656E643D2272223F3E77FAF4360000049549444154
        78DACC987B6C53551CC7BF6D6FDB6D1D5BBBECA5190FC1C188222841A2238D12
        93C5408868F085890A2AF1458CF10F497C4062A231D11031BE12FF300650D098
        98208A4074021115C42DA251746E202B34E04AB7D1767DF8FDDD9DCA5CDADE7B
        DB6BE72FF9A4D9EEB9E77C7FBF7BCEEF77CE7104DFFD09455833B98CCC2773C9
        34524F6AD5F30809931ED2450E931F49C8EA409AC5F6579265E40E32AB40BB26
        3293B48FF9DF2F6433F9981C313BA0D364BB4BC91BE42BB2DE405C3E13C11B54
        1FAFA93E6D11783FD943D6101F4AB76AF220D9ADFA2E5AA09BBCA59802FB6DAA
        EAFB4D3596258193C8FB663CB4C11E5063559B1528DE6C21CB513E5BAE169066
        46E0EB6429CA6FCBD4D805054AB85763E2EC3E454E81B3C90B98787B9EB4E612
        B89604EC1841733A4A795D2AD263E3054AB95A695708E2E98C2EB204A1779139
        6305DEAE524BC99173BB1C383A3482BDE7E270509FFC5D84D590DBB202A56EDE
        6387B868328DD3B114365EDD8CA75A03D8131AC6B99174B122578936C93BF3D4
        EEC4508044249381FE9BCB62A90CBAE3492C6CA9C6CAB9F5FA3BEB8F8471498D
        07D3AB34FDDD243FBF49BB885C2E021719B594084824BACE275155A0DD5F6C83
        58127D9138663554E2D9EB5B3099E2561F38899E911496042A10A3732329D322
        1789C02B8C5A89E7129D853EB71E957C511081DD9A035EED42725835BF1153FC
        1E2CDD7D1C3B4E0D6349D3A88B2645CE1381D38D5AC984DFD05687871634156C
        97A227E28CBFF2DF15EB86197E74D57A71F7277F60C79F8358DCECD3BF8A0991
        D3A4A706433F9219B4D655A0DEE72E7A11CDACAFC4CE15AD78F8B35E6C393188
        A0DF5BF06B6437BE4E537B427634184F959C1F25B29B6F9A81756D0174461366
        168C3E593228B3F9DC4ED3A3CA27364E52F4B4D2E32A59D808FB7972572F5EFE
        2D8260ADA94F9C1681A70DE7212774889F64389182334FF94A73207926BFB28A
        5DE3DAC9FB8FEEEAC3073D11B49B5F246111D8A78E90796D31BDDD7A6C00FBFA
        8790AFBCBA98BDA34C3361E6C14DCC7FD74EADF9E7D9775CB96B3EEFC3E1B331
        74B48C56D4F3AC3A26EC7711F803B9B150AB6CE5F89403C433B9BDF6B2515C16
        120546131716D44747CFE2E6CE139283D07171351342C64AA2EE1281FB0DE70E
        3BF4730EB61BCCC3B027856E8F13931971B14D5F87B0F6603F02151AAEAAF3EA
        73D042A9133BA0A9537F64CCAD40EE5468D0B1BE9361A4677B351C3B13C3CE5F
        07F0C4C110E6B0BC3556B8AC442D6B67E480AFA9EB88B7C9E3A5AC507140A21C
        A0C847F69DC471CEB1606395D9C590CBDE116D920765B6BE471276E43811D3C0
        3C179CE429455C421D4533D92AF2AD128952A3A8570C35578B1407A5E59BF167
        925764B76E47142D2E84F1364C36E63A341D22CFFC0F4E75A2E1FB7CE7E217C9
        8713286E3B79C9E866E15E33B9F13FB04E35B6E1D54794AC205F9451DC5E722B
        19327BBBD5AF2E74B69741DC36720B3965F57E704079F5B4CAEA769BF4B94E9D
        7F078AB9C0CCDA73A443254EBB6CABEAD3F02EC8EC1DF52175FB701D46EF97C3
        4588927DE7AB2448EE547D9ADA515BB12F15928E16906BD4BD4E9BDAF47AC694
        2A71E267B59DDBAF04F55AF5EA6F01060058D57322DA95B3520000000049454E
        44AE426082}
      Transparent = True
      TabOrder = 9
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dspedido_produto2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 7
      Top = 6
      Width = 72
      Height = 42
      Hint = 'Prior record'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000036669545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61
        646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265
        663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73
        547970652F5265736F75726365526566232220786D6C6E733A786D703D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D
        4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A3444
        3538324345333046463345343131383932454130343642353242383133372220
        786D704D4D3A446F63756D656E7449443D22786D702E6469643A344630443444
        30454633313031314534424642424641374346433745394646362220786D704D
        4D3A496E7374616E636549443D22786D702E6969643A34463044344430444633
        313031314534424642424641374346433745394646362220786D703A43726561
        746F72546F6F6C3D2241646F62652050686F746F73686F702043533620285769
        6E646F777329223E203C786D704D4D3A4465726976656446726F6D2073745265
        663A696E7374616E636549443D22786D702E6969643A34443538324345333046
        46334534313138393245413034364235324238313337222073745265663A646F
        63756D656E7449443D22786D702E6469643A3444353832434533304646334534
        313138393245413034364235324238313337222F3E203C2F7264663A44657363
        72697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E
        203C3F787061636B657420656E643D2272223F3E257E78A1000004A549444154
        78DAC4986D685B5518C7FFC9BD3749D32EB5ADB176E91ABA545132379D38E82A
        DA69073ADC14416513DF612A3886FAC517141461C2AC0E54C4B70F633050C7F0
        8511266CDAB139FD601D165B95D1B5139BCE6DA52F499B26B989FF939CD46EA6
        BDF7A677CD03BF7E48CF7DCEFF9CE739CF7971DCB2A70F25582559465693EBC8
        D5A48ED4CAFF8F90F3E44FD2434E90D32466B523D562FB20E920F79175C465F2
        BB34F99E7C4EBE2583760BBC8C3C4E9E262D25CCB82A0726E8271F904FC8A8D1
        874E13CEEF2447486789E22EB6E564A7F479D74205BE42F6C93CB3DB84CF2FC8
        ABA50854C847E475E2C5A5330F794D865BB59283E28347B178F604D1C8236666
        F08D451657B087C90E2381F79297513E7B4196B0A2021BE4EA2AB7BD4502C504
        6E9725A0DCD624B55C2030B490BCD314071C4EDBF331345BE003A4DEF2F6E074
        A04275E0F0440A5DC4A53AED125A2F35E504D694327B42DC949EC5C1339378EC
        4A2F3A57D4617C5AC7743A6B67E9A975CA8A7E95A5EACA909EA598E3E726F154
        A806EFDE11C4C66B6AD1CBDFE2142D422E06301716B6C455A250B79AFD4284CF
        C3309E184BE24C3C85CE350D78766D031CECF3AFD109C4C6A7D0E3D1B034A520
        398F9F168F0A2FFDA43386B3DDAACA339DA990BA996F9173091E9E32F8ACA309
        F7AFA8FBAF81E84BE11F45E4A513EE39FA169AC6F40C2A3553C97AA36AE684E2
        A038314B91681C359CA1839B96E3A6C6AA0BDAAC59B604BD0FAD84C6764EC71C
        6174E4057EDA3D8CF7FAC7B1DAAB19751D52CDAEDE43E713B8FD0A2F766F6846
        A0FAFFE7D42AB7826BDD8AA95409FB2B11EB1B85EECD9F4AE631BF6AE654DC35
        91C4B6503576AE0FE6C2BC509B4AEBE64EA22CB186CDF4DC813D83E66AB72DE2
        0A7968D2B2860245086EF6B9F0DCAF67F1E691BF6D11285630B2A60B07FE316A
        E5A6C3EB2B34BCF86314CF1C3885C964664102C7137A6EC198C8D81155DEB0C2
        F3B54AB0F8D67301B42FADC2FB7D231888A5B06B7D135A6A3D336DBA87E2D871
        3C0A9FA6C0AB149F2051AAF46C16BF8C4CA3D567EA423828048A8BF106A330C7
        988762DF6D0F54E1C0701C27BFECC787EB02B8B5B93AD7663896C4BE936310EA
        148AD48B665436573057321A7E0E38A51BC6B94F083C4A9E37938B53DC67DD4C
        8ADBFC5E1CE66ED21E19C0DEB60036AFBA1C4D5C4458A221EC51E07729C8185C
        844C8813764C08EC16519417184391E94C7EDBE8A871E1776E775B0E9DCE15F1
        469F8666CE8AE6305EE926335868FA49081C22BBC99356123DC9D90C576A6864
        38371F1B42B84245D0AB328A596432B62CF63D429B533E4BEC2DC5438C227D2C
        A56D149A10C54DB7EDA805A9295DA883220FF75BF5A0C815AE7175063DF9BCCB
        DA337B5FC99787990D47B87DA7E49D6126376DB35D85549DBD931C9537AA72DB
        DBF225ACE8BD58DC89BF2BA33821ECA5F92EEEE220FC20F9AD0CE27AC916326D
        F4F411952F0C3D8B28AE47F61935FBBA259E6E37CECE854B6862B56E227F587D
        1F1C940F8C1F178E85369B2E7D8B73C080D5F7C182C5C956399B762E9E2EE973
        ABEC03A50A2C58448EF46E59444BB56FC83DD257C4D46DD28273B1797F8DFC2B
        BDB8ECB791B5E40679C9BE78B062DF3B457E263F8893895C0C092B23FA578001
        006FBA3CE8FDF36C410000000049454E44AE426082}
      Transparent = True
      TabOrder = 8
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dspedido_produto2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 375
      Top = 5
      Width = 32
      Height = 32
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033E494441544889
        8D95C18B1C4514C67FDFA43D444583E061BDE9218B2B314E6FE2450FEA5E82D9
        83DDA241C583202222994E0E4A349B109218D643B65B4444041121829A690F4A
        F660CC1FB0D84D4232620E7A5B0F8210317871E7F390EA75323B339B7729AAEA
        BDEFABEFD57B55B2CD386B77BA0F487ACEF653C00C70AF246CFF21A967FB47E0
        EBBA487F1D87A151047156DE6FFB14904ABACD034E9264DBCD08FC2BA96BFB50
        5DA4BF6D4A1067E5CBC087C05D401FB80074819F80DF83DB14B00B4880278116
        F017F06695275F8C256877BA878013925AB62F0007EA22BD384E7E88D92969C9
        F61380251DAEF2E4D40682382B5FB1FD6948C3A2ED85BA48D726810FA8DE62FB
        38F076B8A357EB22FD6C9D20CECAED21057700EF557972F8568047109D04DE01
        FE0666AB3CB91A01D85E9474A7ED1FEA225D07DF7DF05B03AC9C7E464369E907
        A5B24D5DA40A3847243D6A7B0E580492A8DDE94E03F3C01AD0D9EC940D78005C
        0707A88B742DCECA0E7009988FB3723A92B40F8880737591F63649415F5273DA
        9BC01BABF2A41767E532B017D817053996F4CD66271FA87D8D021F50D6059E96
        3417013BC2FACA24F0C179DFBCB8737FF78561BF8B1FA45F0E61ED88806D61B2
        DAEE745B7591F6870387AD25CE0084925C1F818660358CDBA2905242C056E0FA
        30A0069C9ACA9964839891ED6BC0DD92A6AA3CB93C2AA0798B9A3BE89B97C206
        378DFFFB4F05FF6B91A4CBC0E3C02C3092A02ED2569C95EB242D7C66D2254B9A
        05045C89C293FB98A46781CFC7055579A2382BDDA86977BA1E47623BE546659E
        D723FBCFCE009782FA87EA22BDDA388EEAE4A18ADA50AE71566EB77D25887D38
        AA8BB41767E539605ED212371A64AC0DA66B58499C952D20971401DF5579D293
        6DDA9DEE8CA415DB5B812375919E984432CEDA9DEE82A463B6FF0176D745DA1B
        7CAE5FB7FD11D00F4E276FA5279A93DB7E17381AFE9237EA22FD18863E9C382B
        8F010B61BA0C1CA8F2E4974DC0A78125604F583A5EE5C9D1667F43D3B43BDDD7
        249DB67D3BB02669D9F659A0025643D7DE276997ED04D82329B27D1D385817E9
        278378E33EFD69DBEF037B256DD9E4D3EF4BFADEF65B75916E503BB1EDE3AC9C
        019E07E68007817BC2D69FC0CFC079E0AB2A4FC63EF3FF018B09C93EC7530589
        0000000049454E44AE426082}
      Transparent = True
      TabOrder = 7
      Visible = False
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dspedido_produto2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object blocalizar: TAdvGlowButton
      Left = 38
      Top = 294
      Width = 88
      Height = 59
      Caption = 'Localizar'
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
        1F9000000A3A4944415478DAB4D95950545702C6F15395CA5465AAA66A2A999A
        D749661EB2CC4BAA9C444D46E5B6FBD20D74DFDBDDEC08888E884A40228A8AA0
        46C724337162C5252A1A40C505318AF402B48A02D20B8B224151147771EB6E50
        40F9CF43038A62EC18F3F03DD045DDFBEBEF9C7BEFB9A7052C1103932978982E
        7A9CB2E054A8E07484C0290B1AA3042E83A0DE28702A02A7FC7E8F5349C0A96C
        C6A594E0902FE290DD38643776F90A358623B8949C1EA792824BFE10A72C7A5C
        B2C061109C8AF01DBBD6E83B9E5D2BE8982F609978DA23FC02BA6441D35481CB
        F826354A1A4EE5340E99FED8750CF8DB2143B576E0E74EF91C4E79390EC3DB34
        440A1AC25E01B0214CD0182970C8AF531FB212877277508CBFB1CB6097BBA931
        AEA3CEF816752182932F0B74F537A8A62AF82CD5DA97870DD6EE09DD6D6A8DD1
        9C340A1C3F0B5CFA54960B58227AEA0C826A6D66FF3777FC06B1CBE0D0ADC529
        0BBA160AF8E2198FE0D1A2A79221E85C20A8D1E75019CCAF1A527F72420BD53A
        0BDE54C1A3CC673C82E688DE840B5AA204CD91028792FBD22774CAE0D2F9E2FC
        456D1EE64C84E042B4CFD2EB12B427F7669EA0234550AB2CE5B8E6970D935307
        4D81D0A2863381D018E4CB598DEFB3C6205E38558E07824397873B49D0FE79BF
        4BD012EF4B6B82E0C2F400EC3AFF86B5EF64CD1A38ABA1A9389CBD1BA7F3FD7F
        12F866E56CD6AC9ACDE66F1238B0259ECB65A13EE84F8150AD3CE7783ADFC573
        2E2E9AD6847E97A03946706E9AA021E235CAD537B1FB313476056A75D0A2A6A5
        2C94952BE6A08B59C418E31254CA7C54BA1454BA1446EBD3181B9281313E9DB5
        5FCFE24E951ECEAB7FA64D1D94ABE154F85B9C9F26688E1182EB89821B4982A6
        C8955406FAD75CAD165AD458F362098A5AC284D00C3421FF2228248EE973D248
        5EB09CCFD296119B908AC61043606822638D9984C6A7535F140117D4CF2FA132
        101A2376703D49703D51086A8C0297E10DAA75DD7E4D6AA70C17D498B74D4365
        C842179D8A5A896261E66ACA2B1D9CBB709996D66BB4B45EE3ECF9562C65E5CC
        4E5D825A894213B980C9E14BA9FB31022EAA7D2331D8F1ABB4E054FE4EAD51F4
        3E13F5697ECDBB6A055AD4341E8C647C5826DAA864828CB1EC3D60A6FD7E17E7
        5B6F603B5E4391B582432595949FA8E7F2F53BB8BD1DACDF9287461F8D267221
        869885B41DD14273F0E048BB0E6A94EF38152A044E83C0A1B4FA75C5D66BE154
        3029A9F39818964E90218683661B0007CCC75997BD97EC1D07C9D9554CCEAE62
        B66C3FC0BAEC026CC76B00D890BD03B512C5B8F065AC4C9F01F5E3A0DEF09CF3
        29F7701A5E17D4C87FF5FB96D2A2A63C379671A14BD1E863F87AED260076ED2F
        E5FB9C42F20B4BD8B9CF3A308556D66F2DC072D84E67770F0B96AE26282C015D
        CC629AB64F80FAF1501B32F8F95CB246F438F573FCC2B964680A62F5F2B98C35
        2C243C6E364DCD1770D69F65C3B682C171BDC92F2CE1BB2D7BB974ED36472BED
        A8F553191FB18C1FBE8A826343785811087583209DCA4681CB90E3D7FCABD382
        5326757E0A6374B358F1E55A6EDC76935F5842DE1ED373717DD9BAB308B3AD9A
        96D6AB24A62C669C318D2F96CC02DB27749846F0B042331069D781536F13D418
        0EFBB5526908C67BCCC88C39F319AB9DCE86ECED5CB971871FF20FB1A3C0F242
        E0F6BDBEFFB978E5262BBE5ACB78FD6C929253F09846F3B0E4533C8746D25D19
        08B5C6C74097D22470C897FC1AE286606E1F31322D713EE374F16CFE219F4BD7
        6EB17567113BF7BD18B8A3C04ADE1E33E75BAFF1EF6FD633513F8B84B9A9B415
        8D01DB083CC5A3701F1AE96BB2D6D8779F6C1338E40EBF802783E9AED2332739
        9531C13358B32E9BEBB7DCE4EE36F9D560EE6E13054587B974B58DF4AC2F1967
        48263D6D2E5D250174978EC26B9606227DC3EDF51F58A3837A2D198B3F63AC92
        4C525A16576FDCE65069155B771C24BFD0FAB317C9A69CFD38EACE70B2F12CA1
        B1898C0DCBE07F2BE2A16218ED1609AF591A88AC0C84BA10AFC0AEBBEAF7B2E8
        BC86AD6B6632DA9881C630158BED1837EF785997BDB77F8E0D86CBDD5DCCA69C
        FD3CE8869CFC4226E9A298129D45E9263D540DEDC73D83ACD0DC16D4198F71C2
        CFE57C5320574B42D1C72D22387C0EB109F3B875D7C34FCD9759BB790FDBF20F
        3D03DCB2FD00EBB7EEA3ED4E3B0D4DE7304627A0895C40FCECF9B45B241ED946
        3C03EC437A4D01CD821AC30EBFDF37ECBEE77049DE4C7471CB50EBE34859B89C
        DBF7BCDCB8E5A6B0B89CCDB93FB229773F9B72F7B339EF00A6B213B8DB3B6969
        BD42ECCC790487CE606CC44A8AD787F8DA33498302BD668976B3542E70289FFB
        BF3095E14E30B6AD5A261853999992C964398619490BA9AC7671BDED2E97AFDF
        E1CCF92B9C6DB9CAD59B77B976E336E6D2A384C5CD461B369D3111ABF86AE94C
        A8184667E9483CCFC1794C121D56D536814BF9C02F9C4B86369923390A1F7CAC
        61F86885C9E10BD04F5F812E22118D7E2AF3335691BBAB90C2220BFB0E5AC8CE
        DBCD9CD40CA628D1E8A2921913BE8A658B13E939F24F7A8E7C8ADBA47A6E7B1E
        B3C403AB14227A9C8AC021B7F9833B9C2BF3EE3F64DE1FAAE76F43B46CC99AC0
        9E757104C6643121228B4921494C92E398A2C432458961A23C8D49A1F3181FB1
        1C5D5C0639FF8D86639FC0D14F70173F1FD79BAE76ABEAF7829321821A65F5A0
        8FBB279BEBC5BD3754E1ED2146D6674C8193C3A06A18B53B357CFB453CB39252
        31C42F26282683A0980CC2A6A7939492CCE62F63682E98085543E9B18D7821CE
        639268B7A8F2EE978EE95D6ED9953F71423BF82AF79ACCD13C9977873CC66D58
        3A19EA47D0659368370540C530A818C6BD6215753B341CCD9629CF9669DC3585
        0E6B00540E8563C369374B784C2F6C0E8F59A2AB44FAB8BB3440082ECD125C9E
        2B381DB191AAA796FCE7646C3932EF7DF42CAEDB1680BBF8C96F2CF1A86C041C
        1BDE0B1E0AE59FF0B074E40B414FC66D92E8B048666CA30465A384E0F20CC1E5
        04C199A97FE0786067FF50BB646895090B91117FD6F39721216CCCECC51D7E8C
        7BD5F19824BA4BA5771ED924F1A84C128286084143B86FF7EA74A4D1B72BD5F7
        4A2963FA5E66B814CCA6CC89503B724073AF3AF74C2A3AAD525A5F7BBE06DD49
        BE7892059ECF0435FA0DFD6F777619CEE8C13905CA3FE5BE75945F73E865E236
        4BB45BA4B23ED863E0B9C8C7B9182D680A1354055B1FAFA415386DE051851A77
        D1083CA680DFAABDD35DA5D26BD8463E05EC4C7B9CAE0582AE74813755E0524A
        A9EADD3C722A501742F77135EE43235F29D2E3CBA9EED2803FF6D806B6E70392
        F5443205AC1090E9DB7E3B119C336007A00FF9AA9A3449782DAA435E8BEA773D
        A5A304830307DBC05C247A5C8A6FF7B3213C8E2A6D17D5BDF7C95780EC7BFE76
        58A4F9F74B54C26B51894725BF14E894050DA1829FA20476F91DEA8C9BFB9BAC
        35FE2A64BB592AB86F557DF8C02A89FB5695F0BC34F05448EF26BA2238132D70
        193EC2A9ACC1A95C7B09A4DB6B96363EB006489D56493CB0AAC47DCBAB023A65
        5F93FD3F43C86FE054D4D4877CDB7D5C6DF598A5D35EB374A317E1F69AA5B676
        B3D4E4354B87BD166983D72219DB2DAA37BD169578600D109DBDCDF903FCFF00
        2ADC84EE2664A1DC0000000049454E44AE426082}
      Transparent = True
      TabOrder = 6
      OnClick = blocalizarClick
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
    object bitbtn7: TAdvGlowButton
      Left = 38
      Top = 233
      Width = 88
      Height = 59
      Caption = 'Cancelar'
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
      TabOrder = 5
      OnClick = BitBtn7Click
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
      Left = 38
      Top = 172
      Width = 88
      Height = 59
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
      TabOrder = 4
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
    object balterar: TAdvGlowButton
      Left = 38
      Top = 111
      Width = 88
      Height = 59
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
      TabOrder = 3
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
    object bincluir: TAdvGlowButton
      Left = 38
      Top = 50
      Width = 88
      Height = 59
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
      TabOrder = 2
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
    object plocalizar1: TFlatPanel
      Left = 384
      Top = 168
      Width = 209
      Height = 239
      ParentColor = True
      Visible = False
      ColorHighLight = 11429670
      ColorShadow = 11429670
      TabOrder = 1
      object LOC: TEdit
        Left = 3
        Top = 50
        Width = 201
        Height = 21
        TabOrder = 0
        OnKeyPress = LOCKeyPress
      end
      object FlatPanel1: TFlatPanel
        Left = 3
        Top = 6
        Width = 201
        Height = 32
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 1
        object rnome: TRadioButton
          Left = 4
          Top = 1
          Width = 69
          Height = 17
          Caption = 'N'#250'mero'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnKeyPress = rnomeKeyPress
        end
        object rcodigo: TRadioButton
          Left = 4
          Top = 17
          Width = 64
          Height = 17
          Caption = 'Data'
          TabOrder = 1
          OnKeyPress = rcodigoKeyPress
        end
        object rapelido: TRadioButton
          Left = 76
          Top = 1
          Width = 117
          Height = 17
          Caption = 'Fornecedor'
          TabOrder = 2
          OnClick = rapelidoClick
          OnKeyPress = rnomeKeyPress
        end
      end
      object bloc: TAdvGlowButton
        Left = 56
        Top = 77
        Width = 97
        Height = 51
        Caption = 'Localizar'
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
          89504E470D0A1A0A0000000D4948445200000026000000260806000000A83DE9
          AE0000001974455874536F6674776172650041646F626520496D616765526561
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
          702E6969643A3846344638313035303336423131453441303443413032313242
          4545454345322220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A384634463831303630333642313145344130344341303231324245454543
          4532223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A3846344638313033303336423131
          453441303443413032313242454545434532222073745265663A646F63756D65
          6E7449443D22786D702E6469643A384634463831303430333642313145344130
          3443413032313242454545434532222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3E07F5CFE4000003C94944415478DABC98
          4F48155114C67DA2969A8669A96596A5950F0B17492DA24445498420C842A296
          852DFB438B08314217B569550BC10A9F8AA9115A600912419B965111624AA6BD
          FE89E8D39447D377E39BBA5EDEBCB9338E1DF831F3EE9C7BCE37F7CE9B39F7FA
          0CC38871695B410ED804B2C17AB67F0593E0131807A36E82C739F4DF082A4129
          A896C4589910F9180C810130A19BC8A7396289E0023805F2956B532008BEF177
          06C804698ADF30B8076E8079DB8C42980D27C03BE39F85C0103803FC600BC800
          C924836D7EFA0CB18F69EF18336A5E3B51D7A4808B20008A804FE3864C7CEC13
          600CD3AEBB11960ABA94BB2C7520C60A11E3AD14B78BB9B484893BEC903A8B3B
          CDF640944916639AD611690622756C903A357B2848A559CAD36027AC5672EE5C
          4151269D52BE5A2B619960924E635673EF31A9CC65307766246137E9300D4A96
          91CC27A1E35FC29C06352C11962B8D568B4B4155A00D0499E80B78002A34FAB6
          48A3962B0BABE7850550E042D45563A92D2ABF6F83D828FD0B985BD839535802
          78C2C61E17A22E297F98A3600FA801ADD2B55B36717AE8D70FE245431E9865E3
          3187A2764A89AF58F85C947CA2BDA48FD3674668120D656CF8E5621A2FB3EF33
          1BBFA7F4BB13C5670735082B8BC5777C17BFE7A26E9A765806EDE7B1DFC62FC0
          E35E106FE123AA940F3C2F14C2B2F8E3339873286C1D8F76373429F9FB2C7CE6
          25BF2C212C853F6641D8A130B33ADD6EE3B78FC731B068E11396EAB4E4D898E5
          593B8FA759625B159927793EA81B58089BE1F91A17A5B659FE0A51ADA048B92E
          AADD5E1EC574B7D994F9893C0FC5F1D98AE1B396C429D5B14AE9A11656015E80
          87E03DC805471837CC511DB129DFB3FF3EEFF86B964BAF8B7CCDD744359857DE
          EE5346641385E1618D98F9D2EBA23C8E7711120F1C28E6A2219A95714A564B6D
          7DA01EEC0655BC26A6F925E8043F3566A098FFD8D01F4D0E3F4907C00F654406
          408A072590F949125A129C7CC4D3C04745541F48F44094FC11AF57CB9EA04DD9
          238AB8B024AA17ACF2A86034CB9EA05AF6E8168AE7C12B70DFA3E9B32D14CD11
          99A0C36894D2DAE771693DCA9C1356A5B5BA1869FF0F357FBBCE62C4A451726E
          5A41514D529E469D7565ACB20A0FC843EC011B94056F57A4B2DBAAF35AD02D75
          7E030E79204AC4782DC5ED662EC79B2AF2702F7015E47721C8CFBE0BBA8F894E
          D03A302C0514EB8341701614F2BD930E92483ADB0AE93328AD290CC6AAB3CBAB
          BB7197C48D3B51216C53AE7DB7D8B84B57FCC437F92E37EEE6BCDA51342D87E5
          CE4150132179A43AFE1178CEADCE71AFB73A23591ED8ACB1393CE226F86F0106
          00A481506BE4A44E6A0000000049454E44AE426082}
        Transparent = True
        TabOrder = 2
        OnClick = BLOCClick
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
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
        Layout = blGlyphTop
      end
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 38
      Top = 416
      Width = 88
      Height = 59
      Caption = 'Enviar E-mail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
        1F90000008604944415478DAC499DB7313D71DC77F339974269DE94C27E91FD0
        F4AD79CA4B1BF0452BDB600CD8B2F6A2DD957C252685C4967665C98E6FE05B9A
        32D33E7532D30CCC643A1D4A7968A6059BBBB9D64013081872A130813450DB92
        6DB0657CDBB32B7DFBB0B66C21D9E1629287EF8CB492F67CF677BEBFDFF99D23
        427B3BA5A8A39B123BDB88E902592185AC501959BA40F1061F99BA4066582153
        178805F85F328DAF3535E12353134FB2007F9705F8495BEE215393CE314DD86B
        6A7CD8D285D74D5D20A68B64696EB2422A59612F59F51299219998564A89B677
        099DEFD1A33CF4D8808DE564058597992E35334DB8C1023C16E546EA7B1ECC5F
        9A7A5D13EE304DF8ADA5B97F6E85BD6435F8560350252B5C4E96CEBF6806E55D
        4CE327983F03CC13C96D9ABAF4A115925FB1429E55896009F3BBBE36FCA5CF08
        B634BA6E307FE90353F7545BDF0DD899AA8EF709ED1D64062532B5D2AE65A770
        554079989AFB03A6F194D8D94AE8FA5D1A0FA17D47AA3A3A093B5A8869E25E56
        57F2FCE052BD7A22D1D648E8EC4AE321B457CCAB9CD0554568AB24C32FFC95F9
        F9E70BF6888C3AFE6CA2B582D05D6DB3CC73113A1B6C753511BA1AC80A899D46
        EDA6EF158E057818B5C53083EE7DE8AC27743727B908CDD584E62A42DB568A37
        D6388D3A3758A0F47B076401378CDA52C4C35BAAD1F696CDD45C4DF68B961A42
        A3F202AB2B1AB53D27FC0080F3AA2D021AE457D05A4368AE2242EBDB849D01B2
        C215BB8CBA921F0E2CE9C51258F5E5FBB12340687B9B281EE6291E2A7D89055C
        66C6C8F99FB3D2200518752588D7BB5E8B877922AB5125B3DED36C645A21741E
        460D0FA3828751B5CAAA74836DE161E92298965EC8CDA0F427AB512532831231
        4DB8973172DB79581F0A88FF53447CBF88F8DF56511F4B607FE66104DC8807A4
        4CD31D3375E9453275E91719FD50C7C3D8C203A74560DC03FC5701EE7880DBD2
        B3E9CEFCBD461458033CA2654ECCD5942211F2A47AD1CFC3D44517594141CBE8
        853A7B7AD12B21715300EBDF0C5C956D7D263D9DAECAC08002F34209F08588C4
        0509434A2E865CB9607E1EF1506A244D5DD843A62EECCDD8A1240165E0A68058
        6F36664EADB707B9A63E39DC80020C28983D5D88D8A11CE07301898B12A2E54E
        DCDB9C8D61D901E6E75322696AFC19629AE72CCBD4A92C89206ECB983DB51EE3
        07D660EA781EE29704E0BA17B8E2793CB86B2A129745CCF41560FCC01A4CF715
        00FF5190382F225AE6C450692E06C51C44646E31927E375840BC452CC0FF6F59
        0FD6F048F488C06D7B6A8D7F6DC2444F16260FE7DAD3744D5D79CAAFCAC0752F
        AC7F97E2E1510EE307D762F6CC06FBC16EAA88F70B49C088C2A540DA91748F11
        0BF033DF09F8B5981CCCBCE8C2E41107260EAEC5DCD9A2A4AF969BD285878A1D
        CA013B5FBCF8505FC9698011350D72EA3101970C7CDD8BC42501D37D0588F566
        63FA443EE297C5545F5E53812B1ECC9C5A8FD8A11C4C1DCF83F5893BD5163732
        002E8554381875EE296201F7F013015E1681CF7DC08082E913F98B537ED16503
        5CF7C2FA94C7D43127267AB23075CC69FFEE8BB2D4082F07B80029E522A2720F
        C8D4E4F32B25491AE0351589CF24CC9E2EC4E4E15CCCF415E0E1510EB1DE6CB0
        F3C5302FBA103B9483C9230E4CF715D8DF39B92E3DB156025438441407226ADE
        6D327571FF4A6526E9C12B1EE09A0AEB13371E1E73DA863F5D085C9591B82C62
        EA781E267AB230D19385874739C43FE581010573E73662E2E0DAF4C4FA6A65C0
        61D981116F7E3F591AFFEE4A853A99C5030A58FF66C47AB3113B9403A37FF3E2
        600B9E3BB90ED327F29158F0E4FC67E685124C1ECEC5444F16E6CE6DB4AF67C8
        E24701477D797F214B975E5BD1830B75F0CC068C1F5C8B8747B974C32F94942B
        1E5B4BB3FA8A07B8EE45FC9280A913F9183FB0063327D7A5D5C134408F03F7AB
        0ABC64EA22B1003FB6E24A72CB5E49A6FB0A9058C8D24C756F017099628DABB2
        9DD9BDD9F65277515AC1831C1BAB28F831590D2A9941E9F769ED5612D083C44D
        01C6B98DE9D179CAB598F56FB601CF67061C921D189573F74D7A39A278D04571
        BDF867CCEF4A6DF5EB78CC6DE1813312105381BB3EE05B2FF08D6277234FA36F
        14E0DBF97B8DFA802F3D88963B31E45A0AE8C4A09485FB9579BF1E7F7303119A
        B6125AB69355EFDB93D2F2FB7998DB0518BB5D98E92D86F171298CBFBB564FBD
        6ECCEE2B41D4E7C430EF48020E0A6B3056BDE9B8D1F40E198DDB88D0B28DD056
        4B682CFF8951BBC958BA51B7EA45CCBEE9C260512EEE16666168532E06574B45
        3918DABCB8C4D9999B8B41F10DCCBEA9BE1A7FA78EAC6D6F11A14926347908AD
        3E8A877DAA51EB4E394D880725B05A1EC31E0706F91C443CDCEA6A89F706E56C
        8C546D6C9ED822D283F2627A50514284CE90ADAE06426788AC7A71B7515B9C92
        30F17A09CCCF2F761C2A9729EB9E4983D21A8C2879A72D3D4056B89ECCA09FCC
        A09F08ED958BEAAE26B4969151EBEA7BB4EC24EA3DCF0F5276E09EFCC68DD90A
        FE0554FD86505945A8AC26545613A1BD79511D2D848E1D94686D24A689A7983F
        3569165AF224E42AC00D7B72302CE77C3917AEFB69A2BD9DD0D242686E4E8AD0
        DEBD445D84CE5D848E2E32831E323557DA7660A1255F0DC861D981A8EC3832A2
        3A7F94D8D14AD8F507427717A1BB3BA9E50F308322596185CC7AEF56E677B1A5
        1DCFB3467258E630ECC945B42CBFE97E45118DAA4E624D61C27BEF3FE909AB77
        E108F85533287FB4B0A936FCEEF97DC3937B7258E610F539FEF1C057F0FA5879
        21DDAFD848230AF7B4802A59211F59BA681FA2EBC2AF982EFE91694284F9DD48
        24B3DB910E29A78245152E1651B83D232A97375EEDA058C57A1A2D2BA4B1F2A2
        D5004CFB1BE22516E04B5880FF2011F2F4313F7F23EA758E0C7B1C9311859B8C
        28DC5854E56E4554EE6C54E57647144E8D7AB997A32A47A35E8EC6AB1C3451BE
        EEB100FF3F00B99E2018E3ABBB8E0000000049454E44AE426082}
      Transparent = True
      TabOrder = 13
      OnClick = E1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
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
    object pgravar: TFlatPanel
      Left = 6
      Top = 1
      Width = 157
      Height = 543
      ParentColor = True
      Visible = False
      ColorHighLight = 5460819
      ColorShadow = 5460819
      TabOrder = 0
      object bgravar: TAdvGlowButton
        Left = 30
        Top = 321
        Width = 97
        Height = 58
        Caption = 'Gravar'
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
        OnClick = bgravarClick
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
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
        Layout = blGlyphTop
      end
      object bcancelar: TAdvGlowButton
        Left = 30
        Top = 261
        Width = 97
        Height = 58
        Caption = 'Cancelar'
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
        OnClick = bcancelarClick
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
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
        Layout = blGlyphTop
      end
      object bincluir_item: TAdvGlowButton
        Left = 30
        Top = 21
        Width = 97
        Height = 58
        Caption = 'Incluir Item'
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
        TabOrder = 2
        OnClick = bincluir_itemClick
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
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
        Layout = blGlyphTop
      end
      object balterar_item: TAdvGlowButton
        Left = 30
        Top = 81
        Width = 97
        Height = 58
        Caption = 'Alterar Item'
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
        TabOrder = 3
        OnClick = balterar_itemClick
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
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
        Layout = blGlyphTop
      end
      object bexcluir_item: TAdvGlowButton
        Left = 30
        Top = 141
        Width = 97
        Height = 58
        Caption = 'Excluir Item'
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
        TabOrder = 4
        OnClick = bexcluir_itemClick
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
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
        Layout = blGlyphTop
      end
      object BitBtn6: TAdvGlowButton
        Left = 30
        Top = 201
        Width = 97
        Height = 58
        Caption = 'Finalizar Itens'
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
          1F90000008C24944415478DAB4D9696C93F71D07F09F547552274DAAE834697B
          31B548DB54101347F238818427A79FC75742136E68D731CEED45A58DAAB0B253
          DA56AD95A00C818F1012C841623F8F9D832379EC3C0EE1CAE1C776681212AE96
          ABDCD0244EE21C7CF7C2E0D8490889431FE9AB478F65F9F9E8F7FCAFE76F6221
          536496A29ED86117F15E81B4ED55C4753A48AB089475B19A0C3E91B2BEAA228D
          57245EB1BDCB7B6D7FE0BC423EE7135C9C62BBCE29B66E4EB175731EDB6DB55F
          38C57985225EB16DE7BDE27C8D5720AD4F24832292AEAD92F46D95A46B1549DB
          56411A8F406C9F14BAF7180F4D1598DD758CB27CF6595ABFB893F70A1D9C6243
          381E2BA2AE151BB8162B38CFE835EF15AEF25EE15F06457C5BD75E4586F6AA57
          00ECA822AEAB82748AF0BAF682E3338D223C514F849962D48A15BCC736C4F945
          A3A1B5E22DDD05FBCC80BAF66AE22E3A0C9AE6F2CBEA162BD431C2A29136A83D
          56702DD6477CABF0A1AEAD6A726032E470922053124E110B99B85691B41EF19F
          9C6283DA3373D88BB01A45DCC72B02B1832E4AC2294A8AF02443264A1D91A3C2
          8ED4131B7411E7138AF8C6F2A876F4BD209BCBC1B558A5948044EC48FD380F6D
          B82287B3F9EB065A7545A274C55AFC7DA2264A9AA7BC7EF9A51ADAF24D439489
          F40137E99E6559E01465B756FE437DEE68740FF50AE02E5682EBAC0C9D679ACE
          4A703E21AAF7ABCF97214B7194BCD75D4FBA403DE9026ED207DC44FAAF2B43B9
          514DE9D72B52D23DE5E0231FABF7D90F9D290577BA24749E694E9740A308E0FD
          E2E830E4B121A3A51C69D71C1FEA6F54875D9473A58672AE4AB4A2FDF86BDA33
          65F7D51E2B386F04B0AB0A9CBB08DA0FB641BB6A53E83C83E8D66E8166D526B0
          8E03E0AE1C83C62746779A334791DB76ECADDC6B12E55CA921CABAEBA4EC7B32
          F15D959FA91BCBC6B78F4B55E0E423D0E66C4076F606A4F06B3097E13197E191
          909A8BAC159BA1CBD900ED04C95EB919C9992BC3DF5FAA5E8565391BA133FC06
          CC912F90E02981D66F8F46369641DD597134FB6E1D65DF7512ADF455D14A6FE5
          1B9A16DB50A6778206FCBC826BB780D5ACC56F3FFA14BB4D85D8632AC4C63FFE
          152ACD2AE8D76F8366CDE6A8E8D76F838A5F89D55BFE843DA642EC361562F3F6
          BF2145B70EBA151BB1B8EC4BCC6FC8C312F7A128A4DA6B03D7548EE58A63CE2A
          7F15516EDB31D2F91D3B333DE513F7B008E09C7835769B8EE0F9F1F071371666
          E6E2E70B52318FCD8ACA6C2613BF48E0D0D67935FCFD83A522DE65B83070D1B9
          022C3CB17F1C32D36385D62F1EC86D3B46A4F78AC42BC28D17CE1211C05F276A
          F19FBD1600C0E0D05300C0A9F30A4C87AD28B59F888AB9C80657431300203834
          0200F85F7E09E62DD6450119C93C0EA9F658C12BC2777AAFF83A697CC2EC49C7
          A831C07F7F190206FA07D11318C0CB8EDEBE207AFB820080BD078B2704BE10E9
          13B288F70A1FC502EC1B180ADFFC6509F40FBE143816C9FB44F08ACD42BC4F2C
          9A743A8B11D8D317048240B07F08BDFDC12901C755D26F7713E717EBB916EB2B
          03F6F405D11B08024378867C8AE0C0F0948161A49C0FED054717718AEDE6AB7A
          C43D11EDADE3F103A89A8A61FEC60F847C53063292198B4EECC792FA430F8853
          6C7DB1027B0203C020801120F0BC724F814BDD8F91D4528A9F9D36E2270DFB71
          F6C1AD690319C98CB81A636FECC0FE216004F03DBA0BFBEDAE70952E773F4662
          7309E69E2FC02FCFE5E3E3CE7A3C1AE88F09C848E65EE23CB66F39EFF4814F87
          9FC2F3E80E129A8BC355BA13E845527329E69D2FC0DB672CD8D5D5003C053084
          58818F487D413CC3354FBF9300C0D19B1D9855BF0F0B1A0F83576CC8F2DAB1B0
          F1F0286E04A39D65DA40131867DE15E2FCE2D1587A7130380C0C03A5373BF0AB
          7307B1B0F10816379760F6D93C7C1A81EB0E0C4C791C1C0B54392DA78957844F
          629D49069F0D1FC537DB31FB6C1E7EDA601C879BCE401D9978C98C04A7F93069
          7CE29C987B71DF0082FDA106B6FB5A0BB6B64B21DCE0286E26C04457DE1AD278
          05E214DB8358C7C19EBE010CF40F01410041607860240A172B9091CC838CCBF2
          43CA69AB26ADDFFEF954965B2F1AA89F57726860183D7D0331CFC5E1EAD59AA1
          729A4B12EBF288967B1C94D322FE986FB286168B9300E7323CBED85F80580F53
          91157354FC4B8016C44B07B0D8758049AA3313E96F9E24C3AD5A5277382CEAA6
          B249810B920CF8FBE7FBF1F0D113DCBC731FD76FDF9B526E7C7B1F0F1F3FC17F
          F71FC2FCE4AC498171B50790E02CAC4D758B9422DB8896DD72D2B25B32BD77E9
          E48FF873E5C1717B2F11406DEEEFA05BB71586F5DBA09F660CEFFF1EBA755BA1
          5BB96952607CED3E24D515BCB3D46DA564B99428A7DD4EB9ED76CAE9AC20EEA2
          B83ABD65CC6BE7E56A70AEC3D06BDE4776C67A68D5EB90C6AE405ACA0AA44F23
          69EC0A68D4EBB08CFB005919EBB0A4640F1635168EA99E1189AEE29DA96E2BB1
          7231B1720991B6DB194A8F930C3D75A46FAD3073916F77ED15E0CF96227DD70E
          A47EBC1DE97FD989F45DB127E3CF3B90B1F31324D8F721AE213F625839009564
          9459B99252E41A62E5E3C4CAC789365CAD0F67CBF5D3B4B6AB96329ACA9CE145
          ACC70A4DAB1DA9171D5870BE000BCE1E425C6321169D8F318DA1C4D759C0D498
          22ABD791E43AF85A9A3B9F58392F1CCA0CCAA31974535AD04D29BD12713EA18E
          6B1ADD3CD27D55818C9672C4D59AB0A8D608C66501E39C41C28FD6084632B525
          BBAADF646517B1722DB1724D38B404F2989CA2A570137741246DB350A4F68CEE
          0BEA5A1DC8682E435C8D117135C697AD44A618E3099564FE015BE7A254F91CB1
          7243545EBC81E91349D75645EA0EC746BEB97CF0F906E6AB40C64B2630920909
          CEFC1D09CE83C448464AAEABA114B98158598ECAD4B6803DC23B9A567B3EEF09
          ED8ECE0C69824ACAB3273AF3E62F761590CA796806C0C85DFEAE6364F08AF11A
          9FB89757843B51C893C689D773D19F7DC748664BA2D39CBAC455488B9DF994E8
          3A442A67FE2B0246FF0DF106AFD80CFA0B15FB329ACB9C8C64E988AF35DD6324
          73F7B33C5049962E9564A95739CD66C66959CD4896592AC94C894E0B2D711550
          A2F3E09480FF1F0020910B7E3856372A0000000049454E44AE426082}
        Transparent = True
        TabOrder = 5
        OnClick = BitBtn6Click
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
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
        Layout = blGlyphTop
      end
    end
  end
  object ptotal: THeaderView
    Left = 254
    Top = 176
    Width = 257
    Height = 145
    AdaptiveColors = False
    BorderStyle = bsNone
    HeaderColor = 14657888
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    HeaderSize = 145
    ParentColor = False
    Visible = False
    object HeaderView2: THeaderView
      Left = 3
      Top = 1
      Width = 251
      Height = 142
      AdaptiveColors = False
      BorderStyle = bsNone
      Caption = 'Totaliza'#231#227'o do Pedido'
      Color = clSilver
      HeaderColor = 2211435
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindow
      HeaderFont.Height = -11
      HeaderFont.Name = 'Verdana'
      HeaderFont.Style = [fsBold]
      HeaderSize = 16
      ParentColor = False
      object Label8: TLabel
        Left = 66
        Top = 33
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pedido:'
      end
      object Label9: TLabel
        Left = 54
        Top = 57
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'Recebido:'
      end
      object Label10: TLabel
        Left = 74
        Top = 81
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Falta:'
      end
      object Button1: TButton
        Left = 234
        Top = 1
        Width = 17
        Height = 14
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object rpedido: TJvCalcEdit
        Left = 109
        Top = 30
        Width = 87
        Height = 21
        Margins.Left = 2
        Margins.Top = 1
        TabStop = False
        AutoSize = False
        Color = 15916445
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
      end
      object rrecebido: TJvCalcEdit
        Left = 109
        Top = 54
        Width = 87
        Height = 21
        Margins.Left = 2
        Margins.Top = 1
        TabStop = False
        AutoSize = False
        Color = 15916445
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
      end
      object rfalta: TJvCalcEdit
        Left = 109
        Top = 78
        Width = 87
        Height = 21
        Margins.Left = 2
        Margins.Top = 1
        TabStop = False
        AutoSize = False
        Color = 15916445
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
      end
      object bitbtn10: TAdvGlowButton
        Left = 79
        Top = 104
        Width = 111
        Height = 32
        Caption = 'Fechar'
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
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000000097048597300000EC400000EC401952B0E1B00000271494441544889
          B595CF4B545118869FD7B92B2504A145FE03D524D44C08416D74220C6A716F3F
          74D92A5C39D3A6949432312910E6EEDA15B472D10C41A510D63FA0F79242919B
          76B92842B268A3F3B5F028379D9944C7B339DC7BBEFBBCE73BF73BEF2733A3D6
          C816CA69A017C801278056B7B4022C02B3C05454F43FD762A89A40265F4A4B7A
          6466178126493233934432DEBD5F035E49BA1315FDA5FF0A64F2A57E605252B3
          FBF88DA49299CD4B5A76F1ED40A7A4C0CC7ADC267E9BD9401C064F6B0A640BE5
          5160C43DCE00856ABB4A0E778C21701EA800C351D19FD82190C9976E4A7A6266
          156054D27854F42BF5E089AC53921E98D92080A41B51D17FBE2590C9978E02F3
          EE58EEC56130B61B7015A187C0A0A455333B1587C117CF293E065A806949E37B
          813BCE087006E8923401F429932FA5CD6C0130491DF54A6E97599C941499D93A
          70CC03AE034DC0EBFDC201E230F8902D94DF03DDC0350FC8491250DE2F3C31CA
          927240B7071CB78D529A6BA0C09C63A63DA0CD65F0B58102CB8E79D803B07A86
          B4C7B1C9F4801F401B1BD7FF7B83F847DCFCCD033E0167812CB0D02081D36EFE
          E801B392CE015780670D1208DC3F7877E0176DD38B5E029725CD98D9A5380C2A
          890F0EC561B05A0D962D945351D15F4FC4A680B792BACC6C2A0E83BE4D2FBACD
          46D7EA917417D832BB5A708024DC71C6802EE0A7A421A86DD7F79D5DEFAA7C33
          F95293B3EB2127F4AF5D27521E35B31117346D66B7E230584AACB798D99F6D47
          980642493957FBC37118EC6C3809483F300934036BC034F0029807965D583BD0
          095C052E0029E017301015FDDA2D33B9AB036BFADB85805E49DD66D621A9D5C5
          AF008B92665DB5D42CEDBFC465552860CF4DD40000000049454E44AE426082}
        Transparent = True
        TabOrder = 4
        OnClick = BitBtn10Click
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
    end
  end
  object plocalizar2: THeaderView
    Left = 1108
    Top = 456
    Width = 766
    Height = 404
    AdaptiveColors = False
    BorderStyle = bsNone
    Caption = 'Rela'#231#227'o de Registros'
    HeaderColor = 2211435
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    HeaderSize = 15
    ParentColor = False
    Visible = False
    object DBGrid1: TDBGrid
      Left = 0
      Top = 15
      Width = 764
      Height = 387
      Align = alClient
      BorderStyle = bsNone
      DataSource = dspedido_produto
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#211'DIGO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#218'MERO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fornecedor'
          Title.Caption = 'FORNECEDOR'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 389
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_NOTA'
          Title.Caption = 'VALOR TOTAL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 101
          Visible = True
        end>
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 1013
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
    object Label20: TLabel
      Left = 59
      Top = 14
      Width = 172
      Height = 23
      Caption = 'Pedido de compra'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AdvMetroButton1: TAdvMetroButton
      Left = 4
      Top = 0
      Width = 49
      Height = 45
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
  object Pop1: TPopupMenu
    Left = 504
    Top = 576
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = balterarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = blocalizarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = bitbtn5Click
    end
    object CancelarPedido1: TMenuItem
      Caption = 'Cancelar Pedido'
      ShortCut = 115
      OnClick = BitBtn7Click
    end
    object FecharPedido1: TMenuItem
      Caption = 'Fechar Pedido'
      ShortCut = 121
      OnClick = BitBtn8Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
    object otalizar1: TMenuItem
      Caption = 'Totalizar'
      ShortCut = 122
      OnClick = BitBtn9Click
    end
    object E1: TMenuItem
      Caption = 'Email'
      ShortCut = 8261
      OnClick = E1Click
    end
  end
  object Pop2: TPopupMenu
    Left = 552
    Top = 576
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Incluiritem1: TMenuItem
      Caption = 'Incluir item'
      ShortCut = 116
      OnClick = bincluir_itemClick
    end
    object Excluiritem1: TMenuItem
      Caption = 'Excluir item'
      ShortCut = 46
      OnClick = bexcluir_itemClick
    end
    object AlterarItem1: TMenuItem
      Caption = 'Alterar Item'
      ShortCut = 118
      OnClick = balterar_itemClick
    end
    object Finalizar1: TMenuItem
      Caption = 'Finalizar'
      ShortCut = 122
      OnClick = bfinalizarClick
    end
  end
  object dspedido_produto2: TDataSource
    DataSet = frmmodulo.qrpedido_produto
    Left = 640
    Top = 640
  end
  object qrpedido_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000037')
    Params = <>
    Left = 304
    Top = 680
    object qrpedido_produtofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrpedido_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrpedido_produtoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrpedido_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrinventario_produtoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrpedido_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrpedido_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrpedido_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrpedido_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrinventario_produtoPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrpedido_produtoCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 50
    end
    object qrpedido_produtoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrpedido_produtoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrpedido_produtoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrpedido_produtoOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
  end
  object dspedido_produto: TDataSource
    DataSet = qrpedido_produto
    Left = 472
    Top = 608
  end
  object POP3: TPopupMenu
    Left = 576
    Top = 600
    object InciodoNome1: TMenuItem
      Caption = 'In'#237'cio do Nome'
      ShortCut = 112
    end
    object PartedoNome1: TMenuItem
      Caption = 'Parte do Nome'
      ShortCut = 113
    end
    object FecharLocalizao1: TMenuItem
      Caption = 'Fechar Localiza'#231#227'o'
      ShortCut = 27
      OnClick = FecharLocalizao1Click
    end
  end
  object qrpedido_item: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrpedido_itemCalcFields
    SQL.Strings = (
      'select * from c000038')
    Params = <>
    Left = 376
    Top = 680
    object qrpedido_itemCODPRODUTO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrpedido_itemCODBARRA: TStringField
      DisplayLabel = 'C'#243'd.Barras'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'CODBARRA'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODBARRA'
      KeyFields = 'CODPRODUTO'
      Size = 15
      Lookup = True
    end
    object qrpedido_itemproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrpedido_itemQTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_itemUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_itemTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_itemRECEBIDO: TFloatField
      DisplayLabel = 'Recebido'
      DisplayWidth = 9
      FieldName = 'RECEBIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_itemFALTA: TFloatField
      DisplayLabel = 'Falta'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'FALTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrpedido_itemCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrpedido_itemCODNOTA: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrpedido_itemunidade: TStringField
      FieldKind = fkLookup
      FieldName = 'unidade'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'UNIDADE'
      KeyFields = 'codproduto'
      Visible = False
      Size = 5
      Lookup = True
    end
    object qrpedido_itemreferencia: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'referencia'
      LookupDataSet = qrapoio2
      LookupKeyFields = 'CODPRODUTO'
      LookupResultField = 'CODIGO'
      KeyFields = 'CODPRODUTO'
      Visible = False
      Lookup = True
    end
  end
  object dspedido_item: TDataSource
    DataSet = qrpedido_item
    Left = 704
    Top = 640
  end
  object qrnf: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000037')
    Params = <>
    Left = 304
    Top = 576
    object qrnfCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnfNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrnfCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrinventarioDATA: TDateField
      FieldName = 'DATA'
    end
    object qrnfCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrnfTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrnfITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnfSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrinventarioPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrnfCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 50
    end
    object qrnfOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrnfOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrnfOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrnfOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 304
    Top = 624
  end
  object qrgrade_pedido: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000039')
    Params = <>
    Left = 368
    Top = 576
  end
  object fspedido: TfrxDBDataset
    UserName = 'fspedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'fornecedor=fornecedor'
      'CODIGO=CODIGO'
      'NUMERO=NUMERO'
      'CFOP=CFOP'
      'DATA=DATA'
      'CODFORNECEDOR=CODFORNECEDOR'
      'TOTAL_NOTA=TOTAL_NOTA'
      'ITENS=ITENS'
      'SITUACAO=SITUACAO'
      'PREVISAO=PREVISAO'
      'CONDPGTO=CONDPGTO'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4')
    DataSet = frmmodulo.qrpedido_produto
    BCDToCurrency = False
    Left = 160
    Top = 616
  end
  object fspedido_item: TfrxDBDataset
    UserName = 'fspedido_item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'CODBARRA=CODBARRA'
      'produto=PRODUTO'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'RECEBIDO=RECEBIDO'
      'FALTA=FALTA'
      'CODIGO=CODIGO'
      'CODNOTA=CODNOTA'
      'unidade=UNIDADE'
      'referencia=referencia')
    DataSet = qrpedido_item
    BCDToCurrency = False
    Left = 192
    Top = 616
  end
  object fspedido_fornecedor: TfrxDBDataset
    UserName = 'fspedido_fornecedor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'FAX=FAX'
      'CONTATO1=CONTATO1'
      'CONTATO2=CONTATO2'
      'CELULAR1=CELULAR1'
      'CELULAR2=CELULAR2'
      'EMAIL=EMAIL'
      'HOMEPAGE=HOMEPAGE'
      'CNPJ=CNPJ'
      'IE=IE'
      'BANCO=BANCO'
      'AGENCIA=AGENCIA'
      'CONTA=CONTA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'DATA=DATA'
      'TIPO=TIPO'
      'ASSISTENCIA_TECNICA=ASSISTENCIA_TECNICA')
    DataSet = qrpedido_fornecedor
    BCDToCurrency = False
    Left = 216
    Top = 616
  end
  object qrpedido_fornecedor: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrpedido_itemCalcFields
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 376
    Top = 624
  end
  object fxpedido: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 39591.739975405100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure npaginaOnAfterData(Sender: TfrxComponent);'
      'begin'
      '  if COPY(npagina.text,1,1) <> '#39'1'#39' then'
      '  begin'
      '    pagefooter1.printonfirstpage := false;'
      
        '    NCONTINUA.VISIBLE := TRUE;                                  ' +
        '          '
      '  end'
      '  else'
      '  begin'
      '    pagefooter1.printonfirstpage := true;'
      
        '    NCONTINUA.VISIBLE := FALSE;                                 ' +
        '                                   '
      '  end;  '
      'end;'
      ''
      'BEGIN'
      'END.            ')
    Left = 848
    Top = 592
    Datasets = <
      item
      end
      item
      end
      item
      end
      item
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
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 7.800000000000000000
      RightMargin = 8.200000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      OnAfterPrint = 'Page2OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Shape11: TfrxShapeView
          Top = 64.929190000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          Left = 5.559060000000000000
          Top = 66.708720000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 64.252010000000000000
          Top = 66.708720000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 404.409710000000000000
          Top = 66.708720000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 464.882190000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 551.811380000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O-R$')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 638.740570000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL-R$')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 385.512060000000000000
          Top = 1.000000000000000000
          Width = 347.716760000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'OR'#199'AMENTO N'#186': [fsvenda."CODIGO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 1.000000000000000000
          Top = 1.000000000000000000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[fxemitente."FANTASIA"]  ')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 53.913420000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 408.189240000000000000
          Top = 66.141732280000000000
          Height = 457.322834645669000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 449.764070000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 551.811380000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 642.520100000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object npagina: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000001000
          Width = 3.779530000000000000
          Height = 11.338590000000000000
          Visible = False
          OnAfterData = 'npaginaOnAfterData'
          DataField = 'LINHA9'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA9"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 1.133858267716540000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 37.795300000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          Left = 0.755905510000000000
          Top = 22.677180000000000000
          Width = 442.205010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CODIGO"]  [FSCLIENTE."NOME"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 449.764070000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Top = 15.118120000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 566.929500000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 570.709030000000000000
          Top = 15.118120000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Identidade / Insc.Estadual')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 661.417750000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Data da Compra')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 664.197280000000000000
          Top = 23.677180000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."DATA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 452.543600000000000000
          Top = 24.456710000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CPF"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 568.709030000000000000
          Top = 24.677180000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'RG'
          DisplayFormat.DecimalSeparator = ','
          FlowTo = fxpedido.Memo1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."RG"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1.133858270000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 245.669450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 2.779530000000000000
          Top = 44.354360000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."ENDERECO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 3.000000000000000000
          Top = 53.692949999999990000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'BAIRRO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."BAIRRO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 249.448980000000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade/UF')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 355.275820000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 245.669450000000000000
          Top = 49.133889999999990000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CIDADE"] / [FSCLIENTE."UF"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 359.055350000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 358.055350000000000000
          Top = 44.354360000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DataField = 'COMPLEMENTO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."COMPLEMENTO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 502.677490000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 507.457020000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Telefones')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 506.457020000000000000
          Top = 44.354360000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[FSCLIENTE."TELEFONE1"]  [FSCLIENTE."TELEFONE2"]  [FSCLIENTE."CE' +
              'LULAR"]')
          ParentFont = False
        end
        object Line23: TfrxLineView
          Left = 623.622450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          Left = 625.401980000000000000
          Top = 39.795300000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Caixa:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 623.622450000000000000
          Top = 51.913420000000000000
          Width = 109.606370000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo100: TfrxMemoView
          Left = 659.638220000000000000
          Top = 39.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'CODCAIXA'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."CODCAIXA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 625.401980000000000000
          Top = 53.133889999999990000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 660.417750000000000000
          Top = 53.133889999999990000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'vendedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."vendedor"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 119.023929610000000000
        Top = 238.110390000000000000
        Width = 733.228820000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Shape1: TfrxShapeView
          Left = 0.377952760000000000
          Top = 1.559059999999988000
          Width = 732.472440940000000000
          Height = 116.409448818898000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
          Frame.Width = 0.100000000000000000
        end
        object Memo41: TfrxMemoView
          Left = 514.015713860000000000
          Top = 23.685246850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 514.015713860000000000
          Top = 42.582896850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ACR'#201'SCIMOS:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 514.015713860000000000
          Top = 63.480546850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 657.637778190000000000
          Top = 21.905716849999980000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataField = 'DESCONTO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."DESCONTO"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 657.637778190000000000
          Top = 40.803366849999970000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataField = 'ACRESCIMO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."ACRESCIMO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 657.637778190000000000
          Top = 61.701016849999970000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
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
            '[fsvenda."TOTAL"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 514.015713860000000000
          Top = 4.787689610000001000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DOS PRODUTOS:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 657.637778190000000000
          Top = 3.008159610000007000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataField = 'SUBTOTAL'
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
            '[fsvenda."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Top = 3.551449609999992000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Condi'#231#245'es de Pagamento:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 117.165430000000000000
          Top = 2.551449609999992000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA7'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 0.220470000000000000
          Top = 17.890039609999970000
          Width = 461.102660000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo59: TfrxMemoView
          Left = 210.992270000000000000
          Top = 3.551449609999992000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimentos ('#224' prazo)')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 5.559079530000000000
          Top = 19.637761109999980000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Dinheiro:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 5.559079530000000000
          Top = 33.401540630000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cheque '#224' Vista:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 5.559079530000000000
          Top = 48.740123309999720000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cheque '#224' Prazo:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 5.559079530000000000
          Top = 64.503897960000010000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cart'#227'o de D'#233'bito:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 5.559060000000000000
          Top = 79.866100239999920000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cart'#227'o de Cr'#233'dito:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 109.606387090000000000
          Top = 19.637761109999980000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_DINHEIRO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_DINHEIRO"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 109.606387090000000000
          Top = 33.401540630000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CHEQUEAV'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CHEQUEAV"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 109.606387090000000000
          Top = 48.740123309999720000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CHEQUEAP'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CHEQUEAP"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 109.606370000000000000
          Top = 64.503897960000010000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CARTAODEB'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CARTAODEB"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 109.606370000000000000
          Top = 79.866100239999920000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CARTAOCRED'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CARTAOCRED"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 5.559060000000000000
          Top = 95.449099610000010000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Credi'#225'rio:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 110.606370000000000000
          Top = 95.449099610000010000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CREDIARIO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CREDIARIO"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 461.102660000000000000
          Top = 1.645659529999989000
          Height = 117.543311970000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line10: TfrxLineView
          Top = 1.000000000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line1: TfrxLineView
          Left = 733.228820000000000000
          Top = 79.370130000000010000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 204.094620000000000000
          Top = 17.763779529999990000
          Height = 101.291338582677000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line9: TfrxLineView
          Left = 733.228820000000000000
          Top = 60.472480000000010000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 733.228820000000000000
          Top = 41.574830000000020000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 733.228820000000000000
          Top = 22.677180000000020000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 642.520100000000000000
          Top = 2.023573230000011000
          Height = 77.480314960000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 468.661720000000000000
          Top = 106.047310000000000000
          Width = 253.228434330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Cliente')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 211.653680000000000000
          Top = 22.677180000000020000
          Width = 154.960730000000000000
          Height = 90.708720000000000000
          DataField = 'TEXTO_GRANDE'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."TEXTO_GRANDE"]')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 15.496065430000000000
        Top = 162.519790000000000000
        Width = 733.228820000000000000
        PrintIfDetailEmpty = True
        RowCount = 28
        Stretched = True
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.779529999999994000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataField = 'CODPRODUTO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[fsvenda_produto."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 60.472480000000000000
          Top = 1.779529999999994000
          Width = 340.157700000000000000
          Height = 11.338590000000000000
          DataField = 'PRODUTO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[fsvenda_produto."PRODUTO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 415.748300000000000000
          Top = 1.779529999999994000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'NUMERACAO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsvenda_produto."NUMERACAO"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 459.102660000000000000
          Top = 1.779529999999994000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'QTDE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda_produto."QTDE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 557.370440000000000000
          Top = 1.779529999999994000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'UNITARIO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda_produto."UNITARIO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 648.079160000000000000
          Top = 1.779529999999994000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'TOTAL'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda_produto."TOTAL"]')
          ParentFont = False
        end
      end
      object NCONTINUA: TfrxMemoView
        Left = 90.708720000000000000
        Top = 461.102660000000000000
        Width = 291.023810000000000000
        Height = 18.897650000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '*** CONTINUA NA PR'#211'XIMA P'#193'GINA ***')
        ParentFont = False
      end
      object Line3: TfrxLineView
        Top = 415.748300000000000000
        Width = 733.228820000000000000
        Color = clBlack
        Diagonal = True
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Pedido de Compra'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 824
    Top = 704
  end
  object qrapoio: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 680
    Top = 600
  end
  object PDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 608
    Top = 616
  end
  object qrapoio2: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from fornecedor_codigo')
    Params = <>
    Left = 760
    Top = 552
    object qrapoio2CODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Required = True
      Size = 6
    end
    object qrapoio2CODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrapoio2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrapoio2PRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
end

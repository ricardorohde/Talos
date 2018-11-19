object frmCliente_consulta: TfrmCliente_consulta
  Left = 3
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmCliente_consulta'
  ClientHeight = 583
  ClientWidth = 790
  Color = 12615680
  Constraints.MinHeight = 532
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 583
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 24
    ExplicitWidth = 185
    ExplicitHeight = 145
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 786
      Height = 579
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 185
      ExplicitHeight = 145
      object pnFundo: TPanel
        Left = 2
        Top = 2
        Width = 782
        Height = 575
        Align = alClient
        BevelOuter = bvNone
        Color = 6960384
        ParentBackground = False
        TabOrder = 0
        OnClick = pnFundoClick
        ExplicitLeft = -609
        ExplicitTop = -442
        ExplicitWidth = 790
        ExplicitHeight = 583
        object lb_status: TRzLabel
          Left = 31
          Top = 550
          Width = 410
          Height = 25
          AutoSize = False
          Caption = 'Informe o C'#243'digo, CPF ou Nome do Cliente...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          ShadowColor = clBlack
          TextStyle = tsShadow
        end
        object RzLabel1: TRzLabel
          Left = 30
          Top = 100
          Width = 79
          Height = 29
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          ShadowColor = clBlack
        end
        object lb_cliente: TRzLabel
          Left = 30
          Top = 19
          Width = 312
          Height = 45
          Caption = 'Consulta de Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -37
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          ShadowColor = clBlack
        end
        object pn_cliente_info: TFlatPanel
          Left = 31
          Top = 156
          Width = 735
          Height = 378
          Color = clWhite
          Visible = False
          ColorHighLight = clWhite
          ColorShadow = clWhite
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 16
            Width = 88
            Height = 16
            Caption = 'Nome......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_nome: TLabel
            Left = 104
            Top = 16
            Width = 8
            Height = 16
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 8
            Top = 32
            Width = 88
            Height = 16
            Caption = 'CPF/CNPJ..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_cpf: TLabel
            Left = 104
            Top = 32
            Width = 8
            Height = 16
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 8
            Top = 48
            Width = 88
            Height = 16
            Caption = 'Endere'#231'o..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_endereco: TLabel
            Left = 104
            Top = 48
            Width = 600
            Height = 16
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 8
            Top = 64
            Width = 88
            Height = 16
            Caption = 'Bairro....:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_bairro: TLabel
            Left = 104
            Top = 64
            Width = 600
            Height = 16
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 8
            Top = 80
            Width = 88
            Height = 16
            Caption = 'Complement:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_complemento: TLabel
            Left = 104
            Top = 80
            Width = 600
            Height = 16
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 8
            Top = 96
            Width = 88
            Height = 16
            Caption = 'Cidade/UF.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_cidade: TLabel
            Left = 104
            Top = 96
            Width = 600
            Height = 16
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 8
            Top = 128
            Width = 88
            Height = 16
            Caption = 'Cadastro..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_cadastro: TLabel
            Left = 104
            Top = 128
            Width = 600
            Height = 16
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 8
            Top = 144
            Width = 88
            Height = 16
            Caption = 'Limite....:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_limite: TLabel
            Left = 104
            Top = 144
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 8
            Top = 160
            Width = 88
            Height = 16
            Caption = 'Utilizado.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_utilizado: TLabel
            Left = 104
            Top = 160
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 8
            Top = 176
            Width = 88
            Height = 16
            Caption = 'Dispon'#237'vel:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_disponivel: TLabel
            Left = 104
            Top = 176
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_atualizado: TLabel
            Left = 136
            Top = 352
            Width = 289
            Height = 16
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 8
            Top = 352
            Width = 120
            Height = 16
            Caption = 'Atualizado em :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit1: TEdit
            Left = 0
            Top = 312
            Width = 0
            Height = 21
            TabOrder = 0
            OnExit = Edit1Exit
            OnKeyPress = Edit1KeyPress
          end
        end
        object grid: TNextGrid
          Left = 30
          Top = 155
          Width = 735
          Height = 378
          Touch.InteractiveGestures = [igPan, igPressAndTap]
          Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
          AppearanceOptions = [aoHighlightSlideCells]
          BorderStyle = bsNone
          Caption = ''
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          GridLinesStyle = lsVerticalOnly
          HideScrollBar = False
          Options = [goGrid, goHeader, goSelectFullRow]
          ParentFont = False
          TabOrder = 1
          TabStop = True
          OnEnter = gridEnter
          OnKeyPress = gridKeyPress
          object NxNumberColumn1: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 49
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            Header.Caption = 'C'#243'digo'
            Header.Alignment = taCenter
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            ParentFont = False
            Position = 0
            SortType = stNumeric
            Width = 49
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxTextColumn1: TNxTextColumn
            DefaultWidth = 334
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            Header.Caption = 'Nome'
            Header.Alignment = taCenter
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            ParentFont = False
            Position = 1
            SortType = stAlphabetic
            Width = 334
          end
          object NxTextColumn2: TNxTextColumn
            DefaultWidth = 134
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            Header.Caption = 'CPF/CNPJ'
            Header.Alignment = taCenter
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            ParentFont = False
            Position = 2
            SortType = stAlphabetic
            Width = 134
          end
          object NxTextColumn3: TNxTextColumn
            DefaultWidth = 201
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            Header.Caption = 'Endere'#231'o'
            Header.Alignment = taCenter
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            ParentFont = False
            Position = 3
            SortType = stAlphabetic
            Width = 201
          end
        end
        object ed_cliente: TRzEdit
          Left = 135
          Top = 102
          Width = 626
          Height = 31
          Text = ''
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameStyle = fsNone
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 2
          OnEnter = ed_clienteEnter
          OnKeyPress = ed_clienteKeyPress
        end
      end
    end
  end
end

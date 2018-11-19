object frmempresa: Tfrmempresa
  Left = 157
  Top = 74
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'EMPRESAS/EMITENTES | Ficha de Cadastro'
  ClientHeight = 532
  ClientWidth = 872
  Color = 11647157
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 530
    Width = 872
    Height = 2
    Align = alBottom
    ExplicitTop = 560
    ExplicitWidth = 775
  end
  object pficha: TPanel
    Left = 0
    Top = 48
    Width = 872
    Height = 482
    Align = alClient
    BevelOuter = bvNone
    Color = 5460819
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -48
    ExplicitTop = 42
    object PageView1: TPageView
      Left = 0
      Top = 49
      Width = 767
      Height = 446
      ActivePage = PageSheet1
      ActivePageIndex = 0
      AdaptiveColors = True
      BackgroundColor = clSilver
      BackgroundKind = bkSolid
      Indent = 2
      Margin = 0
      Options = [pgBoldActiveTab, pgTopBorder]
      ShowTabs = False
      Spacing = 0
      TabHeight = 17
      TabOrder = 0
      TabStyle = tsWhidbey
      TopIndent = 3
      object PageSheet1: TPageSheet
        Left = 0
        Top = 0
        Width = 767
        Height = 446
        Caption = 'Empresa'
        Color = 5460819
        DisplayMode = tdGlyph
        ImageIndex = 0
        Margin = 0
        PageIndex = 0
        ParentColor = False
        TabColor = clWindow
        TabWidth = 0
        TransparentColor = clNone
        object cxGroupBox2: TcxGroupBox
          Left = 582
          Top = -16
          PanelStyle.Active = True
          ParentFont = False
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'SharpPlus'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'SharpPlus'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'SharpPlus'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'SharpPlus'
          TabOrder = 1
          Transparent = True
          Height = 137
          Width = 180
          object DBImage1: TDBImage
            Left = 8
            Top = 16
            Width = 162
            Height = 95
            DataField = 'LOGO'
            DataSource = dsemitente
            Stretch = True
            TabOrder = 0
          end
          object AdvGlowButton3: TAdvGlowButton
            Left = 3
            Top = 113
            Width = 65
            Height = 20
            Caption = 'Incluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Transparent = True
            TabOrder = 1
            OnClick = AdvGlowButton3Click
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
          object AdvGlowButton4: TAdvGlowButton
            Left = 101
            Top = 112
            Width = 65
            Height = 20
            Caption = 'Deletar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Transparent = True
            TabOrder = 2
            OnClick = AdvGlowButton4Click
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
        object cxGroupBox4: TcxGroupBox
          Left = -1
          Top = 285
          Ctl3D = True
          PanelStyle.Active = True
          ParentCtl3D = False
          ParentFont = False
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2010Black'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2010Black'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2010Black'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2010Black'
          TabOrder = 3
          Transparent = True
          Height = 145
          Width = 763
          object Label45: TLabel
            Left = 15
            Top = 8
            Width = 20
            Height = 13
            Caption = 'CRT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 52
            Top = 54
            Width = 113
            Height = 13
            Caption = 'Micro Empresa Estadual'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 52
            Top = 81
            Width = 91
            Height = 13
            Caption = 'Contribuinte de IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel
            Left = 52
            Top = 108
            Width = 101
            Height = 13
            Caption = 'Optante pelo Simples'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label16: TLabel
            Left = 208
            Top = 54
            Width = 53
            Height = 13
            Caption = 'Utiliza ECF '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 208
            Top = 81
            Width = 98
            Height = 13
            Caption = 'Substituto Tribut'#225'rio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel
            Left = 211
            Top = 108
            Width = 132
            Height = 13
            Caption = 'Optante pelo Super Simples'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label15: TLabel
            Left = 353
            Top = 99
            Width = 70
            Height = 13
            Caption = 'Taxa de IPI %'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label18: TLabel
            Left = 353
            Top = 121
            Width = 72
            Height = 13
            Caption = 'Taxa de ISS %'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = 353
            Top = 77
            Width = 94
            Height = 13
            Caption = 'Taxa de COFINS %'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label25: TLabel
            Left = 353
            Top = 54
            Width = 72
            Height = 13
            Caption = 'Taxa de PIS %'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object RzDBComboBox6: TRzDBComboBox
            Left = 15
            Top = 23
            Width = 565
            Height = 21
            DataField = 'CRT'
            DataSource = dsempresa2
            Style = csDropDownList
            Color = 15916445
            Ctl3D = False
            FrameHotTrack = True
            FrameHotStyle = fsStatus
            FrameVisible = True
            ParentCtl3D = False
            TabOnEnter = True
            TabOrder = 0
            OnChange = RzDBComboBox6Change
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              '1 - SIMPLES NACIONAL'
              '2 - SIMPLES NACIONAL - EXCESSO DE SUBLIMITE DA RECEITA BRUTA'
              '3 - REGIME NORMAL')
            Values.Strings = (
              '1'
              '2'
              '3')
          end
          object eddesdobra: TRzDBComboBox
            Left = 15
            Top = 49
            Width = 33
            Height = 21
            DataField = 'EMPRESA_ESTADUAL'
            DataSource = dsempresa2
            CharCase = ecUpperCase
            Color = 15916445
            Ctl3D = False
            FrameHotTrack = True
            FrameHotStyle = fsStatus
            FrameVisible = True
            ParentCtl3D = False
            TabOrder = 1
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              'N'
              'S')
            Values.Strings = (
              'N'
              'S')
          end
          object RzDBComboBox2: TRzDBComboBox
            Left = 15
            Top = 76
            Width = 33
            Height = 21
            DataField = 'CONTRIBUINTE_IPI'
            DataSource = dsempresa2
            CharCase = ecUpperCase
            Color = 15916445
            Ctl3D = False
            FrameHotTrack = True
            FrameHotStyle = fsStatus
            FrameVisible = True
            ParentCtl3D = False
            TabOrder = 2
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              'N'
              'S')
            Values.Strings = (
              'N'
              'S')
          end
          object RzDBComboBox1: TRzDBComboBox
            Left = 15
            Top = 103
            Width = 33
            Height = 21
            DataField = 'OPTANTE_SIMPLES'
            DataSource = dsempresa2
            CharCase = ecUpperCase
            Color = 15916445
            Ctl3D = False
            FrameHotTrack = True
            FrameHotStyle = fsStatus
            FrameVisible = True
            ParentCtl3D = False
            TabOrder = 3
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              'N'
              'S')
            Values.Strings = (
              'N'
              'S')
          end
          object RzDBComboBox4: TRzDBComboBox
            Left = 171
            Top = 49
            Width = 33
            Height = 21
            DataField = 'ECF'
            DataSource = dsempresa2
            CharCase = ecUpperCase
            Color = 15916445
            Ctl3D = False
            FrameHotTrack = True
            FrameHotStyle = fsStatus
            FrameVisible = True
            ParentCtl3D = False
            TabOrder = 4
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              'N'
              'S')
            Values.Strings = (
              'N'
              'S')
          end
          object RzDBComboBox3: TRzDBComboBox
            Left = 171
            Top = 76
            Width = 33
            Height = 21
            DataField = 'SUBSTITUTO_TRIBUTARIO'
            DataSource = dsempresa2
            CharCase = ecUpperCase
            Color = 15916445
            Ctl3D = False
            FrameHotTrack = True
            FrameHotStyle = fsStatus
            FrameVisible = True
            ParentCtl3D = False
            TabOrder = 5
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              'N'
              'S')
            Values.Strings = (
              'N'
              'S')
          end
          object RzDBComboBox5: TRzDBComboBox
            Left = 171
            Top = 103
            Width = 33
            Height = 21
            DataField = 'OPTANTE_SUPER_SIMPLES'
            DataSource = dsempresa2
            CharCase = ecUpperCase
            Color = 15916445
            Ctl3D = False
            FrameHotTrack = True
            FrameHotStyle = fsStatus
            FrameVisible = True
            ParentCtl3D = False
            TabOrder = 6
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              'N'
              'S')
            Values.Strings = (
              'N'
              'S')
          end
          object RzDBEdit1: TRzDBEdit
            Left = 453
            Top = 95
            Width = 66
            Height = 21
            DataSource = dsempresa2
            DataField = 'IPI'
            Color = 15916445
            FrameHotTrack = True
            FrameHotStyle = fsFlat
            FrameVisible = True
            TabOrder = 7
            OnKeyPress = DBEdit1KeyPress
          end
          object RzDBEdit2: TRzDBEdit
            Left = 453
            Top = 117
            Width = 66
            Height = 21
            DataSource = dsempresa2
            DataField = 'ISS'
            Color = 15916445
            FrameHotTrack = True
            FrameHotStyle = fsFlat
            FrameVisible = True
            TabOrder = 8
            OnKeyPress = DBEdit1KeyPress
          end
          object RzDBEdit4: TRzDBEdit
            Left = 453
            Top = 73
            Width = 66
            Height = 21
            DataSource = dsempresa2
            DataField = 'COFINS'
            Color = 15916445
            FrameHotTrack = True
            FrameHotStyle = fsFlat
            FrameVisible = True
            TabOrder = 9
            OnKeyPress = DBEdit1KeyPress
          end
          object RzDBEdit3: TRzDBEdit
            Left = 453
            Top = 50
            Width = 66
            Height = 21
            DataSource = dsempresa2
            DataField = 'PIS'
            Color = 15916445
            FrameHotTrack = True
            FrameHotStyle = fsFlat
            FrameVisible = True
            TabOrder = 10
            OnKeyPress = DBEdit1KeyPress
          end
          object CBCreditoICMS: TDBCheckBox
            Left = 586
            Top = 26
            Width = 147
            Height = 17
            Caption = 'Permite Cr'#233'dito ICMS'
            DataField = 'PERMITE_CREDITO'
            DataSource = dsempresa2
            Enabled = False
            TabOrder = 11
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object v: TGroupBox
            Left = 525
            Top = 50
            Width = 233
            Height = 90
            Caption = 'Notas s'#233'rie D'
            Color = 16703704
            ParentBackground = False
            ParentColor = False
            TabOrder = 12
            object Label52: TLabel
              Left = 8
              Top = 13
              Width = 28
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'AIDF'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label54: TLabel
              Left = 76
              Top = 13
              Width = 54
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Inicio Bloco'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label55: TLabel
              Left = 153
              Top = 13
              Width = 54
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Final Bloco'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label56: TLabel
              Left = 8
              Top = 51
              Width = 54
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'N'#186' Nota D'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label57: TLabel
              Left = 76
              Top = 49
              Width = 41
              Height = 11
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Validade'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBEdit37: TDBEdit
              Left = 8
              Top = 28
              Width = 65
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'AIDF'
              DataSource = dsempresa2
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit38: TDBEdit
              Left = 76
              Top = 28
              Width = 74
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'NINICIAL'
              DataSource = dsempresa2
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit39: TDBEdit
              Left = 153
              Top = 28
              Width = 75
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'NFINAL'
              DataSource = dsempresa2
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit40: TDBEdit
              Left = 8
              Top = 66
              Width = 65
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'N_NF_D'
              DataSource = dsempresa2
              TabOrder = 3
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object JvDBMaskEdit1: TJvDBMaskEdit
              Left = 76
              Top = 66
              Width = 75
              Height = 21
              Color = 15916445
              DataField = 'VALIDADE'
              DataSource = dsempresa2
              MaxLength = 10
              TabOrder = 4
              EditMask = '99/99/9999;1; '
            end
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = -9
          Top = -19
          Caption = 'Dados da Empresa'
          PanelStyle.Active = True
          PanelStyle.OfficeBackgroundKind = pobkStyleColor
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = clOlive
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          Transparent = True
          Height = 283
          Width = 588
          object Label1: TLabel
            Left = 2
            Top = 24
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'C'#243'digo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 2
            Top = 48
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Nome:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 2
            Top = 72
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label21: TLabel
            Left = 2
            Top = 96
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label9: TLabel
            Left = 2
            Top = 120
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 66
            Top = 145
            Width = 23
            Height = 13
            Caption = 'CEP:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label19: TLabel
            Left = 2
            Top = 170
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Respons'#225'vel:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object LRG: TLabel
            Left = 2
            Top = 195
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'IE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label28: TLabel
            Left = 2
            Top = 219
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Atividade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label27: TLabel
            Left = 236
            Top = 193
            Width = 19
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'IM:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label3: TLabel
            Left = 233
            Top = 145
            Width = 46
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Telefone:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label20: TLabel
            Left = 342
            Top = 72
            Width = 69
            Height = 13
            Caption = 'Complemento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 379
            Top = 120
            Width = 17
            Height = 13
            Caption = 'UF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 478
            Top = 96
            Width = 28
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'IBGE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label44: TLabel
            Left = 340
            Top = 96
            Width = 75
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'C'#243'd.Municipio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 378
            Top = 144
            Width = 22
            Height = 13
            Caption = 'Fax:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label30: TLabel
            Left = 378
            Top = 170
            Width = 32
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CNAE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object LCPF: TLabel
            Left = 379
            Top = 194
            Width = 29
            Height = 13
            Caption = 'CNPJ:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label51: TLabel
            Left = 43
            Top = 245
            Width = 32
            Height = 13
            Caption = 'E-Mail:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label29: TLabel
            Left = 446
            Top = 26
            Width = 47
            Height = 13
            Caption = 'Abertura:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label14: TLabel
            Left = 379
            Top = 219
            Width = 38
            Height = 13
            Caption = 'RNTRC:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object rAtividade: TRzDBComboBox
            Left = 90
            Top = 216
            Width = 283
            Height = 21
            DataField = 'ATIVIDADE'
            DataSource = dsempresa2
            Style = csDropDownList
            CharCase = ecUpperCase
            Color = 15916445
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            FrameHotTrack = True
            FrameHotStyle = fsStatus
            FrameVisible = True
            ParentCtl3D = False
            ParentFont = False
            TabOnEnter = True
            TabOrder = 0
            Items.Strings = (
              'COM'#201'RCIO'
              'IND'#218'STRIA'
              'DISTRIBUIDORA')
            Values.Strings = (
              'COM'#201'RCIO'
              'IND'#218'STRIA'
              'DISTRIBUIDORA')
          end
          object DBEdit14: TDBEdit
            Left = 90
            Top = 191
            Width = 140
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'IE'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit7: TDBEdit
            Left = 279
            Top = 189
            Width = 94
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'INSC_MUNICIPAL'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit5: TDBEdit
            Left = 90
            Top = 166
            Width = 283
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'RESPONSAVEL'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit8: TDBEdit
            Left = 90
            Top = 141
            Width = 140
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CEP'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 8
            ParentFont = False
            TabOrder = 4
            OnEnter = DBEdit1Enter
            OnExit = DBEdit8Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit10: TDBEdit
            Left = 279
            Top = 141
            Width = 94
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'TELEFONE'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 5
            OnEnter = DBEdit1Enter
            OnExit = DBEdit10Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit6: TDBEdit
            Left = 130
            Top = 116
            Width = 243
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CIDADE'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = DBEdit1Enter
            OnExit = DBEdit6Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object AdvGlowButton1: TAdvGlowButton
            Left = 90
            Top = 114
            Width = 35
            Height = 27
            Hint = 'Pesquisa o Municipio,IBGE'
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
              F80000001974455874536F6674776172650041646F626520496D616765526561
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
              702E6969643A4531364445383142303532353131453539423332463334353036
              4241334139412220786D704D4D3A446F63756D656E7449443D22786D702E6469
              643A453136444538314330353235313145353942333246333435303642413341
              3941223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
              7374616E636549443D22786D702E6969643A4531364445383139303532353131
              453539423332463334353036424133413941222073745265663A646F63756D65
              6E7449443D22786D702E6469643A453136444538314130353235313145353942
              3332463334353036424133413941222F3E203C2F7264663A4465736372697074
              696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
              7061636B657420656E643D2272223F3ED4094A19000001F64944415478DAA495
              4D28445114C7DF68A24663A446333B2CC64793186964AC34642129918D05928D
              AD85B212C95AC9020B65E76B2162458C99EC7C2456234D528CC64764619EFF1D
              E7E59A9977EF1B73EAF7E6DE7BCEF99FFBEEDC7B9FA2AAAA22C0063AC02AB853
              7F2D0A76401F708A34F41CB9605CFD6BAFE0029C5301DE1680DD68010F8931BB
              04BD5430392E07B48043AE50BBAC402B17DC23593E9E4610A3BC11BD026E6E29
              9C1988F3CB7A461ADDE90A3C93D3FE0F719E7BD2B1F105A669B0D3808059E22F
              25AD23AD401E0DDC0892F2C10C088347B00EBC82F815D27428B4CFD3EE00C2C1
              BD76B27974729CE49F679D2DEAE8CD668813F4031FF77F1D08F23EC11B6B7C80
              27416001680635DC9876AA0382BC6D6DD6CC4E0DEE102F9D64CD7C82D8C4C631
              2B3F1657E4560742D4BE05C3202088FF620F56007B497128C62C0CDE411B8848
              625DEC61C25B04F1DBC0DA92040B7053FBC4C064A2A090ADD520AD67AD81F5D7
              AC52126BA5B84DD629A24E5092540FE2844B123B419AD5DAC09A8199E5D0CCAC
              1271ED6688F07791850663595E748C7D6DF6C9B7691739425988CF91C6A4DE07
              6794BBF8CA33102E06BB94BB28FB64F673BB65165408844BC018173F951C634A
              5449B532B00C7CD467876B0F5CD109657E3FB093FF1A0C80E31425C9AB578125
              F090E6AA7E011BA049A4F12DC00078362DC326251D8E0000000049454E44AE42
              6082}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = AdvGlowButton1Click
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
          object DBEdit12: TDBEdit
            Left = 90
            Top = 92
            Width = 251
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'BAIRRO'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit4: TDBEdit
            Left = 90
            Top = 68
            Width = 251
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'ENDERECO'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit2: TDBEdit
            Left = 90
            Top = 44
            Width = 490
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'FILIAL'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit1: TDBEdit
            Left = 90
            Top = 21
            Width = 73
            Height = 21
            Color = 15916445
            DataField = 'CODIGO'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit9: TDBEdit
            Left = 417
            Top = 68
            Width = 163
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'COMPLEMENTO'
            DataSource = dsempresa2
            TabOrder = 12
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object euf: TwwDBComboBox
            Left = 417
            Top = 116
            Width = 49
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'UF'
            DataSource = dsempresa2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'EX'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RR'
              'RO'
              'RJ'
              'RN'
              'RS'
              'SC'
              'SP'
              'SE'
              'TO')
            ItemIndex = 1
            Sorted = False
            TabOrder = 13
            UnboundDataType = wwDefault
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit17: TDBEdit
            Left = 509
            Top = 92
            Width = 71
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'IBGE'
            DataSource = dsempresa2
            TabOrder = 14
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object ecodmunicipio: TDBEdit
            Left = 417
            Top = 92
            Width = 57
            Height = 21
            Color = 15916445
            DataField = 'COD_MUNICIPIO_IBGE'
            DataSource = dsempresa2
            TabOrder = 15
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit11: TDBEdit
            Left = 417
            Top = 141
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'FAX'
            DataSource = dsempresa2
            MaxLength = 10
            TabOrder = 16
            OnEnter = DBEdit1Enter
            OnExit = DBEdit11Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object ecnae: TDBEdit
            Left = 417
            Top = 166
            Width = 125
            Height = 21
            Color = 15916445
            DataField = 'CNAE'
            DataSource = dsempresa2
            TabOrder = 17
            OnEnter = DBEdit1Enter
            OnExit = ecnaeExit
            OnKeyPress = DBEdit1KeyPress
          end
          object bcnae: TAdvGlowButton
            Left = 546
            Top = 153
            Width = 32
            Height = 34
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
              F80000001974455874536F6674776172650041646F626520496D616765526561
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
              702E6969643A4531364445383142303532353131453539423332463334353036
              4241334139412220786D704D4D3A446F63756D656E7449443D22786D702E6469
              643A453136444538314330353235313145353942333246333435303642413341
              3941223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
              7374616E636549443D22786D702E6969643A4531364445383139303532353131
              453539423332463334353036424133413941222073745265663A646F63756D65
              6E7449443D22786D702E6469643A453136444538314130353235313145353942
              3332463334353036424133413941222F3E203C2F7264663A4465736372697074
              696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
              7061636B657420656E643D2272223F3ED4094A19000001F64944415478DAA495
              4D28445114C7DF68A24663A446333B2CC64793186964AC34642129918D05928D
              AD85B212C95AC9020B65E76B2162458C99EC7C2456234D528CC64764619EFF1D
              E7E59A9977EF1B73EAF7E6DE7BCEF99FFBEEDC7B9FA2AAAA22C0063AC02AB853
              7F2D0A76401F708A34F41CB9605CFD6BAFE0029C5301DE1680DD68010F8931BB
              04BD5430392E07B48043AE50BBAC402B17DC23593E9E4610A3BC11BD026E6E29
              9C1988F3CB7A461ADDE90A3C93D3FE0F719E7BD2B1F105A669B0D3808059E22F
              25AD23AD401E0DDC0892F2C10C088347B00EBC82F815D27428B4CFD3EE00C2C1
              BD76B27974729CE49F679D2DEAE8CD668813F4031FF77F1D08F23EC11B6B7C80
              27416001680635DC9876AA0382BC6D6DD6CC4E0DEE102F9D64CD7C82D8C4C631
              2B3F1657E4560742D4BE05C3202088FF620F56007B497128C62C0CDE411B8848
              625DEC61C25B04F1DBC0DA92040B7053FBC4C064A2A090ADD520AD67AD81F5D7
              AC52126BA5B84DD629A24E5092540FE2844B123B419AD5DAC09A8199E5D0CCAC
              1271ED6688F07791850663595E748C7D6DF6C9B7691739425988CF91C6A4DE07
              6794BBF8CA33102E06BB94BB28FB64F673BB65165408844BC018173F951C634A
              5449B532B00C7CD467876B0F5CD109657E3FB093FF1A0C80E31425C9AB578125
              F090E6AA7E011BA049A4F12DC00078362DC326251D8E0000000049454E44AE42
              6082}
            TabOrder = 18
            OnClick = bcnaeClick
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
          object DBEdit15: TDBEdit
            Left = 417
            Top = 191
            Width = 163
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CNPJ'
            DataSource = dsempresa2
            TabOrder = 19
            OnEnter = DBEdit1Enter
            OnExit = DBEdit15Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit35: TDBEdit
            Left = 90
            Top = 241
            Width = 490
            Height = 21
            Color = 15916445
            DataField = 'EMAIL'
            DataSource = dsempresa2
            TabOrder = 20
            OnEnter = DBEdit1Enter
            OnExit = DBEdit15Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBDateEdit2: TJvDBDateEdit
            Left = 497
            Top = 21
            Width = 83
            Height = 21
            Margins.Left = 2
            Margins.Top = 1
            DataField = 'DATA_ABERTURA'
            DataSource = dsempresa2
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
            TabOrder = 21
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit36: TDBEdit
            Left = 423
            Top = 216
            Width = 157
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'RNTRC'
            DataSource = dsempresa2
            TabOrder = 22
            OnEnter = DBEdit1Enter
            OnExit = DBEdit15Exit
            OnKeyPress = DBEdit1KeyPress
          end
        end
        object cxGroupBox1: TcxGroupBox
          Left = 582
          Top = 120
          Caption = 'Sequ'#234'ncias'
          PanelStyle.Active = True
          ParentFont = False
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2007Green'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2007Green'
          TabOrder = 2
          Transparent = True
          Height = 177
          Width = 180
          object Label23: TLabel
            Left = 44
            Top = 20
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'S'#233'rie NF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label22: TLabel
            Left = 46
            Top = 41
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Seq. NF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label8: TLabel
            Left = 47
            Top = 64
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#250'mero:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label49: TLabel
            Left = 25
            Top = 108
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#250'mero CTe:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label50: TLabel
            Left = 38
            Top = 86
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'S'#233'rie CTe:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label58: TLabel
            Left = 30
            Top = 130
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'S'#233'rie MDFe:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label59: TLabel
            Left = 17
            Top = 151
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#250'mero MDFe:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBEdit3: TDBEdit
            Left = 91
            Top = 60
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'NUMERO'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit3Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit13: TDBEdit
            Left = 91
            Top = 38
            Width = 77
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'NOTAFISCAL'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit16: TDBEdit
            Left = 91
            Top = 16
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONHECIMENTO'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit34: TDBEdit
            Left = 91
            Top = 104
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'SEQ_CTE'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 3
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit33: TDBEdit
            Left = 91
            Top = 82
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'SERIE_CTE'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 4
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit41: TDBEdit
            Left = 91
            Top = 148
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'NUMERO_MDFE'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 5
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit42: TDBEdit
            Left = 91
            Top = 126
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'SERIE_MDFE'
            DataSource = dsempresa2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 6
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
        end
      end
      object PageSheet2: TPageSheet
        Left = 0
        Top = 0
        Width = 767
        Height = 446
        Caption = 'Contador'
        Color = 5460819
        DisplayMode = tdGlyph
        ImageIndex = 0
        Margin = 0
        PageIndex = 1
        ParentColor = False
        TabColor = clWindow
        TabWidth = 0
        TransparentColor = clNone
        object cxGroupBox5: TcxGroupBox
          Left = 4
          Top = 10
          PanelStyle.Active = True
          ParentFont = False
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          Transparent = True
          Height = 241
          Width = 757
          object Label31: TLabel
            Left = 12
            Top = 25
            Width = 34
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Nome:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            Left = 12
            Top = 52
            Width = 52
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label38: TLabel
            Left = 445
            Top = 52
            Width = 41
            Height = 13
            Caption = 'N'#250'mero:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label33: TLabel
            Left = 12
            Top = 77
            Width = 35
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label39: TLabel
            Left = 284
            Top = 77
            Width = 69
            Height = 13
            Caption = 'Complemento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label48: TLabel
            Left = 620
            Top = 102
            Width = 17
            Height = 13
            Caption = 'UF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label34: TLabel
            Left = 526
            Top = 102
            Width = 35
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'IBGE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label47: TLabel
            Left = 384
            Top = 102
            Width = 75
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'C'#243'd.Municipio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label46: TLabel
            Left = 12
            Top = 102
            Width = 39
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label40: TLabel
            Left = 12
            Top = 129
            Width = 23
            Height = 13
            Caption = 'CEP:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label35: TLabel
            Left = 194
            Top = 129
            Width = 52
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Telefone:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label41: TLabel
            Left = 387
            Top = 129
            Width = 22
            Height = 13
            Caption = 'Fax:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label36: TLabel
            Left = 12
            Top = 152
            Width = 31
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Email:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label37: TLabel
            Left = 12
            Top = 178
            Width = 26
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CRC:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label42: TLabel
            Left = 211
            Top = 178
            Width = 23
            Height = 13
            Caption = 'CPF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label43: TLabel
            Left = 384
            Top = 178
            Width = 76
            Height = 13
            Caption = 'CNPJ Escrit'#243'rio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBEdit18: TDBEdit
            Left = 70
            Top = 21
            Width = 611
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_NOME'
            DataSource = dsempresa2
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit19: TDBEdit
            Left = 70
            Top = 48
            Width = 353
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_ENDERECO'
            DataSource = dsempresa2
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit20: TDBEdit
            Left = 495
            Top = 45
            Width = 187
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_NUMERO'
            DataSource = dsempresa2
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit20Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit21: TDBEdit
            Left = 70
            Top = 74
            Width = 201
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_BAIRRO'
            DataSource = dsempresa2
            TabOrder = 3
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit22: TDBEdit
            Left = 357
            Top = 74
            Width = 325
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_COMPLEMENTO'
            DataSource = dsempresa2
            TabOrder = 4
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 638
            Top = 99
            Width = 45
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_UF'
            DataSource = dsempresa2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'EX'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RR'
              'RO'
              'RJ'
              'RN'
              'RS'
              'SC'
              'SP'
              'SE'
              'TO')
            Sorted = False
            TabOrder = 5
            UnboundDataType = wwDefault
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit23: TDBEdit
            Left = 565
            Top = 99
            Width = 51
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_COD_MUNICIPIO_IBGE'
            DataSource = dsempresa2
            TabOrder = 6
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit32: TDBEdit
            Left = 463
            Top = 99
            Width = 61
            Height = 21
            Color = 15916445
            DataField = 'CONTADOR_COD_MUNICIPIO'
            DataSource = dsempresa2
            TabOrder = 7
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit31: TDBEdit
            Left = 110
            Top = 99
            Width = 268
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_CIDADE'
            DataSource = dsempresa2
            TabOrder = 8
            OnEnter = DBEdit1Enter
            OnExit = DBEdit31Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object AdvGlowButton2: TAdvGlowButton
            Left = 70
            Top = 96
            Width = 35
            Height = 28
            Hint = 'Pesquisa o Municipio,IBGE'
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
              F80000001974455874536F6674776172650041646F626520496D616765526561
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
              702E6969643A4531364445383142303532353131453539423332463334353036
              4241334139412220786D704D4D3A446F63756D656E7449443D22786D702E6469
              643A453136444538314330353235313145353942333246333435303642413341
              3941223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
              7374616E636549443D22786D702E6969643A4531364445383139303532353131
              453539423332463334353036424133413941222073745265663A646F63756D65
              6E7449443D22786D702E6469643A453136444538314130353235313145353942
              3332463334353036424133413941222F3E203C2F7264663A4465736372697074
              696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
              7061636B657420656E643D2272223F3ED4094A19000001F64944415478DAA495
              4D28445114C7DF68A24663A446333B2CC64793186964AC34642129918D05928D
              AD85B212C95AC9020B65E76B2162458C99EC7C2456234D528CC64764619EFF1D
              E7E59A9977EF1B73EAF7E6DE7BCEF99FFBEEDC7B9FA2AAAA22C0063AC02AB853
              7F2D0A76401F708A34F41CB9605CFD6BAFE0029C5301DE1680DD68010F8931BB
              04BD5430392E07B48043AE50BBAC402B17DC23593E9E4610A3BC11BD026E6E29
              9C1988F3CB7A461ADDE90A3C93D3FE0F719E7BD2B1F105A669B0D3808059E22F
              25AD23AD401E0DDC0892F2C10C088347B00EBC82F815D27428B4CFD3EE00C2C1
              BD76B27974729CE49F679D2DEAE8CD668813F4031FF77F1D08F23EC11B6B7C80
              27416001680635DC9876AA0382BC6D6DD6CC4E0DEE102F9D64CD7C82D8C4C631
              2B3F1657E4560742D4BE05C3202088FF620F56007B497128C62C0CDE411B8848
              625DEC61C25B04F1DBC0DA92040B7053FBC4C064A2A090ADD520AD67AD81F5D7
              AC52126BA5B84DD629A24E5092540FE2844B123B419AD5DAC09A8199E5D0CCAC
              1271ED6688F07791850663595E748C7D6DF6C9B7691739425988CF91C6A4DE07
              6794BBF8CA33102E06BB94BB28FB64F673BB65165408844BC018173F951C634A
              5449B532B00C7CD467876B0F5CD109657E3FB093FF1A0C80E31425C9AB578125
              F090E6AA7E011BA049A4F12DC00078362DC326251D8E0000000049454E44AE42
              6082}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnClick = AdvGlowButton2Click
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
          object DBEdit24: TDBEdit
            Left = 70
            Top = 124
            Width = 119
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_CEP'
            DataSource = dsempresa2
            MaxLength = 8
            TabOrder = 10
            OnEnter = DBEdit1Enter
            OnExit = DBEdit24Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit25: TDBEdit
            Left = 258
            Top = 124
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_FONE'
            DataSource = dsempresa2
            MaxLength = 10
            TabOrder = 11
            OnEnter = DBEdit1Enter
            OnExit = DBEdit25Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit26: TDBEdit
            Left = 415
            Top = 124
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_FAX'
            DataSource = dsempresa2
            MaxLength = 10
            TabOrder = 12
            OnEnter = DBEdit1Enter
            OnExit = DBEdit26Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit27: TDBEdit
            Left = 69
            Top = 149
            Width = 612
            Height = 21
            CharCase = ecLowerCase
            Color = 15916445
            DataField = 'CONTADOR_EMAIL'
            DataSource = dsempresa2
            TabOrder = 13
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit28: TDBEdit
            Left = 69
            Top = 174
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_CRC'
            DataSource = dsempresa2
            TabOrder = 14
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit29: TDBEdit
            Left = 234
            Top = 174
            Width = 144
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_CPF'
            DataSource = dsempresa2
            TabOrder = 15
            OnEnter = DBEdit1Enter
            OnExit = DBEdit29Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit30: TDBEdit
            Left = 469
            Top = 174
            Width = 212
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CONTADOR_CNPJ'
            DataSource = dsempresa2
            TabOrder = 16
            OnEnter = DBEdit1Enter
            OnExit = DBEdit30Exit
            OnKeyPress = RzDBEdit4KeyPress
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 872
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      Color = 5460819
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 16
      ExplicitTop = -26
      ExplicitWidth = 801
      object btempresa00001: TAdvGlowButton
        Left = 6
        Top = 8
        Width = 147
        Height = 35
        Caption = 'Dados da Empresa'
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
        OnClick = btempresa00001Click
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
      object btempresa00002: TAdvGlowButton
        Left = 159
        Top = 8
        Width = 147
        Height = 35
        Caption = 'Dados do Contador'
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
          702E6969643A4136344132454330313433393131453539363534384635423335
          4342413034432220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A413634413245433131343339313145353936353438463542333543424130
          3443223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A4136344132454245313433393131
          453539363534384635423335434241303443222073745265663A646F63756D65
          6E7449443D22786D702E6469643A413634413245424631343339313145353936
          3534384635423335434241303443222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3E825AB2CD0000056D4944415478DAAC97
          796C147514C7DFCC76777BED767BD196D296604B136B3D008F72444449448336
          680C1A8FA04614E34589C198D423466AE2F5874724A2A889428C2615418DA0C1
          4AA941B1B188A545432B48B1DBA6DB4ADB3DC7EFDBBED9CE4E67B75BF4977C32
          33BFF9CDFBBDDFFBBDDF7B6F948DBBBA6806CD0D2E034B40252896FE7ED0030E
          8243E074AA02D3521CB700DC035683B269C60E815D602BF8FEBF2A50019E03B7
          1BFAD8646DA01B9C0411B1C47C70315808EE10F68046F0D3B92870277805E4C9
          F34EF0864C1E48F2DD15F2ED3A709DF01878D56AB09A40C8F3E03D99FC1B7021
          580BBED327F787351A0F4D805B5226BF650537888FEC903E5EC8B6541578063C
          21F74DE06AD0A1BFE4897C8108B91D36F2A44F301A8C50FF5808C214A39C53E0
          5670AF3CDF2D8B4ABA05F5B267244EF78E71627F98E8846F9C56CEF3D0BA4525
          64B74DE8DFD6E3A3FD7F0C51BB7794E66439C86923D226656E1365F6C8D61C05
          2FC4E41A8E6185BCCC942D78529F38AC29D43BE2A72A8F93EACF2FA44BCBDD64
          53E3561B9DB0ED848F9A8FF653F7909FCA5D4EB2299A5191BBC076B9E763DC6A
          B640934CBEDF3839AC4B63A1302D2F73D3F53505342F2FC3D269786CDDDC1C2A
          723B68F7AF5EEAE81FA58C3495EC6ACC1A6CFEC5E03EF03AB8C468013E42C744
          56B51C358A60E523C130ADAD2DA06BAAF26712B0686FF700EDE8F092CB6E2355
          89D9211BF4812C391D5FE84EF8A05C77EB93F38ACE9C0D506D61A6D5E48A38D5
          67E00331695CE36F1697BA69602C68ECFE4756CFAD413F052E708B74BEA88F64
          872BCAB2537D4DA1D5025F12E75A2D418A23DE95E641A188467E1CD3786F892A
          1090F195AA44AF6289DF3F183F76C39D2BF2D213051B735B61EE985F98413938
          A6212DAEBB171C10FFBB563598AF058CC5028432A1C4387B617C73805C0B052E
          30772CAFCCA5926C7BD40AA6D6A2E71856A04A1E3ACDA3C211CD6AF521306AD1
          3F60EE60E5FDA108994EAC9E4FB879741F982280D79D6EB78CD4FC6A93A96F10
          3C6E35986544122BEB54ADE3B3427DA3415A559D9F48896FC15386E70649C353
          2667192C4B25C54A8EC6D2CFCA436C5F07710496CD76516D7176A2635E6BD83A
          6E2BC14556D99565B02C9669681EB9065981E3BAD3C6F62E10A68ADC74CA44C2
          31B46C8917FB24BF1B6B84DBA412E24CB819CCD25FB00C96C5320DAD5AAEBE34
          3D26A32D150F0FA8F09AB178EFB7834F65A5899A5D8A91859201EBA4548BCA52
          E33D71A95CDBD902878117948345D18D81F39B924DD934939BDB79C6E8C8B2B4
          C9035522CAB149BE640BF8C02760BD542EADAA4A660BF098CF0187C5F1692667
          4B04A55CA348341AB20562EFD74B2EE0E2A653779AD7E4C5CD6C89FC0C7B6FEB
          A9619A7BDC492B2AF3F463C361D7269A276BAA1CD568FB6B3840FB7A86A82083
          F5D238953E2AAF5E3656444740B3DCBFC5793C0BA974EBA13EFAEAB7B8F0104E
          C1FCB1C9F7760DD2FB3F9E862C5BB436903A2347825EB3B91EE040B28AE33386
          6EC6116E2ACCB4D3F65FCE20F769948F4A67C11C17A29A927C766CF6E1932334
          804CFA6EFBDFA88E149A85D547485B6358FD06AB92AC4BCA304EAF5BA0C4EFC8
          451FCF4646FCE8889786C7C3B4A4CC850CE948AA00A7F0037F8E901B49A81479
          40899A4463AFFF50863C2B816C4A49664CB51BE57E933C4723D9A03F44819096
          5401479A4279CE349E54EF5A23D5B17E946F9AEEBFA041063F24F5016BFF0804
          F67AB8DA74A6E2049A1E591B0D66DF2955724AFF050FCB3E85A452EE929F92CB
          5370C21A31739761F246F9AFD066F267F4A614A85BC00DE001E1A084E26372D6
          59C952C90DFC0F7995410647D9A7C1D7E7FA6FC865FA8D6019B85FAC5127246B
          1CB4DE969A51FB3FFE8E5B847209B1FC8B5E24094A918CCA71FF67597567AA31
          FB5F010600CFE99C1A70FD8DFE0000000049454E44AE426082}
        Transparent = True
        TabOrder = 1
        OnClick = btempresa00002Click
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
  end
  object Panel2: TPanel
    Left = 762
    Top = 54
    Width = 104
    Height = 543
    BevelOuter = bvNone
    Color = 5460819
    ParentBackground = False
    TabOrder = 0
    object bincluir: TAdvGlowButton
      Left = 268
      Top = 265
      Width = 90
      Height = 24
      Caption = 'F2 | Incluir'
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
      TabOrder = 0
      Visible = False
      OnClick = bincluirClick
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
    object balterar: TAdvGlowButton
      Left = 11
      Top = 84
      Width = 78
      Height = 63
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
      Left = 11
      Top = 152
      Width = 78
      Height = 63
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
    object blocalizar: TAdvGlowButton
      Left = 371
      Top = 187
      Width = 106
      Height = 32
      Caption = 'F6 | Localizar'
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
        F8000000097048597300000EC400000EC401952B0E1B000002A9494441544889
        AD954F888E5114C67F8F99301AA230D813126527CA580C1622CD42E4BB57187F
        9A2436165264A758208D523A9732A32924B1B0C142CA92EC280B16983EA5FC9B
        712CBEFB8DB76FE69D197136EF39A7739EE79EF39E7BAEDC9D894808A10DD82E
        69BDBB2F9234C3DDABC02B49F7DDBD37A5546DCCD3780431C6C9EE7E1C3802B4
        4A92BB7BFD0B90F501E0B4A40B663634218218E32CE016B07642658203B7811D
        66F66D4C8210C214E0A1A435FE27A82AA9D7DD9F491A70F736A043D266779F52
        A8A61FD89652FAD53CC6694E00AB0B763FD06D661F1AE2AEC4181703D78195D9
        D70974019747AD20C6D806BC015AB2AB17D859ECED2839338147C0F2EC7A072C
        2CAB20B8FB54C0257D70F70329A552700033AB8610F6487AEAEE4DC07C499BCA
        08D617F4AB29A5CF6381D725A5F43CC6F80468CFAE8E3282259294F5C713012F
        C86349EBB2BE780441086192A4D6C28C37FED4F1E4632177FA088294D2AF18E3
        17604676CDFD4B823905BD5AD6A297C082ACB703F7FE82605D417F5536A64780
        73D9FC042C32B381F190638CAB80274053766D292398EBEEAF8169F966DEA276
        337F9681871066038F242DCDFFE08DA4A5A5AB22C6F800D8904DA7D6A67D66F6
        7E94D815D46EF2B242FC7633EB1B4190A7E88CBB1F85E1DD520FFA2AA93FEFA2
        4FEE3E8FDA2EDAE8EE930AF13D29A58300CD8DE0C059E07049275A80005400E5
        93D2A05F060ED513862B88310A380F74E784BA0C01066C0566951003BC058E01
        7D6636DC16B93B2184264917DD7D7F435B06257599998510A6039D923AF28BD6
        9A5FB417F945BB3BDA10A852A93401972475D5ABC9043F80BD29A56B639C7A5C
        6996D403ECC9B875FFA0A45D6676E35FC0019ADD7D373574725B7E480A6676F3
        5FC1A13645A78093D9FE0E54CCACFF7F8043AD45A7A94D4AB7A4836676E77F81
        03FC064CBD449B10DE8C1C0000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
      Visible = False
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
    end
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 490
      Top = 32
      Width = 40
      Height = 32
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
        702E6969643A3931343245463331453238323131453241463535413234313741
        3446453836432220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A393134324546333245323832313145324146353541323431374134464538
        3643223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3931343245463246453238323131
        453241463535413234313741344645383643222073745265663A646F63756D65
        6E7449443D22786D702E6469643A393134324546333045323832313145324146
        3535413234313741344645383643222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E6D15A350000004654944415478DABC99
        7F68565518C7EF7BF7CE39DB14733297BF6618BAA1AE268E12DD86A8A02D956C
        E29414FD2324C14C33A5A0486459623F863F0952C36924EA4C5B2AC29295E44F
        F0C7683116C9CA952E1956560B67DF47BFB79E0EF7BEEFBDEF7BB7073EECDCF3
        9EF7BCCF3DE739CF8FB38855D36C25210F80316028180406031BB48216D2006E
        24FA03D104BF371DCC0113C1C371C6FE0CEA410D38086E07F9A1488015EC0556
        82F960448C7177EFCDEB2E6D6037780F5C0D53C1B9A00AF4577D77C009700A5C
        028DE057D00932B9ED8F8142AE78A6FAAE8C7905BC95AC823DF8C6E5AA4F9479
        1FD4829F7CAEBE28570A9681C9AAFF2CA800CD8928F820F81A3CC267B19DD560
        93959CCCE00BE6F2B9031483D36E836D8F49647BAE28E58E82E1212827F2296D
        788BDA255988A94114FC0AE4B0BD034CA3EB084B64D596F2D039724C2D484C05
        BF0003D97E172CB6BA4EDE018BD4B3AC647A2C05978012B6C577ADB0BA5E7672
        211CBBFFC0EB90F401BF8014FECDE156FC37D65B9E01A9F48116DB43C087014C
        43166402DB8F3B87464792B7A99CC565FFDB971FBD1F2166B87C76046C0EB092
        150C8D22BBC048BDC559E039B62F83C33E26ECCD93EEA6DCF3E029D01E40C11F
        C076B6E59417690567A9816B7C4C369CCAE5BB7C361B6C4DD01E5F33CEC3BF0A
        3EABDEA236CE24258C26838DFEBF983C1C48E2C05C57BB27C948D4E6563DC1CE
        789397D30DA51BFDD7C0A3E0CB104EF57195CA95DA3C39A9CAFEBCE425F0894B
        E6B2877EB33124B753AFDA0551269A8E7C13E38B1B5CFA24A3F911BC4C1F1654
        227CC94A708B7D17C14DCE3728AA6CA983861F34E15D15C2AA6D530A3A26230A
        66D92AE6CA80DFD4A014ABFBC4F4B98E1E19B6112122867D75977845A988AD42
        51A6713A3B7D4CDCA9BC7F3272D7A518BBB792511AB9481AC803673C266955E6
        60DA8F1879B6F20641C5CCCC07F0EF4DADA0C8A8180AE6D3478D33B2A1B52C80
        AA43DAEE3C55FBB4D874AE7794125ED2CEF8F899D19FA22AB530A444B51B6CFA
        9C73EC98E963823266D9A6BCC0DC2E5929E5DF3F419D138BAB551230D1C72492
        65BFEAD2BF50268D514AC4930C55411E027F3813ED33D2703F52C9BAC26D05DA
        7DBEA8296FA897DB6266D47B59A03B3F72D238FE5EBE4AAAB1D78DCF1F02DFF2
        16A2CDA7727D696E165DD71053C11C861891EFC1B010EC29D567666E31CD2A63
        7B0A6F2DFE672BADCAAE7299CA871DC2BC648D52EE734739B7AAAE92D711CE89
        5ED70D61EE69F026DBBF8379F1EAE26215AC6545D777A17292C9EF377C607B3C
        05C5FF8C574AAE6695951EB27272623F52CF72A0CEFBBDFA90CCBA80F5B1C802
        D064DC72252A45544417484F3233F77D3723F21DE3E2113E0F64CA5F47857B05
        544CEE773E66415EE88432C6F6DA44EF071D590E361A2F24B62257BA1778D9D4
        CA2B3AF19D3D413FAED658D6CEB9C69C550C8F711245FF57C0E2385F6438EBEB
        91D3390AA679A45E9D0CAB552AFE87A6A0192FA5D89FC4E77852C7EBB56AD6DE
        0152EDE4FE0D21D16634ED339B5BEB14606DCC359B58E82724FF08300078AEF5
        EED45F4D970000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
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
      DataSource = dsempresa2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 533
      Top = 4
      Width = 40
      Height = 32
      Hint = 'Prior record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
        702E6969643A3636444446363933453238323131453241363446383544464531
        4143424143432220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A363644444636393445323832313145324136344638354446453141434241
        4343223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3636444446363931453238323131
        453241363446383544464531414342414343222073745265663A646F63756D65
        6E7449443D22786D702E6469643A363644444636393245323832313145324136
        3446383544464531414342414343222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EA5EAF8040000046C4944415478DABC99
        798C4D571CC7EF7BF30683D1D86267340493D61A5B53662248282AB65882B47F
        8890A0B5A682109922B14DAC91D8D24108B58E25922176D52694204288655A86
        4CEC2586EF8FEF955F4FEE7DEFDE77EFCC2FF9E49D7BDEBDE7FDEE39BFF35BCE
        8B58BB6F5A01A41268091A81FAA00188824270975C018F92FD815892CFF50643
        4017F065827BFF0527C06EF03B78E9E787223E66B022980C46806671EE7BFF71
        5C672902BF8165E04E980A0E05B9A0A6EA7B078E82D3E012B8069E811290CE65
        6F03DA72C6D3D5B372CF2F60615005CBF18D07AB3E516639C807FF789C7D512E
        1B4C00DD55FF1F6018B8998C82D5C059D094D7623BD3C10A2B98F4E30B66F0FA
        0DE80ACE39DD1C75194496E7B252EE1068128272227B69C3ABD42AC944F4F4A3
        E0295087ED0DA0175D475822B3369E9BCE96C36A42E22A780CD4637B29F8D12A
        3D59027E50D7329369F1141C0BB2D816DFF5B355FAB2911361DBFD3AB74DF205
        780C52F8294BFCD6E38F0C02A9F48116DB0DC17A1FA62113F22DDB9DEC4DA323
        C9222A6771DADF7AF2A39F22443F87EFF683953E66721843A3C826D05C2F710D
        3086EDBFC13E0F0356E14E77526E1CE80B8A7D28780FAC655B767907AD607F75
        E30C0F8335A172990EDF0D04AB93B4C7D9C67EF8ACE048F516F90906C9623469
        60F4FFC7E46157800DF350AD9E2423B12897AA333B130D3E986E28CDE87F005A
        839321ECEA232A95CB8E72E7A42AFB73932960BB43E6B2857EF35A486EE7846A
        B78A31D1B4E5AACB43F3C02C877EC968EE8369F4617E25C297CC014FD977113C
        E178F563CA96DED0F04D912D3F2A4EC23B3584595BA314B44D4614AC11533157
        6E78AE6E4A614CEE5806D1C4F4B9B61E95A346F61B31EC6B935536E2968147A2
        2A14A51BBBB384FEEC1BF0CA658012E5FD83C87B8762ECE34CC668E422E5410B
        70DEB8F90CFBCF287330ED478CBC96F2067EC5CCCC6BF3F3895650E42B07052D
        163899F451ED8D6C681EBFCF0B69B95BA8DAE76E94CEF51D3B32E33C58CCF878
        C0E84F51955A1892A5DA57A2F43917D8F1BD8701FA30CB36652273BBA092CDCF
        D7A0C08EC5792A09E8E26110C9B2673AF48F9641E3941289A4B2AA20F7C8E6B4
        07DA61A4E15E24877585D30C147B7C5153E6AA975B6566D45B59A0DB3F72DCE3
        A0528DCD317C595D709DA710451EC7A94A73B3E8BA1A9A0AD6618811B90D1A87
        604FA93ECA867DB46F911E3CB5F89FAD142ABBCA602A1F76087393194AB983B6
        724E555D0E8F23EC1D3DBF0CC2DC00F02BDB2FC0F04475715715AC65461794A2
        7292C9EF347C607122055F33FEDA4A4E67D29016B272B26337AB6BD9507F7A3D
        FA90CCBA15EB638BF9E00DE3942B59E940457481F41D3373CF673322B71817F7
        F3BA1E53FE022A5CD1A76272BEB38D05795B3B9431B6E7073DC09C04161B2F24
        B62247BA7F31B12DE4119DA44E154075CE563BD6CE19C698B90C8F810E30B588
        E3FC89E1ACAA4B4E672B58DE25F52A6158CD55F13F3405CD7829C57E375E2792
        021EAFE5B1F6F6916A07FB1B42A2CDD7B4CF5A5C5ABB002B62AE7983857E52F2
        418001005E72FB79D2DD375A0000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
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
      DataSource = dsempresa2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 576
      Top = 4
      Width = 40
      Height = 32
      Hint = 'Next record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
      TabOrder = 6
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
      DataSource = dsempresa2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 618
      Top = 4
      Width = 40
      Height = 32
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
        702E6969643A3841334346444537453238323131453241303338433143424444
        3034363345372220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A384133434644453845323832313145324130333843314342444430343633
        4537223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3841334346444535453238323131
        453241303338433143424444303436334537222073745265663A646F63756D65
        6E7449443D22786D702E6469643A384133434644453645323832313145324130
        3338433143424444303436334537222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB28C4A590000045C4944415478DABC99
        7B6856651CC7CFFB5A536BD331A7B9E698FF04669B82358BB270102A93794BFD
        C3896D828817C226614520188B225D4514D11FEAD489CE0B9B5DC4047173CD34
        F21AC950E765CA26E6445D2DB5B6BE3FFB1EFAF178CE79CF79CFD9BEF0E17D9E
        7379DFDF79CEF3FC2ECF1BB36ACF5B2134063C05B2412648E1F1BFC03570159C
        061792FD814792B8670428019341A18FEB3BC101500B76B0EF5BB10023F81C78
        83C6C51DCEDF07771F7CA7653DC64F53374115F8045C8ED2C0CF689CD645B007
        FC028E821B7CB5B68159E025300ECC04E9EADE6EB0127C1AD64019B58DE01975
        6C3B47616F80372506CF066560A23AFE2D5808AE27636011F84EF58F81251CAD
        309AC3579CCDBE8CFC78D0E27471DCE54BE619C6AD01CF46609CC585222B7F13
        FB43C04990EFD74031A45AF51780D556B4EA02AF838FD84F054D604022036522
        D7ABFE6B60B3D57B7A1B5428231B1219B8153CCEF63B60B7D5FB7A0FD4B15D00
        DE755B24AF82FD6A7515FBFC8147E903C34AA2CD48B69F046DE608AE37E69D5F
        0D06FBE8179B143F82491EF7F52844A5EA5CA53982AFA8B95749271A442F73D5
        A7399C5B06BE7431F07F3BFED3CFF4BD161D7DBB3D824B95874F66C51EE2023B
        E870EE0B735E79A8DCF0970F5EF140305DF9A8CE24E7503793872A877315C614
        F27AD0736C97D806162AFF733082C95ECAD86DAA8C8B2F91EA5498CD881B71B6
        3E22D7B102CC07FF18C7A7321AA57BDCFB1B3FFB8109920FE6F08004EC33EAC2
        7E9CA8C9E83EA3512E78DFF01605CA0827FDAADAD96260063BEDC685C3416BC8
        9174BBDFEBC1CF30AFEC2F06C61962447F3C94E984578E4742E216D1244EDFB1
        1F246EF823373FD5DB8AB9FC6E4F5CB995548710D657D28B49EC18C4769BCCC1
        DF55FCD3EA603A144B72343B58E9BD19B038CB53D561ABDC78851D592C63993C
        8A6E331D0AA36A7A03536F818F5DEE795AB5AFC49541764C8D42A35813CF7358
        6C73C15A8F7BF395AB6A8C337AD82B785204C64D00271CA64C170BA61D09EE9F
        C5CFC3F216C5C0BF410D0F4A0E382C8471B3184FFB3BF8C3313E22551137062C
        3B93B7FDCF574681948CA4E2DBE512BAF25412E0A50F55BB561B28F1B199EDC5
        EA29FC48E2EA372E39DF1E1A77DBC7F714ABF9F7B5ED5D74CAFF3CF889EDC600
        0B268BC5F76595FAC7D8DE9920A3B695C2147F087DA27CDE722ADCB7D879188B
        EBF23E72D40D6A4096E82967C6C94574B0161D6C691F1857A98CAB37D6C34306
        8A2B7841F537F4F228AEE74058F49B13FDEC2C9CE5DE9FAD75AC2B5222342C8B
        9B4F6576CCE54E98EFBD991F3892F7545125AB7C5A04C62DA7CB99A2064456FA
        A520068A8E80D12C052D16D5752CEE8B5D4A4C370DE74A97B0FA39B7E3EC222D
        4FCDFBC0FB83B656810F8C0792A4F27B6ECB1DE708DCE135698CC7123D5EE4AE
        854E1AA4BC900DD16D891345FF5BC0B9AA18CAF4F06D5E997833331C99D77FFA
        CB6483EFF2CBEB912DDD19740F4F24B8BE85F1B986231E30D50EF737C45096AD
        39248B057C2BF34C79EDA71CEA1DDFFA578001007948F747DB27E77300000000
        49454E44AE426082}
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
      DataSource = dsempresa2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object pgravar: TFlatPanel
      Left = 2
      Top = -4
      Width = 107
      Height = 520
      ParentColor = True
      Visible = False
      ColorHighLight = 5460819
      ColorShadow = 5460819
      TabOrder = 8
      object bgravar: TAdvGlowButton
        Left = 12
        Top = 85
        Width = 82
        Height = 63
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
      object bcancelar: TAdvGlowButton
        Left = 11
        Top = 154
        Width = 82
        Height = 63
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
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 872
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
    TabOrder = 2
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 48.000000000000000000
    object Label53: TLabel
      Left = 59
      Top = 13
      Width = 82
      Height = 23
      Caption = 'Empresa'
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
  object Pop1: TPopupMenu
    Left = 486
    Top = 236
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
      OnClick = BitBtn5Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object Pop2: TPopupMenu
    Left = 358
    Top = 268
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
  end
  object dsempresa2: TDataSource
    DataSet = frmmodulo.qrFilial
    Left = 358
    Top = 236
  end
  object POP3: TPopupMenu
    Left = 390
    Top = 268
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
    end
  end
  object popupmenu4: TPopupMenu
    Left = 454
    Top = 236
    object Siar1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Siar1Click
    end
  end
  object dsemitente: TDataSource
    DataSet = frmmodulo.qremitente
    Left = 390
    Top = 236
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 422
    Top = 236
  end
end

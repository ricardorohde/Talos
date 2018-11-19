object frmcliente_info: Tfrmcliente_info
  Left = 886
  Top = 341
  BorderStyle = bsNone
  Caption = 'Cliente - Informa'#231#245'es'
  ClientHeight = 335
  ClientWidth = 580
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 688
    Top = 513
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Panel1: TPanel
    Left = -1
    Top = 48
    Width = 760
    Height = 289
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 136
      Top = 12
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 8
      Top = 36
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label5: TLabel
      Left = 8
      Top = 60
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label6: TLabel
      Left = 264
      Top = 60
      Width = 69
      Height = 13
      Caption = 'Complemento:'
    end
    object Label7: TLabel
      Left = 8
      Top = 84
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label8: TLabel
      Left = 400
      Top = 84
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object Label9: TLabel
      Left = 464
      Top = 84
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label10: TLabel
      Left = 8
      Top = 108
      Width = 51
      Height = 13
      Caption = 'Telefones:'
    end
    object Label11: TLabel
      Left = 8
      Top = 140
      Width = 31
      Height = 13
      Caption = 'Limite:'
    end
    object Label12: TLabel
      Left = 8
      Top = 164
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label13: TLabel
      Left = 8
      Top = 196
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 8
      Width = 49
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'CODIGO'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 8
      Width = 393
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'NOME'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 32
      Width = 489
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'ENDERECO'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 80
      Top = 56
      Width = 169
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'BAIRRO'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 344
      Top = 56
      Width = 225
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'COMPLEMENTO'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 80
      Top = 80
      Width = 305
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'CIDADE'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 424
      Top = 80
      Width = 33
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'UF'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 496
      Top = 80
      Width = 73
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'CEP'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 80
      Top = 104
      Width = 89
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'TELEFONE1'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 176
      Top = 104
      Width = 89
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'TELEFONE2'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 272
      Top = 104
      Width = 89
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'TELEFONE3'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 368
      Top = 104
      Width = 89
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'CELULAR'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 11
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 80
      Top = 136
      Width = 121
      Height = 19
      DataSource = dscliente
      DataField = 'LIMITE'
      Color = 15916445
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      DisplayFormat = '###,###,##0.00'
    end
    object ed_situacao: TEdit
      Left = 80
      Top = 160
      Width = 121
      Height = 19
      Color = 15916445
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit13: TDBEdit
      Left = 80
      Top = 192
      Width = 489
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'OBS1'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 14
    end
    object DBEdit14: TDBEdit
      Left = 80
      Top = 216
      Width = 489
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'OBS2'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 15
    end
    object DBEdit15: TDBEdit
      Left = 80
      Top = 240
      Width = 489
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'OBS3'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 16
    end
    object DBEdit16: TDBEdit
      Left = 80
      Top = 264
      Width = 489
      Height = 19
      Color = 15916445
      Ctl3D = False
      DataField = 'OBS4'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 17
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 580
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
    TabOrder = 1
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 48.000000000000000000
    object Label53: TLabel
      Left = 59
      Top = 13
      Width = 208
      Height = 23
      Caption = 'Cliente - Informa'#231#245'es'
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
      Version = '1.1.1.0'
      OnClick = AdvMetroButton1Click
    end
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 528
    Top = 392
  end
  object dscliente: TDataSource
    DataSet = qrcliente
    Left = 624
    Top = 424
  end
  object PopupMenu1: TPopupMenu
    Left = 664
    Top = 384
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end

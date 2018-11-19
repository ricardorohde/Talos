object frmCidade: TfrmCidade
  Left = 384
  Top = 352
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cidades'
  ClientHeight = 368
  ClientWidth = 660
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
  object cySpeedButton1: TcySpeedButton
    Left = 548
    Top = 15
    Width = 105
    Height = 97
    Caption = 'Sair'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = blGlyphTop
    ParentFont = False
    OnClick = bfecharClick
    MonochromeGlyphColor = clBlack
    Degrade.FromColor = 15574106
    Degrade.SpeedPercent = 90
    Degrade.ToColor = 15574106
    Wallpaper.Transparent = False
    FlatDownStyle = dsMetro
    FlatHotStyle = hsMetro
    GlyphX.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
      0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
      206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
      98000017709CBA513C000000097048597300000EC100000EC101B8916BED0000
      03ED494441546843D59ACF671C6118C7430821A47F426FB946AB21D79C4A4EA5
      A7B084504A283D8528CD29E4544229BDB4DA5369FF84DE42B55229A594127AEA
      A5215A4AD97E3FEFFBCCCE9BD9D9D97766DE9D4D3F3CCCBECF8FF73BB3FBBEF3
      CEBC3B939A7EBFBF2CBB2EDB92DD31E398B6650BBB3C48D4926C5776248B8558
      7296AC4CB7A8E339D93DD917595BA841AD792B3F59D4D1A6EC54368A8FB20FB2
      A7B227661CD3866F14D4DCB46ED2A3E22BB232013F6408BC69A16321D672C82D
      421F2B169A0615DC90FDA67A0057ECB68534861A562B84BE7A16D20E15DA7725
      737EC9B6CC9D0C6A5AED907D73D747C9B3B257AE4CCE89EC86852487DAB2633A
      0A40C3AC85C4A3A4E2957F61AE89435FBECB01F5BE0925F09B0F7968AECEA04F
      DFF5800D7355A340669B70C07676E58BD0B797E04053F5ECA4006E505F89364E
      CC3535D0E0A538D03667AE61E4DC71611E6684890DD858D0605A3276CC751139
      1665672EC4D37A8E4F055ABC24071A17CD95A3C6F0EA7FB2E64B039ABC34C7C5
      6F410DCCF9E1DD70DD5C6351EC15D91B59F452B961CEBA2C03ADF9BD411FD65C
      B3E7D49AC7A2588464EBA39FB2B18214533B2743B1E1455EB366E738F46D8E3D
      6BAE4471A1908C4A41F2D5CE0951DC9ECBF03CB266E7087F5FB1C5CAC440A920
      B5D58A2F43713CD565F871AA8305FFD971EE1A23517C94281DB7169FA1F87397
      E959A061D51F3B8E2C2E1AE5548A9325130FCA091F5D576908D73D2F2DAE16CA
      AB12994C3C28EFB9ABE0E9D1B0ED8F1D8716571BE58E3A89228DC58372C30967
      9B86F006D6FC0142287FDC49B4120FCA0F97F93B494F0054E3AA2F554AEB8776
      D5183A81243F21507E17DFC0D04FA8F52006E5763506860671AB691494D7E52C
      34348DB28CCE38B3B8689453257E12F78170C9EF97D53AA8BD9400C54689D371
      929320D66579F225BF3EA45ACC41A928B5B53E09C5858BB97CC2D187DACB69C5
      9509AA14235FED9C10C58D5C4E377AA0515C28284A88626AE780E2463FD0801A
      785F9F11FD48A95804BD954509818639E138DDB5E61C35FEDF0FF52047F1B5CA
      35734D0D3498968CF2D72A2067F1C5D6B1B9A6061ABC1447F58B2D5000AF16FF
      106D3C3357E7D0B797E04053DCC687027B2E25E781B93A833E7DD703EA6D7828
      E1C0E70D98E6EBF50373C5A324EE0DAF5D7A0E1B7593DCE060C0BEA7A30034D4
      DFE0001265655B4CC97713A969B543E8BB99F81015A178D926DF2D0B690C35AC
      56080336ED45524166A7CF542FF05DD6749B95DC22F491769B3544C5D94D2C5E
      B18CBF32C6C93B191BDC8FCD38A60D1F31655033F9EE6729EA685E765FF64DD6
      166A50AB9BBF1A1451C7D99F3DB8C2B1F04D4CEFCF1EA39020662D5EC0325EF8
      9BCD5D338E69C3D77E56193033F30F94AE5FEFB8DB34CF0000000049454E44AE
      426082}
  end
  object Panel1: TPanel
    Left = 288
    Top = 399
    Width = 531
    Height = 41
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    Visible = False
    object bfechar: TAdvGlowButton
      Left = 437
      Top = 4
      Width = 94
      Height = 32
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
    end
  end
  object grid: TwwDBGrid
    Left = 0
    Top = 41
    Width = 542
    Height = 326
    Selected.Strings = (
      'CODIGO'#9'6'#9'CODIGO'#9#9
      'CIDADE'#9'30'#9'CIDADE'#9'F'
      'UF'#9'2'#9'UF'#9#9
      'CEP'#9'10'#9'CEP'#9'F'#9
      'IBGE'#9'10'#9'IBGE'#9#9
      'ESTADO'#9'10'#9'ESTADO'#9#9
      'MUNICIPIO'#9'10'#9'MUNICIPIO'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    DataSource = dscidade
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 542
    Height = 41
    BorderOuter = fsNone
    Color = 11429670
    GradientColorStyle = gcsCustom
    GradientColorStart = 11429670
    GradientColorStop = 11429670
    TabOrder = 2
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 7
      Top = 15
      Width = 69
      Height = 13
      Caption = 'LOCALIZAR :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object wwIncrementalSearch1: TwwIncrementalSearch
      Left = 78
      Top = 11
      Width = 443
      Height = 21
      DataSource = dscidade
      SearchField = 'CIDADE'
      TabOrder = 0
      OnKeyDown = wwIncrementalSearch1KeyDown
    end
  end
  object qrcidade: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrcidadeBeforePost
    AfterPost = qrcidadeAfterPost
    SQL.Strings = (
      'select * from c000006')
    Params = <>
    Left = 336
    Top = 40
    object qrcidadeCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcidadeCIDADE: TWideStringField
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrcidadeUF: TWideStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Size = 2
    end
    object qrcidadeCEP: TWideStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Size = 10
    end
    object qrcidadeIBGE: TWideStringField
      DisplayWidth = 10
      FieldName = 'IBGE'
      Size = 10
    end
    object qrcidadeESTADO: TWideStringField
      DisplayWidth = 10
      FieldName = 'ESTADO'
      Size = 10
    end
    object qrcidadeMUNICIPIO: TWideStringField
      DisplayWidth = 10
      FieldName = 'MUNICIPIO'
      Size = 10
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 192
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object dscidade: TDataSource
    DataSet = qrcidade
    Left = 296
    Top = 24
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Cidade'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 392
    Top = 56
  end
end

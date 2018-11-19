object frmContrato_reserva: TfrmContrato_reserva
  Left = 318
  Top = 234
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Contrato de Compra e Venda com reserva de dom'#237'nio'
  ClientHeight = 431
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 388
    Width = 559
    Height = 2
    Align = alBottom
    ExplicitTop = 385
    ExplicitWidth = 549
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 521
    Height = 193
    Caption = 'Descri'#231#227'o do produto'
    TabOrder = 0
    object ed_produto: TEdit
      Left = 10
      Top = 18
      Width = 497
      Height = 21
      TabOrder = 0
      OnKeyPress = ed_produtoKeyPress
    end
    object memo_produto: TMemo
      Left = 10
      Top = 42
      Width = 497
      Height = 141
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 216
    Width = 521
    Height = 97
    Caption = 'Testemunhas'
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 394
      Top = 16
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object ed_test1_nome: TEdit
      Left = 10
      Top = 34
      Width = 375
      Height = 21
      TabOrder = 0
      OnKeyPress = ed_produtoKeyPress
    end
    object ed_test2_nome: TEdit
      Left = 10
      Top = 58
      Width = 375
      Height = 21
      TabOrder = 2
      OnKeyPress = ed_produtoKeyPress
    end
    object ed_test1_cpf: TEdit
      Left = 392
      Top = 34
      Width = 113
      Height = 21
      TabOrder = 1
      OnKeyPress = ed_produtoKeyPress
    end
    object ed_test2_cpf: TEdit
      Left = 392
      Top = 58
      Width = 113
      Height = 21
      TabOrder = 3
      OnKeyPress = ed_produtoKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 390
    Width = 559
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 380
    ExplicitWidth = 549
    object BT_IMPRIMIR: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = BT_IMPRIMIRClick
    end
    object BT_FECHAR: TBitBtn
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = BT_FECHARClick
    end
    object BitBtn1: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 320
    Width = 313
    Height = 49
    Caption = 'Documento Fiscal'
    TabOrder = 2
    object Label3: TLabel
      Left = 152
      Top = 24
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object ed_nf: TEdit
      Left = 200
      Top = 16
      Width = 97
      Height = 21
      TabOrder = 0
      OnKeyPress = ed_nfKeyPress
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 24
      Width = 41
      Height = 17
      Caption = 'NF'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 72
      Top = 24
      Width = 57
      Height = 17
      Caption = 'Cupom'
      TabOrder = 2
    end
  end
  object fxcontrato: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40112.710860104200000000
    ReportOptions.LastChange = 41289.674275486110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 224
    Top = 8
    Datasets = <
      item
        DataSet = fscontrato
        DataSetName = 'fscontrato'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Rich1: TfrxRichView
        Align = baClient
        Width = 718.110700000000000000
        Height = 1046.929810000000000000
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
          666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C66636861
          7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
          64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
          204D7366746564697420352E34312E31352E313531353B7D5C766965776B696E
          64345C7563315C706172645C73623130305C73613130305C71635C6366315C62
          5C66305C6673313620434F4E545241544F20444520434F4D5052412045205645
          4E444120434F4D205245534552564120444520444F4D5C2763644E494F5C6366
          305C623020205C667331345C7061720D0A202020205C62204944454E54494649
          43415C2763375C2763334F204441532050415254455320434F4E54524154414E
          5445535C62305C7061720D0A5C7061726420202020202020205C6C696E655C70
          6172645C716A2020202020202020205C622056454E4445444F523A5C62302020
          5C62205B6673636F6E747261746F2E22456D70726573615F4E6F6D65225D5C62
          30202C20636F6D207365646520656D205C62205B6673636F6E747261746F2E22
          456D70726573615F436964616465225D5C6230202C206E61205C62205B667363
          6F6E747261746F2E22456D70726573615F456E64657265636F225D5C6230202C
          2062616972726F205C62205B6673636F6E747261746F2E22456D70726573615F
          42616972726F225D5C6230202C20436570205C62205B6673636F6E747261746F
          2E22456D70726573615F434550225D5C6230202C206E6F2045737461646F205C
          62205B6673636F6E747261746F2E22454D50524553415F5546225D5C6230202C
          20696E73637269746F206E6F20432E4E2E502E4A2E20736F62206F206E5C2762
          61205C62205B6673636F6E747261746F2E22456D70726573615F434E504A225D
          5C6230202C2065206E6F20436164617374726F20457374616475616C20736F62
          206F206E5C276261205C62205B6673636F6E747261746F2E22456D7072657361
          5F4945225D5C6230202C206E657374652061746F20726570726573656E746164
          6F2070656C6F20736575732064697265746F726573205C62205B6673636F6E74
          7261746F2E2272657370315F6E6F6D65225D5C6230202C5C62205B6673636F6E
          747261746F2E2272657370315F6E6163696F6E616C6964616465225D5C623020
          2C5C62205B6673636F6E747261746F2E2272657370315F6573745F636976696C
          225D5C6230202C205C62205B6673636F6E747261746F2E2272657370315F7072
          6F66697373616F225D5C6230202C204361727465697261206465204964656E74
          6964616465206E5C276261205C62205B6673636F6E747261746F2E2272657370
          315F7267225D5C6230202C20432E502E462E206E5C276261205C62205B667363
          6F6E747261746F2E2272657370315F637066225D5C6230202C20726573696465
          6E7465206520646F6D6963696C6961646F206E6120527561205C62205B667363
          6F6E747261746F2E2272657370315F637066225D5C6230202C2062616972726F
          205C62205B6673636F6E747261746F2E2272657370315F62616972726F225D5C
          6230202C20436570205C62205B6673636F6E747261746F2E2272657370315F63
          6570225D5C6230202C20436964616465206465205C62205B6673636F6E747261
          746F2E2272657370315F636964616465225D5C6230202C206E6F204573746164
          6F205B5C62206673636F6E747261746F2E2272657370315F7566225D5C623020
          2065205C62205B6673636F6E747261746F2E2272657370325F6E6F6D65225D5C
          6230202C5C62205B6673636F6E747261746F2E2272657370325F6E6163696F6E
          616C6964616465225D2C5B6673636F6E747261746F2E2272657370325F657374
          5F636976696C225D5C6230202C205C62205B6673636F6E747261746F2E227265
          7370325F70726F66697373616F225D5C6230202C204361727465697261206465
          204964656E746964616465206E5C276261205C62205B6673636F6E747261746F
          2E2272657370325F7267225D5C6230202C20432E502E462E206E5C276261205C
          62205B6673636F6E747261746F2E2272657370325F637066225D5C6230202072
          65736964656E7465206520646F6D6963696C6961646F206E61205C62205B6673
          636F6E747261746F2E2272657370325F656E64657265636F225D5C6230202C20
          62616972726F205C62205B6673636F6E747261746F2E2272657370325F626169
          72726F225D5C6230202C20436570205C62205B6673636F6E747261746F2E2272
          657370325F636570225D5C6230202C20436964616465206465205C62205B6673
          636F6E747261746F2E2272657370325F636570225D5C6230202C206E6F204573
          7461646F205C62205B6673636F6E747261746F2E2272657370325F7566225D5C
          6230203B5C6C696E655C7061726420202020202020202020202020205C622043
          4F4D505241444F523A205B6673636F6E747261746F2E22636C69656E74655F6E
          6F6D65225D2C20695C6230206E736372695C2765375C2765336F206573746164
          75616C206E5C2762612E205C62205B6673636F6E747261746F2E22636C69656E
          74655F7267225D5C6230202C20434E504A206E5C276261205C62205B6673636F
          6E747261746F2E22636C69656E74655F637066225D5C6230202C20636F6D2073
          656465206E61205C62205B6673636F6E747261746F2E22636C69656E74655F65
          6E64657265636F225D5C6230202C2042616972726F205C62205B6673636F6E74
          7261746F2E22636C69656E74655F62616972726F225D5C6230202C204345502E
          205C62205B6673636F6E747261746F2E22636C69656E74655F636570225D5C62
          30202C20636964616465206465205C62205B6673636F6E747261746F2E22636C
          69656E74655F636964616465225D5C6230202C206E6F2065737461646F20646F
          205C62205B6673636F6E747261746F2E22636C69656E74655F65737461646F22
          5D5C6230202C206E657374652061746F20726570726573656E7461646F207065
          6C6F73207365752861292070726F70726965745C27653172696F286129205C62
          205B6673636F6E747261746F2E2272315F6E6F6D65225D2C2062726173696C65
          69726F2861292C205B6673636F6E747261746F2E2272315F65737461646F5F63
          6976696C225D2C205B6673636F6E747261746F2E2272315F70726F6669737361
          6F225D5C6230202C206361727465697261206465206964656E74696461646520
          6E5C2762612E205C62205B6673636F6E747261746F2E2272315F7267225D5C62
          30202C20432E502E462E205C62205B6673636F6E747261746F2E2272315F6370
          66225D5C6230202C207265736964656E7465206520646F6D6963696C6961646F
          206E61205C62205B6673636F6E747261746F2E2272315F656E64657265636F22
          5D5C6230202C2042616972726F205C62205B6673636F6E747261746F2E227231
          5F62616972726F225D5C6230202C204345502E205C62205B6673636F6E747261
          746F2E2272315F636570225D5C6230202C20636964616465206465205C62205B
          6673636F6E747261746F2E2272315F636964616465225D5C6230202C206E6F20
          65737461646F20646F205C62205B6673636F6E747261746F2E2272315F756622
          5D5C6230202E205C7061720D0A20202020202020205C625C6920417320706172
          746573206163696D61206964656E74696669636164617320745C2765616D2C20
          656E7472652073692C206A7573746F206520616365727461646F206F20707265
          73656E746520436F6E747261746F20646520436F6D70726120652056656E6461
          20636F6D205265736572766120646520446F6D5C2765646E696F5C7375706572
          20315C6E6F7375706572737562202C207175652073652072656765725C276531
          2070656C617320636C5C2765317573756C61732073656775696E746573206520
          70656C617320636F6E64695C2765375C2766356573206465207072655C276537
          6F2C20666F726D612065207465726D6F20646520706167616D656E746F206465
          73637269746173206E6F2070726573656E74652E5C62305C69305C6C696E655C
          706172645C71635C7061720D0A5C6220444F204F424A45544F20444F20434F4E
          545241544F5C62305C7061720D0A5C706172645C6C696E655C706172645C716A
          2020202020202020205C6220436C5C2765317573756C6120315C2761612E5C62
          3020204F2070726573656E746520636F6E747261746F2074656D20636F6D6F20
          4F424A45544F20612076656E646120646520756D205C62205B6673636F6E7472
          61746F2E2270726F6475746F5F64657363726963616F225D5C6230202C207065
          6C6F205C622056454E4445444F525C62302020616F205C6220434F4D50524144
          4F525C6230202E205C6C696E652020202020202020205C6220436C5C27653175
          73756C6120325C2761612E5C623020204F2062656D206F626A65746F20646F20
          636F6E747261746F20706F737375692061732073656775696E74657320657370
          656369666963615C2765375C27663565733A205C62205B6673636F6E74726174
          6F2E2270726F6475746F5F6974656E73225D5B6673636F6E747261746F2E2264
          6F635F66697363616C225D5C6230202E202020202020205C6C696E655C706172
          645C71635C7061720D0A5C62204441205245534552564120444520444F4D5C27
          63644E494F5C62305C7061720D0A5C706172645C6C696E655C706172645C716A
          2020202020202020205C6220436C5C2765317573756C6120335C2761612E5C62
          302020456D2076697274756465206461205265736572766120646520446F6D5C
          2765646E696F2C206573746162656C6563696461206E6573746520696E737472
          756D656E746F2C20666963612072657365727661646F20616F205C622056454E
          4445444F525C623020206F206469726569746F2064652070726F707269656461
          646520646F205C62205B6673636F6E747261746F2E2270726F6475746F5F6465
          7363726963616F225D5C6230202C206F626A65746F20646F20636F6E74726174
          6F2C2061745C276539206120746F74616C2071756974615C2765375C2765336F
          206461732070617263656C6173206573746162656C6563696461732070656C61
          73207061727465732070617261206F20706167616D656E746F2E205C6C696E65
          5C70617264202020202020202020202020202020205C7061720D0A5C70617264
          5C71635C6220444120434F4E53455256415C2763375C2763334F20452055534F
          20444F2042454D5C62305C7061720D0A5C706172645C6C696E655C706172645C
          716A2020202020202020205C6220436C5C2765317573756C6120345C2761612E
          5C62302020456E7175616E746F206E5C2765336F20666F72656D207061676173
          20746F6461732061732070617263656C61732C206F205C6220434F4D50524144
          4F525C623020206F6272696761722D73652D5C27653120706F72207A656C6172
          2070656C6120636F6E73657276615C2765375C2765336F20646F206571756970
          616D656E746F20646520496E666F726D5C276531746963612C2070726F766964
          656E6369616E646F20746F646F73206F73207265637572736F73206E65636573
          735C27653172696F73205C276530206D616E7574656E5C2765375C2765336F20
          646F206D65736D6F2C20636F7272656E646F20746F646F73206F732063757374
          6F7320706F722073756120636F6E74612C20646576656E646F20637569646172
          2074616D625C2765396D20646120617061725C2765616E636961206520646F20
          626F6D2066756E63696F6E616D656E746F20646F206D65736D6F2C2073656E64
          6F2D6C686520696D70656469646F20616C746572617220612065737472757475
          726120646F205C62205B6673636F6E747261746F2E2270726F6475746F5F6465
          7363726963616F225D5C6230202C206465206D6F646F20717565206E5C276533
          6F20646573766972747565207365752075736F206520616C7465726520737561
          732063617261637465725C2765647374696361732E205C6C696E655C70617264
          5C62202020202020202020436C5C2765317573756C6120355C2761612E5C6230
          20204F205C6220434F4D505241444F525C62302020736520636F6D70726F6D65
          74652C20656E7175616E746F206E5C2765336F2065737469766572656D207175
          69746164617320746F6461732061732070617263656C6173206573746162656C
          656369646173206E6F20636F6E747261746F2C2075735C2765312D6C6F206578
          636C75736976616D656E746520706172612075736F20636F6D6F206571756970
          616D656E746F206465206573637269745C27663372696F2E205C6C696E652020
          2020202020202020202020205C7061720D0A5C706172645C71635C6220444F20
          5052455C2763374F5C62305C7061720D0A5C706172645C716A5C6C696E652020
          202020202020205C6220436C5C2765317573756C6120365C2761612E5C623020
          20506F7220666F725C2765376120646573746520696E737472756D656E746F2C
          206F205C6220434F4D505241444F525C6230202070616761725C27653120616F
          205C622056454E4445444F525C623020206F2076616C6F72206465205C62205B
          6673636F6E747261746F2E2270726F6475746F5F76616C6F72225D20285B6673
          636F6E747261746F2E2270726F6475746F5F76616C6F725F657874656E736F22
          5D295C6230202C20646576656E646F206F206D65736D6F20736572207061676F
          20656D205C62205B6673636F6E747261746F2E2270726573746163616F5F7174
          6465225D5C623020207072657374615C2765375C2766356573206D656E736169
          73206465205224205C62205B6673636F6E747261746F2E227072657374616361
          6F5F76616C6F72225D20285B6673636F6E747261746F2E227072657374616361
          6F5F76616C6F725F657874656E736F225D295C623020206361646120756D612C
          2076656E63656E646F2D736520612063616461206D5C27656173206E6F206469
          61205C62205B6673636F6E747261746F2E2270726573746163616F5F64696122
          5D5C6230202E5C6C696E65202020202020202020202020202020205C7061720D
          0A5C706172645C71635C62204441205245534349535C2763334F5C62305C7061
          720D0A5C706172645C6C696E655C706172645C716A2020202020202020205C62
          20436C5C2765317573756C6120375C2761612E5C62302020456D206E5C276533
          6F206F636F7272656E646F206F20706167616D656E746F206461732070726573
          74615C2765375C27663565732C20706F7220706172746520646F205C6220434F
          4D505241444F525C6230202C206E6F73207072617A6F73206573746970756C61
          646F732C2068617665725C276531206F2076656E63696D656E746F20696D6564
          6961746F206461732064656D6169732070617263656C61732C20706F64656E64
          6F206F205C622056454E4445444F525C6230202070726F6D6F7665722C20696E
          646570656E64656E74656D656E746520646520696E74657270656C615C276537
          5C2765336F206A7564696369616C206F752065787472616A7564696369616C2C
          20617669736F206F75206E6F7469666963615C2765375C2765336F2C20612072
          65736369735C2765336F20646573746520696E737472756D656E746F2C207065
          7264656E646F206F205C6220434F4D505241444F525C623020206F732076616C
          6F726573207061676F73206E6173206F75747261732070617263656C61732C20
          656D206661766F7220646F205C622056454E4445444F525C6230202C206E5C27
          65336F2074656E646F206F206469726569746F20646520706C65697465617220
          696E64656E697A615C2765375C2765336F2C207265706F73695C2765375C2765
          336F206F7520636F6D70656E73615C2765375C2765336F2C2065206E656D2061
          20726574656E5C2765375C2765336F20646F206F626A65746F20646F20636F6E
          747261746F2E205C6C696E652020202020202020205C6220436C5C2765317573
          756C6120385C2761612E5C623020204F205C622056454E4445444F525C623020
          20706F6465725C2765312072657363696E646972206573746520636F6E747261
          746F2C20646520706C656E6F206469726569746F2C20696E646570656E64656E
          74656D656E7465206465207175616C71756572206E6F7469666963615C276537
          5C2765336F2C20696E74657270656C615C2765375C2765336F206A7564696369
          616C206F752065787472616A7564696369616C2C207365206F205C6220434F4D
          505241444F525C62302020656E7472617220656D2065737461646F2064652069
          6E736F6C765C2765616E636961206F75207365206C686520666F722064656372
          657461646120612066616C5C2765616E63696120706F72207175616C71756572
          20645C27656476696461207175652074656E686120636F6E7472615C27656464
          6F20666F726120646573746520696E737472756D656E746F2E205C6C696E6520
          20202020202020205C6220436C5C2765317573756C6120395C2761612E5C6230
          2020456D20636F6E6669726D6164612061207265736369735C2765336F206465
          73746520636F6E747261746F2C206F205C6220434F4D505241444F525C623020
          2066696361206F6272696761646F206120726573746974756972206F205C6220
          5B6673636F6E747261746F2E2270726F6475746F5F64657363726963616F225D
          5C6230202C206F626A65746F20646573746520636F6E747261746F2C20616F20
          5C622056454E4445444F525C6230202C20656D20626F6D2065737461646F2064
          6520636F6E73657276615C2765375C2765336F2C2073616C766F206F20646573
          6761737465206E61747572616C2070656C6F2075736F2E205C6C696E655C7061
          72642020202020202020205C7061720D0A5C706172645C71635C6220434F4E44
          495C2763375C2764354553204745524149535C62305C7061720D0A5C70617264
          5C716A20202020202020205C6C696E652020202020202020205C6220436C5C27
          65317573756C612031305C2761612E5C623020204F205C622056454E4445444F
          525C6230202074656D206F206469726569746F2064652C20647572616E746520
          6F20686F725C27653172696F20636F6D65726369616C20646F205C6220434F4D
          505241444F525C6230202C20696E73706563696F6E6172206F205C62205B6673
          636F6E747261746F2E2270726F6475746F5F64657363726963616F225D5C6230
          202C206F626A65746F20646F20636F6E747261746F2C20612066696D20646520
          7665726966696361722073657520706572666569746F2066756E63696F6E616D
          656E746F2065207365206573745C2765312073656E646F20757361646F207061
          7261206F2066696D206578636C757369766F20707265766973746F206E612063
          6C5C2765317573756C6120355C27616120646573746520696E737472756D656E
          746F2E205C6C696E652020202020202020205C6220436C5C2765317573756C61
          2031315C2761612E5C623020204E5C2765336F20706F6465725C276531206F20
          5C6220434F4D505241444F525C623020206365646572206F2062656D2C206F62
          6A65746F20646F20636F6E747261746F2C206120746572636569726F2C207365
          6D20612064657669646120616E755C2765616E63696120646F205C622056454E
          4445444F525C6230202C206E656D20636F6E737469747569722C206469726574
          61206F7520696E6469726574616D656E74652C205C2766346E75732C2070656E
          686F722C206361755C2765375C2765336F206F75207175616C71756572206F75
          74726F2067726176616D6520736F627265206D65736D6F2C2061745C27653920
          7175652073656A616D20717569746164617320746F6461732061732070617263
          656C617320707265766973746173206E6573746520636F6E747261746F2E205C
          6C696E652020202020202020205C6220436C5C2765317573756C612031325C27
          61612E5C623020204F205C622056454E4445444F525C62302020706F73737569
          206F206469726569746F20646520706C656974656172207175616C7175657220
          6D65646964612070726F7465746F726120646F20646F6D5C2765646E696F2064
          6F206F626A65746F20646573746520696E737472756D656E746F2C2062656D20
          636F6D6F2073652070726F746567657220636F6E747261207175616C71756572
          2061746F20717565206F20696D70655C27653761206465206578657263657220
          74616C206469726569746F2E205C6C696E655C7061726420202020202020205C
          6C696E655C706172645C71635C6220444F20464F524F5C62305C6C696E652020
          2020202020205C6C696E655C706172645C716A2020202020202020205C622043
          6C5C2765317573756C612031335C2761612E5C62302020506172612064697269
          6D69722071756169737175657220636F6E74726F765C2765397273696173206F
          7269756E64617320646F20434F4E545241544F2C206173207061727465732065
          6C6567656D206F20666F726F20646120636F6D61726361206465205C62205B66
          73636F6E747261746F2E22456D70726573615F436964616465225D5C6230203B
          205C6C696E65202020202020202020506F72206573746172656D20617373696D
          206A7573746F73206520636F6E7472617461646F732C206669726D616D206F20
          70726573656E746520696E737472756D656E746F2C20656D2064756173207669
          617320646520696775616C2074656F722C206A756E74616D656E746520636F6D
          2032202864756173292074657374656D756E6861732E205C6C696E655C706172
          645C716320202020202020205C6C696E65205B6673636F6E747261746F2E2245
          6D70726573615F436964616465225D205B6673636F6E747261746F2E22646174
          61225D5C7061720D0A7D0D0A00}
      end
      object Memo2: TfrxMemoView
        Align = baBottom
        Top = 1005.354980000000000000
        Width = 718.110700000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #160#160#160' ________ '
          #160#160#160#160#160#160#160' Nota: '
          
            #160#160#160#160#160#160#160' 1. Os contratos de compra e venda regem-se pelo previsto' +
            ' nos arts. 1.122 a 1.139 do C'#243'digo Civil, e a reserva de dom'#237'nio' +
            ' est'#225' presente nos arts. 1.070 a 1.071 do C'#243'digo de Processo Civ' +
            'il.')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Top = 895.748610000000000000
        Width = 64.252010000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'Vendedor:')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 98.267780000000000000
        Top = 907.087200000000000000
        Width = 241.889920000000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo3: TfrxMemoView
        Left = 98.267780000000000000
        Top = 907.087200000000000000
        Width = 241.889920000000000000
        Height = 15.118120000000000000
        DataField = 'resp1_nome'
        DataSet = fscontrato
        DataSetName = 'fscontrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[fscontrato."resp1_nome"]')
        ParentFont = False
      end
      object Line2: TfrxLineView
        Left = 438.425480000000000000
        Top = 907.087200000000000000
        Width = 241.889920000000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo4: TfrxMemoView
        Left = 438.425480000000000000
        Top = 907.087200000000000000
        Width = 241.889920000000000000
        Height = 15.118120000000000000
        DataField = 'resp2_nome'
        DataSet = fscontrato
        DataSetName = 'fscontrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[fscontrato."resp2_nome"]')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Top = 948.662030000000000000
        Width = 64.252010000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'Comprador:')
        ParentFont = False
      end
      object Line3: TfrxLineView
        Left = 260.787570000000000000
        Top = 948.662030000000000000
        Width = 241.889920000000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo6: TfrxMemoView
        Left = 260.787570000000000000
        Top = 948.662030000000000000
        Width = 241.889920000000000000
        Height = 15.118120000000000000
        DataField = 'r1_nome'
        DataSet = fscontrato
        DataSetName = 'fscontrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[fscontrato."r1_nome"]')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Top = 990.236860000000000000
        Width = 64.252010000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'Testemunhas:')
        ParentFont = False
      end
      object Line4: TfrxLineView
        Left = 98.267780000000000000
        Top = 990.236860000000000000
        Width = 241.889920000000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo8: TfrxMemoView
        Left = 98.267780000000000000
        Top = 990.236860000000000000
        Width = 241.889920000000000000
        Height = 26.456710000000000000
        DataField = 'testemunha1'
        DataSet = fscontrato
        DataSetName = 'fscontrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[fscontrato."testemunha1"]')
        ParentFont = False
      end
      object Line5: TfrxLineView
        Left = 438.425480000000000000
        Top = 990.236860000000000000
        Width = 241.889920000000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo9: TfrxMemoView
        Left = 438.425480000000000000
        Top = 990.236860000000000000
        Width = 241.889920000000000000
        Height = 26.456710000000000000
        DataField = 'testemunha2'
        DataSet = fscontrato
        DataSetName = 'fscontrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[fscontrato."testemunha2"]')
        ParentFont = False
      end
      object Line6: TfrxLineView
        Left = 589.606680000000000000
        Top = 2090.080090000000000000
        Width = 241.889920000000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo10: TfrxMemoView
        Left = 589.606680000000000000
        Top = 2090.080090000000000000
        Width = 241.889920000000000000
        Height = 15.118120000000000000
        DataField = 'cliente_nome'
        DataSet = fscontrato
        DataSetName = 'fscontrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[fscontrato."cliente_nome"]')
        ParentFont = False
      end
    end
  end
  object fscontrato: TfrxDBDataset
    UserName = 'fscontrato'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Empresa_Nome=Empresa_Nome'
      'Empresa_Cidade=Empresa_Cidade'
      'Empresa_Endereco=Empresa_Endereco'
      'Empresa_Bairro=Empresa_Bairro'
      'Empresa_CEP=Empresa_CEP'
      'Empresa_CNPJ=Empresa_CNPJ'
      'Empresa_IE=Empresa_IE'
      'resp1_nome=resp1_nome'
      'resp1_nacionalidade=resp1_nacionalidade'
      'resp1_est_civil=resp1_est_civil'
      'resp1_profissao=resp1_profissao'
      'resp1_rg=resp1_rg'
      'resp1_cpf=resp1_cpf'
      'resp1_endereco=resp1_endereco'
      'resp1_bairro=resp1_bairro'
      'resp1_cidade=resp1_cidade'
      'resp1_uf=resp1_uf'
      'resp1_cep=resp1_cep'
      'resp2_nome=resp2_nome'
      'resp2_nacionalidade=resp2_nacionalidade'
      'resp2_est_civil=resp2_est_civil'
      'resp2_profissao=resp2_profissao'
      'resp2_rg=resp2_rg'
      'resp2_cpf=resp2_cpf'
      'resp2_endereco=resp2_endereco'
      'resp2_bairro=resp2_bairro'
      'resp2_cidade=resp2_cidade'
      'resp2_uf=resp2_uf'
      'resp2_cep=resp2_cep'
      'cliente_nome=cliente_nome'
      'cliente_est_civil=cliente_est_civil'
      'cliente_profissao=cliente_profissao'
      'cliente_endereco=cliente_endereco'
      'cliente_estado=cliente_estado'
      'cliente_bairro=cliente_bairro'
      'cliente_cep=cliente_cep'
      'produto_descricao=produto_descricao'
      'produto_valor=produto_valor'
      'produto_valor_extenso=produto_valor_extenso'
      'prestacao_qtde=prestacao_qtde'
      'prestacao_valor=prestacao_valor'
      'prestacao_valor_extenso=prestacao_valor_extenso'
      'testemunha1=testemunha1'
      'testemunha2=testemunha2'
      'EMPRESA_UF=EMPRESA_UF'
      'produto_itens=produto_itens'
      'cliente_cidade=cliente_cidade'
      'cliente_rg=cliente_rg'
      'cliente_cpf=cliente_cpf'
      'data=data'
      'prestacao_dia=prestacao_dia'
      'r1_nome=r1_nome'
      'r1_cpf=r1_cpf'
      'r1_rg=r1_rg'
      'r1_endereco=r1_endereco'
      'r1_bairro=r1_bairro'
      'r1_cidade=r1_cidade'
      'r1_uf=r1_uf'
      'r1_cep=r1_cep'
      'r1_estado_civil=r1_estado_civil'
      'r1_profissao=r1_profissao'
      'r2_nome=r2_nome'
      'r2_cpf=r2_cpf'
      'r2_rg=r2_rg'
      'r2_endereco=r2_endereco'
      'r2_bairro=r2_bairro'
      'r2_cidade=r2_cidade'
      'r2_uf=r2_uf'
      'r2_cep=r2_cep'
      'r2_estado_civil=r2_estado_civil'
      'r2_profissao=r2_profissao'
      'doc_fiscal=doc_fiscal')
    DataSet = qrcontrato
    BCDToCurrency = False
    Left = 256
    Top = 8
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 296
    Top = 8
  end
  object qrcontrato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 320
    Top = 8
    object qrcontratoEmpresa_Nome: TStringField
      FieldName = 'Empresa_Nome'
      Size = 100
    end
    object qrcontratoEmpresa_Cidade: TStringField
      FieldName = 'Empresa_Cidade'
      Size = 100
    end
    object qrcontratoEmpresa_Endereco: TStringField
      FieldName = 'Empresa_Endereco'
      Size = 100
    end
    object qrcontratoEmpresa_Bairro: TStringField
      FieldName = 'Empresa_Bairro'
      Size = 100
    end
    object qrcontratoEmpresa_CEP: TStringField
      FieldName = 'Empresa_CEP'
    end
    object qrcontratoEmpresa_CNPJ: TStringField
      FieldName = 'Empresa_CNPJ'
      Size = 30
    end
    object qrcontratoEmpresa_IE: TStringField
      FieldName = 'Empresa_IE'
    end
    object qrcontratoresp1_nome: TStringField
      FieldName = 'resp1_nome'
      Size = 100
    end
    object qrcontratoresp1_nacionalidade: TStringField
      FieldName = 'resp1_nacionalidade'
      Size = 100
    end
    object qrcontratoresp1_est_civil: TStringField
      FieldName = 'resp1_est_civil'
      Size = 100
    end
    object qrcontratoresp1_profissao: TStringField
      FieldName = 'resp1_profissao'
      Size = 100
    end
    object qrcontratoresp1_rg: TStringField
      FieldName = 'resp1_rg'
      Size = 100
    end
    object qrcontratoresp1_cpf: TStringField
      FieldName = 'resp1_cpf'
      Size = 100
    end
    object qrcontratoresp1_endereco: TStringField
      FieldName = 'resp1_endereco'
      Size = 100
    end
    object qrcontratoresp1_bairro: TStringField
      FieldName = 'resp1_bairro'
      Size = 100
    end
    object qrcontratoresp1_cidade: TStringField
      FieldName = 'resp1_cidade'
      Size = 100
    end
    object qrcontratoresp1_uf: TStringField
      FieldName = 'resp1_uf'
      Size = 100
    end
    object qrcontratoresp1_cep: TStringField
      FieldName = 'resp1_cep'
      Size = 100
    end
    object qrcontratoresp2_nome: TStringField
      FieldName = 'resp2_nome'
      Size = 100
    end
    object qrcontratoresp2_nacionalidade: TStringField
      FieldName = 'resp2_nacionalidade'
      Size = 100
    end
    object qrcontratoresp2_est_civil: TStringField
      FieldName = 'resp2_est_civil'
      Size = 100
    end
    object qrcontratoresp2_profissao: TStringField
      FieldName = 'resp2_profissao'
      Size = 100
    end
    object qrcontratoresp2_rg: TStringField
      FieldName = 'resp2_rg'
      Size = 100
    end
    object qrcontratoresp2_cpf: TStringField
      FieldName = 'resp2_cpf'
      Size = 100
    end
    object qrcontratoresp2_endereco: TStringField
      FieldName = 'resp2_endereco'
      Size = 100
    end
    object qrcontratoresp2_bairro: TStringField
      FieldName = 'resp2_bairro'
      Size = 100
    end
    object qrcontratoresp2_cidade: TStringField
      FieldName = 'resp2_cidade'
      Size = 100
    end
    object qrcontratoresp2_uf: TStringField
      FieldName = 'resp2_uf'
      Size = 100
    end
    object qrcontratoresp2_cep: TStringField
      FieldName = 'resp2_cep'
      Size = 100
    end
    object qrcontratocliente_nome: TStringField
      FieldName = 'cliente_nome'
      Size = 100
    end
    object qrcontratocliente_est_civil: TStringField
      FieldName = 'cliente_est_civil'
      Size = 100
    end
    object qrcontratocliente_profissao: TStringField
      FieldName = 'cliente_profissao'
      Size = 100
    end
    object qrcontratocliente_endereco: TStringField
      FieldName = 'cliente_endereco'
      Size = 100
    end
    object qrcontratocliente_estado: TStringField
      FieldName = 'cliente_estado'
      Size = 100
    end
    object qrcontratocliente_bairro: TStringField
      FieldName = 'cliente_bairro'
      Size = 100
    end
    object qrcontratocliente_cep: TStringField
      FieldName = 'cliente_cep'
      Size = 100
    end
    object qrcontratoproduto_descricao: TStringField
      FieldName = 'produto_descricao'
      Size = 100
    end
    object qrcontratoproduto_valor: TStringField
      FieldName = 'produto_valor'
      Size = 100
    end
    object qrcontratoproduto_valor_extenso: TStringField
      FieldName = 'produto_valor_extenso'
      Size = 200
    end
    object qrcontratoprestacao_qtde: TStringField
      FieldName = 'prestacao_qtde'
      Size = 100
    end
    object qrcontratoprestacao_valor: TStringField
      FieldName = 'prestacao_valor'
      Size = 100
    end
    object qrcontratoprestacao_valor_extenso: TStringField
      FieldName = 'prestacao_valor_extenso'
      Size = 200
    end
    object qrcontratotestemunha1: TStringField
      FieldName = 'testemunha1'
      Size = 100
    end
    object qrcontratotestemunha2: TStringField
      FieldName = 'testemunha2'
      Size = 100
    end
    object qrcontratoEMPRESA_UF: TStringField
      FieldName = 'EMPRESA_UF'
      Size = 50
    end
    object qrcontratoproduto_itens: TMemoField
      DisplayWidth = 500
      FieldName = 'produto_itens'
      BlobType = ftMemo
    end
    object qrcontratocliente_cidade: TStringField
      FieldName = 'cliente_cidade'
    end
    object qrcontratocliente_rg: TStringField
      FieldName = 'cliente_rg'
    end
    object qrcontratocliente_cpf: TStringField
      DisplayWidth = 100
      FieldName = 'cliente_cpf'
    end
    object qrcontratodata: TStringField
      FieldName = 'data'
      Size = 100
    end
    object qrcontratoprestacao_dia: TStringField
      FieldName = 'prestacao_dia'
    end
    object qrcontrator1_nome: TStringField
      FieldName = 'r1_nome'
      Size = 80
    end
    object qrcontrator1_cpf: TStringField
      FieldName = 'r1_cpf'
      Size = 25
    end
    object qrcontrator1_rg: TStringField
      FieldName = 'r1_rg'
      Size = 25
    end
    object qrcontrator1_endereco: TStringField
      FieldName = 'r1_endereco'
      Size = 80
    end
    object qrcontrator1_bairro: TStringField
      FieldName = 'r1_bairro'
      Size = 50
    end
    object qrcontrator1_cidade: TStringField
      FieldName = 'r1_cidade'
      Size = 50
    end
    object qrcontrator1_uf: TStringField
      FieldName = 'r1_uf'
      Size = 2
    end
    object qrcontrator1_cep: TStringField
      FieldName = 'r1_cep'
      Size = 15
    end
    object qrcontrator1_estado_civil: TStringField
      FieldName = 'r1_estado_civil'
      Size = 40
    end
    object qrcontrator1_profissao: TStringField
      FieldName = 'r1_profissao'
      Size = 40
    end
    object qrcontrator2_nome: TStringField
      FieldName = 'r2_nome'
      Size = 80
    end
    object qrcontrator2_cpf: TStringField
      FieldName = 'r2_cpf'
      Size = 25
    end
    object qrcontrator2_rg: TStringField
      FieldName = 'r2_rg'
      Size = 25
    end
    object qrcontrator2_endereco: TStringField
      FieldName = 'r2_endereco'
      Size = 80
    end
    object qrcontrator2_bairro: TStringField
      FieldName = 'r2_bairro'
      Size = 50
    end
    object qrcontrator2_cidade: TStringField
      FieldName = 'r2_cidade'
      Size = 50
    end
    object qrcontrator2_uf: TStringField
      FieldName = 'r2_uf'
      Size = 2
    end
    object qrcontrator2_cep: TStringField
      FieldName = 'r2_cep'
      Size = 15
    end
    object qrcontrator2_estado_civil: TStringField
      FieldName = 'r2_estado_civil'
      Size = 50
    end
    object qrcontrator2_profissao: TStringField
      FieldName = 'r2_profissao'
      Size = 50
    end
    object qrcontratodoc_fiscal: TStringField
      FieldName = 'doc_fiscal'
      Size = 40
    end
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 352
    Top = 8
  end
  object qrProduto: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 384
    Top = 8
  end
  object qrPrestacao: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 416
    Top = 8
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 456
    Top = 8
  end
end

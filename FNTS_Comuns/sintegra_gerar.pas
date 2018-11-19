unit sintegra_gerar;

interface

uses
  System.Rtti, System.TypInfo,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ComCtrls, DateUtils,
  DBCtrls,  ExtCtrls, Inifiles, ShellApi, jpeg, JvGIF,
  Collection, TFlatPanelUnit, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Menus, Grids, DBGrids, Mask, RzEdit, RzDBEdit,
  Wwdbigrd, Wwdbgrid, wwdblook, AdvToolBar, AdvGlowButton,
  AdvOfficeStatusBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvOfficeStatusBarStylers, ImgList, AdvMenus,
  AdvMenuStylers, AdvProgressBar, ACBrBase, ACBrValidador, RzButton,
  RzRadChk, RzBckgnd, RzCmboBx, AdvShapeButton, RzBtnEdt, RzPrgres, PageView, TFlatGaugeUnit, System.ImageList, JvExMask, JvToolEdit,
  ACBrSintegra;

type
  Tfrmsintegra_gerar = class(TForm)
    OpenDialog1: TOpenDialog;
    DtsQrySintegra: TDataSource;
    Label7: TLabel;
    SaveDialog1: TSaveDialog;
    QrySIntegra: TZQuery;
    QrySintegra_D: TZQuery;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    ZQuery1: TZQuery;
    QRSAIDA: TZQuery;
    QRSAIDA_ITEM: TZQuery;
    QRITEM: TZQuery;
    QRNOTA: TZQuery;
    QrAdiciona_item: TZQuery;
    qrsaida_temp: TZQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    ImageList1: TImageList;
    AdvOfficeStatusBarOfficeStyler3: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler5: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    qrentrada: TZQuery;
    qritem2: TZQuery;
    qrentrada_temp: TZQuery;
    qrentrada_item: TZQuery;
    dsentrada: TDataSource;
    dssaida: TDataSource;
    qrentrada_check: TZQuery;
    qrsaida_check: TZQuery;
    Val: TACBrValidador;
    qrtransporte: TZQuery;
    dstransporte: TDataSource;
    qrtransportefornecedor: TStringField;
    Panel2: TPanel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    lcnpj: TRzEdit;
    lie: TRzEdit;
    ScrollBox1: TScrollBox;
    AdvShapeButton1: TAdvShapeButton;
    Label24: TLabel;
    RzSeparator1: TRzSeparator;
    Label25: TLabel;
    AdvShapeButton3: TAdvShapeButton;
    RzSeparator2: TRzSeparator;
    Label27: TLabel;
    AdvShapeButton5: TAdvShapeButton;
    RzSeparator4: TRzSeparator;
    Label28: TLabel;
    AdvShapeButton6: TAdvShapeButton;
    RzSeparator6: TRzSeparator;
    RzSeparator7: TRzSeparator;
    RzSeparator8: TRzSeparator;
    RzSeparator9: TRzSeparator;
    RzSeparator10: TRzSeparator;
    Label29: TLabel;
    AdvShapeButton7: TAdvShapeButton;
    RzSeparator5: TRzSeparator;
    RzSeparator11: TRzSeparator;
    Label30: TLabel;
    AdvShapeButton8: TAdvShapeButton;
    RzSeparator12: TRzSeparator;
    RzSeparator13: TRzSeparator;
    RzSeparator19: TRzSeparator;
    RzSeparator20: TRzSeparator;
    RzSeparator21: TRzSeparator;
    RzSeparator22: TRzSeparator;
    RzSeparator23: TRzSeparator;
    RzSeparator24: TRzSeparator;
    RzSeparator25: TRzSeparator;
    RzCheckBox1: TRzCheckBox;
    RzCheckBox2: TRzCheckBox;
    bregistro50: TRzCheckBox;
    bregistro54: TRzCheckBox;
    bregistro70: TRzCheckBox;
    bregistro74: TRzCheckBox;
    RVENDA: TRzCheckBox;
    RCONSUMO: TRzCheckBox;
    RINSUMO: TRzCheckBox;
    RMATERIA: TRzCheckBox;
    bregistro75: TRzCheckBox;
    bregistro90: TRzCheckBox;
    COMBO_EMPRESA: TwwDBLookupCombo;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    PageView1: TPageView;
    PageSheet6: TPageSheet;
    progressbar1: TRzProgressBar;
    Bevel3: TBevel;
    PageSheet7: TPageSheet;
    PageView8: TPageView;
    PageSheet9: TPageSheet;
    Bevel4: TBevel;
    Panel4: TPanel;
    PageSheet17: TPageSheet;
    Bevel8: TBevel;
    Panel7: TPanel;
    PageSheet20: TPageSheet;
    Bevel9: TBevel;
    Panel8: TPanel;
    PageSheet21: TPageSheet;
    Bevel10: TBevel;
    Panel9: TPanel;
    wwDBGrid7: TwwDBGrid;
    PageSheet18: TPageSheet;
    Bevel11: TBevel;
    wwDBGrid8: TwwDBGrid;
    Panel10: TPanel;
    AdvGlowButton8: TAdvGlowButton;
    PageSheet19: TPageSheet;
    wwDBGrid9: TwwDBGrid;
    PageSheet22: TPageSheet;
    Label36: TLabel;
    Label37: TLabel;
    edit1: TRzButtonEdit;
    ed_validador: TRzButtonEdit;
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    BSAIDA: TButton;
    BENTRADA: TButton;
    bgerar_inventario: TButton;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    btotaliza_entrada: TButton;
    btotaliza_transporte: TButton;
    Label10: TLabel;
    Label22: TLabel;
    ECFOP: TEdit;
    rcfop: TRzRadioButton;
    rnfiscal: TRzRadioButton;
    rtotal_entrada: TRzNumericEdit;
    AdvGlowButton4: TAdvGlowButton;
    Label12: TLabel;
    Label13: TLabel;
    ECFOP2: TEdit;
    rcfop2: TRzRadioButton;
    rnfiscal2: TRzRadioButton;
    rtotal_saida: TRzNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Label2: TLabel;
    rtotal_transporte: TRzNumericEdit;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    PageView2: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid4: TwwDBGrid;
    btotaliza_saida: TButton;
    btotaliza_saida_ent: TButton;
    qrtransporte_saida: TZQuery;
    dstransporte_saida: TDataSource;
    qrtransporte_saidadestinatario: TStringField;
    Button1: TButton;
    query: TZQuery;
    query1: TZQuery;
    FlatGauge1: TFlatGauge;
    batualizar_inventario: TButton;
    qrinventario: TZQuery;
    dsinventario: TDataSource;
    dscfop: TDataSource;
    qrcfop: TZQuery;
    Panel3: TPanel;
    btgerar: TAdvGlowButton;
    btabrir: TAdvGlowButton;
    btvalidar: TAdvGlowButton;
    btfechar: TAdvGlowButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    qrentrada_checkCODIGO: TWideStringField;
    qrentrada_checkTURBO: TIntegerField;
    qrentrada_checkTIPO: TWideStringField;
    qrentrada_checkCODIGO_EMPRESA: TIntegerField;
    qrentrada_checkCFOP: TWideStringField;
    qrentrada_checkNOTAFISCAL: TWideStringField;
    qrentrada_checkSERIE: TWideStringField;
    qrentrada_checkSUBSERIE: TWideStringField;
    qrentrada_checkESPECIE: TWideStringField;
    qrentrada_checkSINTEGRA: TWideStringField;
    qrentrada_checkMODELO_NF: TWideStringField;
    qrentrada_checkS_TRIB: TWideStringField;
    qrentrada_checkCODIGO_CLIENTE: TIntegerField;
    qrentrada_checkCPF_CLIENTE: TWideStringField;
    qrentrada_checkCNPJ_CLIENTE: TWideStringField;
    qrentrada_checkIE_CLIENTE: TWideStringField;
    qrentrada_checkUF_IE_CLIENTE: TWideStringField;
    qrentrada_checkTIPO_VENDA: TWideStringField;
    qrentrada_checkTIPO_FRETE: TWideStringField;
    qrinventario_checkDATA: TDateField;
    qrinventario_checkDATA_ESCRITURACAO: TDateField;
    qrentrada_checkCODIGO_CONTABIL: TIntegerField;
    qrentrada_checkDESDOBRAMENTO: TWideStringField;
    qrentrada_checkVALOR_CONTABIL: TFloatField;
    qrentrada_checkVALOR_MERCADORIAS: TFloatField;
    qrentrada_checkALIQUOTA_ICMS: TFloatField;
    qrentrada_checkCONDPGTO: TWideStringField;
    qrentrada_checkCONDICAO_PAGAMENTO: TWideStringField;
    qrentrada_checkCODEMPRESA: TIntegerField;
    qrentrada_checkOBS1: TWideStringField;
    qrentrada_checkOBS2: TWideStringField;
    qrentrada_checkCODLANCAMENTO: TWideStringField;
    qrentrada_checkBASE_ICMS: TFloatField;
    qrentrada_checkVALOR_ICMS_CREDITADO: TFloatField;
    qrentrada_checkVALOR_ICMS_ISENTAS: TFloatField;
    qrentrada_checkVALOR_ICMS_OUTRAS: TFloatField;
    qrentrada_checkALIQUOTA_IPI: TFloatField;
    qrentrada_checkBASE_IPI: TFloatField;
    qrentrada_checkVALOR_IPI_CREDITADO: TFloatField;
    qrentrada_checkVALOR_IPI_CREDITADO50: TFloatField;
    qrentrada_checkVALOR_IPI_ISENTAS: TFloatField;
    qrentrada_checkVALOR_IPI_OUTRAS: TFloatField;
    qrentrada_checkVALOR_IPI_NAO_CREDITADO: TFloatField;
    qrentrada_checkBASE_SUBSTITUICAO: TFloatField;
    qrentrada_checkVALOR_SUBSTITUICAO: TFloatField;
    qrentrada_checkVALOR_FRETE: TFloatField;
    qrentrada_checkVALOR_SEGURO: TFloatField;
    qrentrada_checkVALOR_DESPESAS: TFloatField;
    qrentrada_checkALIQUOTA_ISS: TFloatField;
    qrentrada_checkVALOR_ISS: TFloatField;
    qrentrada_checkOBS3: TWideStringField;
    qrentrada_checkCONTABIL: TIntegerField;
    qrentrada_checkVALOR_ICMS: TFloatField;
    qrentrada_checkCODIGO_MINICIPIO: TIntegerField;
    qrentrada_checkCNPJ: TWideStringField;
    qrentrada_checkINSC_ESTADUAL: TWideStringField;
    qrentrada_checkUF: TWideStringField;
    qrentrada_checkCODIGO_PISCONFINS: TWideStringField;
    qrentrada_checkNOTA_CANCELADA: TWideStringField;
    qrentrada_checkOBSERVACAO: TBlobField;
    qrentrada_checkTRANSPORTE_NOME: TWideStringField;
    qrentrada_checkTRANSPORTE_PLACA: TWideStringField;
    qrentrada_checkTRANSPORTE_UF: TWideStringField;
    qrentrada_checkTRANSPORTE_CNPJCPF: TWideStringField;
    qrentrada_checkTRANSPORTE_ENDERECO: TWideStringField;
    qrentrada_checkTRANSPORTE_CIDADE: TWideStringField;
    qrentrada_checkTRANSPORTE_MUNICIPIO_UF: TWideStringField;
    qrentrada_checkTRANSPORTE_IE: TWideStringField;
    qrentrada_checkTRANSPORTE_QUANTIDADE: TFloatField;
    qrentrada_checkTRANSPORTE_MARCA: TWideStringField;
    qrentrada_checkTRANSPORTE_ESPECIE: TWideStringField;
    qrentrada_checkTRANSPORTE_NUMERO: TWideStringField;
    qrentrada_checkTRANSPORTE_PESO_BRUTO: TFloatField;
    qrentrada_checkTRANSPORTE_PESO_LIQUIDO: TFloatField;
    qrentrada_checkBASEICMS_PRODUTOS: TIntegerField;
    qrentrada_checkDESCONOT: TFloatField;
    qrentrada_checkDESCONTO: TFloatField;
    qrinventarioCODPRODUTO: TWideStringField;
    qrinventarioDATA: TDateField;
    qrinventarioESTOQUE: TFloatField;
    qrinventarioCUSTO: TFloatField;
    qrinventarioPRODUTO: TWideStringField;
    qrinventarioUNIDADE: TWideStringField;
    qrinventarioCST: TWideStringField;
    qrinventarioALIQUOTA: TFloatField;
    qrinventarioVENDA: TFloatField;
    qrinventarioTOTAL: TFloatField;
    qrinventarioTIPO: TWideStringField;
    qrinventarioANO: TIntegerField;
    qrinventarioMES: TIntegerField;
    qrinventarioDATA_POSTERIOR: TDateField;
    qrsaida_checkCODIGO: TWideStringField;
    qrsaida_checkTURBO: TIntegerField;
    qrsaida_checkTIPO: TWideStringField;
    qrsaida_checkCODIGO_EMPRESA: TIntegerField;
    qrsaida_checkCFOP: TWideStringField;
    qrsaida_checkNOTAFISCAL: TWideStringField;
    qrsaida_checkSERIE: TWideStringField;
    qrsaida_checkSUBSERIE: TWideStringField;
    qrsaida_checkESPECIE: TWideStringField;
    qrsaida_checkSINTEGRA: TWideStringField;
    qrsaida_checkMODELO_NF: TWideStringField;
    qrsaida_checkS_TRIB: TWideStringField;
    qrsaida_checkCODIGO_CLIENTE: TIntegerField;
    qrsaida_checkCPF_CLIENTE: TWideStringField;
    qrsaida_checkCNPJ_CLIENTE: TWideStringField;
    qrsaida_checkIE_CLIENTE: TWideStringField;
    qrsaida_checkUF_IE_CLIENTE: TWideStringField;
    qrsaida_checkTIPO_VENDA: TWideStringField;
    qrsaida_checkTIPO_FRETE: TWideStringField;
    qrinventario_checkDATA1: TDateField;
    qrinventario_checkDATA_ESCRITURACAO1: TDateField;
    qrsaida_checkCODIGO_CONTABIL: TIntegerField;
    qrsaida_checkDESDOBRAMENTO: TWideStringField;
    qrsaida_checkVALOR_CONTABIL: TFloatField;
    qrsaida_checkVALOR_MERCADORIAS: TFloatField;
    qrsaida_checkALIQUOTA_ICMS: TFloatField;
    qrsaida_checkCONDPGTO: TWideStringField;
    qrsaida_checkCONDICAO_PAGAMENTO: TWideStringField;
    qrsaida_checkCODEMPRESA: TIntegerField;
    qrsaida_checkOBS1: TWideStringField;
    qrsaida_checkOBS2: TWideStringField;
    qrsaida_checkCODLANCAMENTO: TWideStringField;
    qrsaida_checkBASE_ICMS: TFloatField;
    qrsaida_checkVALOR_ICMS_CREDITADO: TFloatField;
    qrsaida_checkVALOR_ICMS_ISENTAS: TFloatField;
    qrsaida_checkVALOR_ICMS_OUTRAS: TFloatField;
    qrsaida_checkALIQUOTA_IPI: TFloatField;
    qrsaida_checkBASE_IPI: TFloatField;
    qrsaida_checkVALOR_IPI_CREDITADO: TFloatField;
    qrsaida_checkVALOR_IPI_CREDITADO50: TFloatField;
    qrsaida_checkVALOR_IPI_ISENTAS: TFloatField;
    qrsaida_checkVALOR_IPI_OUTRAS: TFloatField;
    qrsaida_checkVALOR_IPI_NAO_CREDITADO: TFloatField;
    qrsaida_checkBASE_SUBSTITUICAO: TFloatField;
    qrsaida_checkVALOR_SUBSTITUICAO: TFloatField;
    qrsaida_checkVALOR_FRETE: TFloatField;
    qrsaida_checkVALOR_SEGURO: TFloatField;
    qrsaida_checkVALOR_DESPESAS: TFloatField;
    qrsaida_checkALIQUOTA_ISS: TFloatField;
    qrsaida_checkVALOR_ISS: TFloatField;
    qrsaida_checkOBS3: TWideStringField;
    qrsaida_checkCONTABIL: TIntegerField;
    qrsaida_checkVALOR_ICMS: TFloatField;
    qrsaida_checkCODIGO_MINICIPIO: TIntegerField;
    qrsaida_checkCNPJ: TWideStringField;
    qrsaida_checkINSC_ESTADUAL: TWideStringField;
    qrsaida_checkUF: TWideStringField;
    qrsaida_checkCODIGO_PISCONFINS: TWideStringField;
    qrsaida_checkNOTA_CANCELADA: TWideStringField;
    qrsaida_checkOBSERVACAO: TBlobField;
    qrsaida_checkTRANSPORTE_NOME: TWideStringField;
    qrsaida_checkTRANSPORTE_PLACA: TWideStringField;
    qrsaida_checkTRANSPORTE_UF: TWideStringField;
    qrsaida_checkTRANSPORTE_CNPJCPF: TWideStringField;
    qrsaida_checkTRANSPORTE_ENDERECO: TWideStringField;
    qrsaida_checkTRANSPORTE_CIDADE: TWideStringField;
    qrsaida_checkTRANSPORTE_MUNICIPIO_UF: TWideStringField;
    qrsaida_checkTRANSPORTE_IE: TWideStringField;
    qrsaida_checkTRANSPORTE_QUANTIDADE: TFloatField;
    qrsaida_checkTRANSPORTE_MARCA: TWideStringField;
    qrsaida_checkTRANSPORTE_ESPECIE: TWideStringField;
    qrsaida_checkTRANSPORTE_NUMERO: TWideStringField;
    qrsaida_checkTRANSPORTE_PESO_BRUTO: TFloatField;
    qrsaida_checkTRANSPORTE_PESO_LIQUIDO: TFloatField;
    qrsaida_checkDESCONTO: TFloatField;
    qrtransporteCODIGO: TWideStringField;
    qrtransporteNUMERO: TWideStringField;
    qrtransporteCODEMPRESA: TWideStringField;
    qrtransporteCODFORNECEDOR: TWideStringField;
    qrtransporteMODELO: TWideStringField;
    qrtransporteESPECIE: TWideStringField;
    qrtransporteSERIE: TWideStringField;
    qrtransporteCFOP: TWideStringField;
    qrinventarioDATA_EMISSAO: TDateField;
    qrinventarioDATA_LANCAMENTO: TDateField;
    qrtransporteCONF_BASEICMS: TFloatField;
    qrtransporteCONF_VALORICMS: TFloatField;
    qrtransporteCONF_BASESUB: TFloatField;
    qrtransporteCONF_VALORSUB: TFloatField;
    qrtransporteCONF_FRETE: TFloatField;
    qrtransporteCONF_SEGURO: TFloatField;
    qrtransporteCONF_OUTRAS: TFloatField;
    qrtransporteCONF_IPI: TFloatField;
    qrtransporteCONF_DESCONTO: TFloatField;
    qrtransporteCONF_TOTALPRODUTOS: TFloatField;
    qrtransporteCONF_TOTALNOTA: TFloatField;
    qrtransporteCONF_ICMSRETIDO: TFloatField;
    qrtransporteCONF_ICMSREDITO_PERC: TFloatField;
    qrtransporteBASE_ICMS: TFloatField;
    qrtransporteVALOR_ICMS: TFloatField;
    qrtransporteBASE_SUB: TFloatField;
    qrtransporteVALOR_SUB: TFloatField;
    qrtransporteFRETE: TFloatField;
    qrtransporteSEGURO: TFloatField;
    qrtransporteOUTRAS: TFloatField;
    qrtransporteIPI: TFloatField;
    qrtransporteDESCONTO: TFloatField;
    qrtransporteTOTAL_PRODUTOS: TFloatField;
    qrtransporteTOTAL_NOTA: TFloatField;
    qrtransporteTRANSP_NOME: TWideStringField;
    qrtransporteTRANSP_FRETE: TWideStringField;
    qrtransporteTRANSP_PLACA: TWideStringField;
    qrtransporteTRANSP_PLACAUF: TWideStringField;
    qrtransporteTRANSP_IE: TWideStringField;
    qrtransporteTRANSP_CNPJ: TWideStringField;
    qrtransporteTRANSP_ENDERECO: TWideStringField;
    qrtransporteTRANSP_CIDADE: TWideStringField;
    qrtransporteTRANSP_UF: TWideStringField;
    qrtransporteTRANSP_QTDE: TFloatField;
    qrtransporteTRANSP_ESPECIE: TWideStringField;
    qrtransporteTRANSP_MARCA: TWideStringField;
    qrtransporteTRANSP_NUMERO: TWideStringField;
    qrtransporteTRANSP_PESOBRUTO: TFloatField;
    qrtransporteTRANSP_PESOLIQUIDO: TFloatField;
    qrtransporteOBS1: TWideStringField;
    qrtransporteOBS2: TWideStringField;
    qrtransporteOBS3: TWideStringField;
    qrtransporteOBS4: TWideStringField;
    qrtransporteOBS5: TWideStringField;
    qrtransporteOBS6: TWideStringField;
    qrtransporteOBS7: TWideStringField;
    qrtransporteSITUACAO: TIntegerField;
    qrtransporteITENS: TIntegerField;
    qrtransporteTIPO: TWideStringField;
    qrtransporteNOTA_FISCAL: TWideStringField;
    qrtransporteVALOR_MERCADORIAS: TFloatField;
    qrtransporteCODREMETENTE: TWideStringField;
    qrtransporteICMS_ISENTO: TFloatField;
    qrtransporteICMS_OUTRAS: TFloatField;
    qrtransporteDESCONTO_INCIDENTE: TIntegerField;
    qrtransporteITEM_FRETE_VALOR: TFloatField;
    qrtransporteITEM_FRETE_BASE: TFloatField;
    qrtransporteITEM_FRETE_ALIQUOTA: TFloatField;
    qrtransporteITEM_FRETE_ICMS: TFloatField;
    qrtransporteITEM_SEGURO_VALOR: TFloatField;
    qrtransporteITEM_SEGURO_BASE: TFloatField;
    qrtransporteITEM_SEGURO_ALIQUOTA: TFloatField;
    qrtransporteITEM_SEGURO_ICMS: TFloatField;
    qrtransporteITEM_PIS_VALOR: TFloatField;
    qrtransporteITEM_PIS_BASE: TFloatField;
    qrtransporteITEM_PIS_ALIQUOTA: TFloatField;
    qrtransporteITEM_PIS_ICMS: TFloatField;
    qrtransporteITEM_COMPLEMENTO_VALOR: TFloatField;
    qrtransporteITEM_COMPLEMENTO_BASE: TFloatField;
    qrtransporteITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qrtransporteITEM_COMPLEMENTO_ICMS: TFloatField;
    qrtransporteITEM_SERVICO_VALOR: TFloatField;
    qrtransporteITEM_SERVICO_BASE: TFloatField;
    qrtransporteITEM_SERVICO_ALIQUOTA: TFloatField;
    qrtransporteITEM_SERVICO_ICMS: TFloatField;
    qrtransporteITEM_OUTRAS_VALOR: TFloatField;
    qrtransporteITEM_OUTRAS_BASE: TFloatField;
    qrtransporteITEM_OUTRAS_ALIQUOTA: TFloatField;
    qrtransporteITEM_OUTRAS_ICMS: TFloatField;
    qrtransporteITEM_ESPECIAL_TOTAL: TFloatField;
    qrtransporteITEM_ESPECIAL_VALOR: TFloatField;
    qrtransporteBASEICMS_PRODUTOS: TIntegerField;
    qrtransporteCONF_ITEM_ESPECIAL: TFloatField;
    qrtransporteOBS8: TWideStringField;
    qrtransporteCREDITO_ICMS: TFloatField;
    qrtransportePIS: TFloatField;
    qrtransporteCOFINS: TFloatField;
    qrtransporteOPERACAO: TWideStringField;
    qrtransporteINTEGRACAO: TIntegerField;
    qrtransporteAPROVEITA_CREDITO_ICMS: TWideStringField;
    qrtransporteCHAVE: TWideStringField;
    qrtransporte_saidaCODIGO: TWideStringField;
    qrtransporte_saidaNUMERO: TWideStringField;
    qrinventario_saidaDATA: TDateField;
    qrtransporte_saidaCFOP: TWideStringField;
    qrtransporte_saidaCODREMETENTE: TWideStringField;
    qrtransporte_saidaCODDESTINATARIO: TWideStringField;
    qrtransporte_saidaSITUACAO: TIntegerField;
    qrtransporte_saidaTIPO: TWideStringField;
    qrtransporte_saidaCONSIG_NOME: TWideStringField;
    qrtransporte_saidaCONSIG_ENDERECO: TWideStringField;
    qrtransporte_saidaCONSIG_CIDADE: TWideStringField;
    qrtransporte_saidaCONSIG_UF: TWideStringField;
    qrtransporte_saidaCONSIG_TIPO: TWideStringField;
    qrtransporte_saidaCONSIG_CALCULADO: TWideStringField;
    qrtransporte_saidaREDE_NOME: TWideStringField;
    qrtransporte_saidaREDE_ENDERECO: TWideStringField;
    qrtransporte_saidaREDE_CIDADE: TWideStringField;
    qrtransporte_saidaREDE_UF: TWideStringField;
    qrtransporte_saidaREDE_TIPO: TWideStringField;
    qrtransporte_saidaREDE_CNPJ: TWideStringField;
    qrtransporte_saidaCARGA_NATUREZA: TWideStringField;
    qrtransporte_saidaCARGA_NF: TWideStringField;
    qrtransporte_saidaCARGA_VALOR: TFloatField;
    qrtransporte_saidaCARGA_QTDE: TFloatField;
    qrtransporte_saidaCARGA_VOL_QTDE: TFloatField;
    qrtransporte_saidaCARGA_VOL_ESPECIE: TWideStringField;
    qrtransporte_saidaCARGA_MARCA1: TWideStringField;
    qrtransporte_saidaCARGA_MARCA2: TWideStringField;
    qrtransporte_saidaFRETE_PESO: TFloatField;
    qrtransporte_saidaFRETE_VALOR: TFloatField;
    qrtransporte_saidaFRETE_ADICIONAL: TFloatField;
    qrtransporte_saidaFRETE_SEGURO: TFloatField;
    qrtransporte_saidaFRETE_DESPACHO: TFloatField;
    qrtransporte_saidaFRETE_OUTROS: TFloatField;
    qrtransporte_saidaFRETE_TOTAL: TFloatField;
    qrtransporte_saidaFRETE_TARIFA: TFloatField;
    qrtransporte_saidaFRETE_BASE: TFloatField;
    qrtransporte_saidaFRETE_ALIQUOTA: TIntegerField;
    qrtransporte_saidaFRETE_ICMS: TFloatField;
    qrtransporte_saidaFRETE_PRONT: TWideStringField;
    qrtransporte_saidaFRETE_APOLICE: TWideStringField;
    qrtransporte_saidaFRETE_CIA: TWideStringField;
    qrtransporte_saidaFRETE_CARREGAR: TWideStringField;
    qrtransporte_saidaFRETE_DESCARREGAR: TWideStringField;
    qrtransporte_saidaCODVEICULO: TWideStringField;
    qrtransporte_saidaCODTRANSPORTADOR: TWideStringField;
    qrtransporte_saidaOBS: TBlobField;
    qrtransporte_saidaCODFILIAL: TWideStringField;
    qrtransporte_saidaLOCAL: TWideStringField;
    qrtransporte_saidaMOTIVO: TWideStringField;
    qrtransporte_saidaVEICULO_LOCAL: TWideStringField;
    qrtransporte_saidaVEICULO_UF: TWideStringField;
    qrtransporte_saidaMODELO: TWideStringField;
    qrtransporte_saidaESPECIE: TWideStringField;
    qrtransporte_saidaSERIE: TWideStringField;
    qrtransporte_saidaMODELO_NF: TWideStringField;
    qrtransporte_saidaESPECIE_NF: TWideStringField;
    qrtransporte_saidaSERIE_NF: TWideStringField;
    qrinventario_saidaDATA_NF: TDateField;
    qrtransporte_saidaVALOR_CONHECIMENTO: TFloatField;
    qrtransporte_saidaINF1: TWideStringField;
    qrtransporte_saidaINF2: TWideStringField;
    qrtransporte_saidaINF3: TWideStringField;
    qrtransporte_saidaINF4: TWideStringField;
    qrtransporte_saidaINF5: TWideStringField;
    qrtransporte_saidaCARGA_NATUREZA2: TWideStringField;
    qrtransporte_saidaCARGA_NF2: TWideStringField;
    qrtransporte_saidaCARGA_VALOR2: TFloatField;
    qrtransporte_saidaCARGA_QTDE2: TFloatField;
    qrtransporte_saidaCARGA_VOL_QTDE2: TFloatField;
    qrtransporte_saidaCARGA_VOL_ESPECIE2: TWideStringField;
    qrtransporte_saidaMODELO_NF2: TWideStringField;
    qrtransporte_saidaESPECIE_NF2: TWideStringField;
    qrtransporte_saidaSERIE_NF2: TWideStringField;
    qrinventario_saidaDATA_NF2: TDateField;
    qrtransporte_saidaVALOR_CONHECIMENTO2: TFloatField;
    qrtransporte_saidaCHAVE_ACESSO: TWideStringField;
    qrtransporte_saidaCHAVE_ACESSO2: TWideStringField;
    qrtransporte_saidaCTE_XML: TWideStringField;
    qrtransporte_saidaCTE_SITUACAO: TIntegerField;
    qrinventario_saidaTESTE: TDateField;
    qrtransporte_saidaORIGEM_CMUNINI: TWideStringField;
    qrtransporte_saidaORIGEM_XMUNINI: TWideStringField;
    qrtransporte_saidaORIGEM_UFINI: TWideStringField;
    qrtransporte_saidaCMUNFIM: TWideStringField;
    qrtransporte_saidaXMUNFIM: TWideStringField;
    qrtransporte_saidaUFFIM: TWideStringField;
    qrtransporte_saidaMODAL: TWideStringField;
    qrtransporte_saidaTIPO_SERVICO: TWideStringField;
    qrtransporte_saidaFINALIDADE_EMISSAO: TWideStringField;
    qrtransporte_saidaFORMA_EMISSAO: TWideStringField;
    qrtransporte_saidaFORMA_PAGAMENTO: TWideStringField;
    qrtransporte_saidaFORMA_IMPRESSAO_DACTE: TWideStringField;
    qrtransporte_saidaCHAVE_ACEESSO_REFERENCIADO: TWideStringField;
    qrtransporte_saidaCARAC_AD_TRANSP: TWideStringField;
    qrtransporte_saidaCARAC_AD_SERV: TWideStringField;
    qrtransporte_saidaFUNC_EMISSOR: TWideStringField;
    qrtransporte_saidaMUN_ORIGEM_CAL: TWideStringField;
    qrtransporte_saidaMUN_DEST_CAL: TWideStringField;
    qrtransporte_saidaCOD_ROTA_ENTREGA: TWideStringField;
    qrtransporte_saidaROTA_ENTREGA_SIGLA_ORIGEM: TWideStringField;
    qrtransporte_saidaROTA_ENTREGA_SIGLA_DEST: TWideStringField;
    qrinventario_saidaPREV_ENTREGA_DATA_INI: TDateField;
    qrinventario_saidaPREV_ENTREGA_DATA_FIM: TDateField;
    qrtransporte_saidaPREV_ENTREGA_DATA_TIPO: TWideStringField;
    qrtransporte_saidaPREV_ENTREGA_HORA_TIPO: TWideStringField;
    qrinventario_saidaPREV_ENTREGA_HORA_INI: TDateField;
    qrinventario_saidaPREV_ENTREGA_HORA_FIM: TDateField;
    qrtransporte_saidaRECEBEDOR_RET_AFPE: TWideStringField;
    qrtransporte_saidaDETALHES_RETIRADA: TWideStringField;
    qrtransporte_saidaCOD_EMITENTE: TWideStringField;
    qrtransporte_saidaCOD_TOMADOR: TWideStringField;
    qrtransporte_saidaCOD_REMETENTE: TWideStringField;
    qrtransporte_saidaREMETENTE_TIPO: TWideStringField;
    qrtransporte_saidaREMETENTE_INFORMACOES_NF: TWideStringField;
    qrtransporte_saidaCOD_EXPEDIDOR: TWideStringField;
    qrtransporte_saidaEXPEDIDOR_TIPO: TWideStringField;
    qrtransporte_saidaCOD_RECEBEDOR: TWideStringField;
    qrtransporte_saidaRECEBEDOR_TIPO: TWideStringField;
    qrtransporte_saidaCOD_DESTINATARIO: TWideStringField;
    qrtransporte_saidaDESTINATARIO_TIPO: TWideStringField;
    qrtransporte_saidaLOC_ENTREGA_DIF_END_DEST: TWideStringField;
    qrtransporte_saidaCOD_ENTREGA_DIFERENTE: TWideStringField;
    qrtransporte_saidaVTOTAL_SERVICO: TFloatField;
    qrtransporte_saidaVL_ARECEBER: TFloatField;
    qrtransporte_saidaVL_TOT_IMPOSTOS: TFloatField;
    qrtransporte_saidaCOD_SIT_TRIBUT: TWideStringField;
    qrtransporte_saidaINF_ADIC_INT_FISCO: TBlobField;
    qrtransporte_saidaVL_BC_ICMS: TFloatField;
    qrtransporte_saidaVL_ALIQ_ICMS: TFloatField;
    qrtransporte_saidaVL_ICMS: TFloatField;
    qrtransporte_saidaVL_CRED_OUT_PRESU: TFloatField;
    qrtransporte_saidaVL_PERC_REDUCAP_BC: TFloatField;
    qrtransporte_saidaVL_CARGA: TFloatField;
    qrtransporte_saidaPROD_PREDOMINANTE: TWideStringField;
    qrtransporte_saidaOUT_CARACT_PROD: TWideStringField;
    qrtransporte_saidaRESP_SEGURO: TWideStringField;
    qrtransporte_saidaNOME_SEGURADORA: TWideStringField;
    qrtransporte_saidaNUMERO_APOLICE: TWideStringField;
    qrtransporte_saidaNUMERO_AVERBACAO: TWideStringField;
    qrtransporte_saidaVL_MERC_AVERB: TFloatField;
    qrtransporte_saidaNUMERO_FAT: TWideStringField;
    qrtransporte_saidaVL_ORIGINAL: TFloatField;
    qrtransporte_saidaVL_DESCONTO: TFloatField;
    qrtransporte_saidaVL_LIQUIDO: TFloatField;
    qrtransporte_saidaRNTRC: TWideStringField;
    qrinventario_saidaDATA_PREV_ENTREGA: TDateField;
    qrtransporte_saidaIND_LOTACAO: TWideStringField;
    qrtransporte_saidaCIOT: TWideStringField;
    qrtransporte_saidaOBS_GERAIS: TBlobField;
    qrtransporte_saidaVERSAO_XML: TWideStringField;
    qrtransporte_saidaUF_EMISSAO: TWideStringField;
    qrtransporte_saidaXMUN_EMISSAO: TWideStringField;
    qrtransporte_saidaEMISSAO_CMUNINI: TWideStringField;
    qrtransporte_saidaTOMADOR_TIPO: TWideStringField;
    qrtransporte_saidaTOMADOR_CNPJ: TWideStringField;
    qrtransporte_saidaTOMADOR_IE: TWideStringField;
    qrtransporte_saidaTOMADOR_NOME: TWideStringField;
    qrtransporte_saidaTOMADOR_FANT: TWideStringField;
    qrtransporte_saidaTOMADOR_ENDERECO: TWideStringField;
    qrtransporte_saidaTOMADOR_NUMERO: TWideStringField;
    qrtransporte_saidaTOMADOR_COMPLEM: TWideStringField;
    qrtransporte_saidaTOMADOR_BAIRRO: TWideStringField;
    qrtransporte_saidaTOMADOR_CEP: TWideStringField;
    qrtransporte_saidaTOMADOR_PAIS: TWideStringField;
    qrtransporte_saidaTOMADOR_UF: TWideStringField;
    qrtransporte_saidaTOMADOR_MUNICIPIO: TWideStringField;
    qrtransporte_saidaTOMADOR_TELEFONE: TWideStringField;
    qrtransporte_saidaDIF_ENDERECO: TWideStringField;
    qrtransporte_saidaPAIS: TWideStringField;
    qrtransporte_saidaCOD_PAIS: TWideStringField;
    qrtransporte_saidaREM_BAIRRO: TWideStringField;
    qrtransporte_saidaCTCHAVE: TIntegerField;
    qrtransporte_saidaTOMADOR_QUEM: TWideStringField;
    qrtransporte_saidaMODELO_NF3: TWideStringField;
    AdvShapeButton2: TAdvShapeButton;
    Label3: TLabel;
    bregistro61: TRzCheckBox;
    bregistro61R: TRzCheckBox;
    RzSeparator26: TRzSeparator;
    RzSeparator27: TRzSeparator;
    RzSeparator28: TRzSeparator;
    PageSheet3: TPageSheet;
    cpSintegra: TACBrSintegra;
    RzSeparator3: TRzSeparator;
    ComboBox5: TComboBox;
    Label4: TLabel;
    dssaidaNFCE: TDataSource;
    qrsaidaNFCE: TZQuery;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    WideStringField2: TWideStringField;
    IntegerField2: TIntegerField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    IntegerField3: TIntegerField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField4: TIntegerField;
    WideStringField17: TWideStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    IntegerField5: TIntegerField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    WideStringField23: TWideStringField;
    IntegerField6: TIntegerField;
    FloatField22: TFloatField;
    IntegerField7: TIntegerField;
    WideStringField24: TWideStringField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    BlobField1: TBlobField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    WideStringField36: TWideStringField;
    FloatField23: TFloatField;
    WideStringField37: TWideStringField;
    WideStringField38: TWideStringField;
    WideStringField39: TWideStringField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    wwDBGrid5: TwwDBGrid;

    procedure Add_Log(Log: string; Cor: TColor = clWindowText; Tamanho: byte = 10);
    function Sintegra_Process: boolean;
    function Trata_SIntegra_Str(TempStr: string): boolean;
    function sRegistro10(var Err_Msg: string): boolean;
    function sRegistro11(var Err_Msg: string): boolean;
    function sRegistro50(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro51(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro53(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro54(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro55(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro61(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro61R(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro70(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro71(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro74(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro75(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;


    procedure btgerarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btabrirClick(Sender: TObject);
    procedure btvalidarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure btencerrarClick(Sender: TObject);
    procedure BSAIDAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_empresaKeyPress(Sender: TObject; var Key: Char);
    procedure combo_empresaExit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure btfecharClick(Sender: TObject);
    procedure BENTRADAClick(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: string);
    procedure ECFOPKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: string);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure ECFOP2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid3TitleButtonClick(Sender: TObject;
      AFieldName: string);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure bgerar_inventarioClick(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure btotaliza_entradaClick(Sender: TObject);
    procedure btotaliza_saidaClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure btotaliza_transporteClick(Sender: TObject);
    procedure edit1ButtonClick(Sender: TObject);
    procedure PageView8Change(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure PageView1Change(Sender: TObject);
    procedure PageView2Change(Sender: TObject);
    procedure btotaliza_saida_entClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    function GeraRegistroSintegra(const pSql: string; pProc: TProc): Boolean;
   { Private declarations }
  public
   { Public declarations }
  end;

var
  frmsintegra_gerar: Tfrmsintegra_gerar;
  DataHora_Inicial, DataHora_Final: TDatetime;
  quit_sintegra: boolean;
  Gera_R75: Boolean; //Setado sempre que Registros 54, 60I, 60R, 74 ou 77 gerados!
  vinscest, vcnpj: string;
  vsituacao: string;
  XENTRADA: BOOLEAN;
  qpart: Longint;
  v60i, v60d: integer;

implementation

uses principal, modulo, sintegra_menu, fornecedor, cliente, notafiscal,
  lista_entrada_sintegra, Math, empresa, cfop;


{*******************************************************************************************************}
{$REGION 'Ivan Implementation'}
{email: ivancesarf@gmail.com
skype: proadvanced}
procedure LoadPropFromDataSet(
  pDataSet: TDataSet;
  pObject: TObject;
  pPropNames: array of string;
  pPropValues: array of Variant;
  pLoopInDataSet: Boolean = False); overload;


  procedure InternalLoadProp;
  const
    tkStringProperties = [tkChar, tkString, tkLString, tkUString, tkWChar, tkWString];
    tkLoopProperties   = tkStringProperties + [tkInteger, tkInt64, tkFloat, tkEnumeration, tkVariant];
  var
    LLoop     : Integer;
    LFound    : Boolean;
    LProp     : TRttiProperty;
    LPTypeInfo: PTypeInfo;
    LValue    : TValue;
    LField    : TField;

    procedure InternalSetProp(AValue: Variant);
    begin
      if not VarIsNull(AValue) then
      begin
        try
          if LProp.PropertyType.TypeKind in tkStringProperties then
            LProp.SetValue(pObject, VarToStr(AValue))
          else
            case LProp.PropertyType.TypeKind of
               tkEnumeration:
               begin
                LPTypeInfo := LProp.GetValue(pObject).TypeInfo;
                if VarIsStr(AValue) then
                  TValue.Make(GetEnumValue(LPTypeInfo, AValue), LPTypeInfo, LValue)
                else
                  LValue := TValue.FromOrdinal(LPTypeInfo, Integer(AValue));
                LProp.SetValue(pObject, LValue);
               end
               else
                LProp.SetValue(pObject, TValue.FromVariant(VarAsType(AValue, VarType(AValue))));
            end;
        except
          on E: Exception do
          raise Exception.Create(
            'Classe do objeto' + sLineBreak +
            ' -> ' + pObject.ClassName + sLineBreak  + sLineBreak +
            'Nome da propriedade' + sLineBreak +
            ' -> ' + LProp.Name + sLineBreak  + sLineBreak +
            'Tipo da propriedade' + sLineBreak +
            ' -> ' + LProp.PropertyType.ToString + sLineBreak  + sLineBreak +
            'Valor passado para a propriedade' + sLineBreak +
            ' -> ' + VarToStr(AValue) + ' ( ' + VarTypeAsText(VarType(AValue)) + ' ) ' + sLineBreak  + sLineBreak +
            'Mensagem do erro' + sLineBreak +
            ' -> ' + E.Message);
        end;
      end;
    end;

  begin
    for LProp in TRttiContext.Create.GetType(pObject.ClassType).GetProperties do
    begin
      if (LProp.Visibility in [mvPublic, mvPublished]) and (LProp.IsReadable) and (LProp.IsWritable) then
        if LProp.PropertyType.TypeKind in tkLoopProperties then
        begin
          LFound := False;
          if High(pPropNames) > -1 then
            for LLoop := Low(pPropNames) to High(pPropNames) do
              if SameText(LProp.Name, pPropNames[LLoop]) then
              begin
                InternalSetProp(pPropValues[LLoop]);
                LFound := True;
              end;
          if not Lfound then
          begin
            LField := pDataSet.FindField(LProp.Name);
            if Assigned(LField) and not LField.IsNull and not LField.AsString.Trim.IsEmpty then
              InternalSetProp(LField.Value);
          end;
        end;

    end;
  end;

  procedure InternalRecursiveLoadProp;
  begin
    pDataSet.First;
    repeat
      InternalLoadProp;
      pDataSet.Next;
    until
      pDataSet.Eof;
  end;

var
  LPropCount: Integer;
  LValueCount: Integer;
begin
  LPropCount := High(pPropNames);
  LValueCount:= High(pPropValues);
  if (LPropCount > -1) or (LValueCount > -1) then
    if LPropCount <> LValueCount then
      raise Exception.Create(
        Format('O número de propriedades (%d) difere do número de valores (%d).',
          [Succ(LPropCount), Succ(LValueCount)]));
  if pLoopInDataSet then
    InternalRecursiveLoadProp
  else
    InternalLoadProp;
end;

procedure LoadPropFromDataSet(
  pDataSet: TDataSet;
  pObject: TObject;
  pLoopInDataSet: Boolean = False); overload;
begin
  LoadPropFromDataSet(pDataSet, pObject, [], [], pLoopInDataSet);
end;

procedure LoadPropFromDataSetIfNotEmpty(
  pDataSet: TDataSet;
  pObject: TObject;
  pPropNames: array of string;
  pPropValues: array of Variant;
  pLoopInDataSet: Boolean = False); overload;
begin
  if Assigned(pObject) and (pDataSet.RecordCount > 0) then
    LoadPropFromDataSet(pDataSet, pObject, pPropNames, pPropValues, pLoopInDataSet);
end;

procedure LoadPropFromDataSetIfNotEmpty(
  pDataSet: TDataSet;
  pObject: TObject;
  pLoopInDataSet: Boolean = False); overload;
begin
  LoadPropFromDataSetIfNotEmpty(pDataSet, pObject, [], [], pLoopInDataSet);
end;

procedure LoadPropFromDataSet(
  pMasterDataSet: TDataSet;
  pMasterObject: TObject;
  pMasterPropNames: array of string;
  pMasterPropValues: array of Variant;
  pDetailDataSet: TDataSet;
  pDetailObject: TObject;
  pDetailPropNames: array of string;
  pDetailPropValues: array of Variant); overload;
begin
  if Assigned(pMasterObject) and (pMasterDataSet.RecordCount > 0) then
  begin
    pMasterDataSet.First;
    while not (pMasterDataSet.Eof) do
    begin
      LoadPropFromDataSet(pMasterDataSet, pMasterObject, pMasterPropNames, pMasterPropValues);
      if Assigned(pDetailObject) then
        LoadPropFromDataSetIfNotEmpty(pDetailDataSet, pDetailObject, pDetailPropNames, pDetailPropValues, True);
      pMasterDataSet.Next;
    end;
  end;
end;

{$ENDREGION}
{*******************************************************************************************************}



procedure Inicia_SIntegra; stdcall; external 'SIntegra32Dll.dll';

procedure Finaliza_SIntegra; stdcall; external 'SIntegra32Dll.DLL';

function Registro10(CGC_MF, Insc_Est, Nome_Contribuinte, Municipio, UF,
  Fax, Data_Inicial, Data_Final, Cod_Convenio, Cod_Operacao,
  Cod_Finalidade: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro11(Logradouro, Nro, Complemento, Bairro, CEP,
  Nome_Contato, Telefone: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro50(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
  Nro, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
  Aliquota, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro51(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Serie,
  Nro, CFOP, Valor_Total, Valor_IPI, Isenta_IPI, Outras_IPI,
  Brancos, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro53(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
  Nro, CFOP, Emitente, Base_ICMS, ICMS_Retido, Despesas_Acessorias,
  Situacao, Antecipacao, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro54(CNPJ, Modelo, Serie, Nro, CFOP, CST, Nro_Item,
  Cod_Produto_Servico, Quantidade, Valor_Produto, Valor_Desconto,
  Base_ICMS, Base_ICMS_S_Trib, Valor_IPI,
  Aliquota_ICMS: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro55(CNPJ_Subst, Insc_Est_Subst, Data_GNRE, UF_Substituto, UF_Favorecida, Banco_GNRE,
  Agencia_GNRE, Nro_GNRE, Valor_GNRE, Data_Vencimento_ICMS, Mes_Ano_Ref,
  Nro_Convenio: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro56(CNPJ_Adquirente, Modelo, Serie, Nro, CFOP, CST, Nro_Item, Cod_Produto_Servico, Tipo_Operacao,
  CNPJ_Concessionaria, Aliquota_IPI, Chassi, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro60M(Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
  Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z,
  Contador_Reinicio, Valor_Venda_Bruta,
  Valor_Total_Geral, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro60M_ECF(arquivo_retorno, modelo_ecf: Shortstring;
  var Tipo: Shortstring; var SubTipo: Shortstring;
  var Data_Emissao: Shortstring; var Nro_Serie_Eqp: Shortstring;
  var Nro_Ordem_Eqp: Shortstring; var Modelo_Doc: Shortstring;
  var Nro_Contador_Inicio: Shortstring; var Nro_Contador_Fim: Shortstring;
  var Nro_Contador_Z: Shortstring; var Contador_Reinicio: Shortstring;
  var Valor_Venda_Bruta: Shortstring; var Valor_Total_Geral: Shortstring;
  var Brancos: Shortstring): Shortstring; stdcall; external 'SIntegra32Dll.DLL';

function Registro60A(Data_Emissao, Nro_Serie_Eqp, S_Trib_Aliquota, Valor_TParcial,
  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro60A_Qnt(arquivo_retorno, modelo_ecf: Shortstring): integer; stdcall; external 'SIntegra32Dll.DLL';

function Registro60A_ECF(arquivo_retorno, modelo_ecf: ShortString; idx_aliquota: integer;
  var Tipo: Shortstring; var SubTipo: Shortstring;
  var Data_Emissao: Shortstring; var Nro_Serie_Eqp: Shortstring;
  var S_Trib_Aliquota: Shortstring; var Valor_TParcial: Shortstring;
  var Brancos: Shortstring): Shortstring; stdcall; external 'SIntegra32Dll.DLL';

function Registro60D(Data_Emissao, Nro_Serie_Eqp, Cod_Produto, Quantidade,
  Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro60I(Data_Emissao, Nro_Serie_Eqp, Modelo_Doc, COO, Nro_Item, Cod_Produto,
  Quantidade, Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro60R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
  Valor_Produto, Base_ICMS, S_Trib_Aliquota,
  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro61(Brancos_2, Brancos_3, Data_Emissao, Modelo, Serie, SubSerie,
  Nro_Ordem_Inicio, Nro_Ordem_Fim, Valor_Total, Base_ICMS, Valor_ICMS,
  Isenta, Outras, Aliquota, Branco: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro61R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
  Valor_Bruto_Produto, Base_ICMS, Aliquota_ICMS,
  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro70(CNPJ, Insc_Est, Data_Emissao_Utilizacao, UF, Modelo, Serie, SubSerie,
  Nro, CFOP, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
  CIF_FOB, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro71(CNPJ, Insc_Est_Tomador, Data_Emissao_Conhecimento, UF_Tomador,
  Modelo_Conhecimento, Serie, SubSerie, Nro_Conhecimento,
  UF_Remetente_Destinatario, CNPJ_Remetente_Destinatario,
  Insc_Est_Remetente_Destinatario, Data_Emissao_NF, Modelo_NF, serie_nf,
  Nro_NF, Valor_Total_NF, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro74(Data_Inventario, Cod_Produto, Quantidade, Valor_Produto,
  Cod_Posse, CNPJ_Possuidor, Insc_Est_Possuidor, UF_Possuidor,
  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro75(Data_Inicial, Data_Final, Cod_Produto_Servico, Cod_NCM, Descricao,
  UND_Medida, Aliquota_IPI, Aliquota_ICMS, Reducao_Base_ICMS,
  Base_ICMS_Subst: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro76(CNPJ, Insc_Est, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
  Data_Emissao_Recebimento, UF_Remetente, Valor_Total_NF, Base_ICMS, Valor_ICMS, Isenta,
  Outras, Aliquota_ICMS, Situacao_NF: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro77(CNPJ_Tomador, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
  Nro_Item, Cod_Servico, Quantidade, Valor_Servico, Valor_Desconto_Despesa, Base_ICMS,
  Aliquota_ICMS, CNPJ_Operadora_Destino, Cod_Usuario_Final: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro88GT(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
  Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI, Descricao_Mercadoria: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro88PN(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
  Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI, Descricao_Mercadoria: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Registro88SF(Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie, Sub_Serie,
  Nro, CFOP, Valor_Total, Valor_ICMS, Valor_ICMS_Retido, SF_RJ, Brancos,
  Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  //Function Registro90: ShortString; stdcall; external 'SIntegra32Dll.DLL';
  //Function Registro90(indice: integer): ShortString; stdcall; export;

function Registro90(indice: integer): ShortString; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Convenio(Cod_Convenio: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Operacao(Cod_Operacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Finalidade(Cod_Finalidade: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Modelo(Cod_Modelo: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Situacao(Situacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Emitente(Emitente: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_CST(CST: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_CIF_FOB(CIF_FOB: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_NumeroItem(Nro_Item: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Posse(Cod_Posse: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Tipo_Receita(Cod_Tipo_Receita: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Tipo_Informacao(Cod_Tipo_Informacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_CEP_UF(cCep: ShortString; cEstado: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_CEP(cCep: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_UF(UF: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_CPF(const CPF: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_CNPJ(const CGC: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_InscEst(Inscricao, UF: string): Boolean; stdcall; external 'SIntegra32Dll.DLL';

function Verifica_Antecipacao(Antecipacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

{$R *.dfm}

//Função para executar aplicativos

function Exec_File(File_Path: string): integer;
var
  retorno: integer;
  MyOpenDialog: TOpenDialog;
  Error_Msg: string;
begin
  retorno := ERROR_FILE_NOT_FOUND;

  try
    if FileExists(File_Path) then
      retorno := ShellExecute(0, nil, PChar(File_Path), nil, nil, SW_NORMAL)
    else if application.messagebox(PChar('Não foi possível encontrar o arquivo - ' +
      #13 + File_Path + #13#13 +
      'Deseja Localizar o Arquivo?'),
      'Atenção', MB_IconInformation + MB_YESNO) = idYes then
    begin
      MyOpenDialog := TOpenDialog.Create(MyOpenDialog);
      MyOpenDialog.Title := 'Localizando Arquivo...';
      MyOpenDialog.InitialDir := Extractfiledir(application.exename);
      if MyOpenDialog.Execute then
      begin
        frmsintegra_gerar.ed_validador.text := MyOpenDialog.filename;
        retorno := ShellExecute(0, nil, PChar(MyOpenDialog.filename), nil, nil, SW_NORMAL);
      end;
    end;
  except
    application.MessageBox('Erro no processo de execução do arquivo de Ajuda',
      'Atenção', mb_ok + mb_iconerror);
  end;

  MyOpenDialog.Free;

  Error_Msg := '';
  case retorno of
    0: Error_Msg := 'Erro: Não há memória sufiente para executar o arquivo - ' + File_Path;
    ERROR_FILE_NOT_FOUND: Error_Msg := 'Erro: Arquivo não encontrado em - ' + File_Path;
    ERROR_PATH_NOT_FOUND: Error_Msg := 'Erro: Arquivo não encontrado em - ' + File_Path;
    ERROR_BAD_FORMAT: Error_Msg := 'Erro: Arquivo .EXE inválido (non-Win32 .EXE or error in .EXE image).';
    SE_ERR_ACCESSDENIED: Error_Msg := 'Erro: O Sistema Operacional negou o acesso ao arquivo - ' + File_Path;
    SE_ERR_ASSOCINCOMPLETE: Error_Msg := 'Erro: Associação de tipo de arquivo incompatível ou inválida.';
    SE_ERR_DDEBUSY: Error_Msg := 'Erro: Transação DDE não pode ser completada devido a execução de outras transações.';
    SE_ERR_DDEFAIL: Error_Msg := 'Erro: A Transação DDE falhou.';
    SE_ERR_DDETIMEOUT: Error_Msg := 'Erro: Time de execução da transação DDE';
    SE_ERR_DLLNOTFOUND: Error_Msg := 'Erro: Dll especificada não foi encontrada.';
    SE_ERR_NOASSOC: Error_Msg := 'Erro: Não há aplicativo associado ao tipo de arquivo especificado.';
    SE_ERR_OOM: Error_Msg := 'Erro: Não há memória sufiente para completar a operação.';
    SE_ERR_SHARE: Error_Msg := 'Erro: Violação de Compartilhamento.';
  //else
  //showmessage('instance handle of the application that was run, or the handle of a dynamic data exchange (DDE) server application is: ' + inttostr(retorno));
  end;

  if trim(Error_Msg) <> '' then
    showmessage(Error_Msg);
end;

//Função que adiciona o texto de Log do RichEdit

procedure Tfrmsintegra_gerar.Add_Log(Log: string; Cor: TColor; Tamanho: byte);
begin
  RichEdit1.SelAttributes.Color := Cor;
  RichEdit1.SelAttributes.Size := 8;
  RichEdit1.Lines.Add(Log);
  application.ProcessMessages;
end;


//Interrompe processamento do Banco de Dados por intervenção do usuário.

function Tfrmsintegra_gerar.Sintegra_Process: boolean;
begin
  ProgressBar1.IncParts(qpart);

  Result := quit_sintegra;
  if Result then
  begin
    Add_Log('Geração de arquivo interrompida pelo usuário em ' + datetimetostr(now), clred);

    btgerar.Enabled := True;
    btabrir.Enabled := True;
  end;
end;

//Trata String de Retorno da Sintegra32dll.dll
//Se primeiro caracter da String de retorno é "-" indica que é uma string de erro, deve-se fazer o log.
//Caso contrário adiciona a string no arquivo do sintegra

function Tfrmsintegra_gerar.Trata_SIntegra_Str(TempStr: string): boolean;
var
  sFile: TextFile;
begin
  Result := True;

  if TempStr[1] <> '-' then
  begin
    AssignFile(sFile, edit1.Text);

    if not fileexists(edit1.Text) then
    begin
      rewrite(sFile);
      Add_Log('Arquivo de saída criado: ' + edit1.Text, clgreen);
    end;

    Reset(sFile);
    Append(sFile);
    try
      WriteLn(sFile, TempStr);
    finally
      CloseFile(sFile);
    end;
  end
  else
  begin
    Add_Log(Copy(TempStr, 6, Length(TempStr)), clred);
    Result := False
  end;
end;


{$region 'Geração do sintegra'}
function Tfrmsintegra_gerar.GeraRegistroSintegra(const pSql: string; pProc: TProc): Boolean;
var
  LDataIni: TParam;
  LDataFim: TParam;
begin
  with QrySintegra do
  begin
    Close;
    Sql.Text := pSql;
    LDataIni := Params.FindParam('datahora_ini');
    LDataFim := Params.FindParam('datahora_fim');
    if Assigned(LDataIni) then
      LDataIni.AsDateTime := DateEdit1.DATE;
    if Assigned(LDataFim) then
      LDataFim.AsDateTime := DateEdit2.DATE;
    Open;
    try
      if RecordCount > 0 then
      begin
        First;
        while not Eof do
        begin
          pProc;
          Next;
        end;
      end;
    finally
      Close;
    end;
  end;
  Result := True
end;
{$endregion}

{$region 'Registro 10'}
function Tfrmsintegra_gerar.sRegistro10(var Err_Msg: string): boolean;
begin
  Result := True;
  with cpSintegra do
  begin
    Registro10.CNPJ                := frmmodulo.qrfilial.FieldByName('cnpj').AsString;
    Registro10.Inscricao           := frmmodulo.qrfilial.FieldByName('ie').AsString;
    Registro10.RazaoSocial         := frmmodulo.qrfilial.FieldByName('filial').AsString;
    Registro10.Cidade              := frmmodulo.qrfilial.FieldByName('cidade').AsString;
    Registro10.Estado              := frmmodulo.qrfilial.FieldByName('uf').AsString;
    Registro10.Telefone            := frmmodulo.qrFilial.FieldByName('TELEFONE').AsString;
    Registro10.DataInicial         := dateedit1.Date;
    Registro10.DataFinal           := dateedit2.Date;
    Registro10.CodigoConvenio      := '3';
    Registro10.NaturezaInformacoes := IntToStr(combobox2.ItemIndex + 1);
    Registro10.FinalidadeArquivo   := IntToStr(combobox3.ItemIndex + 1);
  end;
end;
{$endregion}

{$region 'Registro 11'}
function Tfrmsintegra_gerar.sRegistro11(var Err_Msg: string): boolean;
var
  TempStr: string;
begin
  Result := True;
  with cpSintegra do begin
    Registro11.Endereco := frmmodulo.qrfilial.FieldByName('endereco').AsString;
    Registro11.Numero := frmmodulo.qrfilial.FieldByName('numero').AsString;
    Registro11.Complemento := frmmodulo.qrfilial.FieldByName('complemento').AsString;
    Registro11.Bairro := frmmodulo.qrfilial.FieldByName('bairro').AsString;
    Registro11.Cep := frmmodulo.qrfilial.FieldByName('cep').AsString;
    Registro11.Responsavel := frmmodulo.qrfilial.FieldByName('responsavel').AsString;
    Registro11.Telefone := frmmodulo.qrfilial.FieldByName('telefone').AsString;
  end;
end;
{$endregion}

{$region 'Registro 50'}
function Tfrmsintegra_gerar.sRegistro50(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
begin
  Result := GeraRegistroSintegra('SELECT * FROM SINTEGRA50(:DATAHORA_INI, :DATAHORA_FIM)',
            procedure
            var
              LRegistro: TRegistro50;
            begin
              LRegistro:= TRegistro50.Create;
              LoadPropFromDataSet(QrySintegra, LRegistro);
              cpSintegra.Registros50.Add(LRegistro);
            end);
end;
{$endregion}

{$region 'Registro 51'}
function Tfrmsintegra_gerar.sRegistro51(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
begin
  Result := True;
  if frmmodulo.qrFILIAL.fieldbyname('contribuinte_ipi').asstring = 'S' then
  begin
    Result := GeraRegistroSintegra('SELECT * FROM SINTEGRA51(:DATAHORA_INI, :DATAHORA_FIM)',
              procedure
              var
                LRegistro: TRegistro51;
              begin
                LRegistro:= TRegistro51.Create;
                LoadPropFromDataSet(QrySintegra, LRegistro);
                cpSintegra.Registros51.Add(LRegistro);
              end);
  end;
end;
{$endregion}

{$region 'Registro 53'}
function Tfrmsintegra_gerar.sRegistro53(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
begin
  Gera_R75 := True; /// nao sei o que essa variavel faz

  Result := True;
  if frmmodulo.qrFILIAL.fieldbyname('substituto_tributario').AsString = 'S' then
  begin
    Result := GeraRegistroSintegra('SELECT * FROM SINTEGRA53(:DATAHORA_INI, :DATAHORA_FIM)',
              procedure
              var
                LRegistro: TRegistro53;
              begin
                LRegistro:= TRegistro53.Create;
                LoadPropFromDataSet(QrySintegra, LRegistro);
                cpSintegra.Registros53.Add(LRegistro);
              end);
  end;
end;
{$endregion}

{$region 'Registro 54'}
function Tfrmsintegra_gerar.sRegistro54(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
begin
  Gera_R75 := True; //Setado sempre que Registros 54, 60I, 60R, 74 ou 77 gerados!

  Result := GeraRegistroSintegra('SELECT * FROM SINTEGRA54(:DATAHORA_INI, :DATAHORA_FIM)',
            procedure
            var
              LRegistro: TRegistro54;
            begin
              LRegistro:= TRegistro54.Create;
              LoadPropFromDataSet(QrySintegra, LRegistro);
              cpSintegra.Registros54.Add(LRegistro);
            end);
end;
{$endregion}

{$region 'Registro 55 - Registro de Guia Nacional de Recolhimento de Tributos Estaduais'}
function Tfrmsintegra_gerar.sRegistro55(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
  wregistro55:TRegistro55;
begin
  Result := True;
  if frmmodulo.qrFILIAL.fieldbyname('substituto_tributario').asstring = 'S' then
  begin
    with QrySintegra do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM sintegra_gnre');
      SQL.Add('where (datahora_gnre BETWEEN :datahora_ini AND :datahora_fim)');
      SQL.Add('ORDER BY datahora_gnre');
      ParamByName('datahora_ini').asdatetime := DATEEDIT1.DATE;
      ParamByName('datahora_fim').asdatetime := DATEEDIT2.DATE;
      Open;
      if RecordCount > 0 then
      begin
        while not EOF do
        begin
          wregistro55 := TRegistro55.Create;
          with cpSintegra do begin
            wregistro55.CNPJ := Fields.FieldByName('cnpj_subst').AsString;
            wregistro55.Inscricao := Fields.FieldByName('ie_subst').AsString;
            wregistro55.DataPagamento := Fields.FieldByName('datahora_gnre').AsDateTime;
            wregistro55.UF := Fields.FieldByName('uf_subst').AsString;
            wregistro55.UFFavorecida := Fields.FieldByName('uf_favorecida').AsString;
            wregistro55.Banco := Fields.FieldByName('agencia_gnre').AsInteger;
            wregistro55.Agencia := Fields.FieldByName('agencia_gnre').AsInteger;
            wregistro55.Numero := Fields.FieldByName('nro_gnre').AsString;
            wregistro55.Valor := Fields.FieldByName('valor_gnre').AsFloat;
            wregistro55.Vencimento := Fields.FieldByName('data_vencimento').AsDateTime;
            wregistro55.MesAno := Fields.FieldByName('mes_ano_referencia').AsString;
            wregistro55.NumeroConvenio := Fields.FieldByName('nro_convenio').AsString;
            Registros55.Add(wregistro55);
            qnt_ok := qnt_ok + 1;
          end;
          Next;
        end;
      end;
    end;
  end;
end;
{$endregion}

{$region 'Registro61 - Registro de Total de Nota de Passagens e N.Fiscal modelo 02 e 65'}
function Tfrmsintegra_gerar.sRegistro61(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
begin
  Result := GeraRegistroSintegra('SELECT * FROM SINTEGRA61(:DATAHORA_INI, :DATAHORA_FIM)',
            procedure
            var
              LRegistro: TRegistro61;
            begin
              LRegistro:= TRegistro61.Create;
              LoadPropFromDataSet(QrySintegra, LRegistro);
              cpSintegra.Registros61.Add(LRegistro);
            end);
end;
{$endregion}

{$REGION 'Registro61R - resumo mensal'}
function Tfrmsintegra_gerar.sRegistro61R(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
begin
  Result := GeraRegistroSintegra('SELECT * FROM SINTEGRA61R(:DATAHORA_INI, :DATAHORA_FIM)',
            procedure
            var
              LRegistro: TRegistro61R;
            begin
              LRegistro:= TRegistro61R.Create;
              LoadPropFromDataSet(QrySintegra, LRegistro);
              cpSintegra.Registros61R.Add(LRegistro);
            end);
end;
{$ENDREGION}

{$REGION 'Registro70 - Contribuintes do ICMS, tomadores ou prestadores de serviços de transporte'}
function Tfrmsintegra_gerar.sRegistro70(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
begin
  // apenas tomador de serviços
  Result := GeraRegistroSintegra('SELECT * FROM SINTEGRA70(:DATAHORA_INI, :DATAHORA_FIM)',
            procedure
            var
              LRegistro: TRegistro70;
            begin
              LRegistro:= TRegistro70.Create;
              LoadPropFromDataSet(QrySintegra, LRegistro);
              cpSintegra.Registros70.Add(LRegistro);
            end);
end;
{$ENDREGION}

{$region 'Registro71 - Informações da carga transportada'}
function Tfrmsintegra_gerar.sRegistro71(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
  TempStr, num_nf: string;
  vcnpj_Remetente, vinsc_Remetente, vuf_Remetente: string;
  vcnpj_Destinatario, vinsc_Destinatario, vuf_Destinatario: string;
  wregistro71:TRegistro71;
begin
  Result := True;

  with QrySintegra do begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM c000068');
    SQL.Add('where (data BETWEEN :datahora_ini AND :datahora_fim) AND (');
    SQL.Add('(modelo = ''08'') OR');
    SQL.Add('(modelo = ''09'') OR');
    SQL.Add('(modelo = ''10'') OR');
    SQL.Add('(modelo = ''11''))');
    SQL.Add('ORDER BY data');
    ParamByName('datahora_ini').asdatetime := DATEEDIT1.DATE;
    ParamByName('datahora_fim').asdatetime := DATEEDIT2.DATE;
    Open;

    if RecordCount > 0 then begin
      while not EOF do begin
        if Fields.FieldByName('valor_conhecimento').AsFloat > 0 then begin
          num_nf := QrySintegra.Fields.FieldByName('numero').AsString;
          num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf))); //utilizando apenas 6 últimos digitos da NF
          vcnpj_Remetente := frmmodulo.qrfilial.fieldbyname('cnpj').asstring;
          vinsc_Remetente := frmmodulo.qrfilial.fieldbyname('ie').asstring;
          vuf_Remetente := frmmodulo.qrfilial.fieldbyname('uf').asstring;
          frmmodulo.qrcliente.CLOSE;
          frmmodulo.qrcliente.SQL.CLEAR;
          frmmodulo.qrcliente.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = ''' + QrySIntegra.FieldByName('coddestinatario').ASSTRING + '''');
          frmmodulo.qrcliente.OPEN;
          vcnpj_Destinatario := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
          vinsc_Destinatario := frmmodulo.qrcliente.fieldbyname('rg').asstring;
          vuf_Destinatario := frmmodulo.qrcliente.fieldbyname('uf').asstring;

          wregistro71 := TRegistro71.Create;
          wregistro71.CPFCNPJ := vcnpj_Remetente;
          wregistro71.Inscricao := vinsc_Remetente;
          wregistro71.DataDocumento := Fields.FieldByName('data').AsDateTime;
          wregistro71.Modelo := Fields.FieldByName('modelo').AsString;
          wregistro71.Serie := Fields.FieldByName('serie').AsString;
          wregistro71.SubSerie := '';
          wregistro71.Numero := Fields.FieldByName('numero').AsString;
          wregistro71.UF := vuf_Destinatario;
          wregistro71.CPFCNPJNF := vcnpj_Destinatario;
          wregistro71.InscricaoNF := vinsc_Destinatario;
          wregistro71.DataNF := Fields.FieldByName('data_nf').AsDateTime;
          wregistro71.ModeloNF := Fields.FieldByName('modelo_nf').AsString;
          wregistro71.SerieNF := Fields.FieldByName('serie_nf').AsString;
          wregistro71.NumeroNF := Fields.FieldByName('carga_nf').AsString;
          wregistro71.ValorNF := Fields.FieldByName('valor_conhecimento').AsFloat;
          cpSintegra.Registros71.Add(wregistro71);
          qnt_ok := qnt_ok + 1;
        end;

        if Fields.FieldByName('valor_conhecimento2').AsFloat > 0 then begin
          num_nf := QrySintegra.Fields.FieldByName('numero').AsString;
          num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf))); //utilizando apenas 6 últimos digitos da NF
          vcnpj_Remetente := frmmodulo.qrfilial.fieldbyname('cnpj').asstring;
          vinsc_Remetente := frmmodulo.qrfilial.fieldbyname('ie').asstring;
          vuf_Remetente := frmmodulo.qrfilial.fieldbyname('uf').asstring;
          frmmodulo.qrcliente.CLOSE;
          frmmodulo.qrcliente.SQL.CLEAR;
          frmmodulo.qrcliente.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = ''' + QrySIntegra.FieldByName('coddestinatario').ASSTRING + '''');
          frmmodulo.qrcliente.OPEN;

          vcnpj_Destinatario := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
          vinsc_Destinatario := frmmodulo.qrcliente.fieldbyname('rg').asstring;
          vuf_Destinatario := frmmodulo.qrcliente.fieldbyname('uf').asstring;

          wregistro71 := TRegistro71.Create;
          wregistro71.CPFCNPJ := vcnpj_Remetente;
          wregistro71.Inscricao := vinsc_Remetente;
          wregistro71.DataDocumento := Fields.FieldByName('data').AsDateTime;
          wregistro71.Modelo := Fields.FieldByName('modelo').AsString;
          wregistro71.Serie := Fields.FieldByName('serie').AsString;
          wregistro71.SubSerie := '';
          wregistro71.Numero := Fields.FieldByName('numero').AsString;
          wregistro71.UF := vuf_Destinatario;
          wregistro71.CPFCNPJNF := vcnpj_Destinatario;
          wregistro71.InscricaoNF := vinsc_Destinatario;
          wregistro71.DataNF := Fields.FieldByName('data_nf2').AsDateTime;
          wregistro71.ModeloNF := Fields.FieldByName('modelo_nf2').AsString;
          wregistro71.SerieNF := Fields.FieldByName('serie_nf2').AsString;
          wregistro71.NumeroNF := Fields.FieldByName('carga_nf2').AsString;
          wregistro71.ValorNF := Fields.FieldByName('valor_conhecimento2').AsFloat;
          cpSintegra.Registros71.Add(wregistro71);
          qnt_ok := qnt_ok + 1;
        end;
        Next;
      end;
    end;
  end;
end;
{$endregion}

{$region 'Registro74 - Inventário'}
function Tfrmsintegra_gerar.sRegistro74(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
begin
  Result := GeraRegistroSintegra('SELECT * FROM SINTEGRA74(:DATAHORA_INI)',
            procedure
            var
              LRegistro: TRegistro74;
            begin
              LRegistro:= TRegistro74.Create;
              LoadPropFromDataSet(QrySintegra, LRegistro);
              cpSintegra.Registros74.Add(LRegistro);
            end);
end;
{$endregion}

{$region 'Registro75 - Registro de Código de Produto e Serviço'}
function Tfrmsintegra_gerar.sRegistro75(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
  LGeraInventario: string;
begin
  LGeraInventario := '0';
  if bregistro74.Checked then
    LGeraInventario := '1';
  Result := GeraRegistroSintegra(Format('SELECT * FROM SINTEGRA75(:DATAHORA_INI, :DATAHORA_FIM, %S)', [LGeraInventario]),
            procedure
            var
              LRegistro: TRegistro75;
            begin
              LRegistro:= TRegistro75.Create;
              LoadPropFromDataSet(QrySintegra, LRegistro);
              cpSintegra.Registros75.Add(LRegistro);
            end);
end;
{$endregion}

procedure Tfrmsintegra_gerar.btgerarClick(Sender: TObject);
var
  Err_Msg: string;
  Qnt_Ok, Qnt_Erro, Total_Ok, Total_Erro: integer;
  vreducao_z: integer;
begin

  btvalidar.setfocus;
  /////////// inicio


  // MONTAR TABELA DE SAIDA

  with QrySintegra do begin
    if bregistro74.Checked = true then begin
      if (copy(datetostr(DateEdit1.Date), 4, 2) = '12') or (copy(datetostr(DateEdit1.Date), 4, 2) = '01') then begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT distinct');
        SQL.Add('cd_produto,');
        SQL.Add('cl_fis,');
        SQL.Add('produto');
        SQL.ADD('FROM (SELECT DISTINCT');
        SQL.Add('  S.cd_produto AS CD_PRODUTO,');
        SQL.Add('  '''' AS CL_FIS,');
        SQL.Add('  PR.produto AS PRODUTO');
        SQL.Add('  FROM SINTEGRA_ENTRADA_ITEM S, C000025 PR');
        sql.add('       WHERE');
        SQL.ADD('       S.CD_PRODUTO = PR.CODIGO AND');
        sql.add('       modelo_nf in ( ''01'',''1A'',''03'',''06'',''22'',''2D'',''55'')');
        SQL.ADD('       AND');
        SQL.Add('       datahora >= :datahora_ini AND DATAHORA <=  :datahora_fim');
        SQL.ADD('  UNION');
        SQL.ADD('       SELECT DISTINCT');
        SQL.Add('         M.codproduto AS CD_PRODUTO,');
        SQL.Add('         '''' AS   CL_FIS,');
        SQL.Add('         P.produto AS PRODUTO');
        SQL.ADD('         FROM C000032 M, C000025 P');
        sql.add('         where m.codproduto = p.codigo and');
        sql.add('         cupom_modelo = ''2D''');
        sql.add('         and (m.ECF_SERIE is not null and m.ecf_serie <> '''' and m.ecf_serie <> ''000000'')');
        sql.add('         AND (m.CUPOM_NUMERO between ''000000'' and ''999999'')');
        sql.add('         AND (m.cupom_item between   ''000''    and ''999'')');
        sql.add('         AND (m.ecf_caixa between    ''000''    and ''999'')');
        SQL.ADD('         AND');
        SQL.ADD('         m.qtde > 0 and');
        SQL.Add('         data >= :datahora_ini AND DATA <=  :datahora_fim');
        SQL.ADD('  UNION');
        (******* tabela de inventario ********)
        SQL.Add('SELECT');
        SQL.Add('V.CODPRODUTO AS cd_produto,');
        SQL.Add('''''  AS cl_fis,');
        SQL.Add('V.PRODUTO AS produto');
        SQL.ADD('FROM INVENTARIO V');
        if copy(datetostr(DateEdit1.Date), 4, 2) = '01' then begin
          sql.add('where V.data_posterior = :datahora_ini');
        end else begin
          sql.add('where V.data = :datahora_fim');
        end;
        (*************************************)
        SQL.ADD(' UNION');
        SQL.ADD(' SELECT DISTINCT');
        SQL.Add('  S.cd_produto AS CD_PRODUTO,');
        SQL.Add('  '''' AS CL_FIS,');
        SQL.Add('  PR.produto AS PRODUTO');
        SQL.Add('  FROM SINTEGRA_SAIDA_ITEM S, C000025 PR');
        sql.add('       WHERE');
        SQL.ADD('       S.CD_PRODUTO = PR.CODIGO AND');
        sql.add('       modelo_nf in ( ''01'',''1A'',''02'',''03'',''06'',''22'',''2D'',''55'')');
        SQL.ADD('       AND');
        SQL.Add('       datahora >= :datahora_ini AND DATAHORA <=  :datahora_fim ) as tmp');
        SQL.ADD(' GROUP BY');
        SQL.Add('cd_produto,');
        SQL.Add('cl_fis,');
        SQL.Add('produto');
        ParamByName('datahora_ini').asdatetime := DATEEDIT1.DATE;
        ParamByName('datahora_fim').asdatetime := DATEEDIT2.DATE;
        Open;
      end else begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT distinct');
        SQL.Add('cd_produto,');
        SQL.Add('cl_fis,');
        SQL.Add('produto');
        SQL.ADD('FROM (SELECT DISTINCT');
        SQL.Add('  S.cd_produto AS CD_PRODUTO,');
        SQL.Add('  PR.CLASSIFICACAO_FISCAL AS CL_FIS,');
        SQL.Add('  PR.produto AS PRODUTO');
        SQL.Add('  FROM SINTEGRA_ENTRADA_ITEM S, C000025 PR');
        sql.add('       WHERE');
        SQL.ADD('       S.CD_PRODUTO = PR.CODIGO AND');
        sql.add('       modelo_nf in ( ''01'',''1A'',''03'',''06'',''22'',''2D'',''55'')');
        SQL.ADD('       AND');
        SQL.Add('       datahora >= :datahora_ini AND DATAHORA <=  :datahora_fim');
        SQL.ADD('  UNION');
        SQL.ADD('       SELECT DISTINCT');
        SQL.Add('         M.codproduto AS CD_PRODUTO,');
        SQL.Add('         P.CLASSIFICACAO_FISCAL AS   CL_FIS,');
        SQL.Add('         P.produto AS PRODUTO');
        SQL.ADD('         FROM C000032 M, C000025 P');
        sql.add('         where m.codproduto = p.codigo and');
        sql.add('         cupom_modelo = ''2D''');
        sql.add('         and (m.ECF_SERIE is not null and m.ecf_serie <> '''' and m.ecf_serie <> ''000000'')');
        sql.add('         AND (m.CUPOM_NUMERO between ''000000'' and ''999999'')');
        sql.add('         AND (m.cupom_item between   ''000''    and ''999'')');
        sql.add('         AND (m.ecf_caixa between    ''000''    and ''999'')');
        SQL.ADD('         AND');
        SQL.ADD('         m.qtde > 0 and');
        SQL.Add('         data >= :datahora_ini AND DATA <=  :datahora_fim');
        SQL.ADD(' UNION');
        SQL.ADD(' SELECT DISTINCT');
        SQL.Add('  S.cd_produto AS CD_PRODUTO,');
        SQL.Add('  PR.CLASSIFICACAO_FISCAL AS CL_FIS,');
        SQL.Add('  PR.produto AS PRODUTO');
        SQL.Add('  FROM SINTEGRA_SAIDA_ITEM S, C000025 PR');
        sql.add('       WHERE');
        SQL.ADD('       S.CD_PRODUTO = PR.CODIGO AND');
        sql.add('       modelo_nf in ( ''01'',''1A'',''02'',''03'',''06'',''22'',''2D'',''55'')');
        SQL.ADD('       AND');
        SQL.Add('       datahora >= :datahora_ini AND DATAHORA <=  :datahora_fim ) as tmp');
        SQL.ADD(' GROUP BY');
        SQL.Add('cd_produto,');
        SQL.Add('cl_fis,');
        SQL.Add('produto');
        ParamByName('datahora_ini').asdatetime := DATEEDIT1.DATE;
        ParamByName('datahora_fim').asdatetime := DATEEDIT2.DATE;
        Open;
      end;
    end else begin
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT distinct');
        SQL.Add('cd_produto,');
        SQL.Add('cl_fis,');
        SQL.Add('produto');
        SQL.ADD('FROM (SELECT DISTINCT');
        SQL.Add('  S.cd_produto AS CD_PRODUTO,');
        SQL.Add('  PR.CLASSIFICACAO_FISCAL AS CL_FIS,');
        SQL.Add('  PR.produto AS PRODUTO');
        SQL.Add('  FROM SINTEGRA_ENTRADA_ITEM S, C000025 PR');
        sql.add('       WHERE');
        SQL.ADD('       S.CD_PRODUTO = PR.CODIGO AND');
        sql.add('       modelo_nf in ( ''01'',''1A'',''03'',''06'',''22'',''2D'',''55'')');
        SQL.ADD('       AND');
        SQL.Add('       datahora >= :datahora_ini AND DATAHORA <=  :datahora_fim');
        SQL.ADD('  UNION');
        SQL.ADD('       SELECT DISTINCT');
        SQL.Add('         M.codproduto AS CD_PRODUTO,');
        SQL.Add('         P.CLASSIFICACAO_FISCAL AS   CL_FIS,');
        SQL.Add('         P.produto AS PRODUTO');
        SQL.ADD('         FROM C000032 M, C000025 P');
        sql.add('         where m.codproduto = p.codigo and');
        sql.add('         cupom_modelo = ''2D''');
        sql.add('         and (m.ECF_SERIE is not null and m.ecf_serie <> '''' and m.ecf_serie <> ''000000'')');
        sql.add('         AND (m.CUPOM_NUMERO between ''000000'' and ''999999'')');
        sql.add('         AND (m.cupom_item between   ''000''    and ''999'')');
        sql.add('         AND (m.ecf_caixa between    ''000''    and ''999'')');
        SQL.ADD('         AND');
        SQL.ADD('         m.qtde > 0 and');
        SQL.Add('         data >= :datahora_ini AND DATA <=  :datahora_fim');
        SQL.ADD(' UNION');
        SQL.ADD(' SELECT DISTINCT');
        SQL.Add('  S.cd_produto AS CD_PRODUTO,');
        SQL.Add('  PR.CLASSIFICACAO_FISCAL AS CL_FIS,');
        SQL.Add('  PR.produto AS PRODUTO');
        SQL.Add('  FROM SINTEGRA_SAIDA_ITEM S, C000025 PR');
        sql.add('       WHERE');
        SQL.ADD('       S.CD_PRODUTO = PR.CODIGO AND');
        sql.add('       modelo_nf in ( ''01'',''1A'',''02'',''03'',''06'',''22'',''2D'',''55'')');
        SQL.ADD('       AND');
        SQL.Add('       datahora >= :datahora_ini AND DATAHORA <=  :datahora_fim ) as tmp');
        SQL.ADD(' GROUP BY');
        SQL.Add('cd_produto,');
        SQL.Add('cl_fis,');
        SQL.Add('produto');
        ParamByName('datahora_ini').asdatetime := DATEEDIT1.DATE;
        ParamByName('datahora_fim').asdatetime := DATEEDIT2.DATE;
        Open;
      end;
    end;
  end;

  ////////// fim

  BSAIDAClick(FRMSINTEGRA_GERAR);
  BENTRADACLICK(FRMSINTEGRA_GERAR);

  // FINAL DA TABELA DE ITENS.

  Qnt_Ok := 0;
  Qnt_Erro := 0;
  Total_Ok := 0;
  Total_Erro := 0;

  Gera_R75 := False;
  quit_sintegra := False;

  btgerar.Enabled := False;
  btabrir.Enabled := False;

  application.ProcessMessages;
  qpart := 100 div 12;
  richedit1.Lines.Clear;

  Add_Log('Geração de arquivo magnético do Sintegra iniciada em ' + datetimetostr(now), clblue);

  cpSintegra.VersaoValidador := TVersaoValidador(ComboBox5.ItemIndex);

  if fileexists(edit1.Text) then begin
    Add_Log('Arquivo de saída existente excluído: ' + edit1.Text, clred);
    deletefile(edit1.Text);
  end;
  if sRegistro10(Err_Msg) then begin
    Add_Log('1 Registro tipo 10 gerado com sucesso.', clgreen);
  end;
  if sRegistro11(Err_Msg) then begin
    Add_Log('1 Registro tipo 11 gerado com sucesso.', clgreen);
  end;
  if bregistro50.Checked = true then begin
    Qnt_Ok := 0;
    Qnt_Erro := 0;
    if sRegistro50(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
      if Qnt_Ok > 0 then
        Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 50 gerado(s) com sucesso.', clgreen)
    end;
  end;
  if frmmodulo.QRFILIAL.fieldbyname('contribuinte_ipi').AsString = 'S' then begin //se contribuinte do IPI
    Qnt_Ok := 0;
    Qnt_Erro := 0;
    if sRegistro51(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
      if Qnt_Ok > 0 then
        Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 51 gerado(s) com sucesso.', clgreen)
    end;
  end;
  if frmmodulo.qrFILIAL.fieldbyname('substituto_tributario').asstring = 'S' then begin
    Qnt_Ok := 0;
    Qnt_Erro := 0;
    if sRegistro53(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
      if Qnt_Ok > 0 then
        Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 53 gerado(s) com sucesso.', clgreen)
    end;
  end;
  if bregistro54.Checked = true then begin
    Qnt_Ok := 0;
    Qnt_Erro := 0;
    if sRegistro54(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
      if Qnt_Ok > 0 then
        Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 54 gerado(s) com sucesso.', clgreen)
    end;
  end;
  if frmmodulo.qrFILIAL.fieldbyname('substituto_tributario').asstring = 'S' then begin
    Qnt_Ok := 0;
    Qnt_Erro := 0;
    if sRegistro55(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
      if Qnt_Ok > 0 then
        Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 55 gerado(s) com sucesso.', clgreen);
    end;
  end;
  if bregistro61.Checked then begin
    Qnt_Ok := 0;
    Qnt_Erro := 0;
    if sRegistro61(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
      if Qnt_Ok > 0 then
        Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 61 gerado(s) com sucesso.', clgreen)
    end;
  end;
  if bregistro61R.Checked then begin
    Qnt_Ok := 0;
    Qnt_Erro := 0;
    if sRegistro61R(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
      if Qnt_Ok > 0 then
        Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 61R gerado(s) com sucesso.', clgreen)
    end;
  end;
  if bregistro70.Checked = true then begin
    Qnt_Ok := 0;
    Qnt_Erro := 0;
    if sRegistro70(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
      if Qnt_Ok > 0 then
        Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 70 gerado(s) com sucesso.', clgreen)
    end;
  end;
  if sRegistro71(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
    Qnt_Ok := 0;
    Qnt_Erro := 0;
    if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 71 gerado(s) com sucesso.', clgreen)
  end;
  if bregistro74.Checked = true then begin
    if (copy(dateedit2.text, 4, 2) = '12') or (copy(datetostr(DateEdit1.Date), 4, 2) = '01') then begin
      Qnt_Ok := 0;
      Qnt_Erro := 0;
      if sRegistro74(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
        if Qnt_Ok > 0 then
          Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 74 gerado(s) com sucesso.', clgreen)
      end;
    end;
  end;
  if bregistro75.Checked = true then begin
    if Gera_R75 then begin
      Qnt_Ok := 0;
      Qnt_Erro := 0;
      if sRegistro75(Err_Msg, Qnt_Ok, Qnt_Erro) then begin
        if Qnt_Ok > 0 then
          Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 75 gerado(s) com sucesso.', clgreen)
      end;
    end;
  end;
  Add_Log('Arquivo Sintegra gerado com sucesso em: ' + edit1.Text, clblue);
  Add_Log('Geração de arquivo magnético do Sintegra concluída em ' + datetimetostr(now), clblue);
  QrySintegra.Close;
  ProgressBar1.PartsComplete := progressbar1.TotalParts;
  btgerar.Enabled := True;
  btabrir.Enabled := True;
  btvalidar.SetFocus;
  cpSintegra.FileName := edit1.Text;
  cpSintegra.GeraArquivo;
end;

procedure Tfrmsintegra_gerar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  frmmodulo.qrconfig.edit;
  frmmodulo.qrconfig.fieldbyname('papel_parede').asstring := ed_validador.text;
  frmmodulo.qrconfig.post;
  frmmodulo.conexao.commit;

  action := cafree;
end;

procedure Tfrmsintegra_gerar.btabrirClick(Sender: TObject);
begin
  ShellExecute(0, nil, PChar('C:\Arquivos de programas\Validador Sintegra 2010\ValidadorSintegra2010.exe'), PCHAR('\sintegra.txt'), nil, 0);
end;

procedure Tfrmsintegra_gerar.btvalidarClick(Sender: TObject);
begin
  Exec_File(ed_validador.text);
end;

procedure Tfrmsintegra_gerar.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    quit_sintegra := True
  else if key = vk_F2 then
    btgerar.click
  else if key = vk_F3 then
    btabrir.Click
  else if key = vk_F5 then
    btvalidar.Click;
end;

procedure Tfrmsintegra_gerar.btencerrarClick(Sender: TObject);
begin
  close;
end;

{
//  começo das alterações dos registros 60 pra retorno vindos das impressoras fiscais
//--- Registro60_ECF - Registro de informação de operações/prestações realizadas com ECF ---
//Indentificador do Equipamento //Função para tratar arquivo de retorno do ECF que gera registro60M //modelo_ecf = 1 para Bematech Fi2

Function Registro60M_ECF(arquivo_retorno, modelo_ecf: Shortstring;
var Tipo: Shortstring; var SubTipo: Shortstring;
var Data_Emissao: Shortstring; var Nro_Serie_Eqp: Shortstring;
var Nro_Ordem_Eqp: Shortstring; var Modelo_Doc: Shortstring;
var Nro_Contador_Inicio: Shortstring;
var Nro_Contador_Fim: Shortstring;
var Nro_Contador_Z: Shortstring;
var Contador_Reinicio: Shortstring;
var Valor_Venda_Bruta: Shortstring;
var Valor_Total_Geral: Shortstring;
var Brancos: Shortstring): Shortstring; stdcall; export;
var txt_file: TextFile;
     linha: shortstring;
  num_linha: integer;
begin
 NaoRegistrado;

 if State then
  begin
   if fileexists(arquivo_retorno) then
    begin
     try
      assignfile(txt_file, arquivo_retorno);
      Reset(txt_file);

      num_linha := 0;
      while not eof(txt_file) do
       begin
        Readln(txt_file, linha);
        linha := trim(copy(linha, pos(':', linha) + 1, length(linha)));

        Case num_linha of
         0:  Tipo                := linha;
         1:  SubTipo             := linha;
         2:  Data_Emissao        := linha;
         3:  Nro_Serie_Eqp       := linha;
         4:  Nro_Ordem_Eqp       := copy(linha, 2, length(linha));
         5:  Modelo_Doc          := linha;
         6:  Nro_Contador_Inicio := linha;
         7:  Nro_Contador_Fim    := linha;
         8:  Nro_Contador_Z      := linha;
         9:  Contador_Reinicio   := copy(linha, 2, length(linha)) ;
         10: Valor_Venda_Bruta   := linha;
         11: Valor_Total_Geral   := linha;
        end;

        num_linha := num_linha + 1;
       end;

      Result  := '0';
      Brancos := '';

      //Formatação dos Campos
      FormatoNum (Data_Emissao,         8);
      ddmmaaaaToSintegraDate(Data_Emissao);
      FormatoAlfa(Nro_Serie_Eqp,       20);
      FormatoNum (Nro_Ordem_Eqp,        3);
      FormatoAlfa(Modelo_Doc,           2);
      FormatoNum (Nro_Contador_Inicio,  6);
      FormatoNum (Nro_Contador_Fim,     6);
      FormatoNum (Nro_Contador_Z,       6);
      FormatoNum (Contador_Reinicio,    3);
      FormatoNum (Valor_Venda_Bruta,   16);
      FormatoNum (Valor_Total_Geral,   16);
      FormatoAlfa(Brancos,             37);

      //Teste de Integridade dos campos
      if not IsSintegraDate(Data_Emissao) then
       Result := '-2   Data de Emissão Inválida (AAAAMMDD) :: ' + Data_Emissao
      else if not Verifica_Modelo(Modelo_Doc) then
       Result := '-3   Código de Modelo de Documento Fiscal Inválido :: ' + Modelo_Doc
      else if StrToInt(Nro_Contador_Inicio) > StrToInt(Nro_Contador_Fim) then
       Result := '-4   Contador de Ordem de Operação no Inicio do Dia deve ser Menor que o Contador de Fim de Dia'
      else if (SintegraDatetoDateTime(Data_Emissao) < Data_Inicial_Info) or
              (SintegraDatetoDateTime(Data_Emissao) > Data_Final_Info) then
       Result := '-8   Data de Emissão Inválida :: A Data está fora do perído indicado no Registro10';

      if result = '0' then
       begin
        Result := Tipo + SubTipo + Data_Emissao + Nro_Serie_Eqp + Nro_Ordem_Eqp +
                  Modelo_Doc + Nro_Contador_Inicio + Nro_Contador_Fim + Nro_Contador_Z +
                  Contador_Reinicio + Valor_Venda_Bruta + Valor_Total_Geral + Brancos;

        //Incremento do contador de registros
        Inc(Total_r60);
       end;
     finally
      CloseFile(txt_file);
     end;
    end
   else
    Result := '-1   Arquivo de retorno do ECF não encontrado :: ' +
arquivo_retorno;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro60Mestre ---
//ShowMessage(Result);
end;

Function Registro60A_Qnt(arquivo_retorno, modelo_ecf: Shortstring): integer; stdcall; export;
var txt_file: TextFile;
 linha: shortstring;
 num_linha: integer;
begin
 Result    := -1;
 num_linha := 0;

 if fileexists(arquivo_retorno) then
  begin
   try
    assignfile(txt_file, arquivo_retorno);
    Reset(txt_file);

    while not eof(txt_file) do
     begin
      Readln(txt_file, linha);
      num_linha := num_linha + 1;
     end;
   finally
    CloseFile(txt_file);
    Result := num_linha - 4;
   end;
  end;
end;

//--- Registro60A_ECF - Registro de informação de operações/prestações realizadas com ECF --- //Indentificador de cada situação tributária no final do dia de cada equipamento emissor de cupom fiscal
Function Registro60A_ECF(arquivo_retorno, modelo_ecf: ShortString; idx_aliquota: integer;
var Tipo: Shortstring; var SubTipo: Shortstring;
var Data_Emissao: Shortstring; var Nro_Serie_Eqp: Shortstring;
var S_Trib_Aliquota: Shortstring; var Valor_TParcial: Shortstring;
var Brancos: Shortstring): Shortstring; stdcall; export; var txt_file: TextFile;
  linha, temp_str: shortstring;
  num_linha: integer;
begin
 NaoRegistrado;

 if State then
  begin
   if fileexists(arquivo_retorno) then
    begin
     try
      assignfile(txt_file, arquivo_retorno);
      Reset(txt_file);

      num_linha := 0;
      while not eof(txt_file) do
       begin
        Readln(txt_file, linha);
        temp_str := copy(linha, 0, 4);
        linha    := trim(copy(linha, pos(':', linha) + 1, length(linha)));

        Case num_linha of
         0:  Tipo          := linha;
         1:  SubTipo       := linha;
         2:  Data_Emissao  := linha;
         3:  Nro_Serie_Eqp := linha;
        end;

        if num_linha = idx_aliquota + 4 then
         begin
          Valor_TParcial := linha;

          if temp_str = 'Canc' then
           S_Trib_Aliquota := 'CANC'
          else if temp_str = 'Desc' then
           S_Trib_Aliquota := 'DESC'
          else if temp_str = 'ISS.' then
           S_Trib_Aliquota := 'ISS'
          else if temp_str = 'F...' then
           S_Trib_Aliquota := 'F'
          else if temp_str = 'N...' then
           S_Trib_Aliquota := 'N'
          else if temp_str = 'I...' then
           S_Trib_Aliquota := 'I'
          else
           S_Trib_Aliquota := temp_str;
         end;

        num_linha := num_linha + 1;
       end;

      Result  := '0';
      Brancos := '';

      //Formatação dos Campos
      FormatoNum (Data_Emissao,     8);
      ddmmaaaaToSintegraDate(Data_Emissao);
      FormatoAlfa(Nro_Serie_Eqp,   20);
      FormatoAlfa(S_Trib_Aliquota,  4);
      FormatoNum (Valor_TParcial,  12);
      FormatoAlfa(Brancos,         79);

      //Teste de Integridade dos campos
      if not IsSintegraDate(Data_Emissao) then
       Result := '-2   Data de Emissão Inválida (AAAAMMDD) :: ' + Data_Emissao
      else if (SintegraDatetoDateTime(Data_Emissao) < Data_Inicial_Info) or
              (SintegraDatetoDateTime(Data_Emissao) > Data_Final_Info) then
       Result := '-8   Data de Emissão Inválida :: A Data está fora do perído indicado no Registro10';

      if result = '0' then
       begin
        Result := Tipo + SubTipo + Data_Emissao + Nro_Serie_Eqp + S_Trib_Aliquota + Valor_TParcial + Brancos;

        //Incremento do contador de registros
        Inc(Total_r60);
       end;
     finally
      CloseFile(txt_file);
     end;
    end
   else
    Result := '-1   Arquivo de retorno do ECF não encontrado :: ' +
arquivo_retorno;
  end
 else
  Result := '-0   Função Inicia_Sintegra não chamada';

//--- Teste de Registro60Analitico ---
//ShowMessage(Result);
end;
}

procedure Tfrmsintegra_gerar.BSAIDAClick(Sender: TObject);
var
  item: integer;
  nota: string;
  texto: PWideChar;
  x: string;
  vdesconto: Double;
  total_despesas: double;

begin

  QRSAIDA.CLOSE;
  QRSAIDA.SQL.CLEAR;
  QRSAIDA.SQL.ADD('DELETE FROM SINTEGRA_SAIDA');
  QRSAIDA.ExecSQL;
  QRSAIDA.SQL.CLEAR;
  QRSAIDA.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA');
  QRSAIDA.OPEN;
  QRSAIDA_ITEM.CLOSE;
  QRSAIDA_ITEM.SQL.CLEAR;
  QRSAIDA_ITEM.SQL.ADD('DELETE FROM SINTEGRA_SAIDA_ITEM');
  QRSAIDA_ITEM.EXECSQL;
  QRSAIDA_ITEM.SQL.CLEAR;
  QRSAIDA_ITEM.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA_ITEM');
  QRSAIDA_ITEM.OPEN;

  QRITEM.CLOSE;
  QRITEM.SQL.CLEAR;
  QRITEM.SQL.ADD('SELECT I.*,N.CODfilial, n.valor_produtos, n.frete, n.outras_despesas, n.seguro, N.NUMERO,n.data, n.modelo_nf, n.desconto, n.total_nota, p.produto,  p.produto, p.unidade');
  QRITEM.SQL.ADD('FROM C000062 I, C000061 N, c000025 p');
  QRITEM.SQL.Add('WHERE');
  QRITEM.SQL.ADD('I.CODNOTA = N.CODIGO AND i.codproduto = p.codigo and n.movimento = ''E'' and ');
  QRITEM.SQL.ADD('n.DATA >= :DATAI AND n.DATA <= :DATAF AND N.COdfilial = ''' + FRMMODULO.QRFILIAL.FIELDBYNAME('CODIGO').ASSTRING + ''' order by NUMERO,modelo_nf');
  QRITEM.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  QRITEM.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QRITEM.OPEN;
  QRITEM.FIRST;
  nota := qritem.fieldbyname('numero').asstring;
  item := 1;

  if qritem.RecordCount > 0 then
  begin
    while not QRITEM.EOF do
    begin

      if (qritem.fieldbyname('desconto').value = 0) and (QRITEM.FieldByName('DESCONTO_1').AsFloat > 0) then
      begin
        vdesconto := qritem.fieldbyname('SUBTOTAL').value *
          QRITEM.FieldByName('DESCONTO_1').AsFloat /
          QRITEM.FieldByName('VALOR_PRODUTOS').AsFloat;
      end
      else
        vdesconto := qritem.fieldbyname('desconto').value;

      qrsaida_item.Insert;
      qrsaida_item.fieldbyname('DATA_EMISSAO').value := copy(qritem.fieldbyname('data').asstring, 4, 2) + copy(qritem.fieldbyname('data').asstring, 7, 4);
      qrsaida_item.fieldbyname('num_item').value := frmprincipal.zerarcodigo(inttostr(item), 3);
      qrsaida_item.fieldbyname('cd_produto').value := qritem.fieldbyname('Codproduto').value;
      qrsaida_item.fieldbyname('produto').value := COPY(qritem.fieldbyname('PRODUTO').value, 1, 40);
      qrsaida_item.fieldbyname('apr_und').value := qritem.fieldbyname('unidade').value;
      qrsaida_item.fieldbyname('TIPO').value := 'E';
      qrsaida_item.fieldbyname('quantidade').value := qritem.fieldbyname('qtde').value;
      qrsaida_item.fieldbyname('subtotal').value := qritem.fieldbyname('SUBTOTAL').value;
      qrsaida_item.fieldbyname('valor_desconto').value := vdesconto;

          //qrsaida_item.fieldbyname('valor_desconto_item').value   := qritem.fieldbyname('desconto_item').value;;

      qrsaida_item.fieldbyname('total').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('notafiscal').value := qritem.fieldbyname('NUMERO').value;
      qrsaida_item.fieldbyname('valor_venda_bruta').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('valor_total_geral').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('datahora_recebimento').value := qritem.fieldbyname('data').value;
      qrsaida_item.fieldbyname('modelo_nf').value := qritem.fieldbyname('modelo_nf').value;
      qrsaida_item.fieldbyname('modelo_doc').value := qritem.fieldbyname('modelo_nf').value;
      qrsaida_item.fieldbyname('cfop').value := qritem.fieldbyname('cfop').value;
      qrsaida_item.fieldbyname('cl_fis').value := qritem.fieldbyname('classificacao_fiscal').value;
      qrsaida_item.fieldbyname('s_trib').value := qritem.fieldbyname('cst').value;
      qrsaida_item.fieldbyname('datahora').value := qritem.fieldbyname('data').value;
      qrsaida_item.fieldbyname('movimento').value := 1;
      qrsaida_item.fieldbyname('cod_pedidos').value := qritem.fieldbyname('NUMERO').value;
      QRSAIDA_ITEM.FIELDBYNAME('CODNOTA').VALUE := qritem.fieldbyname('CODNOTA').value;

      if QRITEM.FIELDBYNAME('ICMS').VALUE > 0 then
      begin
        qrsaida_item.fieldbyname('aliquota_icms').value := qritem.fieldbyname('ICMS').value;
        qrsaida_item.fieldbyname('base_icms').value := qritem.fieldbyname('BASE_CALCULO').value;
        qrsaida_item.fieldbyname('valor_icms').value := qritem.fieldbyname('VALOR_ICMS').value;
      end;
      if qritem.fieldbyname('ipi').value > 2 then
      begin
        qrsaida_item.fieldbyname('aliquota_ipi').value := qritem.fieldbyname('IPI').value;
        qrsaida_item.fieldbyname('base_ipi').value := qritem.fieldbyname('TOTAL').value;
        qrsaida_item.fieldbyname('valor_ipi').value := qritem.fieldbyname('VALOR_IPI').value;
        qrsaida_item.fieldbyname('isentas_ipi').value := 0;
        qrsaida_item.fieldbyname('outras_ipi').value := 0;
      end;
      qrsaida_item.fieldbyname('base_icms_subst').value := qritem.fieldbyname('BASE_SUB').value;
      qrsaida_item.fieldbyname('reducao_base_icms').value := qritem.fieldbyname('ICMS_SUB').value;


      qrsaida_item.fieldbyname('isentas_icms').value := qritem.fieldbyname('ISENTO').value;
      qrsaida_item.fieldbyname('outras_icms').value := qritem.fieldbyname('OUTRAS').value;



      total_despesas := qritem.fieldbyname('total_nota').AsFloat -
        (qritem.fieldbyname('FRETE').AsFloat +
        qritem.fieldbyname('SEGURO').AsFloat +
        qritem.fieldbyname('OUTRAS_DESPESAS').AsFloat);

      if qritem.fieldbyname('frete').asfloat > 0 then begin
        qrsaida_item.fieldbyname('FRETE').value := (qritem.fieldbyname('TOTAL').value * qritem.fieldbyname('FRETE').asfloat) / total_despesas;
      end else
        qrsaida_item.fieldbyname('FRETE').value := 0;


      if qritem.fieldbyname('seguro').asfloat > 0 then begin
        qrsaida_item.fieldbyname('SEGURO').value := (qritem.fieldbyname('TOTAL').value * qritem.fieldbyname('SEGURO').asfloat) / total_despesas;
      end else
        qrsaida_item.fieldbyname('SEGURO').value := 0;


      if (qritem.fieldbyname('outras_DESPESAS').AsFloat) > 0 then begin
        qrsaida_item.fieldbyname('OUTRAS_DESPESAS').value := (qritem.fieldbyname('TOTAL').value * qritem.fieldbyname('outras_DESPESAS').asfloat) / total_despesas;
      end else
        qrsaida_item.fieldbyname('OUTRAS_DESPESAS').value := 0;


      qrsaida_item.fieldbyname('total').AsFloat := (qrsaida_item.fieldbyname('total').AsFloat +
        qrsaida_item.fieldbyname('FRETE').AsFloat +
        qrsaida_item.fieldbyname('SEGURO').AsFloat +
        qrsaida_item.fieldbyname('OUTRAS_DESPESAS').AsFloat +
        qrsaida_item.fieldbyname('BASE_ICMS_SUBST').AsFloat +
        qrsaida_item.fieldbyname('VALOR_IPI').AsFloat);


      qrsaida_item.Post;
      Application.ProcessMessages;
      item := item + 1;

      qritem.next;
      if nota <> qritem.fieldbyname('numero').asstring then item := 1;
      NOTA := QRITEM.FIELDBYNAME('numero').asstring;
    end;

    frmmodulo.conexao.commit;

  end;


  QrAdiciona_item.Close;
  QrAdiciona_item.SQL.Clear;
  QrAdiciona_item.SQL.Add('SELECT');
  QrAdiciona_item.SQL.Add('it.cfop,');
  QrAdiciona_item.SQL.Add('it.aliquota_icms,');
  QrAdiciona_item.SQL.Add('nt.numero,');
  QrAdiciona_item.SQL.Add('nt.data,');
  QrAdiciona_item.SQL.Add('nt.codfilial,');
  QrAdiciona_item.SQL.Add('nt.codigo,');
  QrAdiciona_item.SQL.Add('sum(it.subtotal) subtotal, ');
  QrAdiciona_item.SQL.Add('sum(it.valor_desconto) desconto, ');
  qradiciona_item.sql.add('sum(it.valor_total_geral) total_geral,');
  QrAdiciona_item.SQL.Add('sum(it.base_icms) base_icms,');
  qradiciona_item.sql.add('sum(it.valor_icms) valor_icms, ');
  QrAdiciona_item.SQL.Add('sum(it.isentas_icms) isentas_icms,');
  QrAdiciona_item.SQL.Add('sum(it.outras_icms) outras_icms, ');
  QrAdiciona_item.SQL.Add('sum(it.base_ipi) base_ipi,');
  QrAdiciona_item.SQL.Add('sum(it.valor_ipi) valor_ipi, ');
  QrAdiciona_item.SQL.Add('sum(it.isentas_ipi) isentas_ipi,');
  QrAdiciona_item.SQL.Add('sum(it.outras_ipi) outras_ipi, ');
  QrAdiciona_item.SQL.Add('sum(it.reducao_base_icms) reducao_base_icms,');
  QrAdiciona_item.SQL.Add('sum(it.base_icms_subst) base_icms_subst,');
  QrAdiciona_item.SQL.Add('sum(it.frete) fretes,');
  qradiciona_item.sql.add('sum(it.outras_despesas) outras_despesas,');
  QrAdiciona_item.SQL.Add('sum(it.seguro) seguro');
  QrAdiciona_item.SQL.Add('FROM sintegra_saida_item it, c000061 nt WHERE ');
  QrAdiciona_item.SQL.Add('it.codnota = nt.codigo and');
  qradiciona_item.sql.add('nt.data >= :datai and nt.data <= :dataf and nt.movimento = ''E'' and');
  qradiciona_item.SQL.add('nt.codfilial = ''' + frmmodulo.qrfilial.fieldbyname('codigo').asstring + ''' AND ');
  QrAdiciona_item.SQL.Add('it.tipo = ''E'' ');
  QrAdiciona_item.SQL.Add('GROUP BY it.cfop,');
  QrAdiciona_item.SQL.Add('it.aliquota_icms,');
  QrAdiciona_item.SQL.Add('nt.numero,');
  QrAdiciona_item.SQL.Add('nt.data,');
  QrAdiciona_item.SQL.Add('nt.codfilial,');
  QrAdiciona_item.SQL.Add('nt.codigo');
  QrAdiciona_item.SQL.Add('order by nt.data');
  QRadiciona_ITEM.Params.ParamByName('DATAI').ASDATETIME := DateEdit1.DATE;
  QRadiciona_ITEM.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QrAdiciona_item.Open;

  if qradiciona_item.RecordCount > 0 then
  begin

    qradiciona_item.First;


    while not QrAdiciona_item.Eof do
    begin
      qrsaida_temp.close;
      qrsaida_temp.SQL.clear;
      qrsaida_temp.sql.add('select nt.*,cli.*,esp.sigla from c000061 nt, c000007 cli, c000082 esp where nt.codcliente = cli.codigo and nt.MODELO_NF = esp.sintegra and nt.codigo = ''' + qradiciona_item.fieldbyname('codigo').asstring + '''');
      qrsaida_temp.open;

      if qrsaida_temp.RecordCount = 0 then
      begin
        showmessage('Tabelas 61,07,09 ou 82 com algum campo Nulo ou em branco, Informe ao Suporte do Sistema!');
        ShowMessage('CÓDIGO : ' + qradiciona_item.fieldbyname('codigo').asstring + ' NA TABELA C000061');
        exit;
      end;

      qrsaida.Insert;
      qrsaida.fieldbyname('CODIGO').asstring := qrsaida_temp.fieldbyname('CODIGO').asSTRING;
          // empresa informante
      qrsaida.fieldbyname('CODIGO_EMPRESA').asstring := frmmodulo.qrfilial.fieldbyname('CODIGO').asstring;
      qrsaida.fieldbyname('CNPJ').asstring := frmprincipal.somenteNumero(frmmodulo.qrfilial.fieldbyname('CNPJ').asstring);
      qrsaida.fieldbyname('INSC_ESTADUAL').asstring := frmprincipal.somenteNumero(frmmodulo.qrfilial.fieldbyname('IE').asstring);
      qrsaida.fieldbyname('UF').asstring := frmmodulo.qrfilial.fieldbyname('UF').asstring;

          // beneficiario
      qrsaida.fieldbyname('CODIGO_CLIENTE').asstring := qrsaida_temp.fieldbyname('codcliente').asstring;

      qrsaida.fieldbyname('CNPJ_CLIENTE').ASSTRING := frmprincipal.somenteNumero(qrsaida_temp.fieldbyname('cpf').ASSTRING);


      if QRSAIDA_TEMP.FIELDBYNAME('TIPO_1').ASstring = '2' then
      begin

        if (Trim(UpperCase(qrsaida_temp.fieldbyname('rg').asstring)) = 'ISENTO') or (qrsaida_temp.fieldbyname('rg').asstring = '') then
          qrsaida.fieldbyname('IE_CLIENTE').asstring := 'ISENTO'
        else
          qrsaida.fieldbyname('IE_CLIENTE').asstring := frmprincipal.somenteNumero(qrsaida_temp.fieldbyname('rg').value);
      end
      else
      begin
        qrsaida.fieldbyname('IE_CLIENTE').asstring := 'ISENTO'
      end;

      if qrsaida_temp.fieldbyname('uf').value = null then
        qrsaida.fieldbyname('UF_IE_CLIENTE').asstring := ''
      else
        qrsaida.fieldbyname('UF_IE_CLIENTE').asstring := qrsaida_temp.fieldbyname('uf').value;

      qrsaida.fieldbyname('CPF_CLIENTE').asstring := '';

      val.TipoDocto := docCNPJ;
      val.Documento := qrsaida.fieldbyname('CNPJ_CLIENTE').ASSTRING;


      if Trim(UpperCase(qrsaida.fieldbyname('IE_CLIENTE').asstring)) <> 'ISENTO' then
      begin
        val.TipoDocto := docInscEst;
        val.Documento := qrsaida.fieldbyname('IE_CLIENTE').asstring;
        val.Complemento := qrsaida.fieldbyname('UF_IE_CLIENTE').asstring;
      end;

      qrsaida.fieldbyname('NOTAFISCAL').value := qrsaida_temp.fieldbyname('numero').asstring;

    //     qrsaida.fieldbyname('VALOR_CONTABIL').asfloat  := qradiciona_item.fieldbyname('total_geral').asfloat;

      qrsaida.fieldbyname('VALOR_MERCADORIAS').value := qradiciona_item.fieldbyname('subtotal').value; ;


      QRSAIDA.fieldbyname('DESCONTO').asfloat := qrsaida_temp.fieldbyname('DESCONTO').asfloat;

      qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qradiciona_item.fieldbyname('total_geral').asfloat;


      if qrsaida.fieldbyname('desconto').asfloat > 0 then
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat - qradiciona_item.fieldbyname('desconto').asfloat;

      if qradiciona_item.fieldbyname('valor_ipi').asfloat > 0 then
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.fieldbyname('valor_ipi').asfloat;

      if qradiciona_item.FieldByName('reducao_base_icms').asfloat > 0 then
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.FieldByName('reducao_base_icms').asfloat;


          // modificado por eleno em 30/10/2009
      if qradiciona_item.FieldByName('outras_despesas').asfloat > 0 then
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.FieldByName('outras_despesas').asfloat;
          //

      if qradiciona_item.FieldByName('fretes').asfloat > 0 then
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.FieldByName('fretes').asfloat;

      if qradiciona_item.FieldByName('seguro').asfloat > 0 then
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.FieldByName('seguro').asfloat;


      if qrsaida.fieldbyname('VALOR_CONTABIL').asfloat = 0 then
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qradiciona_item.fieldbyname('total_geral').asfloat;

      qrsaida.fieldbyname('DATA').value := qradiciona_item.fieldbyname('data').value;
      qrsaida.fieldbyname('DATA_ESCRITURACAO').value := qradiciona_item.fieldbyname('data').value;
      qrsaida.fieldbyname('TIPO').value := 'E';

      qrsaida.fieldbyname('MODELO_NF').value := qrsaida_temp.fieldbyname('MODELO_NF').value;
      qrsaida.fieldbyname('SERIE').value := qrsaida_temp.fieldbyname('SERIE_NF').value;
      qrsaida.fieldbyname('especie').value := qrsaida_temp.fieldbyname('sigla').value;

      qrsaida.fieldbyname('CFOP').value := qradiciona_item.fieldbyname('cfop').value;

      if qrsaida_temp.fieldbyname('nfe_situacao').AsInteger <> 8 then
        qrsaida.fieldbyname('NOTA_CANCELADA').value := 'N'
      else
        qrsaida.fieldbyname('NOTA_CANCELADA').value := 'S';
      qrsaida.fieldbyname('TIPO_FRETE').value := QRSAIDA_TEMP.FIELDBYNAME('FRETE_CONTA').VALUE;


          {ICMS}

      qrsaida.fieldbyname('ALIQUOTA_ICMS').value := qrAdiciona_item.FieldByName('aliquota_icms').AsFloat;

      qrsaida.fieldbyname('BASE_ICMS').value := qrAdiciona_item.FieldByName('base_icms').AsFloat;

      qrsaida.fieldbyname('VALOR_ICMS_CREDITADO').value := qrAdiciona_item.FieldByName('valor_icms').AsFloat;
      qrsaida.fieldbyname('BASE_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('base_icms_subst').AsFloat;
      qrsaida.fieldbyname('VALOR_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('reducao_base_icms').AsFloat;
      qrsaida.fieldbyname('VALOR_ICMS_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_icms').AsFloat;
      qrsaida.fieldbyname('VALOR_ICMS_OUTRAS').value := qrAdiciona_item.FieldByName('outras_icms').AsFloat;

          {IPI}
      qrsaida.fieldbyname('ALIQUOTA_IPI').value := 0;
      qrsaida.fieldbyname('BASE_IPI').value := qrAdiciona_item.FieldByName('base_ipi').AsFloat;
      qrsaida.fieldbyname('VALOR_IPI_CREDITADO').value := qrAdiciona_item.FieldByName('valor_ipi').AsFloat;
      qrsaida.fieldbyname('VALOR_IPI_CREDITADO50').value := 0;
      qrsaida.fieldbyname('VALOR_IPI_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_ipi').AsFloat;
      qrsaida.fieldbyname('VALOR_IPI_OUTRAS').value := qrAdiciona_item.FieldByName('outras_ipi').AsFloat;

      qrsaida.Post;
      QrAdiciona_item.Next;
    end;

  end;





    (********************************************************************************)

  QRITEM.CLOSE;
  QRITEM.SQL.CLEAR;
    //QRITEM.SQL.ADD('SELECT I.*,N.CODfilial, N.NUMERO,n.data, n.modelo_nf, p.produto, p.unidade');
  QRITEM.SQL.ADD('SELECT I.*,N.CODfilial, n.valor_produtos, n.frete, n.outras_despesas, n.seguro, N.NUMERO,n.data, n.modelo_nf,  n.desconto, n.total_nota, p.produto, p.produto, p.unidade');
  QRITEM.SQL.ADD('FROM C000062 I, C000061 N, c000025 p');
  QRITEM.SQL.Add('WHERE');
  QRITEM.SQL.ADD('I.CODNOTA = N.CODIGO AND i.codproduto = p.codigo and n.movimento = ''S'' and ');
  QRITEM.SQL.ADD('n.DATA >= :DATAI AND n.DATA <= :DATAF AND N.COdfilial = ''' + FRMMODULO.QRFILIAL.FIELDBYNAME('CODIGO').ASSTRING + ''' order by NUMERO,modelo_nf');
  QRITEM.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  QRITEM.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QRITEM.OPEN;
  QRITEM.FIRST;

  nota := qritem.fieldbyname('CODNOTA').asstring;
  item := 1;

  if qritem.RecordCount > 0 then
  begin


    while not QRITEM.EOF do
    begin

      if qritem.fieldbyname('desconto').value = null then
        vdesconto := 0
      else
        vdesconto := qritem.fieldbyname('desconto').value;

      qrsaida_item.Insert;

      qrsaida_item.fieldbyname('DATA_EMISSAO').value := copy(qritem.fieldbyname('data').asstring, 4, 2) + copy(qritem.fieldbyname('data').asstring, 7, 4);
      qrsaida_item.fieldbyname('num_item').value := frmprincipal.zerarcodigo(inttostr(item), 3);
      qrsaida_item.fieldbyname('cd_produto').value := qritem.fieldbyname('Codproduto').value;
      qrsaida_item.fieldbyname('produto').value := COPY(qritem.fieldbyname('PRODUTO').value, 1, 40);
      qrsaida_item.fieldbyname('apr_und').value := qritem.fieldbyname('unidade').value;
      qrsaida_item.fieldbyname('TIPO').value := 'S';
      qrsaida_item.fieldbyname('quantidade').value := qritem.fieldbyname('qtde').value;
      qrsaida_item.fieldbyname('subtotal').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('valor_desconto').value := vdesconto;
      qrsaida_item.fieldbyname('total').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('notafiscal').value := qritem.fieldbyname('NUMERO').value;
      qrsaida_item.fieldbyname('valor_venda_bruta').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('valor_total_geral').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('datahora_recebimento').value := qritem.fieldbyname('data').value;
      qrsaida_item.fieldbyname('modelo_nf').value := qritem.fieldbyname('modelo_nf').value;
      qrsaida_item.fieldbyname('modelo_doc').value := qritem.fieldbyname('modelo_nf').value;
      qrsaida_item.fieldbyname('cfop').value := qritem.fieldbyname('cfop').value;
      qrsaida_item.fieldbyname('cl_fis').value := qritem.fieldbyname('classificacao_fiscal').value;
      qrsaida_item.fieldbyname('s_trib').value := qritem.fieldbyname('cst').value;
      qrsaida_item.fieldbyname('datahora').value := qritem.fieldbyname('data').value;
      qrsaida_item.fieldbyname('movimento').value := 1;
      qrsaida_item.fieldbyname('cod_pedidos').value := qritem.fieldbyname('NUMERO').value;
      QRSAIDA_ITEM.FIELDBYNAME('CODNOTA').VALUE := qritem.fieldbyname('CODNOTA').value;

      if qritem.fieldbyname('ipi').value > 2 then
      begin
        qrsaida_item.fieldbyname('aliquota_ipi').value := qritem.fieldbyname('IPI').value;
        qrsaida_item.fieldbyname('base_ipi').value := qritem.fieldbyname('TOTAL').value;
        qrsaida_item.fieldbyname('valor_ipi').value := qritem.fieldbyname('VALOR_IPI').value;
        qrsaida_item.fieldbyname('isentas_ipi').value := 0;
        qrsaida_item.fieldbyname('outras_ipi').value := 0;
      end;

      qrsaida_item.fieldbyname('base_icms_subst').value := qritem.fieldbyname('BASE_SUB').value;
      qrsaida_item.fieldbyname('reducao_base_icms').value := qritem.fieldbyname('ICMS_SUB').value;

      qrsaida_item.fieldbyname('isentas_icms').value := qritem.fieldbyname('ISENTO').value;

           // maria
      qrsaida_item.fieldbyname('outras_icms').value := qritem.fieldbyname('OUTRAS').value;
                                                                    //+
                                                                   //qritem.fieldbyname('seguro').value+
                                                                  //qritem.fieldbyname('OUTRAS_despesas').value+
                                                                  //qritem.fieldbyname('frete').value;


          {
          showmessage(floattostr(qritem.fieldbyname('OUTRAS').value)+'  '+
          floattostr(qritem.fieldbyname('seguro').value)+'  '+
          floattostr(qritem.fieldbyname('OUTRAS_despesas').value)+'  '+
          floattostr(qritem.fieldbyname('frete').value));
          }

           {
           if qritem.fieldbyname('frete').asfloat > 0 then
           begin
             qrsaida_item.fieldbyname('frete').value := qritem.fieldbyname('frete').asfloat * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
           end;

           if qritem.fieldbyname('seguro').asfloat > 0 then
           begin
             qrsaida_item.fieldbyname('seguro').value := qritem.fieldbyname('seguro').asfloat * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
           end;

           if (qritem.fieldbyname('outras_DESPESAS').asfloat+qritem.fieldbyname('SEGURO').asfloat) > 0 then
           begin
             // modif por eleno 30/10/2009
             qrsaida_item.fieldbyname('OUTRAS_DESPESAS').value := (qritem.fieldbyname('outras_DESPESAS').asfloat+qritem.fieldbyname('SEGURO').asfloat) * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
             //qrsaida_item.fieldbyname('OUTRAS_ICMS').value := (qritem.fieldbyname('outras_DESPESAS').asfloat+qritem.fieldbyname('SEGURO').asfloat) * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
           end;
           }

      if qrITEM.FIELDBYNAME('ICMS').VALUE > 0 then
      begin
        if qritem.fieldbyname('desconto').asfloat > 0 then
        begin
          qrsaida_item.fieldbyname('aliquota_icms').value := qritem.fieldbyname('ICMS').AsFloat;
          qrsaida_item.fieldbyname('base_icms').value := qritem.fieldbyname('bASE_CALCULO').AsFloat; //-qritem.fieldbyname('desconto').asfloat;
          if qritem.fieldbyname('VALOR_ICMS').value > 0 then
            qrsaida_item.fieldbyname('valor_icms').value := qrsaida_item.fieldbyname('base_ICMS').value * (qrITEM.FIELDBYNAME('ICMS').VALUE / 100)
          else
            qrsaida_item.fieldbyname('valor_icms').value := qritem.fieldbyname('VALOR_ICMS').AsFloat;
        end
        else
        begin
          qrsaida_item.fieldbyname('aliquota_icms').value := qritem.fieldbyname('ICMS').value;
          qrsaida_item.fieldbyname('base_icms').value := qritem.fieldbyname('BASE_CALCULO').value;
          qrsaida_item.fieldbyname('valor_icms').value := qritem.fieldbyname('VALOR_ICMS').value;
        end;
      end;


      total_despesas := qritem.fieldbyname('total_nota').AsFloat -
        (qritem.fieldbyname('FRETE').AsFloat +
        qritem.fieldbyname('SEGURO').AsFloat +
        qritem.fieldbyname('OUTRAS_DESPESAS').AsFloat +
        qritem.fieldbyname('valor_ipi').AsFloat);

      if qritem.fieldbyname('frete').asfloat > 0 then
      begin
        qrsaida_item.fieldbyname('FRETE').value := (qritem.fieldbyname('TOTAL').value * qritem.fieldbyname('FRETE').asfloat) / total_despesas;
        if qrsaida_item.fieldbyname('base_icms').AsFloat > 0 then
          qrsaida_item.fieldbyname('base_icms').AsFloat := qrsaida_item.fieldbyname('base_icms').AsFloat + qrsaida_item.fieldbyname('FRETE').AsFloat;

             //qrsaida_item.fieldbyname('total').value := qrsaida_item.fieldbyname('total').value + qrsaida_item.fieldbyname('FRETE').value;


      end
      else
        qrsaida_item.fieldbyname('FRETE').value := 0;


      if qritem.fieldbyname('seguro').asfloat > 0 then
      begin
        qrsaida_item.fieldbyname('SEGURO').value := (qritem.fieldbyname('TOTAL').value * qritem.fieldbyname('SEGURO').asfloat) / total_despesas;
        if qrsaida_item.fieldbyname('base_icms').AsFloat > 0 then
          qrsaida_item.fieldbyname('base_icms').AsFloat := qrsaida_item.fieldbyname('base_icms').AsFloat + qrsaida_item.fieldbyname('seguro').AsFloat;
             //qrsaida_item.fieldbyname('total').value := qrsaida_item.fieldbyname('total').value + qrsaida_item.fieldbyname('SEGURO').value;
      end
      else
        qrsaida_item.fieldbyname('SEGURO').value := 0;

      if (qritem.fieldbyname('outras_DESPESAS').asfloat + qritem.fieldbyname('SEGURO').asfloat) > 0 then
      begin
        qrsaida_item.fieldbyname('OUTRAS_DESPESAS').value := (qritem.fieldbyname('TOTAL').value * qritem.fieldbyname('outras_DESPESAS').asfloat) / total_despesas;
        if qrsaida_item.fieldbyname('base_icms').AsFloat > 0 then
          qrsaida_item.fieldbyname('base_icms').AsFloat := qrsaida_item.fieldbyname('base_icms').AsFloat + qrsaida_item.fieldbyname('outras_despesas').AsFloat;
             //qrsaida_item.fieldbyname('total').value := qrsaida_item.fieldbyname('total').value + qrsaida_item.fieldbyname('OUTRAS_DESPESAS').value;

      end
      else
        qrsaida_item.fieldbyname('OUTRAS_DESPESAS').value := 0;

{
          IF qrITEM.FIELDBYNAME('ICMS').VALUE > 0 THEN
          BEGIN
             if qritem.fieldbyname('desconto').asfloat > 0 then
             begin
               qrsaida_item.fieldbyname('aliquota_icms').value      := qritem.fieldbyname('ICMS').value;
               qrsaida_item.fieldbyname('base_icms').value          := qritem.fieldbyname('bASE_CALCULO').value//-qritem.fieldbyname('desconto').asfloat;
               if qritem.fieldbyname('VALOR_ICMS').value > 0 then
                 qrsaida_item.fieldbyname('valor_icms').value         := qrsaida_item.fieldbyname('base_ICMS').value*(qrITEM.FIELDBYNAME('ICMS').VALUE/100)
               else
               qrsaida_item.fieldbyname('valor_icms').value         := qritem.fieldbyname('VALOR_ICMS').value;
             end
             else
             begin
               qrsaida_item.fieldbyname('aliquota_icms').value      := qritem.fieldbyname('ICMS').value;
               qrsaida_item.fieldbyname('base_icms').value          := qritem.fieldbyname('BASE_CALCULO').value;
               qrsaida_item.fieldbyname('valor_icms').value         := qritem.fieldbyname('VALOR_ICMS').value;
             end;
           END;

}

//           qrsaida_item.fieldbyname('outras_icms').value

      qrsaida_item.fieldbyname('total').AsFloat := (qrsaida_item.fieldbyname('total').AsFloat +
        qrsaida_item.fieldbyname('FRETE').AsFloat +
        qrsaida_item.fieldbyname('SEGURO').AsFloat +
        qrsaida_item.fieldbyname('OUTRAS_DESPESAS').AsFloat +
        qrsaida_item.fieldbyname('BASE_ICMS_SUBST').AsFloat +
        qrsaida_item.fieldbyname('VALOR_IPI').AsFloat);


          //IF qrsaida_item.fieldbyname('CFOP').AsString = '6114' THEN
            //ShowMessage(' ITEM '+FloatToStr(qrsaida_item.fieldbyname('total').AsFloat));

      qrsaida_item.Post;
      Application.ProcessMessages;

      item := item + 1;

      qritem.next;
      if nota <> qritem.fieldbyname('CODNOTA').asstring then item := 1;
      NOTA := QRITEM.FIELDBYNAME('CODNOTA').asstring;
    end;
    frmmodulo.conexao.commit;
  end;


  QrAdiciona_item.Close;
  QrAdiciona_item.SQL.Clear;
  QrAdiciona_item.SQL.Add('SELECT');
  QrAdiciona_item.SQL.Add('it.cfop,');
  QrAdiciona_item.SQL.Add('it.aliquota_icms,');
  QrAdiciona_item.SQL.Add('nt.numero,');
  QrAdiciona_item.SQL.Add('nt.data,');
  QrAdiciona_item.SQL.Add('nt.codfilial,');
  QrAdiciona_item.SQL.Add('nt.codigo,');
  QrAdiciona_item.SQL.Add('sum(it.subtotal) subtotal, ');
  QrAdiciona_item.SQL.Add('sum(it.valor_desconto) desconto, ');
  QrAdiciona_item.SQL.Add('sum(it.valor_desconto_item) desconto_item, ');
  qradiciona_item.sql.add('sum(it.valor_total_geral) total_geral,');
  QrAdiciona_item.SQL.Add('sum(it.base_icms) base_icms,');
  qradiciona_item.sql.add('sum(it.valor_icms) valor_icms, ');
  QrAdiciona_item.SQL.Add('sum(it.isentas_icms) isentas_icms,');
  QrAdiciona_item.SQL.Add('sum(it.outras_icms) outras_icms, ');
  QrAdiciona_item.SQL.Add('sum(it.base_ipi) base_ipi,');
  QrAdiciona_item.SQL.Add('sum(it.valor_ipi) valor_ipi, ');
  QrAdiciona_item.SQL.Add('sum(it.isentas_ipi) isentas_ipi,');
  QrAdiciona_item.SQL.Add('sum(it.outras_ipi) outras_ipi, ');
  QrAdiciona_item.SQL.Add('sum(it.reducao_base_icms) reducao_base_icms,');
  QrAdiciona_item.SQL.Add('sum(it.base_icms_subst) base_icms_subst,');
  QrAdiciona_item.SQL.Add('sum(it.frete) fretes,');
               // adicionado em 30/10/2009 por eleno
  qradiciona_item.sql.add('sum(it.outras_despesas) outras_despesas,');
               //
  QrAdiciona_item.SQL.Add('sum(it.seguro) seguro');

  QrAdiciona_item.SQL.Add('FROM sintegra_saida_item it, c000061 nt WHERE ');
  QrAdiciona_item.SQL.Add('it.codnota = nt.codigo and');
  qradiciona_item.sql.add('nt.data >= :datai and nt.data <= :dataf and nt.movimento = ''S'' and');
  qradiciona_item.SQL.add('nt.codfilial = ''' + frmmodulo.qrfilial.fieldbyname('codigo').asstring + ''' AND ');
  QrAdiciona_item.SQL.Add('it.tipo = ''S'' ');
  QrAdiciona_item.SQL.Add('GROUP BY it.cfop,');
  QrAdiciona_item.SQL.Add('it.aliquota_icms,');
  QrAdiciona_item.SQL.Add('nt.numero,');
  QrAdiciona_item.SQL.Add('nt.data,');
  QrAdiciona_item.SQL.Add('nt.codfilial,');
  QrAdiciona_item.SQL.Add('nt.codigo');
  QrAdiciona_item.SQL.Add('order by nt.data');
  QRadiciona_ITEM.Params.ParamByName('DATAI').ASDATETIME := DateEdit1.DATE;
  QRadiciona_ITEM.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QrAdiciona_item.Open;




  if qradiciona_item.RecordCount > 0 then
  begin


    qradiciona_item.First;
    while not QrAdiciona_item.Eof do
    begin
      qrsaida_temp.close;
      qrsaida_temp.SQL.clear;
      qrsaida_temp.sql.add('select nt.*,cli.*,esp.sigla from c000061 nt, c000007 cli, c000082 esp where nt.codcliente = cli.codigo and nt.MODELO_NF = esp.sintegra and  nt.codigo = ''' + qradiciona_item.fieldbyname('codigo').asstring + '''');
      qrsaida_temp.open;

      if qrsaida_temp.RecordCount = 0 then
      begin
        texto := PWideChar('A nota fiscal no.: ' + QRADICIONA_ITEM.fieldbyname('numero').asstring + ' possue dados incorretos! Verifique o modelo, o código do cliente e o número da nota!' + #13 +
          'Deseja visualizá-la?');
        if application.messagebox(texto, 'NF Emitida - SAI', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
        begin
          procura_sintegra := true;
          parametro_pesquisa := QRADICIONA_ITEM.fieldbyname('numero').asstring;
          frmnotafiscal := tfrmnotafiscal.create(self);
          frmnotafiscal.showmodal;
          showmessage('Reinicie o procedimento! Clique em Gerar...');
          abort;

        end;
      end;

      qrsaida.Insert;
      qrsaida.fieldbyname('CODIGO').asstring := qrsaida_temp.fieldbyname('CODIGO').asstring;
          // empresa informante
      qrsaida.fieldbyname('CODIGO_EMPRESA').asstring := frmmodulo.qrfilial.fieldbyname('CODIGO').asstring;
      qrsaida.fieldbyname('CNPJ').asstring := frmprincipal.somenteNumero(frmmodulo.qrfilial.fieldbyname('CNPJ').asstring);
      qrsaida.fieldbyname('INSC_ESTADUAL').asstring := frmprincipal.somenteNumero(frmmodulo.qrfilial.fieldbyname('IE').asstring);
      qrsaida.fieldbyname('UF').asstring := frmmodulo.qrfilial.fieldbyname('UF').asstring;

          // beneficiario
      qrsaida.fieldbyname('CODIGO_CLIENTE').ASSTRING := qrsaida_temp.fieldbyname('codcliente').asstring;

      qrsaida.fieldbyname('CNPJ_CLIENTE').ASSTRING := frmprincipal.somenteNumero(qrsaida_temp.fieldbyname('cpf').ASSTRING);

          //qrsaida.fieldbyname('CNPJ_CLIENTE').ASSTRING  := frmprincipal.somenteNumero(qrsaida_temp.fieldbyname('cpf').ASSTRING);

      if QRSAIDA_TEMP.FIELDBYNAME('TIPO_1').ASstring = '2' then
      begin
        if (Trim(UpperCase(qrsaida_temp.fieldbyname('rg').asstring)) = 'ISENTO') or (qrsaida_temp.fieldbyname('rg').asstring = '') then
          qrsaida.fieldbyname('IE_CLIENTE').asstring := 'ISENTO'
        else
          qrsaida.fieldbyname('IE_CLIENTE').asstring := frmprincipal.somenteNumero(qrsaida_temp.fieldbyname('rg').asstring);
      end
      else
      begin
        qrsaida.fieldbyname('IE_CLIENTE').asstring := 'ISENTO'
      end;

      qrsaida.fieldbyname('UF_IE_CLIENTE').asstring := qrsaida_temp.fieldbyname('uf').asstring;
      qrsaida.fieldbyname('CPF_CLIENTE').asstring := '';

      qrsaida.fieldbyname('NOTAFISCAL').value := qrsaida_temp.fieldbyname('numero').asstring;

      qrsaida.fieldbyname('VALOR_MERCADORIAS').value := qradiciona_item.fieldbyname('subtotal').value; ;

      qrsaida.fieldbyname('BASE_ICMS').value := qrAdiciona_item.FieldByName('base_icms').AsFloat;

      qrsaida.fieldbyname('VALOR_ICMS_CREDITADO').value := QrAdiciona_item.fieldbyname('BASE_ICMS').asfloat *
        QrAdiciona_item.fieldbyname('ALIQUOTA_ICMS').asfloat / 100;

      qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qradiciona_item.fieldbyname('total_geral').asfloat;

      if qradiciona_item.fieldbyname('desconto_item').value > 0 then
      begin
        qrsaida.fieldbyname('DESCONTO').asfloat := QRADICIONA_ITEM.fieldbyname('desconto_item').asfloat;
      end
      else
      begin
        qrsaida.fieldbyname('DESCONTO').asfloat := QRADICIONA_ITEM.fieldbyname('desconto').asfloat;
      end;


      if qradiciona_item.fieldbyname('valor_ipi').asfloat > 0 then
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.fieldbyname('valor_ipi').asfloat;

      if qradiciona_item.FieldByName('reducao_base_icms').asfloat > 0 then
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.FieldByName('reducao_base_icms').asfloat;


      if qrsaida_temp.FieldByName('frete').asfloat > 0 then
      begin
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qrsaida_temp.FieldByName('frete').asfloat;
        qrsaida.fieldbyname('VALOR_FRETE').asfloat := qrsaida.fieldbyname('VALOR_FRETE').asfloat + qrsaida_temp.FieldByName('frete').asfloat;
      end
      else
      begin
        qrsaida.fieldbyname('VALOR_FRETE').asfloat := 0;
      end;

      if qrsaida_temp.FieldByName('seguro').asfloat > 0 then
      begin
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qrsaida_temp.FieldByName('seguro').asfloat;
        qrsaida.fieldbyname('VALOR_SEGURO').asfloat := qrsaida.fieldbyname('VALOR_SEGURO').asfloat + qrsaida_temp.FieldByName('seguro').asfloat;
      end
      else
      begin
        qrsaida.fieldbyname('VALOR_SEGURO').asfloat := 0;
      end;

      if qrsaida_temp.FieldByName('outras_despesas').asfloat > 0 then
      begin
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + qrsaida_temp.FieldByName('outras_despesas').asfloat;
        qrsaida.fieldbyname('VALOR_DESPESAS').asfloat := qrsaida.fieldbyname('VALOR_DESPESAS').asfloat + qrsaida_temp.FieldByName('outras_despesas').asfloat;
      end
      else
      begin
        qrsaida.fieldbyname('VALOR_DESPESAS').asfloat := 0;
      end;
      qrsaida.fieldbyname('DATA').value := qradiciona_item.fieldbyname('data').value;
      qrsaida.fieldbyname('DATA_ESCRITURACAO').value := qradiciona_item.fieldbyname('data').value;
      qrsaida.fieldbyname('TIPO').value := 'S';

      qrsaida.fieldbyname('MODELO_NF').value := qrsaida_temp.fieldbyname('MODELO_NF').value;
      qrsaida.fieldbyname('SERIE').value := qrsaida_temp.fieldbyname('SERIE_NF').value;
      qrsaida.fieldbyname('especie').value := qrsaida_temp.fieldbyname('sigla').value;

      qrsaida.fieldbyname('CFOP').value := qradiciona_item.fieldbyname('cfop').value;

      if qrsaida_temp.fieldbyname('nfe_situacao').AsInteger <> 8 then
        qrsaida.fieldbyname('NOTA_CANCELADA').value := 'N'
      else
        qrsaida.fieldbyname('NOTA_CANCELADA').value := 'S';

      qrsaida.fieldbyname('TIPO_FRETE').value := QRSAIDA_TEMP.FIELDBYNAME('FRETE_CONTA').VALUE;

          {ICMS}
      qrsaida.fieldbyname('ALIQUOTA_ICMS').value := qrAdiciona_item.FieldByName('aliquota_icms').AsFloat;
      qrsaida.fieldbyname('BASE_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('base_icms_subst').AsFloat;
      qrsaida.fieldbyname('VALOR_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('reducao_base_icms').AsFloat;
      qrsaida.fieldbyname('VALOR_ICMS_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_icms').AsFloat;

      if qrAdiciona_item.FieldByName('cfop').AsString = '6114' then
      begin

        qrsaida.fieldbyname('VALOR_ICMS_OUTRAS').value := qrAdiciona_item.FieldByName('outras_icms').AsFloat +
          qrAdiciona_item.FieldByName('FRETES').AsFloat +
          qrAdiciona_item.FieldByName('OUTRAS_DESPESAS').AsFloat +
          qrAdiciona_item.FieldByName('SEGURO').AsFloat;

      end;
          {IPI}
      qrsaida.fieldbyname('ALIQUOTA_IPI').value := 0;
      qrsaida.fieldbyname('BASE_IPI').value := qrAdiciona_item.FieldByName('base_ipi').AsFloat;
      qrsaida.fieldbyname('VALOR_IPI_CREDITADO').value := qrAdiciona_item.FieldByName('valor_ipi').AsFloat;
      qrsaida.fieldbyname('VALOR_IPI_CREDITADO50').value := 0;
      qrsaida.fieldbyname('VALOR_IPI_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_ipi').AsFloat;
      qrsaida.fieldbyname('VALOR_IPI_OUTRAS').value := qrAdiciona_item.FieldByName('outras_ipi').AsFloat;

      qrsaida.Post;
      QrAdiciona_item.Next;
      APPLICATION.ProcessMessages;
    end;

    FRMMODULO.Conexao.Commit;

  end; //

  //NFCE

    (********************************************************************************)



  QRITEM.CLOSE;
  QRITEM.SQL.CLEAR;
  QRITEM.SQL.ADD('select');
  QRITEM.SQL.ADD(' ven.data data,');
  QRITEM.SQL.ADD(' ven.codproduto,');
  QRITEM.SQL.ADD(' pro.produto,');
  QRITEM.SQL.ADD(' pro.unidade,');
  QRITEM.SQL.ADD(' ven.qtde,');
  QRITEM.SQL.ADD(' ven.total,');
  QRITEM.SQL.ADD(' coalesce(ven.desconto,0) desconto,');
  QRITEM.SQL.ADD(' ven.numeronota NUMERO,');
  QRITEM.SQL.ADD(' ''65'' modelo_nf,');
  QRITEM.SQL.ADD(' '''' SERIE_NF,');
  QRITEM.SQL.ADD(' '''' sigla,');
  QRITEM.SQL.ADD(' ven.cfop cfop,');
  QRITEM.SQL.ADD(' ven.classificacao_fiscal,');
  QRITEM.SQL.ADD(' ven.cst,');
  QRITEM.SQL.ADD(' ven.codigo CODNOTA,');
  QRITEM.SQL.ADD(' ven.ipi,');
  QRITEM.SQL.ADD(' ven.valor_ipi,');
  QRITEM.SQL.ADD(' ven.base_sub,');
  QRITEM.SQL.ADD(' ven.icms_sub,');
  QRITEM.SQL.ADD(' ven.isentas_icms ISENTO,');
  QRITEM.SQL.ADD(' ven.outras_icms,');
  QRITEM.SQL.ADD(' ven.aliquota ICMS,');
  QRITEM.SQL.ADD(' ven.base_calculo,');
  QRITEM.SQL.ADD(' ven.valor_icms,');
  QRITEM.SQL.ADD(' ven.total total_nota,');
  QRITEM.SQL.ADD(' ven.codcliente,');
  QRITEM.SQL.ADD(' cli.cpf,');
  QRITEM.SQL.ADD(' cli.tipo TIPO_1,');
  QRITEM.SQL.ADD(' cli.rg,');
  QRITEM.SQL.ADD(' cli.uf,');
  QRITEM.SQL.ADD(' ven.total subtotal,');
  QRITEM.SQL.ADD(' coalesce(ven.desconto,0) desconto_item,');
  QRITEM.SQL.ADD(' ven.total total_geral,');
  QRITEM.SQL.ADD(' ven.base_calculo base_icms,');
  QRITEM.SQL.ADD(' ven.isentas_icms,');
  QRITEM.SQL.ADD(' ven.base_calculo base_ipi,');
  QRITEM.SQL.ADD(' 0 isentas_ipi,');
  QRITEM.SQL.ADD(' 0 outras_ipi,');
  QRITEM.SQL.ADD(' 0 reducao_base_icms,');
  QRITEM.SQL.ADD(' ven.base_sub base_icms_subst,');
  QRITEM.SQL.ADD(' 0 fretes,');
  QRITEM.SQL.ADD(' ven.outras_icms outras_despesas,');
  QRITEM.SQL.ADD(' 0 seguro,');
  QRITEM.SQL.ADD(' ven.aliquota ALIQUOTA_ICMS,');
  QRITEM.SQL.ADD(' case when ven.situacao = 0 then');
  QRITEM.SQL.ADD('   ''S''');
  QRITEM.SQL.ADD(' else');
  QRITEM.SQL.ADD('   ''N''');
  QRITEM.SQL.ADD(' end cancelado');
  QRITEM.SQL.ADD('from');
  QRITEM.SQL.ADD('  c000032 ven');
  QRITEM.SQL.ADD('  inner join c000025 pro on pro.codigo = ven.codproduto');
  QRITEM.SQL.ADD('  inner join c000007 cli on cli.codigo = ven.codcliente');
  QRITEM.SQL.ADD('where');
  QRITEM.SQL.ADD('  ven.nfce = ''S''');
  QRITEM.SQL.ADD('  and ven.DATA >= :DATAI AND ven.DATA <= :DATAF order by ven.numeronota');
  QRITEM.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  QRITEM.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QRITEM.OPEN;
  QRITEM.FIRST;

  if qritem.RecordCount > 0 then begin
    nota := '';
    while not QRITEM.EOF do begin
      if nota <> qritem.fieldbyname('NUMERO').asstring then begin
        qrsaida.Insert;
        qrsaida.fieldbyname('CODIGO').asstring := QRITEM.fieldbyname('CODNOTA').asstring;
        qrsaida.fieldbyname('CODIGO_EMPRESA').asstring := frmmodulo.qrfilial.fieldbyname('CODIGO').asstring;
        qrsaida.fieldbyname('CNPJ').asstring := frmprincipal.somenteNumero(frmmodulo.qrfilial.fieldbyname('CNPJ').asstring);
        qrsaida.fieldbyname('INSC_ESTADUAL').asstring := frmprincipal.somenteNumero(frmmodulo.qrfilial.fieldbyname('IE').asstring);
        qrsaida.fieldbyname('UF').asstring := frmmodulo.qrfilial.fieldbyname('UF').asstring;
        qrsaida.fieldbyname('CODIGO_CLIENTE').ASSTRING := QRITEM.fieldbyname('codcliente').asstring;
        qrsaida.fieldbyname('CNPJ_CLIENTE').ASSTRING := frmprincipal.somenteNumero(QRITEM.fieldbyname('cpf').ASSTRING);
        if QRITEM.FIELDBYNAME('TIPO_1').ASstring = '2' then begin
          if (Trim(UpperCase(QRITEM.fieldbyname('rg').asstring)) = 'ISENTO') or (QRITEM.fieldbyname('rg').asstring = '') then
            qrsaida.fieldbyname('IE_CLIENTE').asstring := 'ISENTO'
          else
            qrsaida.fieldbyname('IE_CLIENTE').asstring := frmprincipal.somenteNumero(QRITEM.fieldbyname('rg').asstring);
        end else begin
          qrsaida.fieldbyname('IE_CLIENTE').asstring := 'ISENTO'
        end;
        qrsaida.fieldbyname('UF_IE_CLIENTE').asstring := QRITEM.fieldbyname('uf').asstring;
        qrsaida.fieldbyname('CPF_CLIENTE').asstring := '';

        qrsaida.fieldbyname('NOTAFISCAL').value := QRITEM.fieldbyname('numero').asstring;
        qrsaida.fieldbyname('VALOR_MERCADORIAS').value := QRITEM.fieldbyname('subtotal').value; ;
        qrsaida.fieldbyname('BASE_ICMS').value := QRITEM.FieldByName('base_icms').AsFloat;
        qrsaida.fieldbyname('VALOR_ICMS_CREDITADO').value := QRITEM.fieldbyname('BASE_ICMS').asfloat * QRITEM.fieldbyname('ALIQUOTA_ICMS').asfloat / 100;
        qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := QRITEM.fieldbyname('total_geral').asfloat;
        if QRITEM.fieldbyname('desconto_item').value > 0 then begin
          qrsaida.fieldbyname('DESCONTO').asfloat := QRITEM.fieldbyname('desconto_item').asfloat;
        end else begin
          qrsaida.fieldbyname('DESCONTO').asfloat := QRITEM.fieldbyname('desconto').asfloat;
        end;
        if QRITEM.fieldbyname('valor_ipi').asfloat > 0 then
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + QRITEM.fieldbyname('valor_ipi').asfloat;
        if QRITEM.FieldByName('reducao_base_icms').asfloat > 0 then
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + QRITEM.FieldByName('reducao_base_icms').asfloat;
        if QRITEM.FieldByName('fretes').asfloat > 0 then begin
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + QRITEM.FieldByName('fretes').asfloat;
          qrsaida.fieldbyname('VALOR_FRETE').asfloat := qrsaida.fieldbyname('VALOR_FRETE').asfloat + QRITEM.FieldByName('fretes').asfloat;
        end else begin
          qrsaida.fieldbyname('VALOR_FRETE').asfloat := 0;
        end;
        if QRITEM.FieldByName('seguro').asfloat > 0 then begin
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + QRITEM.FieldByName('seguro').asfloat;
          qrsaida.fieldbyname('VALOR_SEGURO').asfloat := qrsaida.fieldbyname('VALOR_SEGURO').asfloat + QRITEM.FieldByName('seguro').asfloat;
        end else begin
          qrsaida.fieldbyname('VALOR_SEGURO').asfloat := 0;
        end;
        if QRITEM.FieldByName('outras_despesas').asfloat > 0 then begin
          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat + QRITEM.FieldByName('outras_despesas').asfloat;
          qrsaida.fieldbyname('VALOR_DESPESAS').asfloat := qrsaida.fieldbyname('VALOR_DESPESAS').asfloat + QRITEM.FieldByName('outras_despesas').asfloat;
        end else begin
          qrsaida.fieldbyname('VALOR_DESPESAS').asfloat := 0;
        end;
        qrsaida.fieldbyname('DATA').value := QRITEM.fieldbyname('data').value;
        qrsaida.fieldbyname('DATA_ESCRITURACAO').value := QRITEM.fieldbyname('data').value;
        qrsaida.fieldbyname('TIPO').value := 'S';
        qrsaida.fieldbyname('MODELO_NF').value := QRITEM.fieldbyname('MODELO_NF').value;
        qrsaida.fieldbyname('SERIE').value := QRITEM.fieldbyname('SERIE_NF').value;
        qrsaida.fieldbyname('especie').value := QRITEM.fieldbyname('sigla').value;
        qrsaida.fieldbyname('CFOP').value := QRITEM.fieldbyname('cfop').value;
        qrsaida.fieldbyname('NOTA_CANCELADA').AsString := QRITEM.fieldbyname('cancelado').AsString;
        qrsaida.fieldbyname('TIPO_FRETE').value := 0;
        qrsaida.fieldbyname('ALIQUOTA_ICMS').value := QRITEM.FieldByName('aliquota_icms').AsFloat;
        qrsaida.fieldbyname('BASE_SUBSTITUICAO').value := QRITEM.FieldByName('base_icms_subst').AsFloat;
        qrsaida.fieldbyname('VALOR_SUBSTITUICAO').value := QRITEM.FieldByName('reducao_base_icms').AsFloat;
        qrsaida.fieldbyname('VALOR_ICMS_ISENTAS').value := QRITEM.FieldByName('isentas_icms').AsFloat;
        if QRITEM.FieldByName('cfop').AsString = '6114' then begin
          qrsaida.fieldbyname('VALOR_ICMS_OUTRAS').value := QRITEM.FieldByName('outras_icms').AsFloat +
            QRITEM.FieldByName('FRETES').AsFloat +
            QRITEM.FieldByName('OUTRAS_DESPESAS').AsFloat +
            QRITEM.FieldByName('SEGURO').AsFloat;
        end;
        qrsaida.fieldbyname('ALIQUOTA_IPI').value := 0;
        qrsaida.fieldbyname('BASE_IPI').value := QRITEM.FieldByName('base_ipi').AsFloat;
        qrsaida.fieldbyname('VALOR_IPI_CREDITADO').value := QRITEM.FieldByName('valor_ipi').AsFloat;
        qrsaida.fieldbyname('VALOR_IPI_CREDITADO50').value := 0;
        qrsaida.fieldbyname('VALOR_IPI_ISENTAS').value := QRITEM.FieldByName('isentas_ipi').AsFloat;
        qrsaida.fieldbyname('VALOR_IPI_OUTRAS').value := QRITEM.FieldByName('outras_ipi').AsFloat;
        qrsaida.Post;
        item := 1;
      end;
      nota := qritem.fieldbyname('NUMERO').asstring;
      qrsaida_item.Insert;
      qrsaida_item.fieldbyname('DATA_EMISSAO').value := copy(qritem.fieldbyname('data').asstring, 4, 2) + copy(qritem.fieldbyname('data').asstring, 7, 4);
      qrsaida_item.fieldbyname('num_item').value := frmprincipal.zerarcodigo(inttostr(item), 3);
      qrsaida_item.fieldbyname('cd_produto').value := qritem.fieldbyname('Codproduto').value;
      qrsaida_item.fieldbyname('produto').value := COPY(qritem.fieldbyname('PRODUTO').value, 1, 40);
      qrsaida_item.fieldbyname('apr_und').value := qritem.fieldbyname('unidade').value;
      qrsaida_item.fieldbyname('TIPO').value := 'S';
      qrsaida_item.fieldbyname('quantidade').value := qritem.fieldbyname('qtde').value;
      qrsaida_item.fieldbyname('subtotal').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('valor_desconto').value := vdesconto;
      qrsaida_item.fieldbyname('total').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('notafiscal').value := qritem.fieldbyname('NUMERO').value;
      qrsaida_item.fieldbyname('valor_venda_bruta').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('valor_total_geral').value := qritem.fieldbyname('TOTAL').value;
      qrsaida_item.fieldbyname('datahora_recebimento').value := qritem.fieldbyname('data').value;
      qrsaida_item.fieldbyname('modelo_nf').value := qritem.fieldbyname('modelo_nf').value;
      qrsaida_item.fieldbyname('modelo_doc').value := qritem.fieldbyname('modelo_nf').value;
      qrsaida_item.fieldbyname('cfop').value := qritem.fieldbyname('cfop').value;
      qrsaida_item.fieldbyname('cl_fis').value := qritem.fieldbyname('classificacao_fiscal').value;
      qrsaida_item.fieldbyname('s_trib').value := qritem.fieldbyname('cst').value;
      qrsaida_item.fieldbyname('datahora').value := qritem.fieldbyname('data').value;
      qrsaida_item.fieldbyname('movimento').value := 1;
      qrsaida_item.fieldbyname('cod_pedidos').value := qritem.fieldbyname('NUMERO').value;
      QRSAIDA_ITEM.FIELDBYNAME('CODNOTA').VALUE := qritem.fieldbyname('CODNOTA').value;
      if qritem.fieldbyname('ipi').value > 2 then begin
        qrsaida_item.fieldbyname('aliquota_ipi').value := qritem.fieldbyname('IPI').value;
        qrsaida_item.fieldbyname('base_ipi').value := qritem.fieldbyname('TOTAL').value;
        qrsaida_item.fieldbyname('valor_ipi').value := qritem.fieldbyname('VALOR_IPI').value;
        qrsaida_item.fieldbyname('isentas_ipi').value := 0;
        qrsaida_item.fieldbyname('outras_ipi').value := 0;
      end;
      qrsaida_item.fieldbyname('base_icms_subst').value := qritem.fieldbyname('BASE_SUB').value;
      qrsaida_item.fieldbyname('reducao_base_icms').value := qritem.fieldbyname('ICMS_SUB').value;
      qrsaida_item.fieldbyname('isentas_icms').value := qritem.fieldbyname('ISENTO').value;
      qrsaida_item.fieldbyname('outras_icms').value := qritem.fieldbyname('outras_despesas').value;
      if qrITEM.FIELDBYNAME('ICMS').VALUE > 0 then begin
        if qritem.fieldbyname('desconto').asfloat > 0 then begin
          qrsaida_item.fieldbyname('aliquota_icms').value := qritem.fieldbyname('ICMS').AsFloat;
          qrsaida_item.fieldbyname('base_icms').value := qritem.fieldbyname('bASE_CALCULO').AsFloat; //-qritem.fieldbyname('desconto').asfloat;
          if qritem.fieldbyname('VALOR_ICMS').value > 0 then
            qrsaida_item.fieldbyname('valor_icms').value := qrsaida_item.fieldbyname('base_ICMS').value * (qrITEM.FIELDBYNAME('ICMS').VALUE / 100)
          else
            qrsaida_item.fieldbyname('valor_icms').value := qritem.fieldbyname('VALOR_ICMS').AsFloat;
        end else begin
          qrsaida_item.fieldbyname('aliquota_icms').value := qritem.fieldbyname('ICMS').value;
          qrsaida_item.fieldbyname('base_icms').value := qritem.fieldbyname('BASE_CALCULO').value;
          qrsaida_item.fieldbyname('valor_icms').value := qritem.fieldbyname('VALOR_ICMS').value;
        end;
      end;
      total_despesas := qritem.fieldbyname('total_nota').AsFloat - (qritem.fieldbyname('FRETES').AsFloat + qritem.fieldbyname('valor_ipi').AsFloat);
      qrsaida_item.fieldbyname('FRETE').value := 0;
      qrsaida_item.fieldbyname('SEGURO').value := 0;
      qrsaida_item.fieldbyname('OUTRAS_DESPESAS').value := 0;
      qrsaida_item.fieldbyname('total').AsFloat := qrsaida_item.fieldbyname('total').AsFloat;
      qrsaida_item.Post;
      Application.ProcessMessages;
      item := item + 1;
      qritem.next;
    end;
    frmmodulo.conexao.commit;
  end;

  PARAMETRO_PESQUISA := '';

end;

procedure Tfrmsintegra_gerar.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
  if length(frmmodulo.qrconfig.fieldbyname('papel_parede').asstring) < 30 then
  begin
    frmmodulo.qrconfig.edit;
    frmmodulo.qrconfig.fieldbyname('papel_parede').asstring := 'C:\Arquivos de programas\Validador Sintegra 2009\ValidadorSintegra2009.exe';
    frmmodulo.qrconfig.post;
    frmmodulo.conexao.commit;
  end;

  ed_validador.Text := frmmodulo.qrconfig.fieldbyname('papel_parede').asstring;

  dateedit1.text := '01/' + copy(datetostr(incmonth(date, -1)), 4, 7);
  dateedit2.date := frmprincipal.UltimoDiaMes(incmonth(date, -1));

  if (copy(datetostr(DateEdit1.Date), 4, 2) = '12') or (copy(datetostr(DateEdit1.Date), 4, 2) = '01') then
  begin
    bregistro74.Visible := true;
    bregistro74.Checked := true;
    rvenda.Checked := true;
    rconsumo.Checked := true;
    rinsumo.Checked := true;
    rmateria.Checked := true;
  end;

  frmmodulo.qrfilial.close;
  frmmodulo.qrfilial.sql.clear;
  frmmodulo.qrfilial.sql.add('select * from c000004 order by filial');
  frmmodulo.qrfilial.open;

  combo_empresa.setfocus;
  combo_empresa.Text := frmmodulo.qrfilial.fieldbyname('filial').asstring;
end;

procedure Tfrmsintegra_gerar.combo_empresaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then combobox2.setfocus;
end;

procedure Tfrmsintegra_gerar.combo_empresaExit(Sender: TObject);
begin
  lcnpj.text := frmmodulo.qrfilial.fieldbyname('cnpj').asstring;
  lie.text := frmmodulo.qrfilial.fieldbyname('ie').asstring;
end;

procedure Tfrmsintegra_gerar.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmsintegra_gerar.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then btgerar.SetFocus;
end;

procedure Tfrmsintegra_gerar.btfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmsintegra_gerar.BENTRADAClick(Sender: TObject);
var item: integer;
  nota: string;
begin

  qrentrada.CLOSE;
  qrentrada.SQL.CLEAR;
  qrentrada.SQL.ADD('DELETE FROM SINTEGRA_entrada');
  qrentrada.ExecSQL;

  qrentrada.SQL.CLEAR;
  qrentrada.SQL.ADD('SELECT * FROM SINTEGRA_entrada');
  qrentrada.OPEN;

  qrentrada_item.CLOSE;
  qrentrada_item.SQL.CLEAR;
  qrentrada_item.SQL.ADD('DELETE FROM SINTEGRA_entrada_ITEM');
  qrentrada_item.EXECSQL;

  qrentrada_item.SQL.CLEAR;
  qrentrada_item.SQL.ADD('SELECT * FROM SINTEGRA_entrada_ITEM');
  qrentrada_item.OPEN;

  qritem2.CLOSE;
  qritem2.SQL.CLEAR;
  qritem2.SQL.ADD('SELECT I.*,N.CODempresa, N.NUMERO,n.data_lancamento, n.modelo, p.produto pproduto, p.unidade');
  qritem2.SQL.ADD('FROM C000088 I, C000087 N, c000025 p');
  qritem2.SQL.Add('WHERE');
  qritem2.SQL.ADD('I.CODNOTA = N.CODIGO AND i.codproduto = p.codigo and ');
  qritem2.SQL.ADD('n.DATA_lancamento >= :DATAI AND n.DATA_lancamento <= :DATAF AND N.COdempresa = ''' + FRMMODULO.QRFILIAL.FIELDBYNAME('CODIGO').ASSTRING + ''' order by NUMERO');
  qritem2.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  qritem2.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  qritem2.OPEN;
  qritem2.FIRST;
  nota := qritem2.fieldbyname('numero').asstring;
  item := 1;

  while not qritem2.EOF do
  begin
    qrentrada_item.Insert;
    qrentrada_item.fieldbyname('DATA_EMISSAO').asstring := copy(qritem2.fieldbyname('data_lancamento').asstring, 4, 2) + copy(qritem2.fieldbyname('data_lancamento').asstring, 7, 4);
    qrentrada_item.fieldbyname('num_item').value := qritem2.fieldbyname('ITEM').value;
    qrentrada_item.fieldbyname('cd_produto').value := qritem2.fieldbyname('Codproduto').value;
    qrentrada_item.fieldbyname('produto').value := COPY(qritem2.fieldbyname('pproduto').value, 1, 40);
    qrentrada_item.fieldbyname('apr_und').value := qritem2.fieldbyname('unidade').value;
    qrentrada_item.fieldbyname('TIPO').value := 'E';
    qrentrada_item.fieldbyname('quantidade').value := qritem2.fieldbyname('qtde').value;
    qrentrada_item.fieldbyname('subtotal').value := qritem2.fieldbyname('subtotal').value;
    qrentrada_item.fieldbyname('valor_desconto').value := qritem2.fieldbyname('desconto').value;
    qrentrada_item.fieldbyname('total').value := qritem2.fieldbyname('TOTAL').value;
    qrentrada_item.fieldbyname('notafiscal').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.fieldbyname('valor_venda_bruta').value := qritem2.fieldbyname('TOTAL').value;
    qrentrada_item.fieldbyname('valor_total_geral').value := qritem2.fieldbyname('TOTAL').value;
    qrentrada_item.fieldbyname('datahora_recebimento').value := qritem2.fieldbyname('data_lancamento').value;
    qrentrada_item.fieldbyname('modelo_nf').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('modelo_doc').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('cfop').value := qritem2.fieldbyname('cfop').value;
    qrentrada_item.fieldbyname('cl_fis').value := qritem2.fieldbyname('classificacao_fiscal').value;
    qrentrada_item.fieldbyname('s_trib').value := qritem2.fieldbyname('cst').value;
    qrentrada_item.fieldbyname('datahora').value := qritem2.fieldbyname('data_lancamento').value;
    qrentrada_item.fieldbyname('movimento').value := 1;
    qrentrada_item.fieldbyname('cod_pedidos').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.FIELDBYNAME('CODNOTA').VALUE := qritem2.fieldbyname('CODNOTA').value;

//        IF qritem2.FIELDBYNAME('ICMS_VALOR').VALUE > 0 THEN
//          BEGIN
    qrentrada_item.fieldbyname('aliquota_icms').value := qritem2.fieldbyname('ICMS_ALIQUOTA').value;
    qrentrada_item.fieldbyname('base_icms').value := qritem2.fieldbyname('ICMS_BASE').value;
    qrentrada_item.fieldbyname('valor_icms').value := qritem2.fieldbyname('ICMS_VALOR').value;
//          END;

    if qritem2.fieldbyname('ipi_VALOR').value > 0 then
    begin
      qrentrada_item.fieldbyname('aliquota_ipi').value := qritem2.fieldbyname('IPI_ALIQUOTA').value;
      qrentrada_item.fieldbyname('base_ipi').value := qritem2.fieldbyname('IPI_BASE').value;
      qrentrada_item.fieldbyname('valor_ipi').value := qritem2.fieldbyname('IPI_VALOR').value;
      qrentrada_item.fieldbyname('isentas_ipi').value := 0;
      qrentrada_item.fieldbyname('outras_ipi').value := 0;
    end;

    qrentrada_item.fieldbyname('base_icms_subst').value := qritem2.fieldbyname('SUB_BASE').value;
    qrentrada_item.fieldbyname('reducao_base_icms').value := qritem2.fieldbyname('SUB_VALOR').value;

    qrentrada_item.fieldbyname('isentas_icms').value := qritem2.fieldbyname('ICMS_ISENTO').value;
    qrentrada_item.fieldbyname('outras_icms').value := qritem2.fieldbyname('ICMS_OUTRAS').value;

           // MODIF POR ELENO 30/10/2009
//           qrentrada_item.fieldbyname('outras_icms').value        := qritem2.fieldbyname('outras').value;
//           qrentrada_item.fieldbyname('outras_icms').AsFloat      := qritem2.fieldbyname('ICMS_NAOTRIBUTADO').asfloat;
           // adicionado
    qrentrada_item.fieldbyname('outras_despesas').asfloat := qritem2.fieldbyname('outras').asfloat;
           ////

    qrentrada_item.fieldbyname('frete').value := qritem2.fieldbyname('frete').value;
    qrentrada_item.fieldbyname('seguro').value := qritem2.fieldbyname('seguro').value;

    qrentrada_item.fieldbyname('total').AsFloat := (qrentrada_item.fieldbyname('total').AsFloat +
      qrentrada_item.fieldbyname('frete').AsFloat +
      qrentrada_item.fieldbyname('seguro').AsFloat +
      qrentrada_item.fieldbyname('outras_despesas').AsFloat +
      qrentrada_item.fieldbyname('REDUCAO_BASE_ICMS').AsFloat +
      qrentrada_item.fieldbyname('valor_IPI').AsFloat) -
      qrentrada_item.fieldbyname('valor_desconto').AsFloat;

          /////////////////////////////////////////////////////////////////////////////////////////
          // Atualiza os Campos Base de Cálculo e Valor de ICMS
          // com o campo OUTRAS

    if (qritem2.fieldbyname('CFOP').asstring = '1403') or
      (qritem2.fieldbyname('CFOP').asstring = '2403') then

    begin

      if (qritem2.fieldbyname('CST').asstring = '010') or
        (qritem2.fieldbyname('CST').asstring = '020') or
        (qritem2.fieldbyname('CST').asstring = '060') or
        (qritem2.fieldbyname('CST').asstring = '070') or
        (qritem2.fieldbyname('CST').asstring = '110') or
        (qritem2.fieldbyname('CST').asstring = '210') then
      begin
                      {
                    if qritem2.fieldbyname('CST').asstring = '070' then
                      begin
                        query.fieldbyname('ICMS_ISENTO').AsFloat := (etotal.Value+efrete.Value+eseguro.Value+eoutras.Value)-
                        evalor_icms.Value-
                        evalor_ipi.Value;
                      end
                    else
                      begin
                        query.fieldbyname('ICMS_OUTRAS').AsFloat := (etotal.Value+efrete.Value+eseguro.Value+eoutras.Value)-
                        evalor_ipi.Value;
                      end;

                    if frmcompra.combo_tipo.Text = 'COMPRA P/ CONSUMO' then
                      begin
                        if (query.fieldbyname('CFOP').asstring = '1556') or
                           (query.fieldbyname('CFOP').asstring = '2556') or
                           (query.fieldbyname('CFOP').asstring = '1407') or
                           (query.fieldbyname('CFOP').asstring = '2407') or
                           (query.fieldbyname('CFOP').asstring = '1303') or
                           (query.fieldbyname('CFOP').asstring = '1253') or
                           (query.fieldbyname('CFOP').asstring = '1551') or
                           (query.fieldbyname('CFOP').asstring = '2551') then
                          begin
                            query.fieldbyname('ICMS_OUTRAS').AsFloat := (etotal.Value+efrete.Value+eseguro.Value+eoutras.Value)-
                            evalor_ipi.Value;
                          end;
                      end;
                      }
        qrentrada_item.fieldbyname('base_icms').value := 0;
        qrentrada_item.fieldbyname('valor_icms').value := 0;

      end;

    end;
          //if frmcompra.combo_tipo.Text = 'COMPRA P/ CONSUMO' then
            //begin
    if ((qritem2.fieldbyname('CST').asstring = '000') and (qritem2.fieldbyname('ICMS_VALOR').AsFloat = 0)) or
      (qritem2.fieldbyname('CFOP').asstring = '1553') or
      (qritem2.fieldbyname('CFOP').asstring = '1653') or
      (qritem2.fieldbyname('CFOP').asstring = '1556') or
      (qritem2.fieldbyname('CFOP').asstring = '2352') or
      (qritem2.fieldbyname('CFOP').asstring = '2556') or
      (qritem2.fieldbyname('CFOP').asstring = '1407') or
      (qritem2.fieldbyname('CFOP').asstring = '2407') or
      (qritem2.fieldbyname('CFOP').asstring = '1303') or
      (qritem2.fieldbyname('CFOP').asstring = '1253') or
      (qritem2.fieldbyname('CFOP').asstring = '1551') or
      (qritem2.fieldbyname('CFOP').asstring = '2551') then
    begin
      qrentrada_item.fieldbyname('base_icms').value := 0;
      qrentrada_item.fieldbyname('valor_icms').value := 0;
    end;
            //end;

          /////////////////////////////////////////////////////////////////////////////////////////
          // Final do processamento

    qrentrada_item.Post;

    qritem2.next;
    Application.ProcessMessages;

  end;

      // ITEMS ESPECIAIS COM ICMS - FRETE
  QRITEM2.CLOSE;
  QRITEM2.SQL.CLEAR;
  QRITEM2.SQL.ADD('SELECT * FROM C000087 WHERE ');
  QRITEM2.SQL.ADD('ITEM_FRETE_VALOR > 0 AND ');
  qritem2.SQL.ADD('DATA_lancamento >= :DATAI AND DATA_lancamento <= :DATAF AND COdempresa = ''' + FRMMODULO.QRFILIAL.FIELDBYNAME('CODIGO').ASSTRING + ''' order by NUMERO');
  qritem2.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  qritem2.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QRITEM2.OPEN;
  QRITEM2.FIRST;
  while not QRITEM2.EOF do
  begin
    qrentrada_item.Insert;
    qrentrada_item.fieldbyname('DATA_EMISSAO').value := copy(qritem2.fieldbyname('data_lancamento').asstring, 4, 2) + copy(qritem2.fieldbyname('data_lancamento').asstring, 7, 4);
    qrentrada_item.fieldbyname('num_item').value := '991';
    qrentrada_item.fieldbyname('cd_produto').value := '';
    qrentrada_item.fieldbyname('produto').value := '';
    qrentrada_item.fieldbyname('apr_und').value := '';
    qrentrada_item.fieldbyname('TIPO').value := 'E';
    qrentrada_item.fieldbyname('quantidade').value := 0;
    qrentrada_item.fieldbyname('subtotal').value := qritem2.fieldbyname('ITEM_FRETE_ICMS').value; ; //qritem2.fieldbyname('ITEM_FRETE_VALOR').value;
    qrentrada_item.fieldbyname('valor_desconto').value := 0;
    qrentrada_item.fieldbyname('total').value := qritem2.fieldbyname('ITEM_FRETE_ICMS').value; ; //qritem2.fieldbyname('ITEM_FRETE_VALOR').value;
    qrentrada_item.fieldbyname('notafiscal').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.fieldbyname('valor_venda_bruta').value := qritem2.fieldbyname('ITEM_FRETE_ICMS').value; //qritem2.fieldbyname('ITEM_FRETE_VALOR').value;
    qrentrada_item.fieldbyname('valor_total_geral').value := qritem2.fieldbyname('ITEM_FRETE_ICMS').value; //qritem2.fieldbyname('ITEM_FRETE_VALOR').value;
    qrentrada_item.fieldbyname('datahora_recebimento').value := qritem2.fieldbyname('data_lancamento').value;

    qrentrada_item.fieldbyname('modelo_nf').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('modelo_doc').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('cfop').value := qritem2.fieldbyname('CFOP').value;
    qrentrada_item.fieldbyname('cl_fis').value := '';
    qrentrada_item.fieldbyname('s_trib').value := '';
    qrentrada_item.fieldbyname('datahora').value := qritem2.fieldbyname('data_lancamento').value;
    qrentrada_item.fieldbyname('movimento').value := 1;
    qrentrada_item.fieldbyname('cod_pedidos').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.FIELDBYNAME('CODNOTA').VALUE := qritem2.fieldbyname('CODIGO').value;
    qrentrada_item.fieldbyname('aliquota_icms').value := 0; //qritem2.fieldbyname('ITEM_FRETE_ALIQUOTA').value;
    qrentrada_item.fieldbyname('base_icms').value := 0; //qritem2.fieldbyname('ITEM_FRETE_BASE').value;
    qrentrada_item.fieldbyname('valor_icms').value := 0; //qritem2.fieldbyname('ITEM_FRETE_ICMS').value;

    qrentrada_item.fieldbyname('isentas_icms').value := 0;
    qrentrada_item.fieldbyname('outras_icms').value := 0;
    qrentrada_item.fieldbyname('frete').value := 0;
    qrentrada_item.fieldbyname('seguro').value := 0;

    qrentrada_item.Post;
    QRITEM2.NEXT;
  end;

      // ITEMS ESPECIAIS COM ICMS - SEGURO
  QRITEM2.CLOSE;
  QRITEM2.SQL.CLEAR;
  QRITEM2.SQL.ADD('SELECT * FROM C000087 WHERE ');
  QRITEM2.SQL.ADD('ITEM_SEGURO_VALOR > 0 AND ');
  qritem2.SQL.ADD('DATA_lancamento >= :DATAI AND DATA_lancamento <= :DATAF AND COdempresa = ''' + FRMMODULO.QRFILIAL.FIELDBYNAME('CODIGO').ASSTRING + ''' order by NUMERO');
  qritem2.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  qritem2.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QRITEM2.OPEN;
  QRITEM2.FIRST;
  while not QRITEM2.EOF do
  begin
    qrentrada_item.Insert;
    qrentrada_item.fieldbyname('DATA_EMISSAO').value := copy(qritem2.fieldbyname('data_lancamento').asstring, 4, 2) + copy(qritem2.fieldbyname('data_lancamento').asstring, 7, 4);
    qrentrada_item.fieldbyname('num_item').value := '992';
    qrentrada_item.fieldbyname('cd_produto').value := '';
    qrentrada_item.fieldbyname('produto').value := '';
    qrentrada_item.fieldbyname('apr_und').value := '';
    qrentrada_item.fieldbyname('TIPO').value := 'E';
    qrentrada_item.fieldbyname('quantidade').value := 0;
    qrentrada_item.fieldbyname('subtotal').value := qritem2.fieldbyname('ITEM_SEGURO_VALOR').value;
    qrentrada_item.fieldbyname('valor_desconto').value := 0;
    qrentrada_item.fieldbyname('total').value := qritem2.fieldbyname('ITEM_SEGURO_VALOR').value;
    qrentrada_item.fieldbyname('notafiscal').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.fieldbyname('valor_venda_bruta').value := qritem2.fieldbyname('ITEM_SEGURO_VALOR').value;
    qrentrada_item.fieldbyname('valor_total_geral').value := qritem2.fieldbyname('ITEM_SEGURO_VALOR').value;
    qrentrada_item.fieldbyname('datahora_recebimento').value := qritem2.fieldbyname('data_lancamento').value;

    qrentrada_item.fieldbyname('modelo_nf').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('modelo_doc').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('cfop').value := qritem2.fieldbyname('CFOP').value;
    qrentrada_item.fieldbyname('cl_fis').value := '';
    qrentrada_item.fieldbyname('s_trib').value := '';
    qrentrada_item.fieldbyname('datahora').value := qritem2.fieldbyname('data_lancamento').value;
    qrentrada_item.fieldbyname('movimento').value := 1;
    qrentrada_item.fieldbyname('cod_pedidos').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.FIELDBYNAME('CODNOTA').VALUE := qritem2.fieldbyname('CODIGO').value;
    qrentrada_item.fieldbyname('aliquota_icms').value := qritem2.fieldbyname('ITEM_SEGURO_ALIQUOTA').value;
    qrentrada_item.fieldbyname('base_icms').value := qritem2.fieldbyname('ITEM_SEGURO_BASE').value;
    qrentrada_item.fieldbyname('valor_icms').value := qritem2.fieldbyname('ITEM_SEGURO_ICMS').value;

    qrentrada_item.fieldbyname('isentas_icms').value := 0;
    qrentrada_item.fieldbyname('outras_icms').value := 0;
    qrentrada_item.fieldbyname('frete').value := 0;
    qrentrada_item.fieldbyname('seguro').value := 0;

    qrentrada_item.Post;
    QRITEM2.NEXT;
  end;

      // ITEMS ESPECIAIS COM ICMS - PIS/COFINS
  QRITEM2.CLOSE;
  QRITEM2.SQL.CLEAR;
  QRITEM2.SQL.ADD('SELECT * FROM C000087 WHERE ');
  QRITEM2.SQL.ADD('ITEM_PIS_VALOR > 0 AND ');
  qritem2.SQL.ADD('DATA_lancamento >= :DATAI AND DATA_lancamento <= :DATAF AND COdempresa = ''' + FRMMODULO.QRFILIAL.FIELDBYNAME('CODIGO').ASSTRING + ''' order by NUMERO');
  qritem2.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  qritem2.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QRITEM2.OPEN;
  QRITEM2.FIRST;
  while not QRITEM2.EOF do
  begin
    qrentrada_item.Insert;
    qrentrada_item.fieldbyname('DATA_EMISSAO').value := copy(qritem2.fieldbyname('data_lancamento').asstring, 4, 2) + copy(qritem2.fieldbyname('data_lancamento').asstring, 7, 4);
    qrentrada_item.fieldbyname('num_item').value := '993';
    qrentrada_item.fieldbyname('cd_produto').value := '';
    qrentrada_item.fieldbyname('produto').value := '';
    qrentrada_item.fieldbyname('apr_und').value := '';
    qrentrada_item.fieldbyname('TIPO').value := 'E';
    qrentrada_item.fieldbyname('quantidade').value := 0;
    qrentrada_item.fieldbyname('subtotal').value := qritem2.fieldbyname('ITEM_PIS_VALOR').value;
    qrentrada_item.fieldbyname('valor_desconto').value := 0;
    qrentrada_item.fieldbyname('total').value := qritem2.fieldbyname('ITEM_PIS_VALOR').value;
    qrentrada_item.fieldbyname('notafiscal').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.fieldbyname('valor_venda_bruta').value := qritem2.fieldbyname('ITEM_PIS_VALOR').value;
    qrentrada_item.fieldbyname('valor_total_geral').value := qritem2.fieldbyname('ITEM_PIS_VALOR').value;
    qrentrada_item.fieldbyname('datahora_recebimento').value := qritem2.fieldbyname('data_lancamento').value;

    qrentrada_item.fieldbyname('modelo_nf').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('modelo_doc').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('cfop').value := qritem2.fieldbyname('CFOP').value;
    qrentrada_item.fieldbyname('cl_fis').value := '';
    qrentrada_item.fieldbyname('s_trib').value := '';
    qrentrada_item.fieldbyname('datahora').value := qritem2.fieldbyname('data_lancamento').value;
    qrentrada_item.fieldbyname('movimento').value := 1;
    qrentrada_item.fieldbyname('cod_pedidos').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.FIELDBYNAME('CODNOTA').VALUE := qritem2.fieldbyname('CODIGO').value;
    qrentrada_item.fieldbyname('aliquota_icms').value := qritem2.fieldbyname('ITEM_PIS_ALIQUOTA').value;
    qrentrada_item.fieldbyname('base_icms').value := qritem2.fieldbyname('ITEM_PIS_BASE').value;
    qrentrada_item.fieldbyname('valor_icms').value := qritem2.fieldbyname('ITEM_PIS_ICMS').value;

    qrentrada_item.fieldbyname('isentas_icms').value := 0;
    qrentrada_item.fieldbyname('outras_icms').value := 0;
    qrentrada_item.fieldbyname('frete').value := 0;
    qrentrada_item.fieldbyname('seguro').value := 0;

    qrentrada_item.Post;
    QRITEM2.NEXT;
  end;

      // ITEMS ESPECIAIS COM ICMS - COMPLEMENTO
  QRITEM2.CLOSE;
  QRITEM2.SQL.CLEAR;
  QRITEM2.SQL.ADD('SELECT * FROM C000087 WHERE ');
  QRITEM2.SQL.ADD('ITEM_COMPLEMENTO_VALOR > 0 AND ');
  qritem2.SQL.ADD('DATA_lancamento >= :DATAI AND DATA_lancamento <= :DATAF AND COdempresa = ''' + FRMMODULO.QRFILIAL.FIELDBYNAME('CODIGO').ASSTRING + ''' order by NUMERO');
  qritem2.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  qritem2.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QRITEM2.OPEN;
  QRITEM2.FIRST;
  while not QRITEM2.EOF do
  begin
    qrentrada_item.Insert;
    qrentrada_item.fieldbyname('DATA_EMISSAO').value := copy(qritem2.fieldbyname('data_lancamento').asstring, 4, 2) + copy(qritem2.fieldbyname('data_lancamento').asstring, 7, 4);
    qrentrada_item.fieldbyname('num_item').value := '997';
    qrentrada_item.fieldbyname('cd_produto').value := '';
    qrentrada_item.fieldbyname('produto').value := '';
    qrentrada_item.fieldbyname('apr_und').value := '';
    qrentrada_item.fieldbyname('TIPO').value := 'E';
    qrentrada_item.fieldbyname('quantidade').value := 0;
    qrentrada_item.fieldbyname('subtotal').value := qritem2.fieldbyname('ITEM_COMPLEMENTO_VALOR').value;
    qrentrada_item.fieldbyname('valor_desconto').value := 0;
    qrentrada_item.fieldbyname('total').value := qritem2.fieldbyname('ITEM_COMPLEMENTO_VALOR').value;
    qrentrada_item.fieldbyname('notafiscal').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.fieldbyname('valor_venda_bruta').value := qritem2.fieldbyname('ITEM_COMPLEMENTO_VALOR').value;
    qrentrada_item.fieldbyname('valor_total_geral').value := qritem2.fieldbyname('ITEM_COMPLEMENTO_VALOR').value;
    qrentrada_item.fieldbyname('datahora_recebimento').value := qritem2.fieldbyname('data_lancamento').value;

    qrentrada_item.fieldbyname('modelo_nf').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('modelo_doc').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('cfop').value := qritem2.fieldbyname('CFOP').value;
    qrentrada_item.fieldbyname('cl_fis').value := '';
    qrentrada_item.fieldbyname('s_trib').value := '';
    qrentrada_item.fieldbyname('datahora').value := qritem2.fieldbyname('data_lancamento').value;
    qrentrada_item.fieldbyname('movimento').value := 1;
    qrentrada_item.fieldbyname('cod_pedidos').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.FIELDBYNAME('CODNOTA').VALUE := qritem2.fieldbyname('CODIGO').value;
    qrentrada_item.fieldbyname('aliquota_icms').value := qritem2.fieldbyname('ITEM_COMPLEMENTO_ALIQUOTA').value;
    qrentrada_item.fieldbyname('base_icms').value := qritem2.fieldbyname('ITEM_COMPLEMENTO_BASE').value;
    qrentrada_item.fieldbyname('valor_icms').value := qritem2.fieldbyname('ITEM_COMPLEMENTO_ICMS').value;

    qrentrada_item.fieldbyname('isentas_icms').value := 0;
    qrentrada_item.fieldbyname('outras_icms').value := 0;
    qrentrada_item.fieldbyname('frete').value := 0;
    qrentrada_item.fieldbyname('seguro').value := 0;

    qrentrada_item.Post;
    QRITEM2.NEXT;
  end;

      // ITEMS ESPECIAIS COM ICMS - SERVIÇO NAO TRIBUTADO PELO ICMS
  QRITEM2.CLOSE;
  QRITEM2.SQL.CLEAR;
  QRITEM2.SQL.ADD('SELECT * FROM C000087 WHERE ');
  QRITEM2.SQL.ADD('ITEM_SERVICO_VALOR > 0 AND ');
  qritem2.SQL.ADD('DATA_lancamento >= :DATAI AND DATA_lancamento <= :DATAF AND COdempresa = ''' + FRMMODULO.QRFILIAL.FIELDBYNAME('CODIGO').ASSTRING + ''' order by NUMERO');
  qritem2.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  qritem2.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QRITEM2.OPEN;
  QRITEM2.FIRST;
  while not QRITEM2.EOF do
  begin
    qrentrada_item.Insert;
    qrentrada_item.fieldbyname('DATA_EMISSAO').value := copy(qritem2.fieldbyname('data_lancamento').asstring, 4, 2) + copy(qritem2.fieldbyname('data_lancamento').asstring, 7, 4);
    qrentrada_item.fieldbyname('num_item').value := '998';
    qrentrada_item.fieldbyname('cd_produto').value := '';
    qrentrada_item.fieldbyname('produto').value := '';
    qrentrada_item.fieldbyname('apr_und').value := '';
    qrentrada_item.fieldbyname('TIPO').value := 'E';
    qrentrada_item.fieldbyname('quantidade').value := 0;
    qrentrada_item.fieldbyname('subtotal').value := qritem2.fieldbyname('ITEM_SERVICO_VALOR').value;
    qrentrada_item.fieldbyname('valor_desconto').value := 0;
    qrentrada_item.fieldbyname('total').value := qritem2.fieldbyname('ITEM_SERVICO_VALOR').value;
    qrentrada_item.fieldbyname('notafiscal').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.fieldbyname('valor_venda_bruta').value := qritem2.fieldbyname('ITEM_SERVICO_VALOR').value;
    qrentrada_item.fieldbyname('valor_total_geral').value := qritem2.fieldbyname('ITEM_SERVICO_VALOR').value;
    qrentrada_item.fieldbyname('datahora_recebimento').value := qritem2.fieldbyname('data_lancamento').value;

    qrentrada_item.fieldbyname('modelo_nf').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('modelo_doc').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('cfop').value := qritem2.fieldbyname('CFOP').value;
    qrentrada_item.fieldbyname('cl_fis').value := '';
    qrentrada_item.fieldbyname('s_trib').value := '';
    qrentrada_item.fieldbyname('datahora').value := qritem2.fieldbyname('data_lancamento').value;
    qrentrada_item.fieldbyname('movimento').value := 1;
    qrentrada_item.fieldbyname('cod_pedidos').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.FIELDBYNAME('CODNOTA').VALUE := qritem2.fieldbyname('CODIGO').value;
    qrentrada_item.fieldbyname('aliquota_icms').value := qritem2.fieldbyname('ITEM_SERVICO_ALIQUOTA').value;
    qrentrada_item.fieldbyname('base_icms').value := qritem2.fieldbyname('ITEM_SERVICO_BASE').value;
    qrentrada_item.fieldbyname('valor_icms').value := qritem2.fieldbyname('ITEM_SERVICO_ICMS').value;

    qrentrada_item.fieldbyname('isentas_icms').value := 0;
    qrentrada_item.fieldbyname('outras_icms').value := 0;
    qrentrada_item.fieldbyname('frete').value := 0;
    qrentrada_item.fieldbyname('seguro').value := 0;

    qrentrada_item.Post;
    QRITEM2.NEXT;
  end;

      // ITEMS ESPECIAIS COM ICMS - OUTROS DESPESAS ACESSORIAS
  QRITEM2.CLOSE;
  QRITEM2.SQL.CLEAR;
  QRITEM2.SQL.ADD('SELECT * FROM C000087 WHERE ');
  QRITEM2.SQL.ADD('ITEM_OUTRAS_VALOR > 0 AND ');
  qritem2.SQL.ADD('DATA_lancamento >= :DATAI AND DATA_lancamento <= :DATAF AND COdempresa = ''' + FRMMODULO.QRFILIAL.FIELDBYNAME('CODIGO').ASSTRING + ''' order by NUMERO');
  qritem2.Params.ParamByName('DATAI').ASDATETIME := dateEdit1.DATE;
  qritem2.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QRITEM2.OPEN;
  QRITEM2.FIRST;
  while not QRITEM2.EOF do
  begin
    qrentrada_item.Insert;
    qrentrada_item.fieldbyname('DATA_EMISSAO').value := copy(qritem2.fieldbyname('data_lancamento').asstring, 4, 2) + copy(qritem2.fieldbyname('data_lancamento').asstring, 7, 4);
    qrentrada_item.fieldbyname('num_item').value := '999';
    qrentrada_item.fieldbyname('cd_produto').value := '';
    qrentrada_item.fieldbyname('produto').value := '';
    qrentrada_item.fieldbyname('apr_und').value := '';
    qrentrada_item.fieldbyname('TIPO').value := 'E';
    qrentrada_item.fieldbyname('quantidade').value := 0;
    qrentrada_item.fieldbyname('subtotal').value := qritem2.fieldbyname('ITEM_OUTRAS_VALOR').value;
    qrentrada_item.fieldbyname('valor_desconto').value := 0;
    qrentrada_item.fieldbyname('total').value := qritem2.fieldbyname('ITEM_OUTRAS_VALOR').value;
    qrentrada_item.fieldbyname('notafiscal').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.fieldbyname('valor_venda_bruta').value := qritem2.fieldbyname('ITEM_OUTRAS_VALOR').value;
    qrentrada_item.fieldbyname('valor_total_geral').value := qritem2.fieldbyname('ITEM_OUTRAS_VALOR').value;
    qrentrada_item.fieldbyname('datahora_recebimento').value := qritem2.fieldbyname('data_lancamento').value;

    qrentrada_item.fieldbyname('modelo_nf').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('modelo_doc').value := qritem2.fieldbyname('modelo').value;
    qrentrada_item.fieldbyname('cfop').value := qritem2.fieldbyname('CFOP').value;
    qrentrada_item.fieldbyname('cl_fis').value := '';
    qrentrada_item.fieldbyname('s_trib').value := '';
    qrentrada_item.fieldbyname('datahora').value := qritem2.fieldbyname('data_lancamento').value;
    qrentrada_item.fieldbyname('movimento').value := 1;
    qrentrada_item.fieldbyname('cod_pedidos').value := qritem2.fieldbyname('NUMERO').value;
    qrentrada_item.FIELDBYNAME('CODNOTA').VALUE := qritem2.fieldbyname('CODIGO').value;
    qrentrada_item.fieldbyname('aliquota_icms').value := qritem2.fieldbyname('ITEM_OUTRAS_ALIQUOTA').value;
    qrentrada_item.fieldbyname('base_icms').value := qritem2.fieldbyname('ITEM_OUTRAS_BASE').value;
    qrentrada_item.fieldbyname('valor_icms').value := qritem2.fieldbyname('ITEM_OUTRAS_ICMS').value;

    qrentrada_item.fieldbyname('isentas_icms').value := 0;
    qrentrada_item.fieldbyname('outras_icms').value := 0;
    qrentrada_item.fieldbyname('frete').value := 0;
    qrentrada_item.fieldbyname('seguro').value := 0;

    qrentrada_item.Post;
    QRITEM2.NEXT;
  end;

  frmmodulo.conexao.commit;

  QrAdiciona_item.Close;
  QrAdiciona_item.SQL.Clear;
  QrAdiciona_item.SQL.Add('SELECT');
  QrAdiciona_item.SQL.Add('it.cfop,');
  QrAdiciona_item.SQL.Add('it.ALIQUOTA_ICMS,');
  QrAdiciona_item.SQL.Add('nt.numero,');
  QrAdiciona_item.SQL.Add('nt.data_lancamento,');
  QrAdiciona_item.SQL.Add('nt.codempresa,');
  QrAdiciona_item.SQL.Add('nt.codigo,');
  QrAdiciona_item.SQL.Add('nt.baseicms_produtos,');
  QrAdiciona_item.SQL.Add('sum(it.subtotal) subtotal, ');
  QrAdiciona_item.SQL.Add('sum(it.valor_total_geral) total_geral, ');
  QrAdiciona_item.SQL.Add('sum(it.base_icms) base_icms,');
  qradiciona_item.sql.add('sum(it.valor_icms) valor_icms, ');
  QrAdiciona_item.SQL.Add('sum(it.isentas_icms) isentas_icms,');
  QrAdiciona_item.SQL.Add('sum(it.outras_icms) outras_icms, ');
  QrAdiciona_item.SQL.Add('sum(it.base_ipi) base_ipi,');
  QrAdiciona_item.SQL.Add('sum(it.valor_ipi) valor_ipi, ');
  QrAdiciona_item.SQL.Add('sum(it.isentas_ipi) isentas_ipi,');
  QrAdiciona_item.SQL.Add('sum(it.outras_ipi) outras_ipi, ');
  QrAdiciona_item.SQL.Add('sum(it.reducao_base_icms) reducao_base_icms,');
  QrAdiciona_item.SQL.Add('sum(it.valor_desconto) desconto,');
               //QrAdiciona_item.SQL.Add('sum(it.valor_desconto_item) desconto_item,');
  QrAdiciona_item.SQL.Add('sum(it.frete) fretes,');
               // adcionado por eleno 30/10/2009
  qradiciona_item.sql.add('sum(it.outras_despesas) outras_despesas,');
               //
  QrAdiciona_item.SQL.Add('sum(it.seguro) seguro,');
  QrAdiciona_item.SQL.Add('sum(it.base_icms_subst) base_icms_subst');
  QrAdiciona_item.SQL.Add('FROM sintegra_entrada_item it, c000087 nt WHERE ');
  QrAdiciona_item.SQL.Add('it.codnota = nt.codigo and');
  qradiciona_item.sql.add('nt.data_lancamento >= :datai and nt.data_lancamento <= :dataf  and');
  qradiciona_item.SQL.add('nt.codempresa = ''' + frmmodulo.qrfilial.fieldbyname('codigo').asstring + ''' AND ');
  QrAdiciona_item.SQL.Add('it.tipo = ''E'' ');
//               QrAdiciona_item.SQL.Add('AND it.NUM_ITEM <> ''991'' AND  it.NUM_ITEM <> ''992'' AND it.NUM_ITEM <> ''993''');
//               QrAdiciona_item.SQL.Add('AND it.NUM_ITEM <> ''994'' AND  it.NUM_ITEM <> ''995'' AND it.NUM_ITEM <> ''996''');
//               QrAdiciona_item.SQL.Add('AND it.NUM_ITEM <> ''997'' AND  it.NUM_ITEM <> ''998'' AND it.NUM_ITEM <> ''999''');
  QrAdiciona_item.SQL.Add('GROUP BY it.cfop,');
  QrAdiciona_item.SQL.Add('it.ALIQUOTA_ICMS,');
  QrAdiciona_item.SQL.Add('nt.numero,');
  QrAdiciona_item.SQL.Add('nt.data_LANCAMENTO,');
  QrAdiciona_item.SQL.Add('nt.codEMPRESA,');
  QrAdiciona_item.SQL.Add('nt.codigo,');
  QrAdiciona_item.SQL.Add('nt.baseicms_produtos');
  QrAdiciona_item.SQL.Add('order by nt.data_LANCAMENTO');
  QRadiciona_ITEM.Params.ParamByName('DATAI').ASDATETIME := DateEdit1.DATE;
  QRadiciona_ITEM.Params.ParamByName('DATAf').ASDATETIME := DateEdit2.DATE;
  QrAdiciona_item.Open;

  qradiciona_item.First;
  while not QrAdiciona_item.Eof do
  begin
    qrentrada_temp.close;
    qrentrada_temp.SQL.clear;
    qrentrada_temp.sql.add('select nt.*,cli.*,esp.sigla from c000087 nt, c000009 cli, c000082 esp');
    qrentrada_temp.sql.add('where nt.codfornecedor = cli.codigo and nt.MODELO = esp.sintegra');
    qrentrada_temp.sql.add('and  nt.codigo = ''' + qradiciona_item.fieldbyname('codigo').asstring + '''');
    qrentrada_temp.open;

    qrentrada.Insert;
    qrentrada.fieldbyname('CODIGO').asstring := qrentrada_temp.fieldbyname('CODIGO').asstring;
          // empresa informante
    qrentrada.fieldbyname('CODIGO_EMPRESA').value := frmmodulo.qrfilial.fieldbyname('CODIGO').asstring;
    qrentrada.fieldbyname('CNPJ').value := frmprincipal.somenteNumero(frmmodulo.qrfilial.fieldbyname('CNPJ').asstring);
    qrentrada.fieldbyname('INSC_ESTADUAL').value := frmprincipal.somenteNumero(frmmodulo.qrfilial.fieldbyname('IE').asstring);
    qrentrada.fieldbyname('UF').value := frmmodulo.qrfilial.fieldbyname('UF').asstring;
          //qrentrada.fieldbyname('BASEICMS_PRODUTOS').AsInteger := qrentrada_temp.fieldbyname('BASICMS_PRODUTOS').AsInteger;

          // beneficiario
    qrentrada.fieldbyname('CODIGO_CLIENTE').asstring := qrentrada_temp.fieldbyname('codfornecedor').asstring;

    if (qrentrada_temp.fieldbyname('cnpj').ASSTRING = null) or (qrentrada_temp.fieldbyname('cnpj').ASSTRING = '') then
      qrentrada.fieldbyname('CNPJ_CLIENTE').ASSTRING := ''
    else
               //qrentrada.fieldbyname('CNPJ_CLIENTE').ASSTRING  := qrentrada_temp.fieldbyname('cnpj').asstring; //frmprincipal.somenteNumero(qrentrada.fieldbyname('cnpj').ASSTRING);
      qrentrada.fieldbyname('CNPJ_CLIENTE').ASSTRING := frmprincipal.somenteNumero(qrentrada.fieldbyname('cnpj').ASSTRING);

               //if qrentrada_temp.fieldbyname('ie').value = null then
                //showmessage('ba');
    if (qrentrada_temp.fieldbyname('ie').value = null) or
      (Trim(UpperCase(qrentrada_temp.fieldbyname('ie').value)) = 'ISENTO') or
      (qrentrada_temp.fieldbyname('ie').value = '') then
      qrentrada.fieldbyname('IE_CLIENTE').asstring := 'ISENTO'
    else
      qrentrada.fieldbyname('IE_CLIENTE').asstring := frmprincipal.somenteNumero(qrentrada_temp.fieldbyname('ie').asstring);

    qrentrada.fieldbyname('UF_IE_CLIENTE').asstring := qrentrada_temp.fieldbyname('uf').asstring;
    qrentrada.fieldbyname('CPF_CLIENTE').value := '';

    qrentrada.fieldbyname('ALIQUOTA_ICMS').value := qrAdiciona_item.FieldByName('aliquota_icms').AsFloat;


    qrentrada.fieldbyname('BASE_ICMS').value := qrAdiciona_item.FieldByName('base_icms').AsFloat;
    qrentrada.fieldbyname('VALOR_ICMS_CREDITADO').value := qrAdiciona_item.FieldByName('valor_icms').AsFloat;

    qrentrada.fieldbyname('NOTAFISCAL').value := qrentrada_temp.fieldbyname('numero').asstring;

          //qrentrada.fieldbyname('VALOR_CONTABIL').asfloat := qradiciona_item.fieldbyname('total_geral').asfloat;
    qrentrada.fieldbyname('VALOR_CONTABIL').asfloat := qradiciona_item.fieldbyname('subtotal').asfloat;

    if qradiciona_item.fieldbyname('valor_ipi').asfloat > 0 then
      qrentrada.fieldbyname('VALOR_CONTABIL').asfloat := qrentrada.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.fieldbyname('valor_ipi').asfloat;

    if qradiciona_item.FieldByName('reducao_base_icms').asfloat > 0 then
      qrentrada.fieldbyname('VALOR_CONTABIL').asfloat := qrentrada.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.FieldByName('reducao_base_icms').asfloat;

{

          if qradiciona_item.FieldByName('outras_icms').asfloat > 0 then
            qrentrada.fieldbyname('VALOR_CONTABIL').asfloat  :=  qrentrada.fieldbyname('VALOR_CONTABIL').asfloat+qradiciona_item.FieldByName('outras_icms').asfloat;

          if qradiciona_item.FieldByName('fretes').asfloat > 0 then
             qrentrada.fieldbyname('VALOR_CONTABIL').asfloat :=
             qrentrada.fieldbyname('VALOR_CONTABIL').asfloat +  qradiciona_item.FieldByName('fretes').asfloat;

}
          // modific por eleno 30/10/2009
          //if qradiciona_item.FieldByName('outras_icms').asfloat > 0 then
    if qradiciona_item.FieldByName('outras_despesas').asfloat > 0 then
    begin
            //qrentrada.fieldbyname('VALOR_CONTABIL').asfloat  :=  qrentrada.fieldbyname('VALOR_CONTABIL').asfloat+qradiciona_item.FieldByName('outras_icms').asfloat;
      qrentrada.fieldbyname('VALOR_CONTABIL').asfloat := qrentrada.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.FieldByName('outras_despesas').asfloat;
      if qrAdiciona_item.FieldByName('valor_icms').AsFloat > 0 then
      begin
             //if qrentrada.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
             //  qrentrada.fieldbyname('BASE_ICMS').value := qrentrada.fieldbyname('BASE_ICMS').value + qradiciona_item.FieldByName('outras_icms').asfloat;

        qrentrada.fieldbyname('VALOR_ICMS_CREDITADO').value := qrentrada.fieldbyname('BASE_ICMS').value * (qrAdiciona_item.FieldByName('aliquota_icms').AsFloat / 100);
      end;
    end;
          ////////

    if qradiciona_item.FieldByName('fretes').asfloat > 0 then
    begin

      qrentrada.fieldbyname('VALOR_CONTABIL').asfloat :=
        qrentrada.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.FieldByName('fretes').asfloat;

      if qrAdiciona_item.FieldByName('valor_icms').AsFloat > 0 then
      begin
               //if QRadiciona_ITEM.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
               //  qrentrada.fieldbyname('BASE_ICMS').value := qrentrada.fieldbyname('BASE_ICMS').value + qradiciona_item.FieldByName('fretes').asfloat;

        qrentrada.fieldbyname('VALOR_ICMS_CREDITADO').value := qrentrada.fieldbyname('BASE_ICMS').value * (qrAdiciona_item.FieldByName('aliquota_icms').AsFloat / 100);
      end;
    end;

    if qradiciona_item.FieldByName('seguro').asfloat > 0 then
    begin
      qrentrada.fieldbyname('VALOR_CONTABIL').asfloat :=
        qrentrada.fieldbyname('VALOR_CONTABIL').asfloat + qradiciona_item.FieldByName('seguro').asfloat;
    end;

          //IF qrentrada_temp.fieldbyname('numero').asstring = '191910' THEN
          //  SHOWMESSAGE(qradiciona_item.fieldbyname('cfop').value+ ' ' + FLOATTOSTR(QrAdiciona_item.fieldbyname('DESCONTO').asfloat));

          //qrentrada.fieldbyname('DESCONTO').asfloat := qrentrada_temp.fieldbyname('DESCONTO').asfloat;

    qrentrada.fieldbyname('DESCONTO').asfloat := QrAdiciona_item.fieldbyname('DESCONTO').asfloat;

    qrentrada.fieldbyname('VALOR_CONTABIL').asfloat :=
          //qrentrada.fieldbyname('VALOR_CONTABIL').asfloat-qrentrada_temp.fieldbyname('DESCONTO').asfloat;
    qrentrada.fieldbyname('VALOR_CONTABIL').asfloat - QrAdiciona_item.fieldbyname('DESCONTO').asfloat;

          //qrentrada.fieldbyname('VALOR_MERCADORIAS').value := qradiciona_item.fieldbyname('subtotal').value;;
    qrentrada.fieldbyname('VALOR_MERCADORIAS').value := qradiciona_item.fieldbyname('subtotal').value; ;

    qrentrada.fieldbyname('DATA').value := qradiciona_item.fieldbyname('data_lancamento').value;
    qrentrada.fieldbyname('DATA_ESCRITURACAO').value := qradiciona_item.fieldbyname('data_lancamento').value;
    qrentrada.fieldbyname('TIPO').value := 'E';
    qrentrada.fieldbyname('MODELO_NF').value := qrentrada_temp.fieldbyname('MODELO').value;
    qrentrada.fieldbyname('SERIE').value := qrentrada_temp.fieldbyname('SERIE').value;
    qrentrada.fieldbyname('SUBSERIE').value := '';
    qrentrada.fieldbyname('especie').value := qrentrada_temp.fieldbyname('sigla').value;
    qrentrada.fieldbyname('CFOP').value := qradiciona_item.fieldbyname('cfop').value;
    qrentrada.fieldbyname('NOTA_CANCELADA').value := 'N';
    qrentrada.fieldbyname('TIPO_FRETE').asstring := copy(QRentrada_temp.FIELDBYNAME('TRANSP_FRETE').asstring, 1, 1);
          {ICMS}
    qrentrada.fieldbyname('BASE_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('base_icms_subst').AsFloat;
    qrentrada.fieldbyname('VALOR_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('reducao_base_icms').AsFloat;
    qrentrada.fieldbyname('VALOR_ICMS_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_icms').AsFloat;
    qrentrada.fieldbyname('VALOR_ICMS_OUTRAS').value := qrAdiciona_item.FieldByName('outras_icms').AsFloat;
          {IPI}
    qrentrada.fieldbyname('ALIQUOTA_IPI').value := 0;
    qrentrada.fieldbyname('BASE_IPI').value := qrAdiciona_item.FieldByName('base_ipi').AsFloat;
    qrentrada.fieldbyname('VALOR_IPI_CREDITADO').value := qrAdiciona_item.FieldByName('valor_ipi').AsFloat;
    qrentrada.fieldbyname('VALOR_IPI_CREDITADO50').value := 0;
    qrentrada.fieldbyname('VALOR_IPI_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_ipi').AsFloat;
    qrentrada.fieldbyname('VALOR_IPI_OUTRAS').value := qrAdiciona_item.FieldByName('outras_ipi').AsFloat;
    qrentrada.Post;

          //SHOWMESSAGE(FLOATTOSTR(qrentrada.fieldbyname('VALOR_CONTABIL').asfloat));


    QrAdiciona_item.Next;
  end;

  FRMMODULO.Conexao.Commit;

  PARAMETRO_PESQUISA := '';
end;

procedure Tfrmsintegra_gerar.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  qrentrada_check.CLOSE;
  QRENTRADA_CHECK.SQL.CLEAR;
  if ECFOP.TEXT <> '' then
    QRENTRADA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA WHERE CFOP = ''' + ECFOP.TEXT + ''' ORDER BY ' + AFIELDNAME)
  else
    QRENTRADA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA ORDER BY ' + AFIELDNAME);
  QRENTRADA_CHECK.OPEN;
end;

procedure Tfrmsintegra_gerar.ECFOPKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
  begin
    if pageview2.activepageindex = 0 then
    begin
      qrentrada_check.CLOSE;
      QRENTRADA_CHECK.SQL.CLEAR;
      if ECFOP.TEXT <> '' then
        if rcfop.Checked = true then
          QRENTRADA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA WHERE CFOP = ''' + ECFOP.TEXT + ''' ORDER BY NOTAFISCAL')
        else
        begin
          ECFOP.Text := frmPrincipal.zerarcodigo(ECFOP.Text, 6);
          QRENTRADA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA WHERE NOTAFISCAL = ''' + ECFOP.TEXT + ''' ORDER BY NOTAFISCAL');
        end
      else
        QRENTRADA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA ORDER BY NOTAFISCAL');
      QRENTRADA_CHECK.OPEN;
      btotaliza_entradaClick(frmsintegra_gerar);
    end
    else
    begin
      qrSAIDA_check.CLOSE;
      QRSAIDA_CHECK.SQL.CLEAR;
      if ECFOP.TEXT <> '' then
        if rcfop.Checked = true then
          QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA WHERE TIPO = ''E'' AND CFOP = ''' + ECFOP.TEXT + ''' ORDER BY NOTAFISCAL')
        else
        begin
          ECFOP.Text := frmPrincipal.zerarcodigo(ECFOP.Text, 6);
          QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA WHERE TIPO = ''E'' AND NOTAFISCAL = ''' + ECFOP.TEXT + ''' ORDER BY NOTAFISCAL');
        end
      else
        QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA WHERE TIPO = ''E'' ORDER BY NOTAFISCAL');
      QRSAIDA_CHECK.OPEN;
      btotaliza_saida_ENTClick(frmsintegra_gerar);
    end;
    ecfop.SelectAll;

  end;
end;

procedure Tfrmsintegra_gerar.wwDBGrid1DblClick(Sender: TObject);
begin
  qrentrada_check.Edit;
  if qrentrada_check.FieldByName('turbo').asinteger = 1 then
    qrentrada_check.fieldbyname('turbo').asinteger := 0 else
    qrentrada_check.fieldbyname('turbo').asinteger := 1;
  qrentrada_check.post;
end;

procedure Tfrmsintegra_gerar.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  qrSAIDA_check.CLOSE;
  QRSAIDA_CHECK.SQL.CLEAR;
  if ECFOP2.TEXT <> '' then
    QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA WHERE CFOP = ''' + ECFOP2.TEXT + ''' ORDER BY ' + AFIELDNAME)
  else
    QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA ORDER BY ' + AFIELDNAME);
  QRSAIDA_CHECK.OPEN;
end;

procedure Tfrmsintegra_gerar.wwDBGrid2DblClick(Sender: TObject);
begin
  qrSAIDA_check.Edit;
  if qrSAIDA_check.FieldByName('turbo').asinteger = 1 then
    qrSAIDA_check.fieldbyname('turbo').asinteger := 0 else
    qrSAIDA_check.fieldbyname('turbo').asinteger := 1;
  qrSAIDA_check.post;
end;

procedure Tfrmsintegra_gerar.ECFOP2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then
  begin
    qrSAIDA_check.CLOSE;
    QRSAIDA_CHECK.SQL.CLEAR;
    if ECFOP2.TEXT <> '' then
      if rcfop2.Checked = true then
        QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA WHERE CFOP = ''' + ECFOP2.TEXT + ''' ORDER BY NOTAFISCAL')
      else
      begin
        ECFOP2.Text := frmPrincipal.zerarcodigo(ECFOP2.Text, 6);
        QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA WHERE NOTAFISCAL = ''' + ECFOP2.TEXT + ''' ORDER BY NOTAFISCAL');
      end


    else
      QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA ORDER BY NOTAFISCAL');
    QRSAIDA_CHECK.OPEN;
    btotaliza_saidaClick(frmsintegra_gerar);
    ecfop2.SelectAll;
  end;

end;

procedure Tfrmsintegra_gerar.wwDBGrid3TitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  qrTRANSPORTE.CLOSE;
  QRTRANSPORTE.SQL.CLEAR;
  QRTRANSPORTE.SQL.ADD('SELECT * FROM C000087 WHERE');
  qrtransporte.SQL.Add('(DATA_LANCAMENTO BETWEEN :datahora_ini AND :datahora_fim) AND');
  QRTRANSPORTE.SQL.Add('((modelo = ''55'') OR');
  QRTRANSPORTE.SQL.Add('(modelo = ''07'') OR');
  QRTRANSPORTE.SQL.Add('(modelo = ''08'') OR');
  QRTRANSPORTE.SQL.Add('(modelo = ''09'') OR');
  QRTRANSPORTE.SQL.Add('(modelo = ''10'') OR');
  QRTRANSPORTE.SQL.Add('(modelo = ''11''))');
  qrtransporte.ParamByName('datahora_ini').asdatetime := DateEdit1.Date;
  qrtransporte.ParamByName('datahora_fim').asdatetime := DateEdit2.Date;
  QRTRANSPORTE.SQL.Add('ORDER BY ' + AFIELDNAME);

  QRTRANSPORTE.OPEN;
end;

procedure Tfrmsintegra_gerar.AdvGlowButton2Click(Sender: TObject);
begin
  XENTRADA := FALSE;
  frmlista_entrada_sintegra := tfrmlista_entrada_sintegra.create(self);
  frmlista_entrada_sintegra.showmodal;
end;

procedure Tfrmsintegra_gerar.bgerar_inventarioClick(Sender: TObject);
begin
  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.SQL.clear;
  frmmodulo.qrproduto.SQL.add('update c000025 SET data_inventario = :dataf ,');
  frmmodulo.qrproduto.SQL.add('estoque_inventario = estoque,');
  frmmodulo.qrproduto.SQL.add('custo_inventario = precocusto');
  frmmodulo.qrproduto.Params.ParamByName('dataf').asdatetime := strtodate('31/12/' + copy(datetostr(incmonth(date, -1)), 7, 4));
  frmmodulo.qrproduto.ExecSQL;
  frmmodulo.Conexao.Commit;

  Application.messagebox('Inventário Gerado Com sucesso!', 'Inventario!', mb_ok + MB_ICONQUESTION);
end;

procedure Tfrmsintegra_gerar.DateEdit1Exit(Sender: TObject);
begin
  if (copy(datetostr(DateEdit1.Date), 4, 2) = '12') or (copy(datetostr(DateEdit1.Date), 4, 2) = '01') then
  begin
    bregistro74.Visible := true;
    bregistro74.Checked := true;
    rvenda.Checked := true;
    rconsumo.Checked := true;
    rinsumo.Checked := true;
    rmateria.Checked := true;
  end;

end;

procedure Tfrmsintegra_gerar.btotaliza_entradaClick(Sender: TObject);
begin
  try //rqde.value := 0;
    rtotal_entrada.value := 0;
    dsentrada.DataSet := nil;
    qrentrada_check.first;
    while not qrentrada_check.Eof do
    begin
     //rqde.Value := rqde.Value + 1;
      rtotal_entrada.value := rtotal_entrada.value + qrentrada_check.fieldbyname('VALOR_CONTABIL').asfloat;

      qrentrada_check.next;
    end;
    dsentrada.DataSet := qrentrada_check;
  except
  end;

end;

procedure Tfrmsintegra_gerar.btotaliza_saidaClick(Sender: TObject);
begin
  try
  //rqde.value := 0;
    rtotal_saida.value := 0;
    dssaida.DataSet := nil;
    qrsaida_check.first;
    while not qrsaida_check.Eof do
    begin
     //rqde.Value := rqde.Value + 1;
      rtotal_saida.value := rtotal_saida.value + qrsaida_check.fieldbyname('VALOR_CONTABIL').asfloat;

      qrsaida_check.next;
    end;
    dssaida.DataSet := qrsaida_check;
  except
  end;

end;

procedure Tfrmsintegra_gerar.Edit1Exit(Sender: TObject);
begin
  DateEdit1.SetFocus;
end;

procedure Tfrmsintegra_gerar.btotaliza_transporteClick(Sender: TObject);
begin
  try
  //rqde.value := 0;
    rtotal_transporte.value := 0;
    dstransporte.DataSet := nil;
    qrtransporte.first;
    while not qrtransporte.Eof do
    begin
     //rqde.Value := rqde.Value + 1;
      rtotal_transporte.value := rtotal_transporte.value + qrtransporte.fieldbyname('TOTAL_NOTA').asfloat;

      qrtransporte.next;
    end;
    dstransporte.DataSet := qrtransporte;
  except
  end;

end;

procedure Tfrmsintegra_gerar.edit1ButtonClick(Sender: TObject);
begin
  if opendialog1.Execute then
    edit1.Text := opendialog1.FileName;

end;

procedure Tfrmsintegra_gerar.PageView8Change(Sender: TObject);
begin
  if pageview1.ActivePageIndex = 1 then
  begin

    if pageview8.ActivePageIndex = 0 then
    begin

      if PAGEVIEW2.ActivePageIndex = 0 then
      begin
        qrentrada_check.CLOSE;
        QRENTRADA_CHECK.SQL.CLEAR;
        QRENTRADA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA ORDER BY NOTAFISCAL');
        QRENTRADA_CHECK.OPEN;
        btotaliza_entradaClick(frmsintegra_gerar);
      end
      else
      begin
        qrSAIDA_check.CLOSE;
        QRSAIDA_CHECK.SQL.CLEAR;
        QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA WHERE MODELO_NF = ''55'' AND TIPO = ''E'' ORDER BY NOTAFISCAL');
        QRSAIDA_CHECK.OPEN;
        btotaliza_saida_ENTClick(frmsintegra_gerar);
      end;
    end;
    if pageview8.ActivePageIndex = 1 then
    begin
      qrSAIDA_check.CLOSE;
      QRSAIDA_CHECK.SQL.CLEAR;
      QRSAIDA_CHECK.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA WHERE MODELO_NF = ''55'' AND TIPO = ''S'' ORDER BY NOTAFISCAL');
      QRSAIDA_CHECK.OPEN;
      btotaliza_saidaClick(frmsintegra_gerar);
    end;
    if pageview8.ActivePageIndex = 2 then
    begin
      qrsaidaNFCE.CLOSE;
      qrsaidaNFCE.OPEN;
      btotaliza_saidaClick(frmsintegra_gerar);
    end;

    if pageview8.ACTIVEPAGEINDEX = 3 then
    begin
      qrTRANSPORTE.CLOSE;
      QRTRANSPORTE.SQL.CLEAR;
      QRTRANSPORTE.SQL.ADD('SELECT * FROM C000087 WHERE');
      qrtransporte.SQL.Add('(DATA_LANCAMENTO BETWEEN :datahora_ini AND :datahora_fim) AND');
      QRTRANSPORTE.SQL.Add('((modelo = ''55'') OR');
      QRTRANSPORTE.SQL.Add('(modelo = ''07'') OR');
      QRTRANSPORTE.SQL.Add('(modelo = ''08'') OR');
      QRTRANSPORTE.SQL.Add('(modelo = ''09'') OR');
      QRTRANSPORTE.SQL.Add('(modelo = ''10'') OR');
      QRTRANSPORTE.SQL.Add('(modelo = ''11''))');
      QRTRANSPORTE.SQL.Add('ORDER BY NUMERO');
      qrtransporte.ParamByName('datahora_ini').asdatetime := DateEdit1.Date;
      qrtransporte.ParamByName('datahora_fim').asdatetime := DateEdit2.Date;
      QRTRANSPORTE.OPEN;
      btotaliza_transporteClick(frmsintegra_gerar);
    end;
    if PAGEVIEW8.ACTIVEPAGEINDEX = 4 then
    begin
      qrtransporte_saida.Close;
      qrtransporte_saida.SQL.Clear;
      qrtransporte_saida.SQL.Add('SELECT * FROM c000068');
      qrtransporte_saida.SQL.Add('where (data BETWEEN :datahora_ini AND :datahora_fim) AND (');
      qrtransporte_saida.SQL.Add('(modelo = ''07'') OR');
      qrtransporte_saida.SQL.Add('(modelo = ''08'') OR');
      qrtransporte_saida.SQL.Add('(modelo = ''09'') OR');
      qrtransporte_saida.SQL.Add('(modelo = ''10'') OR');
      qrtransporte_saida.SQL.Add('(modelo = ''11'') OR');
      qrtransporte_saida.SQL.Add('(modelo = ''26'') OR');
      qrtransporte_saida.SQL.Add('(modelo = ''27''))');
      qrtransporte_saida.SQL.Add('ORDER BY data');
      qrtransporte_saida.params.ParamByName('datahora_ini').asdatetime := DATEEDIT1.DATE;
      qrtransporte_saida.params.ParamByName('datahora_fim').asdatetime := DATEEDIT2.DATE;
      qrtransporte_saida.Open;
    end;
    if (pageview8.ActivePageIndex = 5) and (bregistro74.Checked) then
    begin
      qrinventario.CLOSE;
      qrinventario.SQL.CLEAR;
      qrinventario.SQL.ADD('SELECT * FROM INVENTARIO');
      qrinventario.OPEN;

      bgerar_inventarioClick(frmsintegra_gerar);
    end;



  end;
end;

procedure Tfrmsintegra_gerar.AdvGlowButton4Click(Sender: TObject);
begin
  XENTRADA := TRUE;
  frmlista_entrada_sintegra := tfrmlista_entrada_sintegra.create(self);
  frmlista_entrada_sintegra.showmodal;
end;

procedure Tfrmsintegra_gerar.ComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dateedit1.setfocus;
end;

procedure Tfrmsintegra_gerar.PageView1Change(Sender: TObject);
begin
  if pageview1.ActivePageIndex = 1 then
  begin
    PageView8Change(frmsintegra_gerar);
  end;

  if pageview1.ActivePageIndex = 2 then
{  begin
   qrcfop.CLOSE;
   qrcfop.SQL.CLEAR;
   qrcfop.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA ORDER BY CFOP,NOTAFISCAL');
   qrcfop.OPEN;
  end
  else  }
  begin
    qrcfop.CLOSE;
    qrcfop.SQL.CLEAR;
    qrcfop.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA ORDER BY CFOP,NOTAFISCAL');
    qrcfop.OPEN;
  end;

end;

procedure Tfrmsintegra_gerar.PageView2Change(Sender: TObject);
begin
  PageView8Change(FRMSINTEGRA_GERAR);
end;

procedure Tfrmsintegra_gerar.btotaliza_saida_entClick(Sender: TObject);
begin
  try
  //rqde.value := 0;
    rtotal_entrada.value := 0;
    dssaida.DataSet := nil;
    qrsaida_check.first;
    while not qrsaida_check.Eof do
    begin
     //rqde.Value := rqde.Value + 1;
      rtotal_entrada.value := rtotal_entrada.value + qrsaida_check.fieldbyname('VALOR_CONTABIL').asfloat;
      qrsaida_check.next;
    end;
    dssaida.DataSet := qrsaida_check;
  except
  end;

end;

procedure Tfrmsintegra_gerar.Button1Click(Sender: TObject);
begin
  if Verifica_Modelo(inputbox('', '', '')) then showmessage('ok') else showmessage('erro');
end;

end.

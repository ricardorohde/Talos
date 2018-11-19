unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Buttons, Grids, DBGrids, ExtCtrls,
  ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, acbrutil, ZConnection, ACBrBoleto, ACBrBoletoFCFR, ACBrBase,
  Mask, frxClass, AdvGroupBox, AdvGlowButton, sSkinManager, DateUtils,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, MidasLib, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  System.IniFiles, ACBrMail, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, cxLabel, cxDBLabel, types, cxImageComboBox, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBLookupComboBox;

type
  Tprincipal = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    BoletoFR: TACBrBoletoFCFR;
    conexao: TZConnection;
    SqlConfig: TZQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Cliente: TZQuery;
    SqlAux: TZQuery;
    Panel2: TPanel;
    edtvenda: TEdit;
    bimprimir1: TBitBtn;
    bremessa1: TBitBtn;
    bretorno1: TBitBtn;
    bgerar1: TBitBtn;
    DtsConfig: TDataSource;
    Dtscontas: TDataSource;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Label29: TLabel;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    ckbol: TCheckBox;
    SqlConfigID: TIntegerField;
    SqlConfigPATH_REMESSA: TWideStringField;
    SqlConfigPATH_RETORNO: TWideStringField;
    SqlConfigPATH_LOGOTIPO: TWideStringField;
    SqlConfigPATH_GERARPDF: TWideStringField;
    SqlConfigMENSAGEM: TWideStringField;
    SqlConfigDIAS_PROTESTO: TIntegerField;
    SqlConfigESPECIE: TWideStringField;
    SqlConfigMOEDA: TWideStringField;
    SqlConfigACEITE: TWideStringField;
    SqlConfigCARTEIRA: TWideStringField;
    SqlConfigLOCAL_PAGTO: TWideStringField;
    SqlConfigINSTRUCAO_1: TWideStringField;
    SqlConfigINSTRUCAO_2: TWideStringField;
    SqlConfigCONT_REMESSA: TIntegerField;
    frxReport1: TfrxReport;
    AdvGroupBox1: TAdvGroupBox;
    dcarne: TDBCheckBox;
    dfatura: TDBCheckBox;
    dpadrao: TDBCheckBox;
    SqlConfigLAYOUT1: TIntegerField;
    SqlConfigLAYOUT2: TIntegerField;
    SqlConfigLAYOUT3: TIntegerField;
    BitBtn11: TBitBtn;
    bimprimir: TAdvGlowButton;
    bremessa: TAdvGlowButton;
    bretorno: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label31: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    DataInicio: TcxDateEdit;
    DataFim: TcxDateEdit;
    Empresa: TZQuery;
    EmpresaCODIGO: TWideStringField;
    EmpresaFILIAL: TWideStringField;
    EmpresaNOTAFISCAL: TIntegerField;
    EmpresaENDERECO: TWideStringField;
    EmpresaCIDADE: TWideStringField;
    EmpresaUF: TWideStringField;
    EmpresaCEP: TWideStringField;
    EmpresaTELEFONE: TWideStringField;
    EmpresaCNPJ: TWideStringField;
    EmpresaIE: TWideStringField;
    EmpresaSEQNF: TIntegerField;
    EmpresaFAX: TWideStringField;
    EmpresaOBS1: TWideStringField;
    EmpresaOBS2: TWideStringField;
    EmpresaCONTRIBUINTE_IPI: TWideStringField;
    EmpresaSUBSTITUTO_TRIBUTARIO: TWideStringField;
    EmpresaEMPRESA_ESTADUAL: TWideStringField;
    EmpresaOPTANTE_SIMPLES: TWideStringField;
    EmpresaOPTANTE_SUPER_SIMPLES: TWideStringField;
    EmpresaECF: TWideStringField;
    EmpresaTIPO: TIntegerField;
    EmpresaIPI: TFloatField;
    EmpresaISS: TFloatField;
    EmpresaNUMERO: TWideStringField;
    EmpresaRESPONSAVEL: TWideStringField;
    EmpresaCOMPLEMENTO: TWideStringField;
    EmpresaBAIRRO: TWideStringField;
    EmpresaFARMACIA_RESP_TECNICO: TWideStringField;
    EmpresaFARMACIA_CRF: TWideStringField;
    EmpresaFARMACIA_CPF: TWideStringField;
    EmpresaFARMCIA_DATA: TDateField;
    EmpresaFARMACIA_UF: TWideStringField;
    EmpresaFARMACIA_SENHA: TWideStringField;
    EmpresaFARMACIA_EMAIL: TWideStringField;
    EmpresaFARMACIA_LOGIN: TWideStringField;
    EmpresaFARMACIA_ENVIO: TWideStringField;
    EmpresaCONHECIMENTO: TIntegerField;
    EmpresaINDUSTRIA: TWideStringField;
    EmpresaFARMACIA_NUMEROLICENCA: TWideStringField;
    EmpresaCOD_MUNICIPIO_IBGE: TWideStringField;
    EmpresaIBGE: TWideStringField;
    EmpresaPIS: TFloatField;
    EmpresaCOFINS: TFloatField;
    EmpresaEMAIL: TWideStringField;
    EmpresaATIVIDADE: TWideStringField;
    EmpresaCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField;
    EmpresaCONTADOR_NOME: TWideStringField;
    EmpresaCONTADOR_CPF: TWideStringField;
    EmpresaCONTADOR_CRC: TWideStringField;
    EmpresaCONTADOR_CNPJ: TWideStringField;
    EmpresaCONTADOR_CEP: TWideStringField;
    EmpresaCONTADOR_ENDERECO: TWideStringField;
    EmpresaCONTADOR_NUMERO: TWideStringField;
    EmpresaCONTADOR_COMPLEMENTO: TWideStringField;
    EmpresaCONTADOR_BAIRRO: TWideStringField;
    EmpresaCONTADOR_FONE: TWideStringField;
    EmpresaCONTADOR_FAX: TWideStringField;
    EmpresaCONTADOR_EMAIL: TWideStringField;
    EmpresaINSC_MUNICIPAL: TWideStringField;
    EmpresaDATA_ABERTURA: TDateField;
    EmpresaCNAE: TWideStringField;
    EmpresaCRT: TWideStringField;
    EmpresaCONTADOR_CIDADE: TWideStringField;
    EmpresaCONTADOR_COD_MUNICIPIO: TWideStringField;
    EmpresaCONTADOR_UF: TWideStringField;
    EmpresaPERMITE_CREDITO: TIntegerField;
    EmpresaFANTASIA: TWideStringField;
    EmpresaDFIXAS: TFloatField;
    EmpresaTIPOCALCULO: TIntegerField;
    EmpresaSERIE_CTE: TWideStringField;
    EmpresaSEQ_CTE: TWideStringField;
    EmpresaCOD_PAIS: TWideStringField;
    EmpresaPAIS: TWideStringField;
    EmpresaHOMEPAGE: TWideStringField;
    TabSheet4: TTabSheet;
    btnSalvarConfig: TBitBtn;
    bemail: TAdvGlowButton;
    lblFrom: TLabel;
    edtFrom: TEdit;
    lblHost: TLabel;
    edtHost: TEdit;
    lblUser: TLabel;
    edtUser: TEdit;
    lblDefaultCharset: TLabel;
    cbbDefaultCharset: TComboBox;
    lblFromName: TLabel;
    edtFromName: TEdit;
    edtPort: TEdit;
    lblPort: TLabel;
    lblTipoAutenticacao: TLabel;
    chkTLS: TCheckBox;
    chkSSL: TCheckBox;
    chkMostraSenha: TCheckBox;
    lblPassword: TLabel;
    edtPassword: TEdit;
    lbl1: TLabel;
    cbbIdeCharSet: TComboBox;
    mmEmailMsg: TMemo;
    Label36: TLabel;
    edtEmailAssunto: TEdit;
    Label35: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CODVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1CODCAIXA: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_VENCIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOSSONUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_ATUAL: TcxGridDBColumn;
    cxGrid1DBTableView1REMESSA: TcxGridDBColumn;
    cxGrid1DBTableView1BOL_IMPRESSO: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL_ENVIADO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    logo1: TImage;
    BtnLocalizar111: TAdvGlowButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Panel3: TPanel;
    cxDBLabel1: TcxDBLabel;
    cxLabel1: TcxLabel;
    ACBrMail1: TACBrMail;
    qrmestre: TZQuery;
    qrconfig: TZQuery;
    sqlContaCorrente: TZQuery;
    SqlContas: TZQuery;
    dsCtaCorrente: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    ComboBanco: TcxGridDBTableView;
    sqlContaCorrenteBAN_NUMERO: TWideStringField;
    sqlContaCorrenteBAN_NOME: TWideStringField;
    sqlContaCorrenteBAN_LOGO: TBlobField;
    sqlContaCorrenteBAN_DIGITO: TIntegerField;
    sqlContaCorrenteCTA_CODIGO: TWideStringField;
    sqlContaCorrenteCTA_NUMERO: TWideStringField;
    sqlContaCorrenteCTA_AGENCIA: TWideStringField;
    sqlContaCorrenteCTA_TITUAL: TWideStringField;
    sqlContaCorrenteCTA_DIGITO_CONTA: TWideStringField;
    sqlContaCorrenteCTA_DIGITO_AGENCIA: TWideStringField;
    sqlContaCorrenteCTA_CODIGO_CEDENTE: TWideStringField;
    sqlContaCorrenteCTA_FISICA_JURUDICA: TWideStringField;
    sqlContaCorrenteCTA_INST_01: TWideStringField;
    sqlContaCorrenteCTA_INT_02: TWideStringField;
    sqlContaCorrenteCTA_INT_03: TWideStringField;
    sqlContaCorrenteCTA_CNPJ_CPF: TWideStringField;
    sqlContaCorrenteCTA_NOSSO_NUMERO: TWideStringField;
    sqlContaCorrenteCTA_TIPO: TIntegerField;
    sqlContaCorrenteCTA_LAYOUT: TIntegerField;
    sqlContaCorrenteCTA_CARTEIRA: TWideStringField;
    ComboBancoBAN_NUMERO: TcxGridDBColumn;
    ComboBancoBAN_NOME: TcxGridDBColumn;
    ComboBancoCTA_AGENCIA: TcxGridDBColumn;
    ComboBancoCTA_TITUAL: TcxGridDBColumn;
    ComboBancoCTA_DIGITO_CONTA: TcxGridDBColumn;
    ComboBancoCTA_DIGITO_AGENCIA: TcxGridDBColumn;
    ComboBancoCTA_CODIGO_CEDENTE: TcxGridDBColumn;
    edCta: TcxLookupComboBox;
    qrconfigCODIGO: TWideStringField;
    qrconfigULTIMO_BACKUP: TDateField;
    qrconfigPAPEL_PAREDE: TWideStringField;
    qrconfigAVISO_CONTAS_PAGAR: TIntegerField;
    qrconfigAVISO_CHEQUE: TIntegerField;
    qrconfigESTOQUE_NEGATIVO: TIntegerField;
    qrconfigCASAS_DECIMAIS_QTDE: TIntegerField;
    qrconfigCASAS_DECIMAIS_VALOR: TIntegerField;
    qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField;
    qrconfigVENDA_CADASTRO_CARTAO: TIntegerField;
    qrconfigVENDA_TIPONOTA: TIntegerField;
    qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigVENDA_PORTA_IMPRESSORA: TWideStringField;
    qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField;
    qrconfigVENDA_LIMITE_CLIENTE: TIntegerField;
    qrconfigOS_TIPONOTA: TIntegerField;
    qrconfigOS_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigOS_PORTA_IMPRESSORA: TWideStringField;
    qrconfigOS_TIPO_IMPRESSORA: TIntegerField;
    qrconfigORCAMENTO_TIPONOTA: TIntegerField;
    qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigORCAMENTO_PORTA_IMPRESSORA: TWideStringField;
    qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField;
    qrconfigCONTASRECEBER_CARENCIA: TIntegerField;
    qrconfigCONTASRECEBER_TAXAJUROS: TFloatField;
    qrconfigCONTASRECEBER_MULTA: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField;
    qrconfigECF_MODELO: TWideStringField;
    qrconfigECF_PORTA: TWideStringField;
    qrconfigECF_TEF: TIntegerField;
    qrconfigECF_TIPO: TWideStringField;
    qrconfigBALANCAPDV_MODELO: TWideStringField;
    qrconfigBALANCAPDV_PORTA: TWideStringField;
    qrconfigIMPRESSORACHEQUE_MODELO: TWideStringField;
    qrconfigIMPRESSORACHEQUE_PORTA: TWideStringField;
    qrconfigBALANCA_MODELO: TWideStringField;
    qrconfigIMPRESSORABARRAS_MODELO: TWideStringField;
    qrconfigBALANCA_CAMINHO: TWideStringField;
    qrconfigCADASTRO_PRODUTO: TWideStringField;
    qrconfigRAMO_ATIVIDADE: TIntegerField;
    qrconfigEXTRATO_TIPONOTA: TIntegerField;
    qrconfigBOBINA_SUBIRPAPEL: TIntegerField;
    qrconfigCLASSIFICACAO: TWideStringField;
    qrconfigBOLETO_FORMAPGTO: TWideStringField;
    qrconfigPLANO_VENDA_AV: TWideStringField;
    qrconfigPLANO_VENDA_AP: TWideStringField;
    qrconfigPLANO_OS_AV: TWideStringField;
    qrconfigPLANO_OS_AP: TWideStringField;
    qrconfigPLANO_OUTRAS_ENTRADAS: TWideStringField;
    qrconfigPLANO_OUTRAS_SAIDAS: TWideStringField;
    qrconfigPLANO_RECEBTO_CREDIARIO: TWideStringField;
    qrconfigNF_ITENS_PAGINA: TIntegerField;
    qrconfigNF_ITENS_TRANSPORTE: TIntegerField;
    qrconfigNF_LINHA_TRANSPORTE: TIntegerField;
    qrconfigNF_SALTO_PAGINA: TIntegerField;
    qrconfigNF_TIPO: TIntegerField;
    qrconfigNF_IMPRESSORA: TWideStringField;
    qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField;
    qrconfigDESCONTO_AVISTA: TFloatField;
    qrconfigDESCONTO_PRODUTO: TFloatField;
    qrconfigDESCONTO_TOTALNOTA: TFloatField;
    qrconfigTIPO_VENDA: TWideStringField;
    qrconfigVENDA_ALTERAR_PRECO: TIntegerField;
    qrconfigNF_LINHA_SUBTOTAL: TIntegerField;
    qrconfigNF_LINHA_TOTAL: TIntegerField;
    qrconfigECF_CAIXA: TWideStringField;
    qrconfigECF_SERIAL: TWideStringField;
    qrconfigFARMACIA_ENVIO: TWideStringField;
    qrconfigFARMACIA_RESPOSTA: TWideStringField;
    qrconfigFARMACIA_ENVIO_RESPOSTA: TWideStringField;
    qrconfigFARMACIA_LOGIN: TWideStringField;
    qrconfigFARMACIA_SENHA: TWideStringField;
    qrconfigULTIMA_CARGA: TDateField;
    qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField;
    qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField;
    qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField;
    qrconfigIMPRIME_DUPLICATA: TIntegerField;
    qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField;
    qrconfigRECIBO_TIPONOTA: TIntegerField;
    qrconfigNR_CONTROLE_ECF: TWideStringField;
    qrconfigBALANCA_PROGRAMA: TWideStringField;
    qrconfigTIPO_DUPLICATA: TWideStringField;
    qrconfigCONCILIA_VENDA: TIntegerField;
    qrconfigCONTROLA_ENTREGA: TIntegerField;
    qrconfigENTREGA_IMPRESSAO: TIntegerField;
    qrconfigENTREGA_VIAS: TIntegerField;
    qrconfigCONDICIONAL: TIntegerField;
    qrconfigCONDICIONAL_PRAZO: TIntegerField;
    qrconfigVS_ATIVAR: TIntegerField;
    qrconfigVS_DINHEIRO: TIntegerField;
    qrconfigVS_CHEQUEAV: TIntegerField;
    qrconfigVS_CHEQUEAP: TIntegerField;
    qrconfigVS_CARTRAOCRED: TIntegerField;
    qrconfigVS_CARTAODEB: TIntegerField;
    qrconfigVS_CREDIARIO: TIntegerField;
    qrconfigVS_CLIENTE_VISTA: TWideStringField;
    qrconfigVS_CAIXA: TIntegerField;
    qrconfigVS_RELATORIO: TIntegerField;
    qrconfigVS_VIAS: TIntegerField;
    qrconfigVS_VISUALIZAR: TIntegerField;
    qrconfigCONDICIONAL_MODELO: TIntegerField;
    qrconfigALTERAR_UNITARIO: TIntegerField;
    qrconfigCONTASRECEBER_VALORJUROS: TFloatField;
    qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField;
    qrconfigPLANO_DUPLICATA_NFE: TWideStringField;
    qrconfigVAREJO_ATACADO: TIntegerField;
    qrconfigVISUALIZA_MENSAGEM: TIntegerField;
    qrconfigSERIAL_REPETIDO: TIntegerField;
    qrconfigOCULTAR_CUSTO: TIntegerField;
    qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField;
    qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField;
    qrconfigOBS_FARMA: TIntegerField;
    qrconfigOBS_FARMA_TEXTO: TWideStringField;
    qrconfigCUSTO_MAIOR_VENDA: TIntegerField;
    qrconfigVENDER_ABAIXO_CUSTO: TIntegerField;
    qrconfigNF_GERAR_RECEBER: TIntegerField;
    qrconfigNF_CODIGOBARRA_NFE: TIntegerField;
    qrconfigNF_GRADE_NFE: TIntegerField;
    qrconfigNF_SERIAL_NFE: TIntegerField;
    qrconfigNF_REFERENCIA_NFE: TIntegerField;
    qrconfigNF_GERAR_DUPLICATA: TIntegerField;
    qrconfigVALE_CAIXA: TIntegerField;
    qrconfigCONTAS_RECEBER_BLOQUEIO: TIntegerField;
    qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField;
    qrconfigCLIENTE_PEDE_CPF: TIntegerField;
    qrconfigVERIFICA_COD_BARRA: TIntegerField;
    qrconfigVERIFICA_NOME_PRODUTO: TIntegerField;
    qrconfigVS_FRETE: TIntegerField;
    qrconfigINVENTARIO_AUTOMATICO: TIntegerField;
    qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField;
    qrconfigETIQUETA_07: TIntegerField;
    qrconfigETIQUETA_07_1: TIntegerField;
    qrconfigETIQUETA_07_2: TIntegerField;
    qrconfigEMAIL_SERVIDOR_SMTP: TWideStringField;
    qrconfigEMAIL_PORTA: TWideStringField;
    qrconfigEMAIL_USUARIO: TWideStringField;
    qrconfigEMAIL_SENHA: TWideStringField;
    qrconfigEMAIL_ASSUNTO: TWideStringField;
    qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField;
    qrconfigEMAIL_MENSAGEM: TBlobField;
    qrconfigINESTRA: TIntegerField;
    qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField;
    qrconfigFARMACIA_ENVIO_NOVARTIS: TWideStringField;
    qrconfigFARMACIA_RESPOSTA_NOVARTIS: TWideStringField;
    qrconfigFARMACIA_INVENTARIO_CONFIRMA: TWideStringField;
    qrconfigFARMACIA_INVENTARIO_DATA: TDateField;
    qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField;
    qrconfigUSA_RENTABILIDADE: TIntegerField;
    qrconfigUSA_PRODUTOR_RURAL: TIntegerField;
    qrconfigIND_CLIE_ENTRADA: TWideStringField;
    qrconfigIND_CFOP_ENTRADA: TWideStringField;
    qrconfigIND_CLIE_SAIDA: TWideStringField;
    qrconfigIND_CFOP_SAIDA: TWideStringField;
    qrconfigIND_CLIE_PERDA: TWideStringField;
    qrconfigIND_CFOP_PERDA: TWideStringField;
    qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField;
    qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField;
    qrconfigCOR_COMERCIO: TWideStringField;
    qrconfigLOGO_COMERCIO: TWideStringField;
    qrconfigCOR_FARMACIA: TWideStringField;
    qrconfigLOGO_FARMACIA: TWideStringField;
    qrconfigCOR_PECAS: TWideStringField;
    qrconfigLOGO_PECAS: TWideStringField;
    qrconfigCOR_MERCADO: TWideStringField;
    qrconfigLOGO_MERCADO: TWideStringField;
    qrconfigCOR_POSTO: TWideStringField;
    qrconfigLOGO_POSTO: TWideStringField;
    qrconfigIND_CLIE_ENTRADA_DESC: TWideStringField;
    qrconfigIND_CFOP_ENTRADA_DESC: TWideStringField;
    qrconfigIND_CLIE_SAIDA_DESC: TWideStringField;
    qrconfigIND_CFOP_SAIDA_DESC: TWideStringField;
    qrconfigIND_CLIE_PERDA_DESC: TWideStringField;
    qrconfigIND_CFOP_PERDA_DESC: TWideStringField;
    qrconfigIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrconfigIND_CFOP_VENDA_FORA: TWideStringField;
    qrconfigIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrconfigIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrconfigIND_CFOP_SERVICO_DENTRO: TWideStringField;
    qrconfigIND_CFOP_SERVICO_FORA: TWideStringField;
    qrconfigCFOP_VENDA_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_VENDA_FORA_DESC: TWideStringField;
    qrconfigCFOP_DEVOLUCAO_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_DEVOLUCAO_FORA_DESC: TWideStringField;
    qrconfigCFOP_SERVICO_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_SERVICO_FORA_DESC: TWideStringField;
    qrconfigTIPO_NF: TIntegerField;
    qrconfigCOR_ESTOQUE_POSITIVO: TWideStringField;
    qrconfigCOR_ESTOQUE_NEGATIVO: TWideStringField;
    qrconfigCOR_ESTOQUE_ZERADO: TWideStringField;
    qrconfigTIPO_PESQUISA: TIntegerField;
    qrconfigECF_CONCOMITANTE: TIntegerField;
    qrconfigPLANO_PAGTO_FORN: TWideStringField;
    qrconfigHAB_PREVENDA: TIntegerField;
    qrconfigCODCLIENTEAV: TWideStringField;
    qrconfigCODCLIENTEMODELO: TWideStringField;
    qrconfigCODPRODUTOMODELO: TWideStringField;
    qrconfigCODFORNECEDORMODELO: TWideStringField;
    qrconfigUSA_CAIXA_DIARIO: TIntegerField;
    qrconfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField;
    qrconfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField;
    qrconfigVERSAOBD: TWideStringField;
    qrconfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField;
    qrconfigTEXTO_PADRAO_VENDA: TWideStringField;
    qrconfigTEXTO_PADRAO_DEVOLUCAO: TWideStringField;
    qrconfigTEXTO_PADRAO_GARANTIA: TWideStringField;
    qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField;
    qrconfigATENDIMENTOIMPRESSAO: TWideStringField;
    qrconfigATENDIMENTOVIAS: TIntegerField;
    qrconfigATENDIMENTOFICHA: TWideStringField;
    qrconfigATENDIMENTOIMPRESSORA: TWideStringField;
    qrconfigATENDIMENTOIMPRESMODELO: TIntegerField;
    qrconfigPERMITE_PROD_PRECO_ZERO: TWideStringField;
    qrconfigACRESCIMO_PRODUTO: TFloatField;
    sqlBaixaAutomatica: TZQuery;
    sqlBaixaAutomaticaCLICOD: TWideStringField;
    sqlBaixaAutomaticaNOME: TWideStringField;
    sqlBaixaAutomaticaCODIGO: TWideStringField;
    sqlBaixaAutomaticaDATA_VENCIMENTO: TDateField;
    sqlBaixaAutomaticaSITUACAO: TIntegerField;
    sqlBaixaAutomaticaBAIXA_AUTOMATICA: TWideStringField;
    sqlBaixaAutomaticaCOD_CONTA: TWideStringField;
    sqlBaixaAutomaticaNOSSONUMERO: TWideStringField;
    sqlBaixaAutomaticaVALOR_ORIGINAL: TFloatField;
    sqlBaixaAutomaticaDOCUMENTO: TWideStringField;
    sqlBaixaAutomaticaDATA_PAGAMENTO: TDateField;
    sqlBaixaAutomaticaVALOR_JUROS: TFloatField;
    sqlBaixaAutomaticaVALOR_DESCONTO: TFloatField;
    sqlBaixaAutomaticaVALOR_PAGO: TFloatField;
    SqlContasSEL: TIntegerField;
    SqlContasNOME: TWideStringField;
    SqlContasEMAIL: TWideStringField;
    SqlContasCODCLIENTE: TWideStringField;
    SqlContasCODIGO: TWideStringField;
    SqlContasCODVENDA: TWideStringField;
    SqlContasCODCAIXA: TWideStringField;
    SqlContasDATA_EMISSAO: TDateField;
    SqlContasDATA_VENCIMENTO: TDateField;
    SqlContasNOSSONUMERO: TWideStringField;
    SqlContasVALOR_ORIGINAL: TFloatField;
    SqlContasDOCUMENTO: TWideStringField;
    SqlContasREMESSA: TWideStringField;
    SqlContasBOL_IMPRESSO: TWideStringField;
    SqlContasEMAIL_ENVIADO: TIntegerField;
    edFat: TRadioButton;
    edVen: TRadioButton;
    Label2: TLabel;
    procedure bimprimir1Click(Sender: TObject);
    procedure bremessa1Click(Sender: TObject);
    procedure bretorno1Click(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure bemailClick(Sender: TObject);
    procedure BtnLocalizar111Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCtaPropertiesChange(Sender: TObject);
   private
    { Private declarations }
    procedure GravaConfigEmail;
    procedure LeConfigEmail;
    procedure AjustaParametrosDeEnvio;
  public
    { Public declarations }
    function codifica(TABELA: string): string;
    function zerarcodigo(codigo: string; Qtde: Integer): string;
    procedure ConfiguraComponenteAcBr;
    function Selecionou:Boolean;
  end;

var
  principal: Tprincipal;

implementation

uses
  TypInfo, BaixaAutomatica;

{$R *.dfm}

procedure Tprincipal.bimprimir1Click(Sender: TObject);
var
  Titulo : TACBrTitulo;
begin
  if edCta.Text = '' then begin
    ShowMessage('Informe a conta corrente!');
    Exit;
  end;
  if SqlContas.State = dsEdit then
    SqlContas.Post;
  if not(SqlContas.Active) and (SqlContas.RecordCount > 0) then begin
    MessageDlg('Não existe nenhum Boleto na listagem. Verifique!',mtWarning,[mbOK],0);
    Exit;
  end;
  try
    SqlContas.DisableControls;
    if not Selecionou then begin
      MessageDlg('Selecione pelo menos um Boleto. Verifique!',mtWarning,[mbOK],0);
      SqlContas.EnableControls;
      Exit;
    end;
    try
      conexao.StartTransaction;
      SqlContas.First;
      while not SqlContas.Eof do begin
        if (SqlContasSEL.AsInteger = 1) then begin
          Titulo := ACBrBoleto1.CriarTituloNaLista;
          with Titulo do begin
            Vencimento := sqlContasDATA_VENCIMENTO.AsDateTime;
            DataDocumento := sqlContasDATA_EMISSAO.AsDateTime;
            NumeroDocumento := sqlContasDOCUMENTO.AsString;
            EspecieDoc := SQLConfigESPECIE.AsString;
            if SQLConfigACEITE.AsString = 'SIM' then
              Aceite := atSim
            else
              Aceite := atNao;
            DataProcessamento := Now;
            Carteira := SQLConfigCARTEIRA.AsString;
            NossoNumero := SqlContasNOSSONUMERO.AsString;
            ValorDocumento := sqlContasVALOR_ORIGINAL.AsFloat;
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('select * from c000007');
            SQLAux.SQL.Add('where CODIGO ='+sqlContasCODCLIENTE.AsString);
            SQLAux.Open;
            Sacado.NomeSacado := SQLAux.FieldByName('nome').AsString;
            Sacado.CNPJCPF    := SQLAux.FieldByName('cpf').AsString;
            if SQLAux.FieldByName('tipo').AsInteger = 2 then
              Sacado.Pessoa := pJuridica
            else
              Sacado.Pessoa := pFisica;
            Sacado.Logradouro := SQLAux.FieldByName('endereco').AsString;
            Sacado.Numero     := SQLAux.FieldByName('numero').AsString;
            Sacado.Bairro     := SQLAux.FieldByName('bairro').AsString;
            Sacado.Cidade     := SQLAux.FieldByName('cidade').AsString;
            Sacado.UF         := SQLAux.FieldByName('uf').AsString;
            Sacado.CEP        := StringReplace(SQLAux.FieldByName('cep').AsString,'-','',[rfReplaceAll]);
            ValorAbatimento   := 0;
            LocalPagamento    := SQLConfigLOCAL_PAGTO.AsString;
            ValorMoraJuros    := 0;
            ValorDesconto     := 0;
            ValorAbatimento   := 0;
            DataMoraJuros     := 0;
            DataDesconto      := 0;
            DataAbatimento    := 0;
            DataProtesto      := sqlContasDATA_VENCIMENTO.AsDateTime + SQLConfigDIAS_PROTESTO.AsInteger;
            PercentualMulta   := 0;
            Mensagem.Text     := SQLConfigMENSAGEM.AsString;
            OcorrenciaOriginal.Tipo := toRemessaBaixar;
            Instrucao1        := trim(SQLConfigINSTRUCAO_1.AsString);
            Instrucao2        := trim(SQLConfigINSTRUCAO_2.AsString);
            Parcela           := 1;
            ACBrBoleto1.ChecarDadosObrigatorios;
            // grava o nosso numero na conta
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('update c000049 set bol_impresso = :pbol_impresso');
            SQLAux.SQL.Add('where CODIGO = :pIDConta');
            SQLAux.Params.ParamByName('pbol_impresso').AsInteger := 1;
            SQLAux.Params.ParamByName('pIDCOnta').AsString := sqlContasCODIGO.AsString;
            SQLAux.ExecSQL();
            SqlContas.Edit;
            SqlContasBOL_IMPRESSO.AsInteger := 1;
            SqlContas.Post;
          end;
        end;
        SqlContas.Next
      end;
      ACBrBoleto1.Imprimir;
      ACBrBoleto1.ListadeBoletos.Clear;
      conexao.Commit;
    except
      on E : Exception do begin
        conexao.Rollback;
        Application.MessageBox(PWideChar('Erro ao Imprimir o(s) Boleto(s)!'+#13+e.Message),'Atenção!',MB_ICONERROR);
      end;
    end;
  finally
    SqlContas.EnableControls;
  end;
end;

procedure Tprincipal.bremessa1Click(Sender: TObject);
var
  ContadorRemessa : Integer;
  Titulo : TACBrTitulo;
  xNossoNumerox:Integer;
  contaAtial:string;
begin
  if edCta.Text = '' then begin
    ShowMessage('Informe a conta corrente!');
    Exit;
  end;
  if SqlContas.State = dsEdit then
    SqlContas.Post;
  if not(SqlContas.Active) and (SqlContas.RecordCount > 0) then begin
    MessageDlg('Não existe nenhum Boleto na listagem. Verifique!',mtWarning,[mbOK],0);
    Exit;
  end;
  try
    SqlContas.DisableControls;
    if not Selecionou then begin
      MessageDlg('Selecione pelo menos um Boleto. Verifique!',mtWarning,[mbOK],0);
      SqlContas.EnableControls;
      Exit;
    end;
    while not SqlContas.Eof do begin
      if (SqlContasSEL.AsInteger = 1) and (SqlContasREMESSA.AsString = 'S') then begin
        Application.MessageBox('Foi selecionado um boleto que já foi gerado a remessa impossivel continuar!','Atenção!',MB_ICONINFORMATION);
        Exit;
      end;
      SqlContas.Next;
    end;
    try
      conexao.StartTransaction;
      SqlContas.First;
      xNossoNumerox := sqlContaCorrenteCTA_NOSSO_NUMERO.AsInteger;
      while not SqlContas.Eof do begin
        if (SqlContasSEL.AsInteger = 1) and (SqlContasREMESSA.AsString <> 'S') then begin
          SqlContas.Edit;
          inc(xNossoNumerox);
          Titulo := ACBrBoleto1.CriarTituloNaLista;
          with Titulo do begin
            Vencimento := sqlContasDATA_VENCIMENTO.AsDateTime;
            DataDocumento := sqlContasDATA_EMISSAO.AsDateTime;
            NumeroDocumento := sqlContasDOCUMENTO.AsString;
            EspecieDoc := SQLConfigESPECIE.AsString;
            if SQLConfigACEITE.AsString = 'SIM' then
              Aceite := atSim
            else
              Aceite := atNao;
            DataProcessamento := Now;
            Carteira := SQLConfigCARTEIRA.AsString;
            NossoNumero := IntToStrZero(xNossoNumerox,10);
            SqlContasNOSSONUMERO.AsString := NossoNumero;
            ValorDocumento := sqlContasVALOR_ORIGINAL.AsFloat;
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('select * from c000007');
            SQLAux.SQL.Add('where CODIGO ='+sqlContasCODCLIENTE.AsString);
            SQLAux.Open;
            Sacado.NomeSacado := SQLAux.FieldByName('nome').AsString;
            Sacado.CNPJCPF    := SQLAux.FieldByName('cpf').AsString;
            if SQLAux.FieldByName('tipo').AsInteger = 2 then
              Sacado.Pessoa := pJuridica
            else
              Sacado.Pessoa := pFisica;
            Sacado.Logradouro := SQLAux.FieldByName('endereco').AsString;
            Sacado.Numero     := SQLAux.FieldByName('numero').AsString;
            Sacado.Bairro     := SQLAux.FieldByName('bairro').AsString;
            Sacado.Cidade     := SQLAux.FieldByName('cidade').AsString;
            Sacado.UF         := SQLAux.FieldByName('uf').AsString;
            Sacado.CEP        := StringReplace(SQLAux.FieldByName('cep').AsString,'-','',[rfReplaceAll]);
            ValorAbatimento   := 0;
            LocalPagamento    := SQLConfigLOCAL_PAGTO.AsString;
            ValorMoraJuros    := 0;
            ValorDesconto     := 0;
            ValorAbatimento   := 0;
            DataMoraJuros     := 0;
            DataDesconto      := 0;
            DataAbatimento    := 0;
            DataProtesto      := sqlContasDATA_VENCIMENTO.AsDateTime + SQLConfigDIAS_PROTESTO.AsInteger;
            PercentualMulta   := 0;
            Mensagem.Text     := SQLConfigMENSAGEM.AsString;
            OcorrenciaOriginal.Tipo := toRemessaRegistrar;
            Instrucao1        := trim(SQLConfigINSTRUCAO_1.AsString);
            Instrucao2        := trim(SQLConfigINSTRUCAO_2.AsString);
            Parcela           := 1;
            ACBrBoleto1.ChecarDadosObrigatorios;
            SqlContasREMESSA.AsString := 'S';
            SqlContas.Post;
          end;
          // grava o nosso numero na conta
          SQLAux.Close;
          SQLAux.SQL.Clear;
          SQLAux.SQL.Add('update c000049 set NOSSONUMERO = :pNossoNum, remessa = :premessa, cod_conta = :cod_conta');
          SQLAux.SQL.Add('where CODIGO = :pIDConta');
          SQLAux.Params.ParamByName('pNossoNum').AsString := IntToStrZero(xNossoNumerox,10);
          SQLAux.Params.ParamByName('cod_conta').AsString := sqlContaCorrenteCTA_CODIGO.AsString;
          SQLAux.Params.ParamByName('premessa').AsString := 'S';
          SQLAux.Params.ParamByName('pIDCOnta').AsString := sqlContasCODIGO.AsString;
          SQLAux.ExecSQL();
        end;
        SqlContas.Next;
      end;
      // grava o nosso numero no banco
      SQLAux.Close;
      SQLAux.SQL.Clear;
      SQLAux.SQL.Add('update c000041 set nossonum = :nossonum');
      SQLAux.SQL.Add('where CODIGO = :codigo');
      SQLAux.Params.ParamByName('nossonum').AsString := IntToStr(xNossoNumerox);
      SQLAux.Params.ParamByName('CODIGO').AsString := sqlContaCorrenteCTA_CODIGO.AsString;
      SQLAux.ExecSQL();
      if ACBrBoleto1.ListadeBoletos.Count <= 0 then begin
        Application.MessageBox('Não existem boletos para gerar remessa, primeiro selecione a conta a receber e clique em Gerar.','Atenção!',MB_ICONINFORMATION);
        Exit;
      end;
      // captura o contador de remessa e gera a mesma
      ContadorRemessa := SqlConfigCONT_REMESSA.AsInteger;
      Inc(ContadorRemessa);
      ACBrBoleto1.NumeroArquivo := ContadorRemessa;
      ACBrBoleto1.GerarRemessa(ContadorRemessa);
//8      ACBrBoleto1.NomeArqRemessa := FormatDateTime('DDMMSS',Date)+zerarcodigo(IntToStr(ContadorRemessa),10)+'.txt';
      ACBrBoleto1.ListadeBoletos.Clear;
      // Atualiza o contador de remesa na tabela de configuração
      SQLAux.Close;
      SQLAux.SQL.Clear;
      SQLAux.SQL.Add('update config set cont_remessa = :pContador');
      SQLAux.SQL.Add('where id = :pID');
      SQLAux.Params.ParamByName('pContador').AsInteger := ContadorRemessa;
      SQLAux.Params.ParamByName('pID').AsInteger := SqlConfigID.AsInteger;
      SQLAux.ExecSQL();
      conexao.Commit;
      SqlConfig.Close;
      SqlConfig.Open;
      contaAtial := sqlContaCorrenteCTA_CODIGO.AsString;
      sqlContaCorrente.Close;
      sqlContaCorrente.Open;
      sqlContaCorrente.Locate('CTA_CODIGO',contaAtial,[]);
      edCta.EditValue := sqlContaCorrenteBAN_NOME.AsString;
      edCta.Text := sqlContaCorrenteBAN_NOME.AsString;
      edCtaPropertiesChange(edCta);
      Application.MessageBox('Processo concluído!','Atenção!',MB_ICONINFORMATION);
    except
      on E : Exception do begin
        conexao.Rollback;
        Application.MessageBox(PWideChar('Erro ao gerar arquivo de remessa!'+#13+e.Message),'Atenção!',MB_ICONERROR);
      end;
    end;
  finally
    SqlContas.EnableControls;
  end;
end;

procedure Tprincipal.bretorno1Click(Sender: TObject);
var
  i : Integer;
begin
  OpenDialog1.InitialDir := SqlConfigPATH_RETORNO.AsString;
  if OpenDialog1.Execute then begin
    ConfiguraComponenteAcBr;
    ACBrBoleto1.NomeArqRetorno := ExtractFileName(opendialog1.FileName);
    ACBrBoleto1.LerRetorno;
    if ACBrBoleto1.ListadeBoletos.Count > 0 then begin
      Application.CreateForm(TfrmBaixaAutomatica,frmBaixaAutomatica);
      with frmBaixaAutomatica do begin
        cdsBaixa.Close;
        cdsBaixa.CreateDataSet;
        for i := 0 to ACBrBoleto1.ListadeBoletos.Count-1 do begin
          if ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido > 0.0 then begin
            // Grava a Quitação da conta
            sqlBaixaAutomatica.Close;
            sqlBaixaAutomatica.ParamByName('numero').AsString := Copy(ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero,2,Length(ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero)-1);
            sqlBaixaAutomatica.ParamByName('conta').AsString := ACBrBoleto1.Cedente.Conta;
            sqlBaixaAutomatica.Open;
            cdsBaixa.Insert;
            if not sqlBaixaAutomatica.IsEmpty then begin
              cdsBaixaCODCLI.AsString := sqlBaixaAutomaticaCLICOD.AsString;
              cdsBaixaNOME.AsString :=  sqlBaixaAutomaticaNOME.AsString;
              cdsBaixaCODIGO.AsString := sqlBaixaAutomaticaCODIGO.AsString;
              cdsBaixaDATA_VENCIMENTO.AsDateTime := sqlBaixaAutomaticaDATA_VENCIMENTO.AsDateTime;
              cdsBaixaVALOR_ORIGINAL.AsFloat := sqlBaixaAutomaticaVALOR_ORIGINAL.AsFloat;
              cdsBaixaDOCUMENTO.AsString := sqlBaixaAutomaticaDOCUMENTO.AsString;     
              if sqlBaixaAutomaticaDATA_PAGAMENTO.AsDateTime > 0 then
                cdsBaixaDATA_BAIXA.AsDateTime := sqlBaixaAutomaticaDATA_PAGAMENTO.AsDateTime;
              cdsBaixaJUROS.AsFloat := sqlBaixaAutomaticaVALOR_JUROS.AsFloat;
              cdsBaixaDESCOTO.AsFloat := sqlBaixaAutomaticaVALOR_DESCONTO.AsFloat;
              cdsBaixaVALOR_PAGO.AsFloat := sqlBaixaAutomaticaVALOR_PAGO.AsFloat;
              cdsBaixaVALOR_PAGO.AsFloat := sqlBaixaAutomaticaVALOR_PAGO.AsFloat;
              if sqlBaixaAutomaticaSITUACAO.AsInteger = 1 then
                cdsBaixaSTATUS.AsString := 'BAIXAR';
              if sqlBaixaAutomaticaSITUACAO.AsInteger = 2 then
                cdsBaixaSTATUS.AsString := 'JÁ BAIXADO';
              cdsBaixabaixa_automatica.AsString := sqlBaixaAutomaticaBAIXA_AUTOMATICA.AsString;
              cdsBaixaCODCONTACORRENTE.AsString := sqlBaixaAutomaticaCOD_CONTA.AsString;
            end else
                cdsBaixaSTATUS.AsString := 'INEXISTENTE';
            cdsBaixaNOSSONUMERO.AsString := Copy(ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero,2,Length(ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero)-1);
            cdsBaixabaData.AsDateTime := ACBrBoleto1.ListadeBoletos.Objects[i].DataOcorrencia;
            cdsBaixabaValor.AsFloat := ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido;
            if ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido > ACBrBoleto1.ListadeBoletos.Objects[i].ValorDocumento then
              cdsBaixabaJuros.AsFloat := ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido - ACBrBoleto1.ListadeBoletos.Objects[i].ValorDocumento;
            if ACBrBoleto1.ListadeBoletos.Objects[i].ValorDocumento > ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido then
              cdsBaixabaDesconto.AsFloat := ACBrBoleto1.ListadeBoletos.Objects[i].ValorDocumento - ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido;
            cdsBaixa.Post;
          end;
        end;
      end;
      frmBaixaAutomatica.ShowModal;
      FreeAndNil(frmBaixaAutomatica);
    end;
  end;
end;

procedure Tprincipal.BtnLocalizar111Click(Sender: TObject);
var
  codvenda:string;
begin
  // fecha os componentes de acesso a tabela
  if (edtvenda.text = '000000') or (edtvenda.text = '')  then
    codvenda := ''
  else
    codvenda := ' and CODVENDA = '''+edtvenda.text+'''';
  sqlcontas.Close;
  sqlcontas.Params.Clear;
  SQLContas.Close;
  SQLContas.SQL.Clear;
  // passa a SQL para captura das contas em aberto e sem emissão do boleto
  SQLContas.SQL.ADD('select 0 sel, cli.nome, cli.email, cta.CODCLIENTE, cta.codigo, cta.codvenda, cta.codcaixa, cta.data_emissao, cta.data_vencimento,');
  SQLContas.SQL.ADD('  cta.nossonumero, cta.VALOR_ORIGINAL, cta.documento, cta.remessa, bol_impresso, cta.email_enviado');
  SQLContas.SQL.ADD('from c000049 cta inner join c000007 cli on cli.codigo = cta.codcliente');
  SQLContas.SQL.ADD('where cta.situacao = 1 and cta.tipo = '+QuotedStr('BOLETO BANCARIO'));

  if edVen.Checked then
    SQLContas.SQL.ADD('and data_vencimento >= :pDATAI AND data_vencimento <= :pDATAF '+codvenda)
  else
    SQLContas.SQL.ADD('and DATA_EMISSAO >= :pDATAI AND DATA_EMISSAO <= :pDATAF '+codvenda);

  SQLContas.SQL.Add('and VALOR_ATUAL > 0.00');
  if ckbol.Checked = false then
    SQLContas.SQL.Add('and NOSSONUMERO is null')
  else
    SQLContas.SQL.Add('and NOSSONUMERO >  0.00');
  sqlcontas.Params.ParamByName('pDatai').AsDate := DataInicio.Date;
  sqlcontas.Params.ParamByName('pDataf').AsDate := DataFim.Date;

  sqlcontas.Open;
  // se não foram encontrado dados na consulta informa ao usuário
  if sqlcontas.IsEmpty then begin
    MessageDlg('Não foram encontradas contas no periodo informado!!!', mtInformation, [mbOK], 0);
    DataInicio.SetFocus;
  end;
end;

procedure Tprincipal.ConfiguraComponenteAcBr;
begin
  if not SQLConfig.IsEmpty then begin
    ACBrBoleto1.ACBrBoletoFC.DirLogo := SQLConfigPATH_LOGOTIPO.AsString;
    if Copy(SQLConfigPATH_LOGOTIPO.AsString, Length(SQLConfigPATH_LOGOTIPO.AsString)-1 ,1) <> '\' then begin
      logo1.Picture.LoadFromFile(SQLConfigPATH_LOGOTIPO.AsString + '\' + sqlContaCorrenteBAN_NUMERO.AsString+'.bmp');
    end else begin
      logo1.Picture.LoadFromFile(SQLConfigPATH_LOGOTIPO.AsString + sqlContaCorrenteBAN_NUMERO.AsString+'.bmp');
    end;
    ACBrBoleto1.ACBrBoletoFC.Filtro := fiNenhum;
    if sqlconfig.FieldByName('layout1').AsInteger = 1 then begin
      ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
      BoletoFR.FastReportFile := ExtractFilePath(Application.ExeName) + '\boleto\impressao\Boleto.fr3';
    end;
    if sqlconfig.FieldByName('layout2').AsInteger = 2 then begin
      ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne;
      BoletoFR.FastReportFile         := ExtractFilePath(Application.ExeName) + '\boleto\impressao\BoletoCarne.fr3';
    end;
    if sqlconfig.FieldByName('layout3').AsInteger = 3 then begin
      ACBrBoleto1.ACBrBoletoFC.LayOut := lPadraoEntrega;
      BoletoFR.FastReportFile         := ExtractFilePath(Application.ExeName) + '\boleto\impressao\Boleto.fr3';
    end;
    ACBrBoleto1.DirArqRemessa         := SQLConfigPATH_REMESSA.AsString;
    ACBrBoleto1.NomeArqRemessa        := FormatDateTime('DDMMYYYYHHMMSS',Now)+'.TXT';
    if sqlContaCorrenteBAN_NUMERO.AsString = '001' then
      ACBrBoleto1.Banco.TipoCobranca := cobBancoDoBrasil
    else if sqlContaCorrenteBAN_NUMERO.AsString = '008' then
      ACBrBoleto1.Banco.TipoCobranca := cobSantander
    else if sqlContaCorrenteBAN_NUMERO.AsString = '033' then
      ACBrBoleto1.Banco.TipoCobranca := cobSantander
    else if sqlContaCorrenteBAN_NUMERO.AsString = '353' then
      ACBrBoleto1.Banco.TipoCobranca := cobSantander
    else if sqlContaCorrenteBAN_NUMERO.AsString = '021' then
      ACBrBoleto1.Banco.TipoCobranca := cobBanestes
    else if sqlContaCorrenteBAN_NUMERO.AsString = '041' then
      ACBrBoleto1.Banco.TipoCobranca := cobBanrisul
    else if sqlContaCorrenteBAN_NUMERO.AsString = '104' then
       ACBrBoleto1.Banco.TipoCobranca := cobCaixaEconomica
    else if sqlContaCorrenteBAN_NUMERO.AsString = '237' then
      ACBrBoleto1.Banco.TipoCobranca := cobBradesco
    else if sqlContaCorrenteBAN_NUMERO.AsString = '341' then
      ACBrBoleto1.Banco.TipoCobranca := cobItau
    else if sqlContaCorrenteBAN_NUMERO.AsString = '389' then
      ACBrBoleto1.Banco.TipoCobranca := cobBancoMercantil
    else if sqlContaCorrenteBAN_NUMERO.AsString = '748' then
      ACBrBoleto1.Banco.TipoCobranca := cobSicred
    else if sqlContaCorrenteBAN_NUMERO.AsString = '756' then
      ACBrBoleto1.Banco.TipoCobranca := cobBancoob
    else if sqlContaCorrenteBAN_NUMERO.AsString = '399' then
      ACBrBoleto1.Banco.TipoCobranca := cobHSBC
    else
      raise Exception.Create('Erro ao configurar o tipo de cobrança.'+
           sLineBreak+'Número do Banco inválido: '+sqlContaCorrenteBAN_NUMERO.AsString);
    Empresa.Close;
    Empresa.Open;
    ACBrBoleto1.Banco.Digito          := sqlContaCorrenteBAN_DIGITO.AsInteger;
    ACBrBoleto1.Cedente.Nome          := sqlContaCorrenteCTA_TITUAL.AsString;
    ACBrBoleto1.Cedente.CaracTitulo   := tcSimples;
    ACBrBoleto1.Cedente.Convenio      :=IntToStrZero(sqlContaCorrenteCTA_CODIGO_CEDENTE.AsInteger,7);
    ACBrBoleto1.Cedente.CodigoCedente := IntToStrZero(sqlContaCorrenteCTA_CODIGO_CEDENTE.AsInteger,7);
    ACBrBoleto1.Cedente.Agencia       := sqlContaCorrenteCTA_AGENCIA.AsString;
    ACBrBoleto1.Cedente.AgenciaDigito := sqlContaCorrenteCTA_DIGITO_AGENCIA.AsString;
    ACBrBoleto1.Cedente.Conta         := sqlContaCorrenteCTA_NUMERO.AsString;
    ACBrBoleto1.Cedente.ContaDigito   := sqlContaCorrenteCTA_DIGITO_CONTA.AsString;
    ACBrBoleto1.Cedente.ResponEmissao := tbCliEmite;
    ACBrBoleto1.Cedente.Telefone      := EmpresaTELEFONE.AsString;
    ACBrBoleto1.Cedente.CEP           := EmpresaCEP.AsString;
    ACBrBoleto1.Cedente.Cidade        := EmpresaCIDADE.AsString;
    ACBrBoleto1.Cedente.UF            := EmpresaUF.AsString;
    ACBrBoleto1.Cedente.Bairro        := EmpresaBAIRRO.AsString;
    ACBrBoleto1.Cedente.Complemento   := EmpresaCOMPLEMENTO.AsString;
    ACBrBoleto1.Cedente.NumeroRes     := EmpresaNUMERO.AsString;
    ACBrBoleto1.Cedente.Logradouro    := EmpresaENDERECO.AsString;
    ACBrBoleto1.Cedente.CNPJCPF       := EmpresaCNPJ.AsString;
    ACBrBoleto1.ChecarDadosObrigatorios;
  end;
end;

procedure Tprincipal.btnSalvarConfigClick(Sender: TObject);
begin
  GravaConfigEmail;
end;

function Tprincipal.codifica(TABELA: string): string;
var
  xcod: Integer;
begin
  qrmestre.close;
  qrmestre.SQL.clear;
  qrmestre.SQL.add('select * from c000000 where codigo = ''' + TABELA + '''');
  qrmestre.open;
  if qrmestre.recordcount > 0 then begin
    xcod := qrmestre.FIELDBYNAME('sequencia').AsInteger;
    if xcod < 1 then
      xcod := 1;
    qrmestre.close;
    qrmestre.SQL.clear;
    qrmestre.SQL.add('update c000000 set sequencia = sequencia + 1 where codigo = ''' + TABELA + '''');
    qrmestre.execsql;
    result := zerarcodigo(IntToStr(xcod), 6);
  end else begin
    showmessage('Não foi possível concluir com a operação!' + #13 +
      'Erro: Código de sequência não encontrado na tabela de códigos.');
  end;
  application.ProcessMessages;
end;

procedure Tprincipal.edCtaPropertiesChange(Sender: TObject);
begin
  if edCta.Text <> '' then begin
    ConfiguraComponenteAcBr;
    logo1.Visible := True;
  end else
    logo1.Visible := False;
end;

procedure Tprincipal.FormCreate(Sender: TObject);
var
  m: TMailCharset;
begin
  cbbDefaultCharset.Items.Clear;
  for m := Low(TMailCharset) to High(TMailCharset) do
    cbbDefaultCharset.Items.Add(GetEnumName(TypeInfo(TMailCharset), integer(m)));
  cbbDefaultCharset.ItemIndex := 0;
  cbbIdeCharSet.Items.Assign(cbbDefaultCharset.Items);
  cbbIdeCharSet.ItemIndex := 0;

end;

procedure Tprincipal.FormShow(Sender: TObject);
begin
  LeConfigEmail;
  DataInicio.Date := StartOfAMonth(YearOf(Date),MonthOf(Date));
  DataFim.Date := EndOfAMonth(YearOf(Date),MonthOf(Date));
  sqlContaCorrente.Open;
  SqlConfig.Open;
end;

procedure Tprincipal.GravaConfigEmail;
var
  IniFile: string;
  Ini: TIniFile;
  StreamMemo: TMemoryStream;
begin
  IniFile := ChangeFileExt(Application.ExeName, '_em_bol.ini');
  Ini := TIniFile.Create(IniFile);
  try
    Ini.WriteString('Email', 'From', edtFrom.text);
    Ini.WriteString('Email', 'FromName', edtFromName.text);
    Ini.WriteString('Email', 'Host', edtHost.text);
    Ini.WriteString('Email', 'Port', edtPort.text);
    Ini.WriteString('Email', 'User', edtUser.text);
    Ini.WriteString('Email', 'Pass', edtPassword.text);
    Ini.WriteBool('Email', 'TLS', chkTLS.Checked);
    Ini.WriteBool('Email', 'SSL', chkSSL.Checked);
    Ini.ReadInteger('Email', 'DefaultCharset', cbbDefaultCharset.ItemIndex);
    Ini.ReadInteger('Email', 'IdeCharset', cbbIdeCharSet.ItemIndex);
    Ini.WriteString('Email', 'Assunto', edtEmailAssunto.Text);
    StreamMemo := TMemoryStream.Create;
    mmEmailMsg.Lines.SaveToStream(StreamMemo);
    StreamMemo.Seek(0, soFromBeginning);
    Ini.WriteBinaryStream('Email', 'Mensagem', StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;
end;

procedure Tprincipal.LeConfigEmail;
var
  IniFile: string;
  Ini: TIniFile;
  StreamMemo: TMemoryStream;
begin
  IniFile := ChangeFileExt(Application.ExeName, '_em_bol.ini');
  Ini := TIniFile.Create(IniFile);
  try
    edtFrom.text := Ini.readString('Email', 'From', 'fulano@empresa.com.br');
    edtFromName.text := Ini.readString('Email', 'FromName', 'Fulano de Tal');
    edtHost.text := Ini.readString('Email', 'Host', 'smtp.empresa.com.br');
    edtPort.text := Ini.readString('Email', 'Port', '587');
    edtUser.text := Ini.readString('Email', 'User', 'fulano@empresa.com.br');
    edtPassword.text := Ini.readString('Email', 'Pass', 'Sua_Senha_123');
    chkTLS.Checked := Ini.ReadBool('Email', 'TLS', False);
    chkSSL.Checked := Ini.ReadBool('Email', 'SSL', False);
    cbbDefaultCharset.ItemIndex := Ini.ReadInteger('Email', 'DefaultCharset', 27);
    cbbIdeCharSet.ItemIndex := Ini.ReadInteger('Email', 'IdeCharset', 15);
    edtEmailAssunto.Text := Ini.ReadString('Email', 'Assunto', '');
    StreamMemo := TMemoryStream.Create;
    Ini.ReadBinaryStream('Email', 'Mensagem', StreamMemo);
    mmEmailMsg.Lines.LoadFromStream(StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;
end;

function Tprincipal.Selecionou: Boolean;
begin
  SqlContas.First;
  SqlContas.Filter := 'Sel = 1';
  SqlContas.Filtered := True;
  Result := not SqlContas.IsEmpty;
  SqlContas.Filtered := False;
  SqlContas.Filter := '';
end;

function Tprincipal.zerarcodigo(codigo: string; Qtde: Integer): string;
begin
  while Length(codigo) < Qtde do
    codigo := '0' + codigo;
  result := codigo;
end;

procedure Tprincipal.AdvMetroButton3Click(Sender: TObject);
begin
  close;
end;

procedure Tprincipal.AjustaParametrosDeEnvio;
begin
  ACBrBoleto1.MAIL.From := edtFrom.text;
  ACBrBoleto1.MAIL.FromName := edtFromName.text;
  ACBrBoleto1.MAIL.Host := edtHost.text;
  ACBrBoleto1.MAIL.Username := edtUser.text;
  ACBrBoleto1.MAIL.Password := edtPassword.text;
  ACBrBoleto1.MAIL.Port := edtPort.text;
  ACBrBoleto1.MAIL.SetTLS := chkTLS.Checked;
  ACBrBoleto1.MAIL.SetSSL := chkSSL.Checked;
  ACBrBoleto1.MAIL.DefaultCharset := TMailCharset(cbbDefaultCharset.ItemIndex);
  ACBrBoleto1.MAIL.IDECharset := TMailCharset(cbbIdeCharSet.ItemIndex);
end;

procedure Tprincipal.bemailClick(Sender: TObject);
var
  Titulo : TACBrTitulo;
begin
  if edCta.Text = '' then begin
    ShowMessage('Informe a conta corrente!');
    Exit;
  end;
  if SqlContas.State = dsEdit then
    SqlContas.Post;
  if not(SqlContas.Active) and (SqlContas.RecordCount > 0) then begin
    MessageDlg('Não existe nenhum Boleto na listagem. Verifique!',mtWarning,[mbOK],0);
    Exit;
  end;
  try
    SqlContas.DisableControls;
    if not Selecionou then begin
      MessageDlg('Selecione pelo menos um Boleto. Verifique!',mtWarning,[mbOK],0);
      Exit;
    end;
    SqlContas.First;
    while not SqlContas.Eof do begin
      if (SqlContasSEL. AsInteger = 1) and  (Trim(SqlContasEMAIL.AsString) = '') then begin
        MessageDlg('Existe cliente selecionado para envio de e-mail sem endereço de e-mail definido no cadastro. Verifique!',mtWarning,[mbOK],0);
        Exit;
      end;
      SqlContas.Next;
    end;
    try
      conexao.StartTransaction;
      AjustaParametrosDeEnvio;
      SqlContas.First;
      while not SqlContas.Eof do begin
        if SqlContasSEL.AsInteger = 1 then begin
          Titulo := ACBrBoleto1.CriarTituloNaLista;
          with Titulo do begin
            Vencimento := sqlContasDATA_VENCIMENTO.AsDateTime;
            DataDocumento := sqlContasDATA_EMISSAO.AsDateTime;
            NumeroDocumento := sqlContasDOCUMENTO.AsString;
            EspecieDoc := SQLConfigESPECIE.AsString;
            if SQLConfigACEITE.AsString = 'SIM' then
              Aceite := atSim
            else
              Aceite := atNao;
            DataProcessamento := Now;
            Carteira := SQLConfigCARTEIRA.AsString;
            NossoNumero := SqlContasNOSSONUMERO.AsString;
            ValorDocumento := sqlContasVALOR_ORIGINAL.AsFloat;
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('select * from c000007');
            SQLAux.SQL.Add('where CODIGO ='+sqlContasCODCLIENTE.AsString);
            SQLAux.Open;
            Sacado.NomeSacado := SQLAux.FieldByName('nome').AsString;
            Sacado.CNPJCPF    := SQLAux.FieldByName('cpf').AsString;
            if SQLAux.FieldByName('tipo').AsInteger = 2 then
              Sacado.Pessoa := pJuridica
            else
              Sacado.Pessoa := pFisica;
            Sacado.Logradouro := SQLAux.FieldByName('endereco').AsString;
            Sacado.Numero     := SQLAux.FieldByName('numero').AsString;
            Sacado.Bairro     := SQLAux.FieldByName('bairro').AsString;
            Sacado.Cidade     := SQLAux.FieldByName('cidade').AsString;
            Sacado.UF         := SQLAux.FieldByName('uf').AsString;
            Sacado.CEP        := StringReplace(SQLAux.FieldByName('cep').AsString,'-','',[rfReplaceAll]);
            ValorAbatimento   := 0;
            LocalPagamento    := SQLConfigLOCAL_PAGTO.AsString;
            ValorMoraJuros    := 0;
            ValorDesconto     := 0;
            ValorAbatimento   := 0;
            DataMoraJuros     := 0;
            DataDesconto      := 0;
            DataAbatimento    := 0;
            DataProtesto      := sqlContasDATA_VENCIMENTO.AsDateTime + SQLConfigDIAS_PROTESTO.AsInteger;
            PercentualMulta   := 0;
            Mensagem.Text     := SQLConfigMENSAGEM.AsString;
            OcorrenciaOriginal.Tipo := toRemessaBaixar;
            Instrucao1        := trim(SQLConfigINSTRUCAO_1.AsString);
            Instrucao2        := trim(SQLConfigINSTRUCAO_2.AsString);
            Parcela           := 1;
            ACBrBoleto1.ChecarDadosObrigatorios;
            // grava o nosso numero na conta
            SQLAux.Close;
            SQLAux.SQL.Clear;
            SQLAux.SQL.Add('update c000049 set email_enviado = :pemail_enviado');
            SQLAux.SQL.Add('where CODIGO = :pIDConta');
            SQLAux.Params.ParamByName('pemail_enviado').AsInteger := 1;
            SQLAux.Params.ParamByName('pIDCOnta').AsString := sqlContasCODIGO.AsString;
            SQLAux.ExecSQL();
            SqlContas.Edit;
            SqlContasEMAIL_ENVIADO.AsInteger := 1;
            SqlContas.Post;
          end;
          ACBrBoleto1.EnviarEmail(SqlContasEMAIL.AsString,edtEmailAssunto.Text,mmEmailMsg.Lines,True);
          ACBrBoleto1.ListadeBoletos.Clear;
        end;
        SqlContas.Next;
      end;
      conexao.Commit;
      Application.MessageBox('Processo concluído!','Atenção!',MB_ICONINFORMATION);
    except
      on E : Exception do begin
        conexao.Rollback;
        Application.MessageBox(PWideChar('Erro ao Imprimir o(s) Boleto(s)!'+#13+e.Message),'Atenção!',MB_ICONERROR);
      end;
    end;
  finally
    SqlContas.EnableControls;
  end;
end;

end.

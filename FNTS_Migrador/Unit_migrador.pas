unit Unit_migrador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, ZAbstractConnection, ZConnection,
  QImport3Wizard, Vcl.Grids, Vcl.DBGrids, PageView, AdvGlowButton, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxLabel, cxDBLabel, Vcl.DBCtrls, Vcl.StdCtrls, System.StrUtils,
  dxBarBuiltInMenu, AdvMetroButton, cxPC, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, dxGDIPlusClasses,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, acPathDialog, Datasnap.DBClient,
  ACBrBase, ACBrDFe, ACBrNFe, W7Classes, W7ProgressBars, Datasnap.Provider,
  cxSplitter, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    QImport3Wizard_produto: TQImport3Wizard;
    ZConnection1: TZConnection;
    dsProduto: TDataSource;
    QImport3Wizard_clientes: TQImport3Wizard;
    QImport3Wizard_fornecedores: TQImport3Wizard;
    dsCliente: TDataSource;
    dsFornecedor: TDataSource;
    Panel5: TPanel;
    dsPagar: TDataSource;
    dsReceber: TDataSource;
    QImport3Wizard_cp: TQImport3Wizard;
    QImport3Wizard_cr: TQImport3Wizard;
    dbxProduto: TZQuery;
    dbxProdutoCODIGO: TWideStringField;
    dbxProdutoCODBARRA: TWideStringField;
    dbxProdutoPRODUTO: TWideStringField;
    dbxProdutoUNIDADE: TWideStringField;
    dbxProdutoDATA_CADASTRO: TDateField;
    dbxProdutoCODGRUPO: TWideStringField;
    dbxProdutoCODSUBGRUPO: TWideStringField;
    dbxProdutoCODFORNECEDOR: TWideStringField;
    dbxProdutoCODMARCA: TWideStringField;
    dbxProdutoDATA_ULTIMACOMPRA: TDateField;
    dbxProdutoNOTAFISCAL: TWideStringField;
    dbxProdutoPRECOCUSTO: TFloatField;
    dbxProdutoPRECOVENDA: TFloatField;
    dbxProdutoDATA_ULTIMAVENDA: TDateField;
    dbxProdutoESTOQUE: TFloatField;
    dbxProdutoESTOQUEMINIMO: TFloatField;
    dbxProdutoCODALIQUOTA: TWideStringField;
    dbxProdutoAPLICACAO: TWideMemoField;
    dbxProdutoLOCALICAZAO: TWideStringField;
    dbxProdutoPESO: TFloatField;
    dbxProdutoVALIDADE: TWideStringField;
    dbxProdutoCOMISSAO: TFloatField;
    dbxProdutoUSA_BALANCA: TIntegerField;
    dbxProdutoUSA_SERIAL: TIntegerField;
    dbxProdutoUSA_GRADE: TIntegerField;
    dbxProdutoCODRECEITA: TWideStringField;
    dbxProdutoFOTO: TWideStringField;
    dbxProdutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    dbxProdutoNOTAFISCAL_ANTERIOR: TWideStringField;
    dbxProdutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    dbxProdutoPRECOCUSTO_ANTERIOR: TFloatField;
    dbxProdutoPRECOVENDA_ANTERIOR: TFloatField;
    dbxProdutoCUSTOMEDIO: TFloatField;
    dbxProdutoAUTO_APLICACAO: TWideStringField;
    dbxProdutoAUTO_COMPLEMENTO: TWideStringField;
    dbxProdutoDATA_REMARCACAO_CUSTO: TDateField;
    dbxProdutoDATA_REMARCACAO_VENDA: TDateField;
    dbxProdutoPRECO_PROMOCAO: TFloatField;
    dbxProdutoDATA_PROMOCAO: TDateField;
    dbxProdutoFIM_PROMOCAO: TDateField;
    dbxProdutoCST: TWideStringField;
    dbxProdutoCLASSIFICACAO_FISCAL: TWideStringField;
    dbxProdutoNBM: TWideStringField;
    dbxProdutoNCM: TWideStringField;
    dbxProdutoALIQUOTA: TFloatField;
    dbxProdutoIPI: TFloatField;
    dbxProdutoREDUCAO: TFloatField;
    dbxProdutoQTDE_EMBALAGEM: TFloatField;
    dbxProdutoTIPO: TWideStringField;
    dbxProdutoPESO_LIQUIDO: TFloatField;
    dbxProdutoFARMACIA_CONTROLADO: TWideStringField;
    dbxProdutoFARMACIA_APRESENTACAO: TIntegerField;
    dbxProdutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    dbxProdutoFARMACIA_PMC: TFloatField;
    dbxProdutoULTIMA_ALTERACAO: TDateField;
    dbxProdutoULTIMA_CARGA: TDateField;
    dbxProdutoDATA_INVENTARIO: TDateField;
    dbxProdutoCUSTO_INVENTARIO: TFloatField;
    dbxProdutoESTOQUE_INVENTARIO: TFloatField;
    dbxProdutoESTOQUE_ANTERIOR: TFloatField;
    dbxProdutoPRECOVENDA_NOVO: TFloatField;
    dbxProdutoUSA_RENTABILIDADE: TIntegerField;
    dbxProdutoQUANTIDADE_MINIMA_FAB: TFloatField;
    dbxProdutoAPRESENTACAO: TWideStringField;
    dbxProdutoSITUACAO: TIntegerField;
    dbxProdutoPRECOVENDA1: TFloatField;
    dbxProdutoPRECOVENDA2: TFloatField;
    dbxProdutoPRECOVENDA3: TFloatField;
    dbxProdutoPRECOVENDA4: TFloatField;
    dbxProdutoPRECOVENDA5: TFloatField;
    dbxProdutoDESCONTO_PRECOVENDA: TFloatField;
    dbxProdutoDATA_INVENTARIO_ATUAL: TDateField;
    dbxProdutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    dbxProdutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    dbxProdutoMARGEM_MINIMA: TFloatField;
    dbxProdutoPISCOFINS: TWideStringField;
    dbxProdutoREFERENCIA_FORNECEDOR: TWideStringField;
    dbxProdutoCOMISSAO1: TFloatField;
    dbxProdutoMARGEM_DESCONTO: TFloatField;
    dbxProdutoTAMANHO: TWideStringField;
    dbxProdutoCOR: TWideStringField;
    dbxProdutoINCIDENCIA_PISCOFINS: TWideStringField;
    dbxProdutoVEIC_CHASSI: TWideStringField;
    dbxProdutoVEIC_SERIE: TWideStringField;
    dbxProdutoVEIC_POTENCIA: TWideStringField;
    dbxProdutoVEIC_PESO_LIQUIDO: TWideStringField;
    dbxProdutoVEIC_PESO_BRUTO: TWideStringField;
    dbxProdutoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    dbxProdutoVEIC_RENAVAM: TWideStringField;
    dbxProdutoVEIC_ANO_FABRICACAO: TIntegerField;
    dbxProdutoVEIC_ANO_MODELO: TIntegerField;
    dbxProdutoVEIC_TIPO: TWideStringField;
    dbxProdutoVEIC_TIPO_PINTURA: TWideStringField;
    dbxProdutoVEIC_COD_COR: TWideStringField;
    dbxProdutoVEIC_COR: TWideStringField;
    dbxProdutoVEIC_VIN: TWideStringField;
    dbxProdutoVEIC_NUMERO_MOTOR: TWideStringField;
    dbxProdutoVEIC_CMKG: TWideStringField;
    dbxProdutoVEIC_CM3: TWideStringField;
    dbxProdutoVEIC_DISTANCIA_EIXO: TWideStringField;
    dbxProdutoVEIC_COD_MARCA: TWideStringField;
    dbxProdutoVEIC_ESPECIE: TWideStringField;
    dbxProdutoVEIC_CONDICAO: TWideStringField;
    dbxProdutoLOTE_FABRICACAO: TWideStringField;
    dbxProdutoLOTE_VALIDADE: TDateField;
    dbxProdutoMARGEM_AGREGADA: TFloatField;
    dbxProdutoCODBARRA_NOVARTIS: TWideStringField;
    dbxProdutoFARMACIA_DCB: TWideStringField;
    dbxProdutoFARMACIA_ABCFARMA: TWideStringField;
    dbxProdutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    dbxProdutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    dbxProdutoULTIMA_COMPRA: TDateField;
    dbxProdutoFARMACIA_DATAVIGENCIA: TDateField;
    dbxProdutoFARMACIA_TIPO: TWideStringField;
    dbxProdutoUSA_COMBUSTIVEL: TWideStringField;
    dbxProdutoREFERENCIA: TWideStringField;
    dbxProdutoPERDA: TFloatField;
    dbxProdutoCOMPOSICAO1: TWideStringField;
    dbxProdutoCOMPOSICAO2: TWideStringField;
    dbxProdutoIAT: TWideStringField;
    dbxProdutoIPPT: TWideStringField;
    dbxProdutoSITUACAO_TRIBUTARIA: TWideStringField;
    dbxProdutoFLAG_SIS: TWideStringField;
    dbxProdutoFLAG_ACEITO: TWideStringField;
    dbxProdutoFLAG_EST: TWideStringField;
    dbxProdutoCSOSN: TWideStringField;
    dbxProdutoCODORIGINAL: TWideStringField;
    dbxProdutoCUSTO_ATACADO: TFloatField;
    dbxProdutoUNIDADE_ATACADO: TWideStringField;
    dbxProdutoQTDE_EMBALAGEMATACADO: TFloatField;
    dbxProdutoPMARGEM1: TFloatField;
    dbxProdutoPMARGEM2: TFloatField;
    dbxProdutoPMARGEM3: TFloatField;
    dbxProdutoPMARGEM4: TFloatField;
    dbxProdutoPMARGEM5: TFloatField;
    dbxProdutoPMARGEMATACADO1: TFloatField;
    dbxProdutoPMARGEMATACADO2: TFloatField;
    dbxProdutoPMARGEMATACADO3: TFloatField;
    dbxProdutoPMARGEMATACADO4: TFloatField;
    dbxProdutoPMARGEMATACADO5: TFloatField;
    dbxProdutoPMARGEMATACADO6: TFloatField;
    dbxProdutoPRECOATACADO1: TFloatField;
    dbxProdutoPRECOATACADO2: TFloatField;
    dbxProdutoPRECOATACADO3: TFloatField;
    dbxProdutoPRECOATACADO4: TFloatField;
    dbxProdutoPRECOATACADO5: TFloatField;
    dbxProdutoIND_CFOP: TWideStringField;
    dbxProdutoCFOP_DESC: TWideStringField;
    dbxProdutoUSA_LOTE: TIntegerField;
    dbxProdutoIND_CFOP_VENDA_DENTRO: TWideStringField;
    dbxProdutoCODCONTA: TWideStringField;
    dbxProdutoIND_CFOP_VENDA_FORA: TWideStringField;
    dbxProdutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    dbxProdutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    dbxProdutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    dbxProdutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    dbxProdutoUSA_TB_PC: TWideStringField;
    dbxProdutoATIVA: TWideStringField;
    dbxProdutoCEST: TWideStringField;
    dbxProdutoORIGEM: TIntegerField;
    dbxProdutoIND_CFOP_NFCE: TWideStringField;
    dbxCliente: TZQuery;
    dbxClienteCODIGO: TWideStringField;
    dbxClienteNOME: TWideStringField;
    dbxClienteAPELIDO: TWideStringField;
    dbxClienteENDERECO: TWideStringField;
    dbxClienteBAIRRO: TWideStringField;
    dbxClienteCIDADE: TWideStringField;
    dbxClienteUF: TWideStringField;
    dbxClienteCEP: TWideStringField;
    dbxClienteCOMPLEMENTO: TWideStringField;
    dbxClienteMORADIA: TIntegerField;
    dbxClienteTIPO: TIntegerField;
    dbxClienteSITUACAO: TIntegerField;
    dbxClienteTELEFONE1: TWideStringField;
    dbxClienteTELEFONE2: TWideStringField;
    dbxClienteTELEFONE3: TWideStringField;
    dbxClienteCELULAR: TWideStringField;
    dbxClienteEMAIL: TWideStringField;
    dbxClienteRG: TWideStringField;
    dbxClienteCPF: TWideStringField;
    dbxClienteFILIACAO: TWideStringField;
    dbxClienteESTADOCIVIL: TWideStringField;
    dbxClienteCONJUGE: TWideStringField;
    dbxClientePROFISSAO: TWideStringField;
    dbxClienteEMPRESA: TWideStringField;
    dbxClienteRENDA: TFloatField;
    dbxClienteLIMITE: TFloatField;
    dbxClienteREF1: TWideStringField;
    dbxClienteREF2: TWideStringField;
    dbxClienteCODVENDEDOR: TWideStringField;
    dbxClienteDATA_CADASTRO: TDateField;
    dbxClienteDATA_ULTIMACOMPRA: TDateField;
    dbxClienteOBS1: TWideStringField;
    dbxClienteOBS2: TWideStringField;
    dbxClienteOBS3: TWideStringField;
    dbxClienteOBS4: TWideStringField;
    dbxClienteOBS5: TWideStringField;
    dbxClienteOBS6: TWideStringField;
    dbxClienteNASCIMENTO: TWideStringField;
    dbxClienteCODREGIAO: TWideStringField;
    dbxClienteCODCONVENIO: TWideStringField;
    dbxClienteCODUSUARIO: TWideStringField;
    dbxClienteNUMERO: TWideStringField;
    dbxClienteRG_ORGAO: TWideStringField;
    dbxClienteRG_ESTADO: TWideStringField;
    dbxClienteRG_EMISSAO: TDateField;
    dbxClienteSEXO: TWideStringField;
    dbxClienteHISTORICO: TBlobField;
    dbxClientePREVISAO: TDateField;
    dbxClienteCNAE: TWideStringField;
    dbxClienteCOD_MUNICIPIO_IBGE: TWideStringField;
    dbxClienteIBGE: TWideStringField;
    dbxClienteTAMANHO_CALCA: TWideStringField;
    dbxClienteTAMANHO_BLUSA: TWideStringField;
    dbxClienteTAMANHO_SAPATO: TWideStringField;
    dbxClienteCORRESP_ENDERECO: TWideStringField;
    dbxClienteCORRESP_BAIRRO: TWideStringField;
    dbxClienteCORRESP_CIDADE: TWideStringField;
    dbxClienteCORRESP_UF: TWideStringField;
    dbxClienteCORRESP_CEP: TWideStringField;
    dbxClienteCORRESP_COMPLEMENTO: TWideStringField;
    dbxClienteRG_PRODUTOR: TWideStringField;
    dbxClienteRESP1_NOME: TWideStringField;
    dbxClienteRESP1_CPF: TWideStringField;
    dbxClienteRESP1_RG: TWideStringField;
    dbxClienteRESP1_PROFISSAO: TWideStringField;
    dbxClienteRESP1_ESTADO_CIVIL: TWideStringField;
    dbxClienteRESP1_ENDERECO: TWideStringField;
    dbxClienteRESP1_BAIRRO: TWideStringField;
    dbxClienteRESP1_CIDADE: TWideStringField;
    dbxClienteRESP1_UF: TWideStringField;
    dbxClienteRESP1_CEP: TWideStringField;
    dbxClienteRESP2_NOME: TWideStringField;
    dbxClienteRESP2_CPF: TWideStringField;
    dbxClienteRESP2_RG: TWideStringField;
    dbxClienteRESP2_PROFISSAO: TWideStringField;
    dbxClienteRESP2_ESTADO_CIVIL: TWideStringField;
    dbxClienteRESP2_ENDERECO: TWideStringField;
    dbxClienteRESP2_BAIRRO: TWideStringField;
    dbxClienteRESP2_CIDADE: TWideStringField;
    dbxClienteRESP2_UF: TWideStringField;
    dbxClienteRESP2_CEP: TWideStringField;
    dbxClienteFOTO: TWideStringField;
    dbxClienteCONDPGTO: TWideStringField;
    dbxFornecedor: TZQuery;
    dbxFornecedorCODIGO: TWideStringField;
    dbxFornecedorNOME: TWideStringField;
    dbxFornecedorFANTASIA: TWideStringField;
    dbxFornecedorENDERECO: TWideStringField;
    dbxFornecedorBAIRRO: TWideStringField;
    dbxFornecedorCIDADE: TWideStringField;
    dbxFornecedorUF: TWideStringField;
    dbxFornecedorCEP: TWideStringField;
    dbxFornecedorCOMPLEMENTO: TWideStringField;
    dbxFornecedorTELEFONE1: TWideStringField;
    dbxFornecedorTELEFONE2: TWideStringField;
    dbxFornecedorFAX: TWideStringField;
    dbxFornecedorCONTATO1: TWideStringField;
    dbxFornecedorCONTATO2: TWideStringField;
    dbxFornecedorCELULAR1: TWideStringField;
    dbxFornecedorCELULAR2: TWideStringField;
    dbxFornecedorEMAIL: TWideStringField;
    dbxFornecedorHOMEPAGE: TWideStringField;
    dbxFornecedorCNPJ: TWideStringField;
    dbxFornecedorIE: TWideStringField;
    dbxFornecedorBANCO: TWideStringField;
    dbxFornecedorAGENCIA: TWideStringField;
    dbxFornecedorCONTA: TWideStringField;
    dbxFornecedorOBS1: TWideStringField;
    dbxFornecedorOBS2: TWideStringField;
    dbxFornecedorOBS3: TWideStringField;
    dbxFornecedorDATA: TDateField;
    dbxFornecedorTIPO: TIntegerField;
    dbxFornecedorASSISTENCIA_TECNICA: TIntegerField;
    dbxFornecedorNUMERO: TWideStringField;
    dbxFornecedorIM: TWideStringField;
    dbxFornecedorREP_NOME: TWideStringField;
    dbxFornecedorREP_TELEFONE: TWideStringField;
    dbxFornecedorREP_ENDERECO: TWideStringField;
    dbxFornecedorREP_BAIRRO: TWideStringField;
    dbxFornecedorREP_COMPLEMENTO: TWideStringField;
    dbxFornecedorREP_CIDADE: TWideStringField;
    dbxFornecedorREP_UF: TWideStringField;
    dbxFornecedorREP_CEP: TWideStringField;
    dbxFornecedorREP_TELEFONE1: TWideStringField;
    dbxFornecedorREP_TELEFONE2: TWideStringField;
    dbxFornecedorREP_TELEFONE3: TWideStringField;
    dbxFornecedorREP_FAX: TWideStringField;
    dbxFornecedorREP_CNPJ: TWideStringField;
    dbxFornecedorREP_IE: TWideStringField;
    dbxFornecedorREP_HOME_PAGE: TWideStringField;
    dbxFornecedorREP_EMAIL: TWideStringField;
    dbxFornecedorCNAE: TWideStringField;
    dbxFornecedorCOD_MUNICIPIO_IBGE: TWideStringField;
    dbxFornecedorIBGE: TWideStringField;
    dbxReceber: TZQuery;
    dbxReceberCODIGO: TWideStringField;
    dbxReceberCODVENDA: TWideStringField;
    dbxReceberCODVENDEDOR: TWideStringField;
    dbxReceberCODCAIXA: TWideStringField;
    dbxReceberCODCLIENTE: TWideStringField;
    dbxReceberDATA_EMISSAO: TDateField;
    dbxReceberDATA_VENCIMENTO: TDateField;
    dbxReceberDATA_PAGAMENTO: TDateField;
    dbxReceberVALOR_ORIGINAL: TFloatField;
    dbxReceberVALOR_PAGO: TFloatField;
    dbxReceberVALOR_JUROS: TFloatField;
    dbxReceberVALOR_ATUAL: TFloatField;
    dbxReceberVALOR_DESCONTO: TFloatField;
    dbxReceberDOCUMENTO: TWideStringField;
    dbxReceberTIPO: TWideStringField;
    dbxReceberSITUACAO: TIntegerField;
    dbxReceberFILTRO: TIntegerField;
    dbxReceberNOSSONUMERO: TWideStringField;
    dbxReceberCODREGIAO: TWideStringField;
    dbxReceberCODCEDENTE: TWideStringField;
    dbxReceberP5: TFloatField;
    dbxReceberP3: TFloatField;
    dbxReceberNUMERO_CUPOM: TWideStringField;
    dbxReceberVALOR_VENDA: TFloatField;
    dbxReceberCOD_VENDA_ORIGINAL: TWideStringField;
    dbxReceberVALOR_ATUAL_ANTERIOR: TFloatField;
    dbxReceberEMAIL_ENVIADO: TIntegerField;
    dbxReceberHISTORICO: TWideStringField;
    dbxReceberINSTRUCAO: TWideStringField;
    dbxReceberDIRBOLETO: TWideStringField;
    dbxPagar: TZQuery;
    dbxPagarCODIGO: TWideStringField;
    dbxPagarDATA_EMISSAO: TDateField;
    dbxPagarDATA_VENCIMENTO: TDateField;
    dbxPagarDATA_PAGAMENTO: TDateField;
    dbxPagarCODCONTA: TWideStringField;
    dbxPagarCODFORNECEDOR: TWideStringField;
    dbxPagarVALOR: TFloatField;
    dbxPagarVALORPAGO: TFloatField;
    dbxPagarLIQUIDO: TFloatField;
    dbxPagarDESCONTO: TFloatField;
    dbxPagarACRESCIMO: TFloatField;
    dbxPagarDOCUMENTO: TWideStringField;
    dbxPagarNOTAFISCAL: TWideStringField;
    dbxPagarHISTORICO: TWideStringField;
    dbxPagarC: TWideStringField;
    dbxPagarE: TWideStringField;
    dbxPagarFILTRO: TIntegerField;
    dbxPagarESPECIE: TWideStringField;
    dbxPagarSITUACAO: TIntegerField;
    dbxPagarCODNOTA: TWideStringField;
    dbxPagarMOVIMENTO: TIntegerField;
    dbxPagarCODCAIXA: TWideStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel8: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    cxTabSheet2: TcxTabSheet;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    PageSheet2: TPageSheet;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    PageSheet3: TPageSheet;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    PageSheet4: TPageSheet;
    Panel6: TPanel;
    DBGrid4: TDBGrid;
    PageSheet5: TPageSheet;
    Panel7: TPanel;
    DBGrid5: TDBGrid;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton1: TAdvMetroButton;
    pnl1: TPanel;
    lbl4: TLabel;
    advglwbtn1: TAdvGlowButton;
    edt1: TEdit;
    cxPageControl2: TcxPageControl;
    cxtbshtXML: TcxTabSheet;
    mmoXML: TMemo;
    cxtbshtProduto: TcxTabSheet;
    dbgrdProduto: TDBGrid;
    cxtbshtCliente: TcxTabSheet;
    dbgrdCliente: TDBGrid;
    pnl2: TPanel;
    pbW7: TW7ProgressBar;
    advglwbtnbgravar: TAdvGlowButton;
    pnl6: TPanel;
    ACBrNFe: TACBrNFe;
    dsClienteTemp: TClientDataSet;
    dsClienteTempCODIGO: TStringField;
    dsClienteTempNOME: TStringField;
    dsClienteTempAPELIDO: TStringField;
    dsClienteTempENDERECO: TStringField;
    dsClienteTempBAIRRO: TStringField;
    dsClienteTempCIDADE: TStringField;
    dsClienteTempCEP: TStringField;
    dsClienteTempCOMPLEMENTO: TStringField;
    dsClienteTempTIPO: TIntegerField;
    dsClienteTempSITUACAO: TIntegerField;
    dsClienteTempTELEFONE1: TStringField;
    dsClienteTempCELULAR: TStringField;
    dsClienteTempUF: TStringField;
    dsClienteTempEMAIL: TStringField;
    dsClienteTempRG: TStringField;
    dsClienteTempCPF: TStringField;
    dsClienteTempDATA_CADASTRO: TDateField;
    dsClienteTempCODREGIAO: TStringField;
    dsClienteTempNUMERO: TStringField;
    dsClienteTempCNAE: TStringField;
    dsClienteTempCOD_MUNICIPIO_IBGE: TStringField;
    dsClienteTempIBGE: TStringField;
    dsClienteTempCPAIS: TStringField;
    dsClienteTempDPAIS: TStringField;
    dsProdutoTemp: TClientDataSet;
    dsProdutoTempCODIGO: TStringField;
    dsProdutoTempCODBARRA: TStringField;
    dsProdutoTempPRODUTO: TStringField;
    dsProdutoTempORIGEM: TIntegerField;
    dsProdutoTempPRECOCUSTO: TFloatField;
    dsProdutoTempPRECOVENDA: TFloatField;
    dsProdutoTempCST: TStringField;
    dsProdutoTempCSOSN: TStringField;
    dsProdutoTempALIQUOTA: TFloatField;
    dsProdutoTempSITUACAO_TRIBUTARIA: TStringField;
    dsProdutoTempNCM: TStringField;
    dsProdutoTempCLASSIFICACAO_FISCAL: TStringField;
    dsProdutoTempIND_CFOP_VENDA_DENTRO: TStringField;
    dsProdutoTempIND_CFOP_VENDA_FORA: TStringField;
    dsProdutoTempIND_CFOP_NFCE: TStringField;
    dsProdutoTempDATA_CADASTRO: TDateField;
    dsProdutoTempUNIDADE: TStringField;
    dsProdutoTempNOTAFISCAL: TStringField;
    dsProdutoTempESTOQUE: TFloatField;
    dsProdutoTempTIPO: TStringField;
    dsProdutoTempSITUACAO: TIntegerField;
    dsProdutoTempPISCOFINS: TStringField;
    dsProdutoTempIAT: TStringField;
    dsProdutoTempIPPT: TStringField;
    dsProdutoTempCEST: TStringField;
    dsetCliente: TDataSource;
    dsetProduto: TDataSource;
    sPathDialog: TsPathDialog;
    qry: TFDQuery;
    Conexao: TFDConnection;
    lbl2: TLabel;
    lbl3: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    mmo1: TMemo;
    lbl21: TLabel;
    pnl3: TPanel;
    lbl5: TLabel;
    edImpCli: TCheckBox;
    edImpSCOSN: TCheckBox;
    edImpST: TCheckBox;
    edImpCST: TCheckBox;
    edImpNCM: TCheckBox;
    edImpFor: TCheckBox;
    edImpPro: TCheckBox;
    edImpEst: TCheckBox;
    edImpPrecoCusto: TCheckBox;
    edImpPrecoVenda: TCheckBox;
    pnl4: TPanel;
    pnlConfig: TPanel;
    img1: TImage;
    Sequ: TFDQuery;
    edImpNfeSaida: TCheckBox;
    dbxNFE: TFDQuery;
    dsNFETemp: TClientDataSet;
    dsNFETempCODIGO: TStringField;
    dsNFETempNUMERO: TStringField;
    dsNFETempCFOP: TStringField;
    dsNFETempDATA: TDateField;
    dsNFETempCODCLIENTE: TStringField;
    dsNFETempVALOR_PRODUTOS: TBCDField;
    dsNFETempTOTAL_NOTA: TBCDField;
    dsNFETempBASE_CALCULO: TBCDField;
    dsNFETempVALOR_ICMS: TBCDField;
    dsNFETempBASE_SUB: TBCDField;
    dsNFETempICMS_SUB: TBCDField;
    dsNFETempFRETE: TBCDField;
    dsNFETempSEGURO: TBCDField;
    dsNFETempOUTRAS_DESPESAS: TBCDField;
    dsNFETempVALOR_TOTAL_IPI: TBCDField;
    dsNFETempITENS: TIntegerField;
    dsNFETempDESCONTO: TBCDField;
    dsNFETempCODTRANSPORTADOR: TStringField;
    dsNFETempFRETE_CONTA: TIntegerField;
    dsNFETempPLACA: TStringField;
    dsNFETempPLACA_UF: TStringField;
    dsNFETempVOL_QTDE: TBCDField;
    dsNFETempVOL_ESPECIE: TStringField;
    dsNFETempVOL_MARCA: TStringField;
    dsNFETempVOL_NUMERO: TStringField;
    dsNFETempPESO_LIQUIDO: TBCDField;
    dsNFETempPESO_BRUTO: TBCDField;
    dsNFETempSITUACAO: TIntegerField;
    dsNFETempMOTIVO: TStringField;
    dsNFETempFATURAMENTO_DATA1: TDateField;
    dsNFETempFATURAMENTO_DATA2: TDateField;
    dsNFETempFATURAMENTO_DATA3: TDateField;
    dsNFETempFATURAMENTO_DATA4: TDateField;
    dsNFETempFATURAMENTO_NUMERO1: TStringField;
    dsNFETempFATURAMENTO_NUMERO2: TStringField;
    dsNFETempFATURAMENTO_NUMERO3: TStringField;
    dsNFETempFATURAMENTO_NUMERO4: TStringField;
    dsNFETempFATURAMENTO_VALOR1: TBCDField;
    dsNFETempFATURAMENTO_VALOR2: TBCDField;
    dsNFETempFATURAMENTO_VALOR3: TBCDField;
    dsNFETempFATURAMENTO_VALOR4: TBCDField;
    dsNFETempCODFILIAL: TStringField;
    dsNFETempOBS1: TStringField;
    dsNFETempOBS2: TStringField;
    dsNFETempOBS3: TStringField;
    dsNFETempINF1: TStringField;
    dsNFETempINF2: TStringField;
    dsNFETempINF3: TStringField;
    dsNFETempINF4: TStringField;
    dsNFETempINF5: TStringField;
    dsNFETempDATA_SAIDA: TDateField;
    dsNFETempHORA: TStringField;
    dsNFETempSITUACAO_A: TStringField;
    dsNFETempMODELO_NF: TStringField;
    dsNFETempSERIE_NF: TStringField;
    dsNFETempVALOR_ISENTO_ICMS: TBCDField;
    dsNFETempALIQUOTA_ICMS: TBCDField;
    dsNFETempSIT: TStringField;
    dsNFETempCODLANCAMENTO: TStringField;
    dsNFETempMOVIMENTO: TStringField;
    dsNFETempBAIXA_ESTOQUE: TStringField;
    dsNFETempTIPO: TStringField;
    dsNFETempOS_COD1: TStringField;
    dsNFETempOS_COD2: TStringField;
    dsNFETempOS_COD3: TStringField;
    dsNFETempOS_COD4: TStringField;
    dsNFETempOS_COD5: TStringField;
    dsNFETempOS_COD6: TStringField;
    dsNFETempOS_SERV1: TStringField;
    dsNFETempOS_SERV2: TStringField;
    dsNFETempOS_SERV3: TStringField;
    dsNFETempOS_SERV4: TStringField;
    dsNFETempOS_SERV5: TStringField;
    dsNFETempOS_SERV6: TStringField;
    dsNFETempOS_COMP1: TStringField;
    dsNFETempOS_COMP2: TStringField;
    dsNFETempOS_COMP3: TStringField;
    dsNFETempOS_COMP4: TStringField;
    dsNFETempOS_COMP5: TStringField;
    dsNFETempOS_COMP6: TStringField;
    dsNFETempOS_QTDE1: TBCDField;
    dsNFETempOS_QTDE2: TBCDField;
    dsNFETempOS_QTDE3: TBCDField;
    dsNFETempOS_QTDE4: TBCDField;
    dsNFETempOS_QTDE5: TBCDField;
    dsNFETempOS_QTDE6: TBCDField;
    dsNFETempOS_UNIT1: TBCDField;
    dsNFETempOS_UNIT2: TBCDField;
    dsNFETempOS_UNIT3: TBCDField;
    dsNFETempOS_UNIT4: TBCDField;
    dsNFETempOS_UNIT5: TBCDField;
    dsNFETempOS_UNIT6: TBCDField;
    dsNFETempOS_TOTAL1: TBCDField;
    dsNFETempOS_TOTAL2: TBCDField;
    dsNFETempOS_TOTAL3: TBCDField;
    dsNFETempOS_TOTAL4: TBCDField;
    dsNFETempOS_TOTAL5: TBCDField;
    dsNFETempOS_TOTAL6: TBCDField;
    dsNFETempOS_ISS: TBCDField;
    dsNFETempOS_TOTAL_GERAL: TBCDField;
    dsNFETempOS_TOTAL_ISS: TBCDField;
    dsNFETempDESCONTO_ITEM: TBCDField;
    dsNFETempOBS4: TStringField;
    dsNFETempOBS5: TStringField;
    dsNFETempCODIGOMODELO: TStringField;
    dsNFETempCUSTO_VENDA: TStringField;
    dsNFETempFAT_FORMA_PGTO: TStringField;
    dsNFETempFAT_CONDI_PGTO: TStringField;
    dsNFETempFAT_QTDE_PRESTACAO: TIntegerField;
    dsNFETempFAT_GERAR_RECEBER: TIntegerField;
    dsNFETempFAT_GERAR_DUPLICATA: TIntegerField;
    dsNFETempPIS: TBCDField;
    dsNFETempCOFINS: TBCDField;
    dsNFETempFAT_TIPO: TIntegerField;
    dsNFETempCODVENDEDOR: TStringField;
    dsNFETempOPERACAO: TStringField;
    dsNFETempINTEGRACAO: TIntegerField;
    dsNFETempNFE_SITUACAO: TIntegerField;
    dsNFETempNFE_XML: TStringField;
    dsNFETempVAREJO_ATACADO: TStringField;
    dsNFETempINDUSTRIALIZACAO: TStringField;
    dsNFETempPERDA: TStringField;
    dsNFETempFATURAMENTO_DATA5: TDateField;
    dsNFETempFATURAMENTO_DATA6: TDateField;
    dsNFETempFATURAMENTO_NUMERO5: TStringField;
    dsNFETempFATURAMENTO_NUMERO6: TStringField;
    dsNFETempFATURAMENTO_VALOR5: TBCDField;
    dsNFETempFATURAMENTO_VALOR6: TBCDField;
    dsNFETempFATURAMENTO_DATA7: TDateField;
    dsNFETempFATURAMENTO_DATA8: TDateField;
    dsNFETempFATURAMENTO_DATA9: TDateField;
    dsNFETempFATURAMENTO_NUMERO7: TStringField;
    dsNFETempFATURAMENTO_NUMERO8: TStringField;
    dsNFETempFATURAMENTO_NUMERO9: TStringField;
    dsNFETempFATURAMENTO_VALOR7: TBCDField;
    dsNFETempFATURAMENTO_VALOR8: TBCDField;
    dsNFETempFATURAMENTO_VALOR9: TBCDField;
    dsNFETempCHAVE: TStringField;
    dsNFETempNATUREZA: TStringField;
    dsNFETempTIPO_FINALIDADE: TIntegerField;
    dsNFETempSEQEVENTO: TIntegerField;
    dsNFETempRET_VALOR_PIS: TBCDField;
    dsNFETempRET_VALOR_COFINS: TBCDField;
    dsNFETempRET_VALOR_CSLL: TBCDField;
    dsNFETempRET_VALOR_BC_IRRF: TBCDField;
    dsNFETempRET_VALOR_IRRF: TBCDField;
    dsNFETempRET_VALOR_BC_PREV_SOC: TBCDField;
    dsNFETempRET_VALOR_PREV_SOC: TBCDField;
    dsNFETempPRESENCA_COMPRADOR: TIntegerField;
    dsNFETempVFCP: TBCDField;
    dsNFETempVFCPST: TBCDField;
    dsNFETempVFCPSTRET: TBCDField;
    dsNFETempVIPIDEVOL: TBCDField;
    dsNFETempNOMECLIENTE: TStringField;
    dsItens: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    dbxItens: TFDQuery;
    dsItensCODNOTA: TStringField;
    dsItensCODPRODUTO: TStringField;
    dsItensQTDE: TBCDField;
    dsItensUNITARIO: TBCDField;
    dsItensTOTAL: TBCDField;
    dsItensIPI: TBCDField;
    dsItensICMS: TBCDField;
    dsItensCFOP: TStringField;
    dsItensCODGRADE: TStringField;
    dsItensSERIAL: TStringField;
    dsItensVALOR_IPI: TBCDField;
    dsItensCLASSIFICACAO_FISCAL: TStringField;
    dsItensCST: TStringField;
    dsItensVALOR_ICMS: TBCDField;
    dsItensICMS_REDUZIDO: TBCDField;
    dsItensBASE_CALCULO: TBCDField;
    dsItensMARGEM_AGREGADA: TBCDField;
    dsItensBASE_SUB: TBCDField;
    dsItensICMS_SUB: TBCDField;
    dsItensISENTO: TBCDField;
    dsItensCODLANCAMENTO: TStringField;
    dsItensDESCONTO: TBCDField;
    dsItensSUBTOTAL: TBCDField;
    dsItensPESO_BRUTO: TBCDField;
    dsItensPESO_LIQUIDO: TBCDField;
    dsItensITEM: TIntegerField;
    dsItensCODIGO: TStringField;
    dsItensGRADE: TStringField;
    dsItensOUTRAS: TBCDField;
    dsItensPIS_ALIQUOTA: TBCDField;
    dsItensPIS_BASE: TBCDField;
    dsItensPIS_VALOR: TBCDField;
    dsItensCOFINS_ALIQUOTA: TBCDField;
    dsItensCOFINS_BASE: TBCDField;
    dsItensCOFINS_VALOR: TBCDField;
    dsItensCODBARRA: TStringField;
    dsItensALTERA_ITEM: TIntegerField;
    dsItensCSOSN: TStringField;
    dsItensCOMPLEMENTO: TStringField;
    dsItensCEST: TStringField;
    dsItensORIGEM: TIntegerField;
    dsItensPFCP: TBCDField;
    dsItensVBCFCP: TBCDField;
    dsItensVFCP: TBCDField;
    dsItensVBCFCPST: TBCDField;
    dsItensPFCPST: TBCDField;
    dsItensVFCPST: TBCDField;
    dsItensPFCPSTRET: TBCDField;
    dsItensVFCPSTRET: TBCDField;
    dsItensPST: TBCDField;
    cxTabSheet3: TcxTabSheet;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    cxSplitter1: TcxSplitter;
    dtNfeTemp: TDataSource;
    dtItem: TDataSource;
    dsItensDESPRODUTO: TStringField;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure advglwbtn1Click(Sender: TObject);
    procedure advglwbtnbperiodicoClick(Sender: TObject);
    procedure advglwbtnbgravarClick(Sender: TObject);
    procedure dsNFETempAfterScroll(DataSet: TDataSet);
    procedure edImpCliClick(Sender: TObject);
    procedure edImpProClick(Sender: TObject);
    procedure edImpNfeSaidaClick(Sender: TObject);
    procedure edImpPrecoCustoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ConValor(valor : real; casas : integer = 2; bRetiraPonto : Boolean = False) : string;
  end;

var
  Form1: TForm1;
  Diretorio: string;

implementation

uses UThreadListar, UThreadGravar;

{$R *.dfm}

procedure TForm1.AdvGlowButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
  dbxProduto.Open;
  QImport3Wizard_produto.Execute;
end;

procedure TForm1.AdvGlowButton2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  dbxCliente.Open;
  QImport3Wizard_clientes.Execute;
end;

procedure TForm1.AdvGlowButton3Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
  dbxFornecedor.Open;
  QImport3Wizard_fornecedores.Execute;
end;

procedure TForm1.AdvGlowButton4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
  dbxPagar.Open;
  QImport3Wizard_cp.Execute;
end;

procedure TForm1.AdvGlowButton5Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 4;
  dbxReceber.Open;
  QImport3Wizard_cr.Execute;
end;

procedure TForm1.advglwbtn1Click(Sender: TObject);
var
  Thread: ThreadListar;
begin
  //Buscar Caminho Onde se Localizam os XML's
  if sPathDialog.Execute then begin
    edt1.Text := sPathDialog.Path;
    Diretorio := sPathDialog.Path;
    mmo1.Lines.Add('Diretorio carregado com sucesso....');
    pnlConfig.Visible := True;
        mmo1.Lines.Add('1');
    dsClienteTemp.CreateDataSet;
        mmo1.Lines.Add('2');
    dsProdutoTemp.CreateDataSet;
        mmo1.Lines.Add('3');
    dsNFETemp.CreateDataSet;
        mmo1.Lines.Add('4');
    dsItens.CreateDataSet;
        mmo1.Lines.Add('5');
    dsItens.Filtered := True;
        mmo1.Lines.Add('6');
    Thread  :=  ThreadListar.Create(False);
        mmo1.Lines.Add('7');
    Thread.Resume;
        mmo1.Lines.Add('8');
  end;
end;

procedure TForm1.advglwbtnbgravarClick(Sender: TObject);
var
  Thread: ThreadGravar;
begin
  //Chamar a Thread para Listar
  if (dsProdutoTemp.IsEmpty = True) then begin
    Application.MessageBox('Tabela de Produtos ou Cliente Encontra-se Vazia!', 'SystemLogic', MB_OK+MB_ICONWARNING);
    Abort;
  end else begin
    Thread  :=  ThreadGravar.Create(False);
    Thread.Resume;
    mmo1.Lines.Add('Preparando Tabelas Temporarias para Leitura...');
  end;
end;

procedure TForm1.advglwbtnbperiodicoClick(Sender: TObject);
begin
  //Chamar a Thread para Listar
end;

procedure TForm1.AdvMetroButton1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.AdvMetroButton2Click(Sender: TObject);
begin
  Close;
end;

function TForm1.ConValor(valor : real; casas : integer = 2; bRetiraPonto : Boolean = False) : string;
var
  sValor : String;
  function ConvertFloat(str : String) : String;
  var
    i: Integer;
  begin
    Result := '';
    for i := 1 to Length (str) do begin
      if str[i] = FormatSettings.ThousandSeparator then
        str[i] := ' '
      else if str[i] = FormatSettings.DecimalSeparator then
        str[i] := '.';
      Result := Result + Trim(Copy(Str,i,1));
    end;
  end;
  function RemovePonto(str : String) : String;
  var
    i: Integer;
  begin
    Result := '';
    for i := 1 to Length ( str ) do begin
      if str[i] = FormatSettings.ThousandSeparator then
        str[i] := ' ';
      Result := Result + Trim(Copy(Str,i,1));
    end;
  end;

begin
  if casas = -1 then
    Result := StringReplace(FloatToStr(valor), ',', '.', [rfReplaceAll])
  else begin
    sValor := ConvertFloat(RemovePonto(FormatFloat('0.' + DupeString('0', Casas), Valor)));
    if bRetiraPonto = True then
      Delete(sValor, Pos('.', sValor), 1);
    Result := sValor;
  end;
end;


procedure TForm1.dsNFETempAfterScroll(DataSet: TDataSet);
begin
  dsItens.Filter := 'CODNOTA='+QuotedStr(dsNFETempCODIGO.AsString);
end;

procedure TForm1.edImpCliClick(Sender: TObject);
begin
  if not edImpCli.Checked then
    edImpNfeSaida.Checked := False;
end;

procedure TForm1.edImpNfeSaidaClick(Sender: TObject);
begin
  if edImpNfeSaida.Checked then begin
    edImpCli.Checked := True;
    edImpPro.Checked := True;
  end;
end;

procedure TForm1.edImpPrecoCustoClick(Sender: TObject);
begin
  if TCheckBox(Sender).Checked then
    edImpPro.Checked := True;
end;

procedure TForm1.edImpProClick(Sender: TObject);
begin
  if not edImpPro.Checked then begin
    edImpNfeSaida.Checked := False;
    edImpPrecoCusto.Checked := False;
    edImpPrecoVenda.Checked := False;
    edImpSCOSN.Checked := False;
    edImpST.Checked := False;
    edImpNCM.Checked := False;
    edImpEst.Checked := False;
    edImpCST.Checked := False;
  end;
end;

end.

unit Modulo;

interface

uses
  Forms, SysUtils, Classes, DB, MemDS, DBAccess, ACBrBase, ACBrBAL,
  IniFiles,
  Datasnap.DBClient, UniProvider, InterBaseUniProvider, Uni;

type
  TfrmModulo = class(TDataModule)
    Balanca: TACBrBAL;
    Conexao: TUniConnection;
    query: TUniQuery;
    st_Mesa_Abertura: TUniStoredProc;
    st_consumo: TUniStoredProc;
    InterBaseUniProvider1: TInterBaseUniProvider;
    qrFilial: TUniQuery;
    qrFilialCODIGO: TStringField;
    qrFilialFILIAL: TStringField;
    qrFilialNOTAFISCAL: TIntegerField;
    qrFilialENDERECO: TStringField;
    qrFilialCIDADE: TStringField;
    qrFilialUF: TStringField;
    qrFilialCEP: TStringField;
    qrFilialTELEFONE: TStringField;
    qrFilialCNPJ: TStringField;
    qrFilialIE: TStringField;
    qrFilialSEQNF: TIntegerField;
    qrFilialFAX: TStringField;
    qrFilialOBS1: TStringField;
    qrFilialOBS2: TStringField;
    qrFilialCONTRIBUINTE_IPI: TStringField;
    qrFilialSUBSTITUTO_TRIBUTARIO: TStringField;
    qrFilialEMPRESA_ESTADUAL: TStringField;
    qrFilialOPTANTE_SIMPLES: TStringField;
    qrFilialOPTANTE_SUPER_SIMPLES: TStringField;
    qrFilialECF: TStringField;
    qrFilialTIPO: TIntegerField;
    qrFilialIPI: TFloatField;
    qrFilialISS: TFloatField;
    qrFilialNUMERO: TStringField;
    qrFilialRESPONSAVEL: TStringField;
    qrFilialCOMPLEMENTO: TStringField;
    qrFilialBAIRRO: TStringField;
    qrFilialFARMACIA_RESP_TECNICO: TStringField;
    qrFilialFARMACIA_CRF: TStringField;
    qrFilialFARMACIA_CPF: TStringField;
    qrFilialFARMCIA_DATA: TDateTimeField;
    qrFilialFARMACIA_UF: TStringField;
    qrFilialFARMACIA_SENHA: TStringField;
    qrFilialFARMACIA_EMAIL: TStringField;
    qrFilialFARMACIA_LOGIN: TStringField;
    qrFilialFARMACIA_ENVIO: TStringField;
    qrFilialCONHECIMENTO: TIntegerField;
    qrFilialINDUSTRIA: TStringField;
    qrFilialFARMACIA_NUMEROLICENCA: TStringField;
    qrFilialCOD_MUNICIPIO_IBGE: TStringField;
    qrFilialIBGE: TStringField;
    qrFilialPIS: TFloatField;
    qrFilialCOFINS: TFloatField;
    qrFilialEMAIL: TStringField;
    qrFilialATIVIDADE: TStringField;
    qrFilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    qrFilialCONTADOR_NOME: TStringField;
    qrFilialCONTADOR_CPF: TStringField;
    qrFilialCONTADOR_CRC: TStringField;
    qrFilialCONTADOR_CNPJ: TStringField;
    qrFilialCONTADOR_CEP: TStringField;
    qrFilialCONTADOR_ENDERECO: TStringField;
    qrFilialCONTADOR_NUMERO: TStringField;
    qrFilialCONTADOR_COMPLEMENTO: TStringField;
    qrFilialCONTADOR_BAIRRO: TStringField;
    qrFilialCONTADOR_FONE: TStringField;
    qrFilialCONTADOR_FAX: TStringField;
    qrFilialCONTADOR_EMAIL: TStringField;
    qrFilialINSC_MUNICIPAL: TStringField;
    qrFilialDATA_ABERTURA: TDateTimeField;
    qrFilialCNAE: TStringField;
    qrFilialCRT: TStringField;
    qrFilialCONTADOR_CIDADE: TStringField;
    qrFilialCONTADOR_COD_MUNICIPIO: TStringField;
    qrFilialCONTADOR_UF: TStringField;
    qrFilialPERMITE_CREDITO: TIntegerField;
    qrFilialFANTASIA: TStringField;
    qrFilialDFIXAS: TFloatField;
    qrFilialTIPOCALCULO: TIntegerField;
    qrFilialSERIE_CTE: TStringField;
    qrFilialSEQ_CTE: TStringField;
    qrFilialCOD_PAIS: TStringField;
    qrFilialPAIS: TStringField;
    qrConfig: TUniQuery;
    qrConfigCODIGO: TStringField;
    qrConfigULTIMO_BACKUP: TDateField;
    qrConfigPAPEL_PAREDE: TStringField;
    qrConfigAVISO_CONTAS_PAGAR: TIntegerField;
    qrConfigAVISO_CHEQUE: TIntegerField;
    qrConfigESTOQUE_NEGATIVO: TIntegerField;
    qrConfigCASAS_DECIMAIS_QTDE: TIntegerField;
    qrConfigCASAS_DECIMAIS_VALOR: TIntegerField;
    qrConfigVENDA_CADASTRO_CHEQUE: TIntegerField;
    qrConfigVENDA_CADASTRO_CARTAO: TIntegerField;
    qrConfigVENDA_TIPONOTA: TIntegerField;
    qrConfigVENDA_QTDE_VIAS_NOTA: TIntegerField;
    qrConfigVENDA_PORTA_IMPRESSORA: TStringField;
    qrConfigVENDA_TIPO_IMPRESSORA: TIntegerField;
    qrConfigVENDA_LIMITE_CLIENTE: TIntegerField;
    qrConfigOS_TIPONOTA: TIntegerField;
    qrConfigOS_QTDE_VIAS_NOTA: TIntegerField;
    qrConfigOS_PORTA_IMPRESSORA: TStringField;
    qrConfigOS_TIPO_IMPRESSORA: TIntegerField;
    qrConfigORCAMENTO_TIPONOTA: TIntegerField;
    qrConfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField;
    qrConfigORCAMENTO_PORTA_IMPRESSORA: TStringField;
    qrConfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField;
    qrConfigCONTASRECEBER_CARENCIA: TIntegerField;
    qrConfigCONTASRECEBER_TAXAJUROS: TFloatField;
    qrConfigCONTASRECEBER_MULTA: TFloatField;
    qrConfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField;
    qrConfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField;
    qrConfigECF_MODELO: TStringField;
    qrConfigECF_PORTA: TStringField;
    qrConfigECF_TEF: TIntegerField;
    qrConfigECF_TIPO: TStringField;
    qrConfigBALANCAPDV_MODELO: TStringField;
    qrConfigBALANCAPDV_PORTA: TStringField;
    qrConfigIMPRESSORACHEQUE_MODELO: TStringField;
    qrConfigIMPRESSORACHEQUE_PORTA: TStringField;
    qrConfigBALANCA_MODELO: TStringField;
    qrConfigIMPRESSORABARRAS_MODELO: TStringField;
    qrConfigBALANCA_CAMINHO: TStringField;
    qrConfigCADASTRO_PRODUTO: TStringField;
    qrConfigRAMO_ATIVIDADE: TIntegerField;
    qrConfigEXTRATO_TIPONOTA: TIntegerField;
    qrConfigBOBINA_SUBIRPAPEL: TIntegerField;
    qrConfigCLASSIFICACAO: TStringField;
    qrConfigBOLETO_FORMAPGTO: TStringField;
    qrConfigPLANO_VENDA_AV: TStringField;
    qrConfigPLANO_VENDA_AP: TStringField;
    qrConfigPLANO_OS_AV: TStringField;
    qrConfigPLANO_OS_AP: TStringField;
    qrConfigPLANO_OUTRAS_ENTRADAS: TStringField;
    qrConfigPLANO_OUTRAS_SAIDAS: TStringField;
    qrConfigPLANO_RECEBTO_CREDIARIO: TStringField;
    qrConfigNF_ITENS_PAGINA: TIntegerField;
    qrConfigNF_ITENS_TRANSPORTE: TIntegerField;
    qrConfigNF_LINHA_TRANSPORTE: TIntegerField;
    qrConfigNF_SALTO_PAGINA: TIntegerField;
    qrConfigNF_TIPO: TIntegerField;
    qrConfigNF_IMPRESSORA: TStringField;
    qrConfigVENDA_FECHAMENTO_CAIXA: TIntegerField;
    qrConfigDESCONTO_AVISTA: TFloatField;
    qrConfigDESCONTO_PRODUTO: TFloatField;
    qrConfigDESCONTO_TOTALNOTA: TFloatField;
    qrConfigTIPO_VENDA: TStringField;
    qrConfigVENDA_ALTERAR_PRECO: TIntegerField;
    qrConfigNF_LINHA_SUBTOTAL: TIntegerField;
    qrConfigNF_LINHA_TOTAL: TIntegerField;
    qrConfigECF_CAIXA: TStringField;
    qrConfigECF_SERIAL: TStringField;
    qrConfigFARMACIA_ENVIO: TStringField;
    qrConfigFARMACIA_RESPOSTA: TStringField;
    qrConfigFARMACIA_ENVIO_RESPOSTA: TStringField;
    qrConfigFARMACIA_LOGIN: TStringField;
    qrConfigFARMACIA_SENHA: TStringField;
    qrConfigULTIMA_CARGA: TDateField;
    qrConfigIMPRIME_CUPOM_VINCULADO: TIntegerField;
    qrConfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField;
    qrConfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField;
    qrConfigIMPRIME_DUPLICATA: TIntegerField;
    qrConfigCONTASRECEBER_BLOQUEIO: TIntegerField;
    qrConfigRECIBO_TIPONOTA: TIntegerField;
    qrConfigNR_CONTROLE_ECF: TStringField;
    qrConfigBALANCA_PROGRAMA: TStringField;
    qrConfigTIPO_DUPLICATA: TStringField;
    qrConfigCONCILIA_VENDA: TIntegerField;
    qrConfigCONTROLA_ENTREGA: TIntegerField;
    qrConfigENTREGA_IMPRESSAO: TIntegerField;
    qrConfigENTREGA_VIAS: TIntegerField;
    qrConfigCONDICIONAL: TIntegerField;
    qrConfigCONDICIONAL_PRAZO: TIntegerField;
    qrConfigVS_ATIVAR: TIntegerField;
    qrConfigVS_DINHEIRO: TIntegerField;
    qrConfigVS_CHEQUEAV: TIntegerField;
    qrConfigVS_CHEQUEAP: TIntegerField;
    qrConfigVS_CARTRAOCRED: TIntegerField;
    qrConfigVS_CARTAODEB: TIntegerField;
    qrConfigVS_CREDIARIO: TIntegerField;
    qrConfigVS_CLIENTE_VISTA: TStringField;
    qrConfigVS_CAIXA: TIntegerField;
    qrConfigVS_RELATORIO: TIntegerField;
    qrConfigVS_VIAS: TIntegerField;
    qrConfigVS_VISUALIZAR: TIntegerField;
    qrConfigCONDICIONAL_MODELO: TIntegerField;
    qrConfigALTERAR_UNITARIO: TIntegerField;
    qrConfigCONTASRECEBER_VALORJUROS: TFloatField;
    qrConfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField;
    qrConfigPLANO_DUPLICATA_NFE: TStringField;
    qrConfigVAREJO_ATACADO: TIntegerField;
    qrConfigVISUALIZA_MENSAGEM: TIntegerField;
    qrConfigSERIAL_REPETIDO: TIntegerField;
    qrConfigOCULTAR_CUSTO: TIntegerField;
    qrConfigOCULTAR_PRODUTO_INATIVO: TIntegerField;
    qrConfigOCULTAR_CLIENTE_INATIVO: TIntegerField;
    qrConfigOBS_FARMA: TIntegerField;
    qrConfigOBS_FARMA_TEXTO: TStringField;
    qrConfigCUSTO_MAIOR_VENDA: TIntegerField;
    qrConfigVENDER_ABAIXO_CUSTO: TIntegerField;
    qrConfigNF_GERAR_RECEBER: TIntegerField;
    qrConfigNF_CODIGOBARRA_NFE: TIntegerField;
    qrConfigNF_GRADE_NFE: TIntegerField;
    qrConfigNF_SERIAL_NFE: TIntegerField;
    qrConfigNF_REFERENCIA_NFE: TIntegerField;
    qrConfigNF_GERAR_DUPLICATA: TIntegerField;
    qrConfigVALE_CAIXA: TIntegerField;
    qrConfigCONTAS_RECEBER_BLOQUEIO: TIntegerField;
    qrConfigCUPOM_IMPRIMIR_CODIGO: TIntegerField;
    qrConfigCLIENTE_PEDE_CPF: TIntegerField;
    qrConfigVERIFICA_COD_BARRA: TIntegerField;
    qrConfigVERIFICA_NOME_PRODUTO: TIntegerField;
    qrConfigVS_FRETE: TIntegerField;
    qrConfigINVENTARIO_AUTOMATICO: TIntegerField;
    qrConfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField;
    qrConfigETIQUETA_07: TIntegerField;
    qrConfigETIQUETA_07_1: TIntegerField;
    qrConfigETIQUETA_07_2: TIntegerField;
    qrConfigEMAIL_SERVIDOR_SMTP: TStringField;
    qrConfigEMAIL_PORTA: TStringField;
    qrConfigEMAIL_USUARIO: TStringField;
    qrConfigEMAIL_SENHA: TStringField;
    qrConfigEMAIL_ASSUNTO: TStringField;
    qrConfigEMAIL_EXIGE_CONEXAO: TIntegerField;
    qrConfigEMAIL_MENSAGEM: TBlobField;
    qrConfigINESTRA: TIntegerField;
    qrConfigFARMACIA_INVENTARIO_FECHA: TIntegerField;
    qrConfigFARMACIA_ENVIO_NOVARTIS: TStringField;
    qrConfigFARMACIA_RESPOSTA_NOVARTIS: TStringField;
    qrConfigFARMACIA_INVENTARIO_CONFIRMA: TStringField;
    qrConfigFARMACIA_INVENTARIO_DATA: TDateField;
    qrConfigCALCULA_ISENTAS_OUTRAS: TIntegerField;
    qrConfigUSA_RENTABILIDADE: TIntegerField;
    qrConfigUSA_PRODUTOR_RURAL: TIntegerField;
    qrConfigIND_CLIE_ENTRADA: TStringField;
    qrConfigIND_CFOP_ENTRADA: TStringField;
    qrConfigIND_CLIE_SAIDA: TStringField;
    qrConfigIND_CFOP_SAIDA: TStringField;
    qrConfigIND_CLIE_PERDA: TStringField;
    qrConfigIND_CFOP_PERDA: TStringField;
    qrConfigIND_MOSTRA_COMPOSICAO: TIntegerField;
    qrConfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField;
    qrConfigCOR_COMERCIO: TStringField;
    qrConfigLOGO_COMERCIO: TStringField;
    qrConfigCOR_FARMACIA: TStringField;
    qrConfigLOGO_FARMACIA: TStringField;
    qrConfigCOR_PECAS: TStringField;
    qrConfigLOGO_PECAS: TStringField;
    qrConfigCOR_MERCADO: TStringField;
    qrConfigLOGO_MERCADO: TStringField;
    qrConfigCOR_POSTO: TStringField;
    qrConfigLOGO_POSTO: TStringField;
    qrConfigIND_CLIE_ENTRADA_DESC: TStringField;
    qrConfigIND_CFOP_ENTRADA_DESC: TStringField;
    qrConfigIND_CLIE_SAIDA_DESC: TStringField;
    qrConfigIND_CFOP_SAIDA_DESC: TStringField;
    qrConfigIND_CLIE_PERDA_DESC: TStringField;
    qrConfigIND_CFOP_PERDA_DESC: TStringField;
    qrConfigIND_CFOP_VENDA_DENTRO: TStringField;
    qrConfigIND_CFOP_VENDA_FORA: TStringField;
    qrConfigIND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    qrConfigIND_CFOP_DEVOLUCAO_FORA: TStringField;
    qrConfigIND_CFOP_SERVICO_DENTRO: TStringField;
    qrConfigIND_CFOP_SERVICO_FORA: TStringField;
    qrConfigCFOP_VENDA_DENTRO_DESC: TStringField;
    qrConfigCFOP_VENDA_FORA_DESC: TStringField;
    qrConfigCFOP_DEVOLUCAO_DENTRO_DESC: TStringField;
    qrConfigCFOP_DEVOLUCAO_FORA_DESC: TStringField;
    qrConfigCFOP_SERVICO_DENTRO_DESC: TStringField;
    qrConfigCFOP_SERVICO_FORA_DESC: TStringField;
    qrConfigTIPO_NF: TIntegerField;
    qrConfigCOR_ESTOQUE_POSITIVO: TStringField;
    qrConfigCOR_ESTOQUE_NEGATIVO: TStringField;
    qrConfigCOR_ESTOQUE_ZERADO: TStringField;
    qrConfigTIPO_PESQUISA: TIntegerField;
    qrConfigECF_CONCOMITANTE: TIntegerField;
    qrConfigPLANO_PAGTO_FORN: TStringField;
    qrConfigHAB_PREVENDA: TIntegerField;
    qrConfigCODCLIENTEAV: TStringField;
    qrConfigCODCLIENTEMODELO: TStringField;
    qrConfigCODPRODUTOMODELO: TStringField;
    qrConfigCODFORNECEDORMODELO: TStringField;
    qrConfigUSA_CAIXA_DIARIO: TIntegerField;
    qrConfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField;
    qrConfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField;
    qrConfigVERSAOBD: TStringField;
    qrConfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField;
    qrConfigTEXTO_PADRAO_VENDA: TStringField;
    qrConfigTEXTO_PADRAO_DEVOLUCAO: TStringField;
    qrConfigTEXTO_PADRAO_GARANTIA: TStringField;
    qrConfigAVISA_ESTOQUE_MINIMO: TIntegerField;
    qrConfigATENDIMENTOIMPRESSAO: TStringField;
    qrConfigATENDIMENTOVIAS: TIntegerField;
    qrConfigATENDIMENTOFICHA: TStringField;
    qrConfigATENDIMENTOIMPRESSORA: TStringField;
    qrConfigATENDIMENTOIMPRESMODELO: TIntegerField;
    qrConfigPERMITE_PROD_PRECO_ZERO: TStringField;
    qrConfigACRESCIMO_PRODUTO: TFloatField;
    qrConfigNAO_SOL_SENHA_MOV_ESTOQUE: TStringField;
    qrConfigCARTA_COBRANCA_TEXTO: TBlobField;
    qrConfigCOBRA_COUVER: TStringField;
    qrConfigVALOR_COUVER: TFloatField;
    qrConfigCOBRA_COMISSAO: TStringField;
    qrConfigCOMISSAO_PERCENTUAL: TFloatField;
    procedure BalancaLePeso(Peso: Double; Resposta: String);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
  Evento, mesa: string;
    { Public declarations }
    Function LerIni(Arq, Secao, Ident: String; Def: String): String;

  end;

var
  frmModulo: TfrmModulo;
  iBal_time: integer; // configuracao de time out da balanca
  sBal_Resposta: string; // resposta da balanca
  rBal_peso: real; // peso lido na balanca


implementation

{$R *.dfm}

procedure TfrmModulo.BalancaLePeso(Peso: Double; Resposta: String);
begin
  // Buscar o Peso nas balancas PDV's
  if Peso > 0 then
  begin
    // Leitura OK
    sBal_Resposta := 'Peso Estável';
    rBal_peso := Peso;
  end
  else
  begin
    // Leitura retornou ERRo
    case Trunc(Balanca.UltimoPesoLido) of
      0:
        sBal_Resposta := 'Coloque o produto sobre a Balança!';
      -1:
        sBal_Resposta := 'Peso Instavel!';
      -2:
        sBal_Resposta := 'Peso Negativo!';
      -10:
        sBal_Resposta := 'Sobrepeso!';
    end;
    rBal_peso := 0;
  end;
end;

procedure TfrmModulo.DataModuleCreate(Sender: TObject);
var
  sBanco: string;
begin
  sBanco := LerIni(ExtractFilePath(Application.ExeName) + 'cfg\dados.ini',
    'Ciclos', 'ed_server', 'localhost') + ':' +
    LerIni(ExtractFilePath(Application.ExeName) + 'cfg\dados.ini', 'Ciclos',
    'ed_base', 'C:\TALOS\Server\BD\BASE.FDB');

  Conexao.Database := sBanco;

  //Conexao.Connected := True;
end;

function TfrmModulo.LerIni(Arq, Secao, Ident, Def: String): String;
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create(Arq);
  Result := Ini.ReadString(Secao, Ident, Def);
  Ini.Free;

end;

end.

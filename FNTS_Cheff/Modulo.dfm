object frmModulo: TfrmModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 318
  Width = 480
  object Balanca: TACBrBAL
    Porta = 'COM1'
    Left = 48
    Top = 152
  end
  object Conexao: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\TALOS\Server\BD\base.fdb'
    Username = 'sysdba'
    Server = 'localhost'
    LoginPrompt = False
    Left = 32
    Top = 32
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object query: TUniQuery
    Connection = Conexao
    Left = 120
    Top = 32
  end
  object st_Mesa_Abertura: TUniStoredProc
    StoredProcName = 'ST_LANCTO_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_LANCTO_INSERT(:CODIGO, :DATA, :HORA, :COD_F' +
        'UNCIONARIO, :PERGUNTOU_COMISSAO, :CLIENTE_AUTORIZOU)')
    Connection = Conexao
    Left = 240
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'HORA'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COD_FUNCIONARIO'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PERGUNTOU_COMISSAO'
        ParamType = ptInput
        Size = 1
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CLIENTE_AUTORIZOU'
        ParamType = ptInput
        Size = 1
        Value = nil
      end>
    CommandStoredProcName = 'ST_LANCTO_INSERT'
  end
  object st_consumo: TUniStoredProc
    StoredProcName = 'ST_LANCTO_CONSUMO'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_LANCTO_CONSUMO(:COD_PRODUTO, :COD_MESA, :QT' +
        'DE, :UNITARIO, :TOTAL, :EXTRA)')
    Connection = Conexao
    Left = 336
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'COD_PRODUTO'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_MESA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'UNITARIO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'TOTAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBlob
        Name = 'EXTRA'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'ST_LANCTO_CONSUMO'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 368
    Top = 184
  end
  object qrFilial: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000004')
    Left = 56
    Top = 240
    object qrFilialCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrFilialFILIAL: TStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrFilialNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qrFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrFilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qrFilialCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrFilialIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrFilialSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object qrFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrFilialOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrFilialOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrFilialCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrFilialSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrFilialEMPRESA_ESTADUAL: TStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrFilialOPTANTE_SIMPLES: TStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrFilialOPTANTE_SUPER_SIMPLES: TStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrFilialECF: TStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrFilialTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrFilialIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrFilialISS: TFloatField
      FieldName = 'ISS'
    end
    object qrFilialNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrFilialRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qrFilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qrFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrFilialFARMACIA_RESP_TECNICO: TStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object qrFilialFARMACIA_CRF: TStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object qrFilialFARMACIA_CPF: TStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object qrFilialFARMCIA_DATA: TDateTimeField
      FieldName = 'FARMCIA_DATA'
    end
    object qrFilialFARMACIA_UF: TStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object qrFilialFARMACIA_SENHA: TStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object qrFilialFARMACIA_EMAIL: TStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object qrFilialFARMACIA_LOGIN: TStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrFilialFARMACIA_ENVIO: TStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object qrFilialCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qrFilialINDUSTRIA: TStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object qrFilialFARMACIA_NUMEROLICENCA: TStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object qrFilialCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrFilialIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qrFilialPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrFilialCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qrFilialATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object qrFilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrFilialCONTADOR_NOME: TStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object qrFilialCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
    end
    object qrFilialCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object qrFilialCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrFilialCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qrFilialCONTADOR_ENDERECO: TStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrFilialCONTADOR_NUMERO: TStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrFilialCONTADOR_COMPLEMENTO: TStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrFilialCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrFilialCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object qrFilialCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object qrFilialCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrFilialINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qrFilialDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object qrFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrFilialCRT: TStringField
      FieldName = 'CRT'
      Size = 1
    end
    object qrFilialCONTADOR_CIDADE: TStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrFilialCONTADOR_COD_MUNICIPIO: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrFilialCONTADOR_UF: TStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object qrFilialPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object qrFilialFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qrFilialDFIXAS: TFloatField
      FieldName = 'DFIXAS'
    end
    object qrFilialTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object qrFilialSERIE_CTE: TStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object qrFilialSEQ_CTE: TStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object qrFilialCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
    end
    object qrFilialPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
  end
  object qrConfig: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000001')
    Left = 160
    Top = 192
    object qrConfigCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrConfigULTIMO_BACKUP: TDateField
      FieldName = 'ULTIMO_BACKUP'
    end
    object qrConfigPAPEL_PAREDE: TStringField
      FieldName = 'PAPEL_PAREDE'
      Size = 150
    end
    object qrConfigAVISO_CONTAS_PAGAR: TIntegerField
      FieldName = 'AVISO_CONTAS_PAGAR'
    end
    object qrConfigAVISO_CHEQUE: TIntegerField
      FieldName = 'AVISO_CHEQUE'
    end
    object qrConfigESTOQUE_NEGATIVO: TIntegerField
      FieldName = 'ESTOQUE_NEGATIVO'
    end
    object qrConfigCASAS_DECIMAIS_QTDE: TIntegerField
      FieldName = 'CASAS_DECIMAIS_QTDE'
    end
    object qrConfigCASAS_DECIMAIS_VALOR: TIntegerField
      FieldName = 'CASAS_DECIMAIS_VALOR'
    end
    object qrConfigVENDA_CADASTRO_CHEQUE: TIntegerField
      FieldName = 'VENDA_CADASTRO_CHEQUE'
    end
    object qrConfigVENDA_CADASTRO_CARTAO: TIntegerField
      FieldName = 'VENDA_CADASTRO_CARTAO'
    end
    object qrConfigVENDA_TIPONOTA: TIntegerField
      FieldName = 'VENDA_TIPONOTA'
    end
    object qrConfigVENDA_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'VENDA_QTDE_VIAS_NOTA'
    end
    object qrConfigVENDA_PORTA_IMPRESSORA: TStringField
      FieldName = 'VENDA_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrConfigVENDA_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'VENDA_TIPO_IMPRESSORA'
    end
    object qrConfigVENDA_LIMITE_CLIENTE: TIntegerField
      FieldName = 'VENDA_LIMITE_CLIENTE'
    end
    object qrConfigOS_TIPONOTA: TIntegerField
      FieldName = 'OS_TIPONOTA'
    end
    object qrConfigOS_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'OS_QTDE_VIAS_NOTA'
    end
    object qrConfigOS_PORTA_IMPRESSORA: TStringField
      FieldName = 'OS_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrConfigOS_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'OS_TIPO_IMPRESSORA'
    end
    object qrConfigORCAMENTO_TIPONOTA: TIntegerField
      FieldName = 'ORCAMENTO_TIPONOTA'
    end
    object qrConfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'ORCAMENTO_QTDE_VIAS_NOTA'
    end
    object qrConfigORCAMENTO_PORTA_IMPRESSORA: TStringField
      FieldName = 'ORCAMENTO_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrConfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'ORCAMENTO_TIPO_IMPRESSORA'
    end
    object qrConfigCONTASRECEBER_CARENCIA: TIntegerField
      FieldName = 'CONTASRECEBER_CARENCIA'
    end
    object qrConfigCONTASRECEBER_TAXAJUROS: TFloatField
      FieldName = 'CONTASRECEBER_TAXAJUROS'
    end
    object qrConfigCONTASRECEBER_MULTA: TFloatField
      FieldName = 'CONTASRECEBER_MULTA'
    end
    object qrConfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField
      FieldName = 'CONTASRECEBER_DESCONTO_PERCENT'
    end
    object qrConfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField
      FieldName = 'CONTASRECEBER_DESCONTO_PERMITIR'
    end
    object qrConfigECF_MODELO: TStringField
      FieldName = 'ECF_MODELO'
      Size = 30
    end
    object qrConfigECF_PORTA: TStringField
      FieldName = 'ECF_PORTA'
      Size = 50
    end
    object qrConfigECF_TEF: TIntegerField
      FieldName = 'ECF_TEF'
    end
    object qrConfigECF_TIPO: TStringField
      FieldName = 'ECF_TIPO'
    end
    object qrConfigBALANCAPDV_MODELO: TStringField
      FieldName = 'BALANCAPDV_MODELO'
      Size = 50
    end
    object qrConfigBALANCAPDV_PORTA: TStringField
      FieldName = 'BALANCAPDV_PORTA'
      Size = 10
    end
    object qrConfigIMPRESSORACHEQUE_MODELO: TStringField
      FieldName = 'IMPRESSORACHEQUE_MODELO'
      Size = 50
    end
    object qrConfigIMPRESSORACHEQUE_PORTA: TStringField
      FieldName = 'IMPRESSORACHEQUE_PORTA'
      Size = 10
    end
    object qrConfigBALANCA_MODELO: TStringField
      FieldName = 'BALANCA_MODELO'
      Size = 50
    end
    object qrConfigIMPRESSORABARRAS_MODELO: TStringField
      FieldName = 'IMPRESSORABARRAS_MODELO'
      Size = 50
    end
    object qrConfigBALANCA_CAMINHO: TStringField
      FieldName = 'BALANCA_CAMINHO'
      Size = 100
    end
    object qrConfigCADASTRO_PRODUTO: TStringField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object qrConfigRAMO_ATIVIDADE: TIntegerField
      FieldName = 'RAMO_ATIVIDADE'
    end
    object qrConfigEXTRATO_TIPONOTA: TIntegerField
      FieldName = 'EXTRATO_TIPONOTA'
    end
    object qrConfigBOBINA_SUBIRPAPEL: TIntegerField
      FieldName = 'BOBINA_SUBIRPAPEL'
    end
    object qrConfigCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrConfigBOLETO_FORMAPGTO: TStringField
      FieldName = 'BOLETO_FORMAPGTO'
    end
    object qrConfigPLANO_VENDA_AV: TStringField
      FieldName = 'PLANO_VENDA_AV'
      Size = 30
    end
    object qrConfigPLANO_VENDA_AP: TStringField
      FieldName = 'PLANO_VENDA_AP'
      Size = 30
    end
    object qrConfigPLANO_OS_AV: TStringField
      FieldName = 'PLANO_OS_AV'
      Size = 30
    end
    object qrConfigPLANO_OS_AP: TStringField
      FieldName = 'PLANO_OS_AP'
      Size = 30
    end
    object qrConfigPLANO_OUTRAS_ENTRADAS: TStringField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
    end
    object qrConfigPLANO_OUTRAS_SAIDAS: TStringField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
    end
    object qrConfigPLANO_RECEBTO_CREDIARIO: TStringField
      FieldName = 'PLANO_RECEBTO_CREDIARIO'
      Size = 30
    end
    object qrConfigNF_ITENS_PAGINA: TIntegerField
      FieldName = 'NF_ITENS_PAGINA'
    end
    object qrConfigNF_ITENS_TRANSPORTE: TIntegerField
      FieldName = 'NF_ITENS_TRANSPORTE'
    end
    object qrConfigNF_LINHA_TRANSPORTE: TIntegerField
      FieldName = 'NF_LINHA_TRANSPORTE'
    end
    object qrConfigNF_SALTO_PAGINA: TIntegerField
      FieldName = 'NF_SALTO_PAGINA'
    end
    object qrConfigNF_TIPO: TIntegerField
      FieldName = 'NF_TIPO'
    end
    object qrConfigNF_IMPRESSORA: TStringField
      FieldName = 'NF_IMPRESSORA'
      Size = 100
    end
    object qrConfigVENDA_FECHAMENTO_CAIXA: TIntegerField
      FieldName = 'VENDA_FECHAMENTO_CAIXA'
    end
    object qrConfigDESCONTO_AVISTA: TFloatField
      FieldName = 'DESCONTO_AVISTA'
    end
    object qrConfigDESCONTO_PRODUTO: TFloatField
      FieldName = 'DESCONTO_PRODUTO'
    end
    object qrConfigDESCONTO_TOTALNOTA: TFloatField
      FieldName = 'DESCONTO_TOTALNOTA'
    end
    object qrConfigTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
    end
    object qrConfigVENDA_ALTERAR_PRECO: TIntegerField
      FieldName = 'VENDA_ALTERAR_PRECO'
    end
    object qrConfigNF_LINHA_SUBTOTAL: TIntegerField
      FieldName = 'NF_LINHA_SUBTOTAL'
    end
    object qrConfigNF_LINHA_TOTAL: TIntegerField
      FieldName = 'NF_LINHA_TOTAL'
    end
    object qrConfigECF_CAIXA: TStringField
      FieldName = 'ECF_CAIXA'
      Size = 3
    end
    object qrConfigECF_SERIAL: TStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrConfigFARMACIA_ENVIO: TStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 60
    end
    object qrConfigFARMACIA_RESPOSTA: TStringField
      FieldName = 'FARMACIA_RESPOSTA'
      Size = 60
    end
    object qrConfigFARMACIA_ENVIO_RESPOSTA: TStringField
      FieldName = 'FARMACIA_ENVIO_RESPOSTA'
      Size = 60
    end
    object qrConfigFARMACIA_LOGIN: TStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrConfigFARMACIA_SENHA: TStringField
      FieldName = 'FARMACIA_SENHA'
    end
    object qrConfigULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrConfigIMPRIME_CUPOM_VINCULADO: TIntegerField
      FieldName = 'IMPRIME_CUPOM_VINCULADO'
    end
    object qrConfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField
      FieldName = 'IMPRIME_PRODUTOS_VINCULADOS'
    end
    object qrConfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField
      FieldName = 'IMPRIME_COMPROVANTE_DEBITO'
    end
    object qrConfigIMPRIME_DUPLICATA: TIntegerField
      FieldName = 'IMPRIME_DUPLICATA'
    end
    object qrConfigCONTASRECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTASRECEBER_BLOQUEIO'
    end
    object qrConfigRECIBO_TIPONOTA: TIntegerField
      FieldName = 'RECIBO_TIPONOTA'
    end
    object qrConfigNR_CONTROLE_ECF: TStringField
      FieldName = 'NR_CONTROLE_ECF'
      Size = 6
    end
    object qrConfigBALANCA_PROGRAMA: TStringField
      FieldName = 'BALANCA_PROGRAMA'
      Size = 150
    end
    object qrConfigTIPO_DUPLICATA: TStringField
      FieldName = 'TIPO_DUPLICATA'
    end
    object qrConfigCONCILIA_VENDA: TIntegerField
      FieldName = 'CONCILIA_VENDA'
    end
    object qrConfigCONTROLA_ENTREGA: TIntegerField
      FieldName = 'CONTROLA_ENTREGA'
    end
    object qrConfigENTREGA_IMPRESSAO: TIntegerField
      FieldName = 'ENTREGA_IMPRESSAO'
    end
    object qrConfigENTREGA_VIAS: TIntegerField
      FieldName = 'ENTREGA_VIAS'
    end
    object qrConfigCONDICIONAL: TIntegerField
      FieldName = 'CONDICIONAL'
    end
    object qrConfigCONDICIONAL_PRAZO: TIntegerField
      FieldName = 'CONDICIONAL_PRAZO'
    end
    object qrConfigVS_ATIVAR: TIntegerField
      FieldName = 'VS_ATIVAR'
    end
    object qrConfigVS_DINHEIRO: TIntegerField
      FieldName = 'VS_DINHEIRO'
    end
    object qrConfigVS_CHEQUEAV: TIntegerField
      FieldName = 'VS_CHEQUEAV'
    end
    object qrConfigVS_CHEQUEAP: TIntegerField
      FieldName = 'VS_CHEQUEAP'
    end
    object qrConfigVS_CARTRAOCRED: TIntegerField
      FieldName = 'VS_CARTRAOCRED'
    end
    object qrConfigVS_CARTAODEB: TIntegerField
      FieldName = 'VS_CARTAODEB'
    end
    object qrConfigVS_CREDIARIO: TIntegerField
      FieldName = 'VS_CREDIARIO'
    end
    object qrConfigVS_CLIENTE_VISTA: TStringField
      FieldName = 'VS_CLIENTE_VISTA'
      Size = 6
    end
    object qrConfigVS_CAIXA: TIntegerField
      FieldName = 'VS_CAIXA'
    end
    object qrConfigVS_RELATORIO: TIntegerField
      FieldName = 'VS_RELATORIO'
    end
    object qrConfigVS_VIAS: TIntegerField
      FieldName = 'VS_VIAS'
    end
    object qrConfigVS_VISUALIZAR: TIntegerField
      FieldName = 'VS_VISUALIZAR'
    end
    object qrConfigCONDICIONAL_MODELO: TIntegerField
      FieldName = 'CONDICIONAL_MODELO'
    end
    object qrConfigALTERAR_UNITARIO: TIntegerField
      FieldName = 'ALTERAR_UNITARIO'
    end
    object qrConfigCONTASRECEBER_VALORJUROS: TFloatField
      FieldName = 'CONTASRECEBER_VALORJUROS'
    end
    object qrConfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField
      FieldName = 'CONTASRECEBER_JUROS_DINHEIRO'
    end
    object qrConfigPLANO_DUPLICATA_NFE: TStringField
      FieldName = 'PLANO_DUPLICATA_NFE'
      Size = 30
    end
    object qrConfigVAREJO_ATACADO: TIntegerField
      FieldName = 'VAREJO_ATACADO'
    end
    object qrConfigVISUALIZA_MENSAGEM: TIntegerField
      FieldName = 'VISUALIZA_MENSAGEM'
    end
    object qrConfigSERIAL_REPETIDO: TIntegerField
      FieldName = 'SERIAL_REPETIDO'
    end
    object qrConfigOCULTAR_CUSTO: TIntegerField
      FieldName = 'OCULTAR_CUSTO'
    end
    object qrConfigOCULTAR_PRODUTO_INATIVO: TIntegerField
      FieldName = 'OCULTAR_PRODUTO_INATIVO'
    end
    object qrConfigOCULTAR_CLIENTE_INATIVO: TIntegerField
      FieldName = 'OCULTAR_CLIENTE_INATIVO'
    end
    object qrConfigOBS_FARMA: TIntegerField
      FieldName = 'OBS_FARMA'
    end
    object qrConfigOBS_FARMA_TEXTO: TStringField
      FieldName = 'OBS_FARMA_TEXTO'
      Size = 45
    end
    object qrConfigCUSTO_MAIOR_VENDA: TIntegerField
      FieldName = 'CUSTO_MAIOR_VENDA'
    end
    object qrConfigVENDER_ABAIXO_CUSTO: TIntegerField
      FieldName = 'VENDER_ABAIXO_CUSTO'
    end
    object qrConfigNF_GERAR_RECEBER: TIntegerField
      FieldName = 'NF_GERAR_RECEBER'
    end
    object qrConfigNF_CODIGOBARRA_NFE: TIntegerField
      FieldName = 'NF_CODIGOBARRA_NFE'
    end
    object qrConfigNF_GRADE_NFE: TIntegerField
      FieldName = 'NF_GRADE_NFE'
    end
    object qrConfigNF_SERIAL_NFE: TIntegerField
      FieldName = 'NF_SERIAL_NFE'
    end
    object qrConfigNF_REFERENCIA_NFE: TIntegerField
      FieldName = 'NF_REFERENCIA_NFE'
    end
    object qrConfigNF_GERAR_DUPLICATA: TIntegerField
      FieldName = 'NF_GERAR_DUPLICATA'
    end
    object qrConfigVALE_CAIXA: TIntegerField
      FieldName = 'VALE_CAIXA'
    end
    object qrConfigCONTAS_RECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTAS_RECEBER_BLOQUEIO'
    end
    object qrConfigCUPOM_IMPRIMIR_CODIGO: TIntegerField
      FieldName = 'CUPOM_IMPRIMIR_CODIGO'
    end
    object qrConfigCLIENTE_PEDE_CPF: TIntegerField
      FieldName = 'CLIENTE_PEDE_CPF'
    end
    object qrConfigVERIFICA_COD_BARRA: TIntegerField
      FieldName = 'VERIFICA_COD_BARRA'
    end
    object qrConfigVERIFICA_NOME_PRODUTO: TIntegerField
      FieldName = 'VERIFICA_NOME_PRODUTO'
    end
    object qrConfigVS_FRETE: TIntegerField
      FieldName = 'VS_FRETE'
    end
    object qrConfigINVENTARIO_AUTOMATICO: TIntegerField
      FieldName = 'INVENTARIO_AUTOMATICO'
    end
    object qrConfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField
      FieldName = 'BAIXAR_ESTOQUE_NOTA_SAIDA'
    end
    object qrConfigETIQUETA_07: TIntegerField
      FieldName = 'ETIQUETA_07'
    end
    object qrConfigETIQUETA_07_1: TIntegerField
      FieldName = 'ETIQUETA_07_1'
    end
    object qrConfigETIQUETA_07_2: TIntegerField
      FieldName = 'ETIQUETA_07_2'
    end
    object qrConfigEMAIL_SERVIDOR_SMTP: TStringField
      FieldName = 'EMAIL_SERVIDOR_SMTP'
      Size = 100
    end
    object qrConfigEMAIL_PORTA: TStringField
      FieldName = 'EMAIL_PORTA'
      Size = 10
    end
    object qrConfigEMAIL_USUARIO: TStringField
      FieldName = 'EMAIL_USUARIO'
      Size = 100
    end
    object qrConfigEMAIL_SENHA: TStringField
      FieldName = 'EMAIL_SENHA'
    end
    object qrConfigEMAIL_ASSUNTO: TStringField
      FieldName = 'EMAIL_ASSUNTO'
      Size = 100
    end
    object qrConfigEMAIL_EXIGE_CONEXAO: TIntegerField
      FieldName = 'EMAIL_EXIGE_CONEXAO'
    end
    object qrConfigEMAIL_MENSAGEM: TBlobField
      FieldName = 'EMAIL_MENSAGEM'
    end
    object qrConfigINESTRA: TIntegerField
      FieldName = 'INESTRA'
    end
    object qrConfigFARMACIA_INVENTARIO_FECHA: TIntegerField
      FieldName = 'FARMACIA_INVENTARIO_FECHA'
    end
    object qrConfigFARMACIA_ENVIO_NOVARTIS: TStringField
      FieldName = 'FARMACIA_ENVIO_NOVARTIS'
      Size = 60
    end
    object qrConfigFARMACIA_RESPOSTA_NOVARTIS: TStringField
      FieldName = 'FARMACIA_RESPOSTA_NOVARTIS'
      Size = 60
    end
    object qrConfigFARMACIA_INVENTARIO_CONFIRMA: TStringField
      FieldName = 'FARMACIA_INVENTARIO_CONFIRMA'
      Size = 1
    end
    object qrConfigFARMACIA_INVENTARIO_DATA: TDateField
      FieldName = 'FARMACIA_INVENTARIO_DATA'
    end
    object qrConfigCALCULA_ISENTAS_OUTRAS: TIntegerField
      FieldName = 'CALCULA_ISENTAS_OUTRAS'
    end
    object qrConfigUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrConfigUSA_PRODUTOR_RURAL: TIntegerField
      FieldName = 'USA_PRODUTOR_RURAL'
    end
    object qrConfigIND_CLIE_ENTRADA: TStringField
      FieldName = 'IND_CLIE_ENTRADA'
      Size = 6
    end
    object qrConfigIND_CFOP_ENTRADA: TStringField
      FieldName = 'IND_CFOP_ENTRADA'
      Size = 5
    end
    object qrConfigIND_CLIE_SAIDA: TStringField
      FieldName = 'IND_CLIE_SAIDA'
      Size = 6
    end
    object qrConfigIND_CFOP_SAIDA: TStringField
      FieldName = 'IND_CFOP_SAIDA'
      Size = 5
    end
    object qrConfigIND_CLIE_PERDA: TStringField
      FieldName = 'IND_CLIE_PERDA'
      Size = 6
    end
    object qrConfigIND_CFOP_PERDA: TStringField
      FieldName = 'IND_CFOP_PERDA'
      Size = 5
    end
    object qrConfigIND_MOSTRA_COMPOSICAO: TIntegerField
      FieldName = 'IND_MOSTRA_COMPOSICAO'
    end
    object qrConfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField
      FieldName = 'CHECA_SERIAL_NOTA_SAIDA'
    end
    object qrConfigCOR_COMERCIO: TStringField
      FieldName = 'COR_COMERCIO'
      Size = 10
    end
    object qrConfigLOGO_COMERCIO: TStringField
      FieldName = 'LOGO_COMERCIO'
      Size = 100
    end
    object qrConfigCOR_FARMACIA: TStringField
      FieldName = 'COR_FARMACIA'
      Size = 10
    end
    object qrConfigLOGO_FARMACIA: TStringField
      FieldName = 'LOGO_FARMACIA'
      Size = 100
    end
    object qrConfigCOR_PECAS: TStringField
      FieldName = 'COR_PECAS'
      Size = 10
    end
    object qrConfigLOGO_PECAS: TStringField
      FieldName = 'LOGO_PECAS'
      Size = 100
    end
    object qrConfigCOR_MERCADO: TStringField
      FieldName = 'COR_MERCADO'
      Size = 10
    end
    object qrConfigLOGO_MERCADO: TStringField
      FieldName = 'LOGO_MERCADO'
      Size = 100
    end
    object qrConfigCOR_POSTO: TStringField
      FieldName = 'COR_POSTO'
      Size = 10
    end
    object qrConfigLOGO_POSTO: TStringField
      FieldName = 'LOGO_POSTO'
      Size = 100
    end
    object qrConfigIND_CLIE_ENTRADA_DESC: TStringField
      FieldName = 'IND_CLIE_ENTRADA_DESC'
      Size = 30
    end
    object qrConfigIND_CFOP_ENTRADA_DESC: TStringField
      FieldName = 'IND_CFOP_ENTRADA_DESC'
      Size = 30
    end
    object qrConfigIND_CLIE_SAIDA_DESC: TStringField
      FieldName = 'IND_CLIE_SAIDA_DESC'
      Size = 30
    end
    object qrConfigIND_CFOP_SAIDA_DESC: TStringField
      FieldName = 'IND_CFOP_SAIDA_DESC'
      Size = 30
    end
    object qrConfigIND_CLIE_PERDA_DESC: TStringField
      FieldName = 'IND_CLIE_PERDA_DESC'
      Size = 30
    end
    object qrConfigIND_CFOP_PERDA_DESC: TStringField
      FieldName = 'IND_CFOP_PERDA_DESC'
      Size = 30
    end
    object qrConfigIND_CFOP_VENDA_DENTRO: TStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrConfigIND_CFOP_VENDA_FORA: TStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrConfigIND_CFOP_DEVOLUCAO_DENTRO: TStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrConfigIND_CFOP_DEVOLUCAO_FORA: TStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrConfigIND_CFOP_SERVICO_DENTRO: TStringField
      FieldName = 'IND_CFOP_SERVICO_DENTRO'
      Size = 6
    end
    object qrConfigIND_CFOP_SERVICO_FORA: TStringField
      FieldName = 'IND_CFOP_SERVICO_FORA'
      Size = 6
    end
    object qrConfigCFOP_VENDA_DENTRO_DESC: TStringField
      FieldName = 'CFOP_VENDA_DENTRO_DESC'
      Size = 30
    end
    object qrConfigCFOP_VENDA_FORA_DESC: TStringField
      FieldName = 'CFOP_VENDA_FORA_DESC'
      Size = 30
    end
    object qrConfigCFOP_DEVOLUCAO_DENTRO_DESC: TStringField
      FieldName = 'CFOP_DEVOLUCAO_DENTRO_DESC'
      Size = 30
    end
    object qrConfigCFOP_DEVOLUCAO_FORA_DESC: TStringField
      FieldName = 'CFOP_DEVOLUCAO_FORA_DESC'
      Size = 30
    end
    object qrConfigCFOP_SERVICO_DENTRO_DESC: TStringField
      FieldName = 'CFOP_SERVICO_DENTRO_DESC'
      Size = 30
    end
    object qrConfigCFOP_SERVICO_FORA_DESC: TStringField
      FieldName = 'CFOP_SERVICO_FORA_DESC'
      Size = 30
    end
    object qrConfigTIPO_NF: TIntegerField
      FieldName = 'TIPO_NF'
    end
    object qrConfigCOR_ESTOQUE_POSITIVO: TStringField
      FieldName = 'COR_ESTOQUE_POSITIVO'
      Size = 10
    end
    object qrConfigCOR_ESTOQUE_NEGATIVO: TStringField
      FieldName = 'COR_ESTOQUE_NEGATIVO'
      Size = 10
    end
    object qrConfigCOR_ESTOQUE_ZERADO: TStringField
      FieldName = 'COR_ESTOQUE_ZERADO'
      Size = 10
    end
    object qrConfigTIPO_PESQUISA: TIntegerField
      FieldName = 'TIPO_PESQUISA'
    end
    object qrConfigECF_CONCOMITANTE: TIntegerField
      FieldName = 'ECF_CONCOMITANTE'
    end
    object qrConfigPLANO_PAGTO_FORN: TStringField
      FieldName = 'PLANO_PAGTO_FORN'
      Size = 30
    end
    object qrConfigHAB_PREVENDA: TIntegerField
      FieldName = 'HAB_PREVENDA'
    end
    object qrConfigCODCLIENTEAV: TStringField
      FieldName = 'CODCLIENTEAV'
      Size = 6
    end
    object qrConfigCODCLIENTEMODELO: TStringField
      FieldName = 'CODCLIENTEMODELO'
      Size = 6
    end
    object qrConfigCODPRODUTOMODELO: TStringField
      FieldName = 'CODPRODUTOMODELO'
      Size = 6
    end
    object qrConfigCODFORNECEDORMODELO: TStringField
      FieldName = 'CODFORNECEDORMODELO'
      Size = 6
    end
    object qrConfigUSA_CAIXA_DIARIO: TIntegerField
      FieldName = 'USA_CAIXA_DIARIO'
    end
    object qrConfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField
      FieldName = 'IMPRIMI_ORCAMENTO_AUTO'
    end
    object qrConfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField
      FieldName = 'FIXA_FORMA_PGTO_CLIENTE'
    end
    object qrConfigVERSAOBD: TStringField
      FieldName = 'VERSAOBD'
      Size = 8
    end
    object qrConfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField
      FieldName = 'USA_CAIXA_PADRAO_USUARIO'
    end
    object qrConfigTEXTO_PADRAO_VENDA: TStringField
      FieldName = 'TEXTO_PADRAO_VENDA'
      Size = 200
    end
    object qrConfigTEXTO_PADRAO_DEVOLUCAO: TStringField
      FieldName = 'TEXTO_PADRAO_DEVOLUCAO'
      Size = 200
    end
    object qrConfigTEXTO_PADRAO_GARANTIA: TStringField
      FieldName = 'TEXTO_PADRAO_GARANTIA'
      Size = 200
    end
    object qrConfigAVISA_ESTOQUE_MINIMO: TIntegerField
      FieldName = 'AVISA_ESTOQUE_MINIMO'
    end
    object qrConfigATENDIMENTOIMPRESSAO: TStringField
      FieldName = 'ATENDIMENTOIMPRESSAO'
      Size = 1
    end
    object qrConfigATENDIMENTOVIAS: TIntegerField
      FieldName = 'ATENDIMENTOVIAS'
    end
    object qrConfigATENDIMENTOFICHA: TStringField
      FieldName = 'ATENDIMENTOFICHA'
      Size = 1
    end
    object qrConfigATENDIMENTOIMPRESSORA: TStringField
      FieldName = 'ATENDIMENTOIMPRESSORA'
      Size = 100
    end
    object qrConfigATENDIMENTOIMPRESMODELO: TIntegerField
      FieldName = 'ATENDIMENTOIMPRESMODELO'
    end
    object qrConfigPERMITE_PROD_PRECO_ZERO: TStringField
      FieldName = 'PERMITE_PROD_PRECO_ZERO'
      Size = 1
    end
    object qrConfigACRESCIMO_PRODUTO: TFloatField
      FieldName = 'ACRESCIMO_PRODUTO'
    end
    object qrConfigNAO_SOL_SENHA_MOV_ESTOQUE: TStringField
      FieldName = 'NAO_SOL_SENHA_MOV_ESTOQUE'
      Size = 1
    end
    object qrConfigCARTA_COBRANCA_TEXTO: TBlobField
      FieldName = 'CARTA_COBRANCA_TEXTO'
    end
    object qrConfigCOBRA_COUVER: TStringField
      FieldName = 'COBRA_COUVER'
      Size = 1
    end
    object qrConfigVALOR_COUVER: TFloatField
      FieldName = 'VALOR_COUVER'
    end
    object qrConfigCOBRA_COMISSAO: TStringField
      FieldName = 'COBRA_COMISSAO'
      Size = 1
    end
    object qrConfigCOMISSAO_PERCENTUAL: TFloatField
      FieldName = 'COMISSAO_PERCENTUAL'
    end
  end
end

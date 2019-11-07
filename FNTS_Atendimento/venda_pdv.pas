unit venda_pdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, TFlatEditUnit,
  Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, jpeg, Buttons, Mask, TFlatComboBoxUnit, Menus, Wwdatsrc, frxDesgn, frxClass, AdvReflectionImage, AdvPanel,
  dxGDIPlusClasses, AdvSmoothPanel, AdvSmoothExpanderPanel, AdvGlowButton,
  JvExMask, JvToolEdit, JvBaseEdits, Datasnap.DBClient;
type
  TTipoAberturaFixa = (taSistema, taUsuario);
type
  Tfrmvenda_pdv = class(TForm)
    dsvenda_produto: TDataSource;
    qrproduto: TZQuery;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    RepetirpesquisadeProdutos1: TMenuItem;
    Excluiritem1: TMenuItem;
    CancelarVenda1: TMenuItem;
    FinalizarVenda1: TMenuItem;
    ForarCancelamentodeVenda1: TMenuItem;
    Alterarformadedesconto1: TMenuItem;
    qrcontasreceber: TZQuery;
    bver_limite: TBitBtn;
    qrpessoas: TZQuery;
    qrestoque: TZQuery;
    Panel1: TPanel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    Label11: TLabel;
    bvendedor: TBitBtn;
    eVendedor: TEdit;
    eNomeVendedor: TEdit;
    bcliente: TBitBtn;
    Panel4: TPanel;
    Bevel8: TBevel;
    Label19: TLabel;
    LCODIGO: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label16: TLabel;
    eProduto: TEdit;
    RQTDE: TJvCalcEdit;
    RUNITARIO: TJvCalcEdit;
    RDESCONTO: TJvCalcEdit;
    RTOTAL: TJvCalcEdit;
    fxvenda: TfrxReport;
    fxdesenhar: TfrxDesigner;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutopreco: TStringField;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    Image1: TImage;
    Panel5: TPanel;
    Label14: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    LDATA_VendA: TLabel;
    LHORA_VendA: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    btven: TAdvGlowButton;
    Panel2: TPanel;
    Panel6: TPanel;
    ltotal: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    litem: TLabel;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoDATA_CADASTRO: TDateField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVendA: TFloatField;
    qrprodutoDATA_ULTIMAVendA: TDateField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TWideStringField;
    qrprodutoAPLICACAO: TWideMemoField;
    qrprodutoLOCALICAZAO: TWideStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TWideStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TWideStringField;
    qrprodutoFOTO: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVendA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateField;
    qrprodutoDATA_REMARCACAO_VendA: TDateField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateField;
    qrprodutoFIM_PROMOCAO: TDateField;
    qrprodutoCST: TWideStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TWideStringField;
    qrprodutoNBM: TWideStringField;
    qrprodutoNCM: TWideStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TWideStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateField;
    qrprodutoULTIMA_CARGA: TDateField;
    qrprodutoDATA_INVENTARIO: TDateField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVendA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodutoAPRESENTACAO: TWideStringField;
    qrprodutoSITUACAO: TIntegerField;
    qrprodutoPRECOVendA1: TFloatField;
    qrprodutoPRECOVendA2: TFloatField;
    qrprodutoPRECOVendA3: TFloatField;
    qrprodutoPRECOVendA4: TFloatField;
    qrprodutoPRECOVendA5: TFloatField;
    qrprodutoDESCONTO_PRECOVendA: TFloatField;
    qrprodutoDATA_INVENTARIO_ATUAL: TDateField;
    qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrprodutoMARGEM_MINIMA: TFloatField;
    qrprodutoPISCOFINS: TWideStringField;
    qrprodutoREFERENCIA_FORNECEDOR: TWideStringField;
    qrprodutoCOMISSAO1: TFloatField;
    qrprodutoMARGEM_DESCONTO: TFloatField;
    qrprodutoTAMANHO: TWideStringField;
    qrprodutoCOR: TWideStringField;
    qrprodutoINCIDENCIA_PISCOFINS: TWideStringField;
    qrprodutoVEIC_CHASSI: TWideStringField;
    qrprodutoVEIC_SERIE: TWideStringField;
    qrprodutoVEIC_POTENCIA: TWideStringField;
    qrprodutoVEIC_PESO_LIQUIDO: TWideStringField;
    qrprodutoVEIC_PESO_BRUTO: TWideStringField;
    qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrprodutoVEIC_RENAVAM: TWideStringField;
    qrprodutoVEIC_ANO_FABRICACAO: TIntegerField;
    qrprodutoVEIC_ANO_MODELO: TIntegerField;
    qrprodutoVEIC_TIPO: TWideStringField;
    qrprodutoVEIC_TIPO_PINTURA: TWideStringField;
    qrprodutoVEIC_COD_COR: TWideStringField;
    qrprodutoVEIC_COR: TWideStringField;
    qrprodutoVEIC_VIN: TWideStringField;
    qrprodutoVEIC_NUMERO_MOTOR: TWideStringField;
    qrprodutoVEIC_CMKG: TWideStringField;
    qrprodutoVEIC_CM3: TWideStringField;
    qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField;
    qrprodutoVEIC_COD_MARCA: TWideStringField;
    qrprodutoVEIC_ESPECIE: TWideStringField;
    qrprodutoVEIC_CONDICAO: TWideStringField;
    qrprodutoLOTE_FABRICACAO: TWideStringField;
    qrprodutoLOTE_VALIDADE: TDateField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrprodutoULTIMA_COMPRA: TDateField;
    qrprodutoFARMACIA_DATAVIGENCIA: TDateField;
    qrprodutoFARMACIA_TIPO: TWideStringField;
    qrprodutoUSA_COMBUSTIVEL: TWideStringField;
    qrprodutoREFERENCIA: TWideStringField;
    qrprodutoPERDA: TFloatField;
    qrprodutoCOMPOSICAO1: TWideStringField;
    qrprodutoCOMPOSICAO2: TWideStringField;
    qrprodutoIAT: TWideStringField;
    qrprodutoIPPT: TWideStringField;
    qrprodutoSITUACAO_TRIBUTARIA: TWideStringField;
    qrprodutoFLAG_SIS: TWideStringField;
    qrprodutoFLAG_ACEITO: TWideStringField;
    qrprodutoFLAG_EST: TWideStringField;
    qrprodutoCSOSN: TWideStringField;
    qrprodutoCODORIGINAL: TWideStringField;
    qrprodutoCUSTO_ATACADO: TFloatField;
    qrprodutoUNIDADE_ATACADO: TWideStringField;
    qrprodutoQTDE_EMBALAGEMATACADO: TFloatField;
    qrprodutoPMARGEM1: TFloatField;
    qrprodutoPMARGEM2: TFloatField;
    qrprodutoPMARGEM3: TFloatField;
    qrprodutoPMARGEM4: TFloatField;
    qrprodutoPMARGEM5: TFloatField;
    qrprodutoPMARGEMATACADO1: TFloatField;
    qrprodutoPMARGEMATACADO2: TFloatField;
    qrprodutoPMARGEMATACADO3: TFloatField;
    qrprodutoPMARGEMATACADO4: TFloatField;
    qrprodutoPMARGEMATACADO5: TFloatField;
    qrprodutoPMARGEMATACADO6: TFloatField;
    qrprodutoPRECOATACADO1: TFloatField;
    qrprodutoPRECOATACADO2: TFloatField;
    qrprodutoPRECOATACADO3: TFloatField;
    qrprodutoPRECOATACADO4: TFloatField;
    qrprodutoPRECOATACADO5: TFloatField;
    qrprodutoIND_CFOP: TWideStringField;
    qrprodutoCFOP_DESC: TWideStringField;
    qrprodutoUSA_LOTE: TIntegerField;
    qrprodutoIND_CFOP_VendA_DENTRO: TWideStringField;
    qrprodutoCODCONTA: TWideStringField;
    qrprodutoIND_CFOP_VendA_FORA: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrprodutoUSA_TB_PC: TWideStringField;
    qrprodutoATIVA: TWideStringField;
    qrprodutoCEST: TWideStringField;
    pnCliente: TPanel;
    lcliente_limite: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    eCliente: TEdit;
    eNomeCliente: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    cdsVenda_Produto: TClientDataSet;
    cdsVenda_ProdutoITEM: TWideStringField;
    cdsVenda_ProdutoCODPRODUTO: TWideStringField;
    cdsVenda_ProdutoPRODUTO: TWideStringField;
    cdsVenda_ProdutoNUMERACAO: TWideStringField;
    cdsVenda_ProdutoQTDE: TFloatField;
    cdsVenda_ProdutoUNITARIO: TFloatField;
    cdsVenda_ProdutoTOTAL: TFloatField;
    cdsVenda_ProdutoCODBARRAS: TWideStringField;
    cdsVenda_ProdutoSERIAL: TWideStringField;
    cdsVenda_ProdutoDESCONTO: TFloatField;
    cdsVenda_ProdutoACRESCIMO: TFloatField;
    cdsVenda_ProdutoCODGRADE: TWideStringField;
    cdsVenda_ProdutoTIPO: TIntegerField;
    cdsVenda_ProdutoALIQUOTA: TFloatField;
    cdsVenda_ProdutoCST: TWideStringField;
    cdsVenda_ProdutoTERMINAL: TWideStringField;
    cdsVenda_ProdutoCODSUBGRUPO: TWideStringField;
    cdsVenda_ProdutoPISCOFINS: TWideStringField;
    cdsVenda_ProdutoSERIAL_CODINT: TWideStringField;
    cdsVenda_ProdutoGRADE_CODINT: TWideStringField;
    cdsVenda_Produtocodigo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bvendedorClick(Sender: TObject);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bclienteClick(Sender: TObject);
    procedure comboformaKeyPress(Sender: TObject; var Key: Char);
    procedure EPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure qrprodutoCalcFields(DataSet: TDataSet);
    procedure RDESCONTOKeyPress(Sender: TObject; var Key: Char);
    procedure RTOTALKeyPress(Sender: TObject; var Key: Char);
    procedure RUNITARIOExit(Sender: TObject);
    procedure RQTDEExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RepetirpesquisadeProdutos1Click(Sender: TObject);
    procedure EPRODUTOEnter(Sender: TObject);
    procedure EPRODUTOExit(Sender: TObject);
    procedure Excluiritem1Click(Sender: TObject);
    procedure CancelarVenda1Click(Sender: TObject);
    procedure FinalizarVenda1Click(Sender: TObject);
    procedure RUNITARIOEnter(Sender: TObject);
    procedure RDESCONTOExit(Sender: TObject);
    procedure Alterarformadedesconto1Click(Sender: TObject);
    procedure bver_limiteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure evendedorExit(Sender: TObject);
    procedure btvenClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label37Click(Sender: TObject);
    procedure Label36Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PreVenda_Impressao:string;
    PreVenda_Vias:Integer;
    PreVenda_TipoFixa:TTipoAberturaFixa;
    Numero_Ficha:string;
    procedure CarregaPreVenda(Ficha:string);
  end;

var
  frmvenda_pdv: Tfrmvenda_pdv;
  item : integer;
  ultima_pesquisa : string;
  forma_anterior : integer;
  estoque_produto : real;
  CONTINUAR : BOOLEAN;
  FORMA1 : STRING;
  vforma1 : real;
  venda_liberada : boolean;

implementation

uses modulo, locvendedor, principal, loccliente, locproduto, Math,
  venda_fechamento_aprazo, NumeroFicha;

{$R *.dfm}

procedure Tfrmvenda_pdv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmvenda_pdv.FormShow(Sender: TObject);
begin
  If senha_vendedor = '1' then
    venda_liberada := false
  else
    venda_liberada := true;
  frmlocproduto := tfrmlocproduto.Create(self);
  frmlocproduto.qrproduto.close;
  frmlocproduto.qrproduto.sql.clear;
  frmlocproduto.qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and prod.codigo is null');
  frmlocproduto.qrproduto.open;
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select * from c000025 where codigo = ''xxxxxx''');
  qrproduto.open;
  ldata_venda.Caption := frmmodulo.qrcaixa_operador.fieldbyname('data').asstring;
  eproduto.CharCase := ecUpperCase;
  if not ABRE_ORCAMENTO then
  begin
    cdsvenda_produto.Close;
    cdsvenda_produto.CreateDataSet;
  end;
  item := 1;
  EVendEDOR.SETFOCUS;
  ultima_pesquisa := '';
  with frmmodulo do begin
    qrconfig.Close;
    qrconfig.Open;
    PreVenda_Impressao := qrconfig.FieldByName('atendimentoimpressao').AsString;
    PreVenda_Vias :=  qrconfig.FieldByName('atendimentovias').AsInteger ;
    if qrconfig.FieldByName('atendimentoficha').AsString = 'S' then
      PreVenda_TipoFixa := taSistema
    else
      PreVenda_TipoFixa := taUsuario;
  end;
end;

procedure Tfrmvenda_pdv.Image2Click(Sender: TObject);
begin
  FinalizarVenda1Click(Sender);
end;

procedure Tfrmvenda_pdv.Label14Click(Sender: TObject);
begin
  FinalizarVenda1Click(Sender);
end;

procedure Tfrmvenda_pdv.Image3Click(Sender: TObject);
begin
  ExcluirItem1Click(Sender);
end;

procedure Tfrmvenda_pdv.Label37Click(Sender: TObject);
begin
  ExcluirItem1Click(Sender);
end;

procedure Tfrmvenda_pdv.Image4Click(Sender: TObject);
begin
  CancelarVenda1Click(Sender);
end;

procedure Tfrmvenda_pdv.Label36Click(Sender: TObject);
begin
  CancelarVenda1Click(Sender);
end;

procedure Tfrmvenda_pdv.bvendedorClick(Sender: TObject);
begin
  RESULTADO_PESQUISA1 := '';
  frmlocvendedor := tfrmlocvendedor.create(self);
  frmlocvendedor.showmodal;
  IF resultado_pesquisa1 <> '' then begin
    EVendEDOR.TEXT := RESULTADO_PESQUISA1;
    ENOMEVendEDOR.TEXT := RESULTADO_PESQUISA2;
    if pnCliente.Visible then
      ECLIENTE.SETFOCUS
    else
      eProduto.SetFocus;
  end else begin
    EVendEDOR.SETFOCUS;
  end;
end;

procedure Tfrmvenda_pdv.evendedorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_pdv.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    ecliente.Text := frmprincipal.zerarcodigo(ecliente.text,6);
    if (ecliente.Text <> '') and (ecliente.Text <> '000000') then begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.sql.clear;
      frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+ecliente.text+''' order by nome');
      frmmodulo.qrcliente.open;
      if frmmodulo.qrcliente.RecNo = 1 then begin
        enomecliente.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
        bver_limiteClick(frmvenda_pdv);
        IF NOT CONTINUAR then begin
          ECLIENTE.TEXT := '';
          ENOMECLIENTE.TEXT := '';
          ECLIENTE.SETFOCUS;
          EXIT;
        end;
        eProduto.SetFocus;
      end else begin
        frmprincipal.msg('LOCE','Registro não encontrado!',false,false,true,'');
        enomecliente.text := '';
        ecliente.SetFocus;
        ecliente.SelectAll;
      end;
    end else begin
      bclienteClick(frmvenda_pdv);
    end;
  end;
end;

procedure Tfrmvenda_pdv.bclienteClick(Sender: TObject);
begin
  RESULTADO_PESQUISA1 := '';
  frmloccliente := tfrmloccliente.create(self);
  frmloccliente.showmodal;
  IF resultado_pesquisa1 <> '' then begin
    Ecliente.TEXT := RESULTADO_PESQUISA1;
    qrcontasreceber.close;
    qrcontasreceber.sql.clear;
    qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+Ecliente.TEXT+''' and situacao = 1');
    qrcontasreceber.Open;
    limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;
    bver_limiteClick(frmvenda_pdv);
    IF NOT CONTINUAR then begin
      ECLIENTE.TEXT := '';
      ENOMECLIENTE.TEXT := '';
      ECLIENTE.SETFOCUS;
      EXIT;
    end;
    ENOMEcliente.TEXT := RESULTADO_PESQUISA2;
  end else begin
    Ecliente.SETFOCUS;
  end;
end;

procedure Tfrmvenda_pdv.btvenClick(Sender: TObject);
begin
  bvendedor.Click;
end;

procedure Tfrmvenda_pdv.comboformaKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 then begin
    EPRODUTO.SETFOCUS;
  end;
end;

procedure Tfrmvenda_pdv.EPRODUTOKeyPress(Sender: TObject; var Key: Char);
var a : string;
I : INTEGER;
begin
  if key = #13 then begin
    ultima_pesquisa := '';
    a := copy(eproduto.text,1,1);
    for I := 1 To Length(A) Do begin
      if (A[I] in ['A'..'Z']) then begin
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select * from c000025 where upper(produto) like '''+AnsiUpperCase(eproduto.text)+'%'' order by produto');
        qrproduto.open;
        if qrproduto.RecordCount > 0 then begin
          if qrproduto.RecordCount = 1 then begin
            IF (NOT ESTOQUE_NEGATIVO) then begin
              qrestoque.close;
              qrestoque.sql.clear;
              qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
              qrestoque.open;
              estoque_produto := qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT;
              IF qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT < 0.01 then begin
                 frmprincipal.msg('ALER','Este produto não possue ESTOQUE!',false,false,true,'');
                 eproduto.setfocus;
                 exit;
              end;
            end;
            lCODIGO.caption := qrproduto.fieldbyname('codigo').asstring;
            eproduto.text := qrproduto.fieldbyname('produto').asstring;
            rqtde.value := 1;
            runitario.value := qrproduto.fieldbyname('preco').asfloat;
            rdesconto.Value := 0;
            rtotal.value := qrproduto.fieldbyname('preco').asfloat;
            rqtde.setfocus;
            exit;
          end else begin
            resultado_pesquisa1 := '';
            frmlocproduto.LOC.Text := EPRODUTO.text;
            frmlocproduto.showmodal;
            if resultado_pesquisa1 <> '' then begin
              qrproduto.close;
              qrproduto.sql.clear;
              qrproduto.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
              qrproduto.open;
              IF (NOT ESTOQUE_NEGATIVO) then begin
                qrestoque.close;
                qrestoque.sql.clear;
                qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
                qrestoque.open;
                estoque_produto := qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT;
                IF qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT < 0.01 then begin
                  frmprincipal.msg('ALER','Este produto não possue ESTOQUE!',false,false,true,'');
                  eproduto.setfocus;
                  exit;
                end;
              end;
              LCODIGO.caption := qrproduto.fieldbyname('codigo').asstring;
              eproduto.text := qrproduto.fieldbyname('produto').asstring;
              rqtde.value := 1;
              runitario.value := qrproduto.fieldbyname('preco').asfloat;
              rtotal.value := qrproduto.fieldbyname('preco').asfloat;
              rdesconto.Value := 0;
              rqtde.setfocus;
              exit;
            end;
          end;
        end else begin
          frmprincipal.msg('LOCE','Produto não econtrado!',FALSE,FALSE,TRUE,'');
          eproduto.setfocus;
          exit;
        end;
      end else begin // PROCURAR POR CODIGO
        A :=EPRODUTO.TEXT;
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select * from c000025 where codbarra = '''+a+'''');
        qrproduto.open;
        IF qrproduto.RecNo = 1 then begin
          IF (NOT ESTOQUE_NEGATIVO) then begin
            qrestoque.close;
            qrestoque.sql.clear;
            qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
            qrestoque.open;
            estoque_produto := qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT;
            IF qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT < 0.01 then begin
              frmprincipal.msg('ALER','Este produto não possue ESTOQUE!',false,false,true,'');
              eproduto.setfocus;
              exit;
            end;
          end;
          LCODIGO.caption := qrproduto.fieldbyname('codigo').asstring;
          eproduto.text := qrproduto.fieldbyname('produto').asstring;
          rqtde.value := 1;
          runitario.value := qrproduto.fieldbyname('preco').asfloat;
          rtotal.value := qrproduto.fieldbyname('preco').asfloat;
          rdesconto.Value := 0;
          rqtde.setfocus;
          exit;
        end else begin
          A := frmPrincipal.zerarcodigo(EPRODUTO.TEXT,6);
          qrproduto.close;
          qrproduto.sql.clear;
          qrproduto.sql.add('select * from c000025 where codigo = '''+a+'''');
          qrproduto.open;
          IF qrproduto.RecNo = 1 then begin
            IF (NOT ESTOQUE_NEGATIVO) then begin
              qrestoque.close;
              qrestoque.sql.clear;
              qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
              qrestoque.open;
              estoque_produto := qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT;
              IF qrestoque.FieldByName('ESTOQUE_atual').ASFLOAT < 0.01 then begin
                frmprincipal.msg('ALER','Este produto não possue ESTOQUE!',false,false,true,'');
                eproduto.setfocus;
                exit;
              end;
            end;
          end else begin
            frmprincipal.msg('LOCE','Produto não econtrado!',FALSE,FALSE,TRUE,'');
            eproduto.setfocus;
            exit;
          end;
          LCODIGO.caption := qrproduto.fieldbyname('codigo').asstring;
          eproduto.text := qrproduto.fieldbyname('produto').asstring;
          rqtde.value := 1;
          runitario.value := qrproduto.fieldbyname('preco').asfloat;
          rtotal.value := qrproduto.fieldbyname('preco').asfloat;
          rdesconto.Value := 0;
          rqtde.setfocus;
          exit;
        end;
      end;
    end;
  end; // #13
end;

procedure Tfrmvenda_pdv.qrprodutoCalcFields(DataSet: TDataSet);
begin
  qrproduto.FieldByName('preco').asfloat := qrproduto.FieldByName('precovenda').asfloat ;
end;

procedure Tfrmvenda_pdv.RDESCONTOKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 then
    PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmvenda_pdv.RTOTALKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 then begin
    if (RQTDE.value <> 0) and (eproduto.Text <> '') and (RTOTAL.Value <> 0) then begin
      try
        cdsvenda_produto.Insert;
        cdsvenda_produto.FieldByName('codproduto').asstring   := qrproduto.fieldbyname('codigo').asstring;
        cdsvenda_produto.FieldByName('produto').asstring      := qrproduto.fieldbyname('produto').asstring;
        cdsvenda_produto.FieldByName('NUMERACAO').asstring    := qrproduto.fieldbyname('UNIDADE').asstring;
        cdsvenda_produto.FieldByName('qtde').asfloat          := rqtde.value;
        cdsvenda_produto.FieldByName('unitario').asfloat      := runitario.value;
        cdsvenda_produto.FieldByName('total').asfloat         := rtotal.value;
        cdsvenda_produto.FieldByName('desconto').asfloat      := rdesconto.value;
        cdsvenda_produto.FieldByName('tipo').asinteger        := 0;
        cdsvenda_produto.FieldByName('item').asstring         := frmprincipal.zerarcodigo(inttostr(item),3);
        litem.Caption := frmprincipal.zerarcodigo(inttostr(item),4);
        item := item+1;
        ltotal.caption := formatfloat('############0.00',strtofloat(ltotal.caption)+cdsvenda_produto.FieldByName('total').asfloat);
        cdsvenda_produto.post;
        cdsvenda_produto.Last;
        eproduto.text := '';
        rqtde.value := 0;
        runitario.value := 0;
        rdesconto.value := 0;
        rtotal.value := 0;
        lcodigo.Caption := '';
        eproduto.setfocus;
      except
        frmprincipal.msg('ERRO','Este item está sendo utilizado'+#13+'em outro terminal!'+#13+'Favor pedir a sua liberação'+#13+'para poder prosseguir!',false,false,true,'');
        rtotal.setfocus;
        exit;
      end;
    end else begin
      rtotal.setfocus;
    end;
  end else begin
    ABORT;
  end;
end;

procedure Tfrmvenda_pdv.RUNITARIOExit(Sender: TObject);
begin
  RTOTAL.VALUE := (RQTDE.VALUE * RUNITARIO.VALUE) - RDESCONTO.VALUE;
end;

procedure Tfrmvenda_pdv.RQTDEExit(Sender: TObject);
begin
  if (NOT ESTOQUE_NEGATIVO) then begin
    if rqtde.value > estoque_produto then begin
      frmprincipal.msg('ALER','Este produto não possue'+#13+' este estoque!',false,false,true,'');
      rqtde.SetFocus;
    end;
  end;
end;

procedure Tfrmvenda_pdv.Timer1Timer(Sender: TObject);
begin
  LHORA_VendA.CAPTION := TIMETOSTR(TIME);
end;

procedure Tfrmvenda_pdv.RepetirpesquisadeProdutos1Click(Sender: TObject);
var
  key : char;
begin
  ultima_pesquisa := 'x';
  key := #13;
  if ultima_pesquisa = '' then
    exit;
  frmlocproduto.showmodal;
  EPRODUTO.Text := resultado_pesquisa1;
  EPRODUTOKeyPress(sender,key);
end;

procedure Tfrmvenda_pdv.EPRODUTOEnter(Sender: TObject);
begin
  RepetirpesquisadeProdutos1.Enabled := true;
end;

procedure Tfrmvenda_pdv.EPRODUTOExit(Sender: TObject);
begin
  RepetirpesquisadeProdutos1.Enabled := false;
end;

procedure Tfrmvenda_pdv.Excluiritem1Click(Sender: TObject);
begin
  if frmprincipal.msg('EXCL','Confirma e exclusão do item?',true,true,false,'') = 'SIM' then begin
    qrproduto.close;
    qrproduto.SQL.Clear;
    qrproduto.sql.add('select * from c000025 where codigo = '''+cdsvenda_produto.fieldbyname('codproduto').asstring+'''');
    qrproduto.open;
    if qrproduto.RecNo = 1 then begin
      ltotal.caption := formatfloat('##########0.00', strtofloat(ltotal.caption) - cdsvenda_produto.fieldbyname('total').asfloat);
      litem.Caption := frmprincipal.zerarcodigo(inttostr(strtoint(litem.caption)-1),4);
      cdsvenda_produto.Delete;
    end else begin
      frmprincipal.msg('ERRO','Produto não econtrado!',false,false,true,'');
    end;
  end;
end;

procedure Tfrmvenda_pdv.CancelarVenda1Click(Sender: TObject);
begin
  if frmprincipal.msg('INTE','Confirma o cancelamento?',true,true,false,'') = 'SIM' then begin
    cdsvenda_produto.Close;
    cdsvenda_produto.CreateDataSet;
    frmmodulo.Conexao.Rollback;
    close;
  end;
end;

procedure Tfrmvenda_pdv.CarregaPreVenda(Ficha: string);
var
  i:Integer;
begin
  with frmmodulo do begin
    try
      ltotal.caption := formatfloat('############0.00',0);
      cdsvenda_produto.DisableControls;
      cdsvenda_produto.Close;
      cdsvenda_produto.CreateDataSet;
      qrorcamento.close;
      qrorcamento.sql.clear;
      qrorcamento.sql.add('select * from c000074 where codigo = ' + QuotedStr(Ficha));
      QRORCAMENTO.open;
      qrorcamento_produto.Close;
      qrorcamento_produto.Params.Items[0].Value := Ficha;
      qrorcamento_produto.Open;
      qrorcamento_produto.First;
      qrproduto.Close;
      qrproduto.Open;
      i := 0;
      while not qrorcamento_produto.Eof do begin
        Inc(i);
        cdsvenda_produto.Append;
        cdsvenda_produto.FieldByName('codproduto').asstring   := qrorcamento_produtoCODPRODUTO.asstring;
        qrproduto.Locate('codigo',qrorcamento_produtoCODPRODUTO.AsString,[loCaseInsensitive]);
        cdsvenda_produto.FieldByName('produto').asstring      := qrproduto.fieldbyname('produto').asstring;
        cdsvenda_produto.FieldByName('NUMERACAO').asstring    := qrproduto.fieldbyname('UNIDADE').asstring;
        cdsvenda_produto.FieldByName('qtde').asfloat          := qrorcamento_produtoQTDE.AsFloat;
        cdsvenda_produto.FieldByName('unitario').asfloat      := qrorcamento_produtoUNITARIO.AsFloat;
        cdsvenda_produto.FieldByName('total').asfloat         := qrorcamento_produtoTOTAL.AsFloat;
        cdsvenda_produto.FieldByName('desconto').asfloat      := qrorcamento_produtoDESCONTO.AsFloat;
        cdsvenda_produto.FieldByName('tipo').asinteger        := 0;
        cdsvenda_produto.FieldByName('item').asstring         := frmprincipal.zerarcodigo(inttostr(i),3);
        cdsVenda_Produtocodigo.AsString                       := qrorcamento_produtoCODIGO.AsString;
        cdsvenda_produto.post;
        ltotal.caption := formatfloat('############0.00',strtofloat(ltotal.caption)+cdsvenda_produto.FieldByName('total').asfloat);
        qrorcamento_produto.Next;
      end;
    finally
      cdsvenda_produto.EnableControls;
    end;
  end;
end;

procedure Tfrmvenda_pdv.FinalizarVenda1Click(Sender: TObject);
VAR TEXTO : STRING;
begin
  if ( evendedor.text = '') or (evendedor.text = '000000') then begin
    FRMPRINCIPAL.msg('ERRO','Favor informar o vendedor!',false,false,true,'');
    evendedor.setfocus;
    Exit;
  end;
  frmvenda_fechamento_aPRAZO := tfrmvenda_fechamento_aPRAZO.create(self);
  frmvenda_fechamento_aPRAZO.rsubtotal.Value := StrToFloat(ltotal.caption);
  frmvenda_fechamento_aPRAZO.rtotal.value := StrToFloat(ltotal.caption);
  if NaoExibeTelaFechamento then
  begin
    if Application.MessageBox('Finalizar a Pré-venda?','Atenção!',MB_ICONQUESTION+MB_YESNO) = mrYes then
      frmvenda_fechamento_aPRAZO.bgravar.Click
  end
  else
    frmvenda_fechamento_aPRAZO.showmodal;
end;

procedure Tfrmvenda_pdv.RUNITARIOEnter(Sender: TObject);
begin
 FRMMODULO.QRCONFIG.OPEN;
 IF FRMMODULO.QRCONFIG.FIELDBYNAME('VendA_ALTERAR_PRECO').ASINTEGER <> 1 then
   rdesconto.setfocus;
end;

procedure Tfrmvenda_pdv.RDESCONTOExit(Sender: TObject);
var
  pdesc : real;
  valor_desconto : real;
begin
  if rdesconto.value <> 0 then begin
    if rdesconto.DisplayFormat = 'R$ ######0.00' then
      valor_desconto := rdesconto.Value
    else
      valor_desconto := (rqtde.value * runitario.value) * (rdesconto.value/100);
    if rdesconto.value <> 0 then begin
      pdesc := valor_desconto * 100 / (rqtde.value * runitario.value);
      if pdesc > desconto_produto then begin
        If frmprincipal.msg('SENH','',TRUE,TRUE,FALSE,'4 - DESCONTO') = 'NAO' then begin
          frmprincipal.msg('ERRO','Não autorizado!',false,false,true,'');
          valor_desconto := 0;
          rdesconto.setfocus;
        end;
      end;
    end;
    RTOTAL.VALUE := (RQTDE.VALUE * RUNITARIO.VALUE) - valor_desconto;
  end;
end;

procedure Tfrmvenda_pdv.AdvGlowButton1Click(Sender: TObject);
begin
  bcliente.Click;
end;

procedure Tfrmvenda_pdv.Alterarformadedesconto1Click(Sender: TObject);
begin
  if rdesconto.DisplayFormat = 'R$ ######0.00' then
    rdesconto.DisplayFormat :='######0.00%'
  else
    rdesconto.DisplayFormat :='R$ ######0.00';
end;

procedure Tfrmvenda_pdv.bver_limiteClick(Sender: TObject);
var
  texto : pansichar;
  Data: TDateTime;
  dia, mes, ano: Word;
begin
  CONTINUAR := TRUE;
  if not pnCliente.Visible then
    Exit;

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+Ecliente.TEXT+''' and situacao = 1');
  qrcontasreceber.Open;
  limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;
  lcliente_limite.caption := formatfloat('###,###,##0.00',(FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT));
  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FieldByName('VendA_LIMITE_CLIENTE').ASINTEGER = 1 then begin
    if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 3)  then begin
      if application.messagebox(pwidechar('Cliente com crédito bloqueado!, Deseja continuar?'), 'Atenção', mb_yesno + MB_ICONERROR) = idno then begin
        if not frmPrincipal.autentica('Liberar venda',4) then begin
           application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
           Ecliente.TEXT := '';
           ECLIENTE.SetFocus;
           CONTINUAR := FALSE;
           exit;
        end;
      end else begin
        Ecliente.TEXT := '';
        ECLIENTE.setfocus;
        CONTINUAR := FALSE;
        exit;
      end;
    end else begin
      if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 2)  then begin
        if application.messagebox(pwidechar('Cliente com crédito em Observação!, Deseja continuar?'), 'Atenção', mb_yesno + MB_ICONERROR) = idno then begin
          if not frmPrincipal.autentica('Liberar venda',4) then begin
            application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
            Ecliente.TEXT := '';
            ECLIENTE.SetFocus;
            CONTINUAR := FALSE;
            exit;
          end;
        end else begin
          Ecliente.TEXT := '';
          ECLIENTE.setfocus;
          CONTINUAR := FALSE;
          exit;
        end;
      end else begin
        if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 5)  then begin
          if application.messagebox(pwidechar('Cliente com nome no SPC!, Deseja continuar?'), 'Atenção', mb_yesno + MB_ICONERROR) = idno then begin
            if not frmPrincipal.autentica('Liberar venda',4) then begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              Ecliente.TEXT := '';
              ECLIENTE.SetFocus;
              CONTINUAR := FALSE;
              exit;
            end;
          end else begin
            Ecliente.TEXT := '';
            ECLIENTE.setfocus;
            CONTINUAR := FALSE;
            exit;
          end;
        end;
      end;
    end;
  end;
  if FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then begin
    IF limite_disponivel <= 0 then begin
      if application.messagebox(pwidechar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+lcliente_limite.caption+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?'), 'Atenção', mb_yesno + MB_ICONERROR) = idno then begin
        if not frmPrincipal.autentica('Liberar venda',4) then begin
          application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
          Ecliente.TEXT := '';
          ECLIENTE.SetFocus;
          CONTINUAR := FALSE;
          exit;
        end else begin
          eProduto.SetFocus;
          exit;
        end;
      end else begin
        Ecliente.TEXT := '';
        ECLIENTE.SetFocus;
        CONTINUAR := FALSE;
        exit;
      end;
    end;
  end;
end;

procedure Tfrmvenda_pdv.eclienteExit(Sender: TObject);
var
  k: Char;
begin
  COMBOBOX1.ItemIndex := 0;
  with qrpessoas do
  begin
    Close;
    SQL.Clear;
    if eCliente.Text = '' then
    begin
      eCliente.Text := '014698'; // Balcao
      k := Char(13);
      eClienteKeyPress(Self, k);
      SQL.Add('SELECT * FROM c000070 WHERE codcliente = 014698');
    end
    else
    begin
      ecliente.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      SQL.Add('SELECT * FROM c000070 WHERE codcliente = ''' + frmmodulo.qrcliente.fieldbyname('codigo').asstring + '''');
    end;

    Open;

    if RecordCount > 0 then
    begin
      ComboBox1.Clear;
      COMBOBOX1.ItemS.Add('O MESMO');
      QRPESSOAS.First;
      while not EoF do
      begin
        ComboBox1.Items.ADD(FieldByName('NOME').AsString + ' - ' + FieldByName('PARENTESCO').AsString);
        Next;
      end;
      ComboBox1.ItemIndex := 0;
      ComboBox1.SetFocus;
    end
    else
      eProduto.setfocus;
  end;
end;

procedure Tfrmvenda_pdv.ComboBox1Exit(Sender: TObject);
begin
  eProduto.SetFocus;
end;

procedure Tfrmvenda_pdv.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_pdv.evendedorExit(Sender: TObject);
label
  Ficha;
begin
  evendedor.Text := frmprincipal.zerarcodigo(evendedor.text,6);
  if (evendedor.Text <> '') and (evendedor.Text <> '000000') then begin
    frmmodulo.qrfunci.close;
    frmmodulo.qrfunci.sql.clear;
    frmmodulo.qrfunci.sql.add('select * from c000008 where codigo = '''+evendedor.text+''' and F_VendEDOR = 1 AND SITUACAO = 1 order by nome');
    frmmodulo.qrfunci.open;
    if frmmodulo.qrfunci.RecNo = 1 then begin
      enomevendedor.text := frmmodulo.qrfunci.fieldbyname('nome').asstring;
      if PreVenda_TipoFixa = taUsuario then begin
        Ficha:
        Application.CreateForm(TfrmNumeroFicha,frmNumeroFicha);
        frmNumeroFicha.ShowModal;
        FreeAndNil(frmNumeroFicha);
        if StrToInt(Numero_Ficha) <= 0 then begin
          if Application.MessageBox('Não foi informado um número de ficha, Deseja infomra-lo?','Atenção!',MB_ICONQUESTION+MB_YESNO)=mrYes then begin
            goto Ficha;
          end else
            Close;
        end;
        CarregaPreVenda(Numero_Ficha);
      end;
      if pnCliente.Visible then
        ecliente.setfocus
      else
        eProduto.SetFocus;
    end else begin
      frmprincipal.msg('LOCE','Registro não encontrado!',false,false,true,'');
      enomevendedor.text := '';
      evendedor.SetFocus;
      evendedor.SelectAll;
    end;
  end else begin
    bvendedorClick(frmvenda_pdv);
  end;
end;

end.

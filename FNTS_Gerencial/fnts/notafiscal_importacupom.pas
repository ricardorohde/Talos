unit notafiscal_importacupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TFlatProgressBarUnit, StdCtrls, Buttons, Mask, RzEdit, ExtCtrls,
  RzPanel, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,
  AdvShapeButton, cxTextEdit, cxControls, cxContainer, cxEdit, cxMemo, Menus,
  cxGraphics, cxMaskEdit, cxDropDownEdit, AdvGlowButton, MemDS, DBAccess,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinOffice2013White, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, System.ImageList, Vcl.ImgList,
  cxImageComboBox, cxCurrencyEdit, JvExMask, JvToolEdit, Vcl.DBCtrls, RzDBEdit,
  RzDBBnEd, RzBtnEdt, cxCheckBox, System.DateUtils;

type
  Tfrmnotafiscal_importacupom = class(TForm)
    query: TZQuery;
    dsnotafiscal_item: TDataSource;
    ProgressBar1: TProgressBar;
    qrproduto: TZQuery;
    qrnotafiscal_item: TZQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsCupom: TDataSource;
    qrCupom: TZQuery;
    qrCupomCUPOM_NUMERO: TWideStringField;
    qrCupomDATA: TDateField;
    qrCupomNFCE: TWideStringField;
    qrCupomNFE: TWideStringField;
    qrCupomTOTAL: TFloatField;
    cxGrid1DBTableView1CUPOM_NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1NFE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    ImageList1: TImageList;
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    bcancela: TAdvGlowButton;
    bconfirma: TAdvGlowButton;
    Panel3: TPanel;
    ckHoje: TCheckBox;
    ckNFe: TCheckBox;
    btnAbre: TSpeedButton;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoDATA_CADASTRO: TDateField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateField;
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
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateField;
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
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodutoAPRESENTACAO: TWideStringField;
    qrprodutoSITUACAO: TIntegerField;
    qrprodutoPRECOVENDA1: TFloatField;
    qrprodutoPRECOVENDA2: TFloatField;
    qrprodutoPRECOVENDA3: TFloatField;
    qrprodutoPRECOVENDA4: TFloatField;
    qrprodutoPRECOVENDA5: TFloatField;
    qrprodutoDESCONTO_PRECOVENDA: TFloatField;
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
    qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrprodutoCODCONTA: TWideStringField;
    qrprodutoIND_CFOP_VENDA_FORA: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrprodutoUSA_TB_PC: TWideStringField;
    qrprodutoATIVA: TWideStringField;
    qrprodutoCEST: TWideStringField;
    qrprodutoORIGEM: TIntegerField;
    qrprodutoIND_CFOP_NFCE: TWideStringField;
    qrprodutoFOTOBD: TBlobField;
    qrprodutoID_TIPO_SERVICO: TIntegerField;
    qrprodutoNAO_MOVIMENTA_ESTOQUE: TWideStringField;
    qrprodutoPESAGEM_AUOTMATICA: TWideStringField;
    qrnotafiscal_itemCODNOTA: TWideStringField;
    qrnotafiscal_itemCODPRODUTO: TWideStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemCFOP: TWideStringField;
    qrnotafiscal_itemCODGRADE: TWideStringField;
    qrnotafiscal_itemSERIAL: TWideStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qrnotafiscal_itemCST: TWideStringField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TWideStringField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal_itemITEM: TIntegerField;
    qrnotafiscal_itemCODIGO: TWideStringField;
    qrnotafiscal_itemGRADE: TWideStringField;
    qrnotafiscal_itemOUTRAS: TFloatField;
    qrnotafiscal_itemPIS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemPIS_BASE: TFloatField;
    qrnotafiscal_itemPIS_VALOR: TFloatField;
    qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemCOFINS_BASE: TFloatField;
    qrnotafiscal_itemCOFINS_VALOR: TFloatField;
    qrnotafiscal_itemCODBARRA: TWideStringField;
    qrnotafiscal_itemALTERA_ITEM: TIntegerField;
    qrnotafiscal_itemCSOSN: TWideStringField;
    qrnotafiscal_itemCOMPLEMENTO: TWideStringField;
    qrnotafiscal_itemCEST: TWideStringField;
    qrnotafiscal_itemORIGEM: TIntegerField;
    qrnotafiscal_itemPFCP: TFloatField;
    qrnotafiscal_itemVBCFCP: TFloatField;
    qrnotafiscal_itemVFCP: TFloatField;
    qrnotafiscal_itemVBCFCPST: TFloatField;
    qrnotafiscal_itemPFCPST: TFloatField;
    qrnotafiscal_itemVFCPST: TFloatField;
    qrnotafiscal_itemPFCPSTRET: TFloatField;
    qrnotafiscal_itemVFCPSTRET: TFloatField;
    qrnotafiscal_itemPST: TFloatField;
    Label3: TLabel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Label4: TLabel;
    ecliente: TRzButtonEdit;
    qrCupomSEL: TWideStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    lbtotal: TLabel;
    Edit1: TEdit;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ok1Click(Sender: TObject);
    procedure cancela1Click(Sender: TObject);
    procedure btnAbreClick(Sender: TObject);
    procedure ckHojeClick(Sender: TObject);
    procedure ckNFeClick(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure cxGrid1DBTableView1SELPropertiesEditValueChanged(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Total;
  public
    { Public declarations }
  end;

var
  frmnotafiscal_importacupom: Tfrmnotafiscal_importacupom;
  peso_bruto, peso_liquido, desconto_anterior, qtde_anterior, valor_anterior, ipi_anterior, icms_anterior, base_anterior, icms_sub_anterior, base_sub_anterior: real;
  vqde_ant: double;
  vestoque: double;

implementation

uses
  principal, modulo, notafiscal, notafiscal_menu, xloc_cliente;

{$R *.dfm}

procedure Tfrmnotafiscal_importacupom.bcancelaClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotafiscal_importacupom.bconfirmaClick(Sender: TObject);
var
  vtotal, vsubtotal, vdesconto, vbaseicms, vvaloricms: double;
  vitem: integer;
  vcodvendedor, vnumero_nota, vcfop, vcodcliente, vcodfilial, vmodelo, vserie: string;
  vemissao, vsaida: TDateTime;
begin
  if not qrCupom.IsEmpty then begin

    if qrCupomNFE.AsString = 'S' then begin
      Application.messagebox('Já Foi Emitido Uma Nota Fiscal Para Esse Cupom!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
      exit;
    end;


    vtotal := 0;
    vsubtotal := 0;
    vdesconto := 0;
    vbaseicms := 0;
    vvaloricms := 0;

    ProgressBar1.Position := 0;

    query.Close;
    query.SQL.Clear;
    query.SQL.Add('select * from c000032 where cupom_numero = ''' + qrCupomCUPOM_NUMERO.AsString + '''');
    query.SQL.Add('and cupom_modelo = ''2D''');
    query.SQL.Add('order by cupom_item descending');
    query.Open;

    if query.RecordCount > 0 then begin

      ProgressBar1.Max := query.RecordCount;

      vnumero_nota := frmnotafiscal.ENUMERO.Text;
      vnumero_inclui_cupom := query.fieldbyname('cupom_numero').AsString;
      vcfop := frmnotafiscal.ecfop.Text;
      vcodcliente := frmnotafiscal.ecliente.Text;
      vcodfilial := frmnotafiscal.efilial.Text;
      vmodelo := frmnotafiscal.ecodmodelo.Text;
      vserie := frmnotafiscal.eserie.Text;
      vemissao := frmnotafiscal.edata_cadastro.Date;
      vsaida := frmnotafiscal.EDATA_SAIDA.Date;
      vcodvendedor := query.fieldbyname('codvendedor').AsString;
      qrnotafiscal_item.Close;
      qrnotafiscal_item.Open;
      while not query.Eof do begin

        if qrproduto.Locate('codigo', query.fieldbyname('codproduto').AsString, [loCaseInsensitive]) then begin
          qrnotafiscal_item.Insert;
          qrnotafiscal_item.FieldByName('CODIGO').AsString := frmprincipal.codifica('000032');
          qrnotafiscal_item.FieldByName('CODPRODUTO').AsString := query.fieldbyname('codproduto').AsString;
          qrnotafiscal_item.FieldByName('CODBARRA').Value := qrproduto.fieldbyname('CODBARRA').AsString;
          qrnotafiscal_item.FieldByName('codnota').AsString := frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
          qrnotafiscal_item.FieldByName('CODLANCAMENTO').AsString := qrnotafiscal_item.FieldByName('CODIGO').AsString;
          qrnotafiscal_item.FieldByName('PESO_BRUTO').AsFloat := qrproduto.fieldbyname('PESO').AsFloat;
          qrnotafiscal_item.FieldByName('PESO_LIQUIDO').AsFloat := qrproduto.fieldbyname('PESO_LIQUIDO').AsFloat;
          qrnotafiscal_item.FieldByName('qtde').AsFloat := query.fieldbyname('qtde').AsFloat;
          qrnotafiscal_item.FieldByName('UNITARIO').AsFloat := query.fieldbyname('unitario').AsFloat;
          qrnotafiscal_item.FieldByName('TOTAL').AsFloat := query.fieldbyname('total').AsFloat;
          qrnotafiscal_item.FieldByName('IPI').AsFloat := query.fieldbyname('ipi').AsFloat;
          qrnotafiscal_item.FieldByName('ICMS').AsFloat := qrproduto.fieldbyname('aliquota').AsFloat;
          qrnotafiscal_item.FieldByName('CFOP').AsString := frmnotafiscal.ecfop.Text;
          qrnotafiscal_item.FieldByName('CODGRADE').AsString := query.fieldbyname('codgrade').AsString;
          qrnotafiscal_item.FieldByName('SERIAL').AsString := query.fieldbyname('serial').AsString;
          qrnotafiscal_item.FieldByName('VALOR_IPI').AsFloat := query.fieldbyname('valor_ipi').AsFloat;
          qrnotafiscal_item.FieldByName('CLASSIFICACAO_FISCAL').AsString := qrprodutoCLASSIFICACAO_FISCAL.AsString;
          qrnotafiscal_item.FieldByName('CST').AsString := qrproduto.fieldbyname('cst').AsString;
          qrnotafiscal_itemCSOSN.AsString := qrprodutoCSOSN.AsString;
          qrnotafiscal_itemCEST.AsString := qrprodutoCEST.AsString;

          if query.fieldbyname('aliquota').AsFloat > 0 then begin
            qrnotafiscal_item.FieldByName('VALOR_ICMS').AsFloat := query.fieldbyname('total').AsFloat * query.fieldbyname('aliquota').AsFloat / 100;
            qrnotafiscal_item.FieldByName('BASE_CALCULO').AsFloat := query.fieldbyname('total').AsFloat;
          end
          else begin
            qrnotafiscal_item.FieldByName('VALOR_ICMS').AsFloat := 0;
            qrnotafiscal_item.FieldByName('BASE_CALCULO').AsFloat := 0;
          end;

          qrnotafiscal_item.FieldByName('ICMS_REDUZIDO').AsFloat := query.fieldbyname('icms_reduzido').AsFloat;
          qrnotafiscal_item.FieldByName('MARGEM_AGREGADA').AsFloat := 0;
          qrnotafiscal_item.FieldByName('BASE_SUB').AsFloat := 0;
          qrnotafiscal_item.FieldByName('ICMS_SUB').AsFloat := 0;
          qrnotafiscal_item.FieldByName('ISENTO').AsFloat := 0;
          qrnotafiscal_item.FieldByName('DESCONTO').AsFloat := query.fieldbyname('desconto').AsFloat;
          qrnotafiscal_item.FieldByName('SUBTOTAL').AsFloat := query.fieldbyname('total').AsFloat;
          qrnotafiscal_item.FieldByName('ITEM').AsString := query.fieldbyname('cupom_item').AsString;
          qrnotafiscal_item.FieldByName('GRADE').AsString := '';

          if qrproduto.FieldByName('piscofins').AsString = 'S' then begin
            qrnotafiscal_item.FieldByName('PIS_ALIQUOTA').AsFloat := frmmodulo.qrFilialPIS.AsFloat;
            qrnotafiscal_item.FieldByName('PIS_BASE').AsFloat := query.fieldbyname('total').AsFloat;
            qrnotafiscal_item.FieldByName('PIS_VALOR').AsFloat := (query.fieldbyname('total').AsFloat * frmmodulo.qrFilialPIS.AsFloat / 100);
            qrnotafiscal_item.FieldByName('COFINS_ALIQUOTA').AsFloat := frmmodulo.qrFilialCOFINS.AsFloat;
            qrnotafiscal_item.FieldByName('COFINS_BASE').AsFloat := query.fieldbyname('total').AsFloat;
            qrnotafiscal_item.FieldByName('COFINS_VALOR').AsFloat := (query.fieldbyname('total').AsFloat * frmmodulo.qrFilialCOFINS.AsFloat / 100);
          end
          else begin
            qrnotafiscal_item.FieldByName('PIS_ALIQUOTA').AsFloat := 0;
            qrnotafiscal_item.FieldByName('PIS_BASE').AsFloat := 0;
            qrnotafiscal_item.FieldByName('PIS_VALOR').AsFloat := 0;
            qrnotafiscal_item.FieldByName('COFINS_ALIQUOTA').AsFloat := 0;
            qrnotafiscal_item.FieldByName('COFINS_BASE').AsFloat := 0;
            qrnotafiscal_item.FieldByName('COFINS_VALOR').AsFloat := 0;
          end;
          qrnotafiscal_item.Post;
                //qrnotafiscal_item.FieldByName('CREDITO_ICMS').AsFloat := query.fieldbyname('credito_icms').AsFloat;
                //qrnotafiscal_item.Post;
        end;

        vtotal := vtotal + (query.fieldbyname('total').AsFloat);

        vsubtotal := vsubtotal + (query.fieldbyname('TOTAL').AsFloat - query.fieldbyname('desconto').AsFloat);
        vdesconto := vdesconto + (query.fieldbyname('desconto').AsFloat);

        if query.fieldbyname('aliquota').AsFloat > 0 then begin
          vbaseicms := vbaseicms + (query.fieldbyname('total').AsFloat - query.fieldbyname('desconto').AsFloat);
          vvaloricms := vvaloricms + (vbaseicms * query.fieldbyname('aliquota').AsFloat / 100);
        end;

        query.Next;
        vitem := vitem + 1;

        ProgressBar1.Position := ProgressBar1.Position + 1;
        Application.ProcessMessages;
      end;

//      frmnotafiscal_menu.qrnota.Close;
//      frmnotafiscal_menu.qrnota.SQL.Clear;
//      frmnotafiscal_menu.qrnota.SQL.Add('select * from c000061');
//      frmnotafiscal_menu.qrnota.Open;

//      frmnotafiscal_menu.qrnota.Insert;
//      frmnotafiscal_menu.qrnota.FieldByName('codigo').AsString := vnumero_inclui_nota;
//      frmnotafiscal_menu.qrnota.FieldByName('codfilial').AsString := vcodfilial;
//      frmnotafiscal_menu.qrnota.FieldByName('numero').AsString := vnumero_nota;
//      frmnotafiscal_menu.qrnota.FieldByName('cfop').AsString := vcfop;
//      frmnotafiscal_menu.qrnota.FieldByName('data').AsDateTime := vemissao;
//      frmnotafiscal_menu.qrnota.FieldByName('data_saida').AsDateTime := vsaida;
//      frmnotafiscal_menu.qrnota.FieldByName('codcliente').AsString := vcodcliente;
//      frmnotafiscal_menu.qrnota.FieldByName('hora').AsString := TimeToStr(time);
//      frmnotafiscal_menu.qrnota.FieldByName('modelo_nf').AsString := vmodelo;
//      frmnotafiscal_menu.qrnota.FieldByName('serie_nf').AsString := vserie;
//      frmnotafiscal_menu.qrnota.FieldByName('tipo').AsString := 'S';
//      frmnotafiscal_menu.qrnota.FieldByName('codvendedor').AsString := vcodvendedor;

//      frmnotafiscal_menu.qrnota.fieldbyname('situacao').asinteger := 1;
//      frmnotafiscal_menu.qrnota.fieldbyname('baixa_estoque').AsString := 'S';
//      frmnotafiscal_menu.qrnota.fieldbyname('sit').AsString := 'N';
//      frmnotafiscal_menu.qrnota.fieldbyname('movimento').AsString := 'S';
//      frmnotafiscal_menu.qrnota.FieldByName('INF1').AsString := 'REF. AO CUPOM NÚMERO ' + qrCupomCUPOM_NUMERO.AsString;
//      frmnotafiscal_menu.qrnota.FieldByName('BAIXA_ESTOQUE').AsString := 'N';
      frmnotafiscal_menu.qrnota.FieldByName('itens').asinteger := vitem;
      frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat := vbaseicms;
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := vvaloricms;
      frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat := query.fieldbyname('valor_ipi').asfloat;
      frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat := vtotal;
      frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := vdesconto;
      frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat := vtotal - vdesconto;
      query.Close;
      query.SQL.Clear;
      query.SQL.Add('update c000032 set cupom_modelo = ''01'' where cupom_numero = ''' + qrCupomCUPOM_NUMERO.AsString + '''');
      query.ExecSQL;
      if not(frmnotafiscal_menu.qrnota.State in [dsEdit, dsInsert]) then
        frmnotafiscal_menu.qrnota.Edit;

      frmmodulo.conexao.commit;

      ProgressBar1.Position := 0;
      Application.messagebox('Cupom Importado com sucesso!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
      close;
    end else begin
      Application.messagebox('Cupom Não Encontrado!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    end;
  end;
end;

procedure Tfrmnotafiscal_importacupom.btnAbreClick(Sender: TObject);
begin
  qrCupom.Close;
  qrCupom.SQL.Clear;
  qrCupom.SQL.Add('select ''S'' sel, cup.cupom_numero, cup.data, sum(cup.total) - sum(cup.desconto) total, cup.nfce,');
  qrCupom.SQL.Add('  case cup.cupom_modelo when ''2D'' then');
  qrCupom.SQL.Add('    ''N'' else ''S'' end nfe');
  qrCupom.SQL.Add('from c000032 cup where');
  if ckNFe.Checked then
    qrCupom.SQL.Add('  cup.cupom_modelo = ''2D''')
  else
    qrCupom.SQL.Add('  (cup.cupom_modelo = ''2D'' or cup.cupom_modelo = ''01'')');
  if (ecliente.Text <> '') and  (ecliente.Text <> '000000') then
    qrCupom.SQL.Add(' and cup.codcliente = ' + QuotedStr(ecliente.Text));
  if (DateEdit1.Date > 0) then
    qrCupom.SQL.Add(' and cup.data >= ' + QuotedStr(FormatDateTime('DD.MM.YYYY',DateEdit1.Date)));
  if (DateEdit2.Date > 0) then
    qrCupom.SQL.Add(' and cup.data <= ' + QuotedStr(FormatDateTime('DD.MM.YYYY',DateEdit2.Date)));
  qrCupom.SQL.Add(' and coalesce(cup.cupom_numero, '''') <> ''''');
  if ckHoje.Checked then
    qrCupom.SQL.Add(' and cup.data = ' + QuotedStr(FormatDateTime('DD.MM.YYYY', Date)));
  qrCupom.SQL.Add('group by cup.cupom_numero, cup.data, cup.nfce, cup.cupom_modelo');
  qrCupom.Open;
  CheckBox1.Checked := True;
  Total;
end;

procedure Tfrmnotafiscal_importacupom.FormShow(Sender: TObject);
begin
  DateEdit1.Date := StartOfTheMonth(Date-30);
  DateEdit2.Date := EndOfTheMonth(Date-30);
  frmmodulo.qrFilial.Open;
  qrproduto.open;
  btnAbre.Click;
end;

procedure Tfrmnotafiscal_importacupom.ok1Click(Sender: TObject);
begin
  bconfirmaClick(frmnotafiscal_importacupom);
end;

procedure Tfrmnotafiscal_importacupom.Total;
var
  Total:Double;
  Local:String;
begin
  Total := 0;
  if (qrCupom.Active) and not(qrCupom.IsEmpty) then begin
    try
      Local :=qrCupomCUPOM_NUMERO.AsString;
      qrCupom.DisableControls;
      qrCupom.First;
      while not qrCupom.Eof do begin
        if qrCupomSEL.AsString = 'S' then
          Total := Total + qrCupomTOTAL.AsFloat;
        qrCupom.Next;
      end;
      qrCupom.First;
    finally
      qrCupom.Locate('CUPOM_NUMERO',Local,[loCaseInsensitive]);
      qrCupom.EnableControls;
    end;
  end;
  lbtotal.Caption := 'Total R$ ' + FormatFloat('#,##0.00',Total);
end;

procedure Tfrmnotafiscal_importacupom.cancela1Click(Sender: TObject);
begin
  bcancelaClick(frmnotafiscal_importacupom);
end;

procedure Tfrmnotafiscal_importacupom.CheckBox1Click(Sender: TObject);
begin
  if (qrCupom.Active) and not(qrCupom.IsEmpty) then begin
    try
      qrCupom.DisableControls;
      qrCupom.First;
      while not qrCupom.Eof do begin
        qrCupom.Edit;
        if CheckBox1.Checked then
          qrCupomSEL.AsString := 'S'
        else
          qrCupomSEL.AsString := 'N';
        qrCupom.Post;
        qrCupom.Next;
      end;
      qrCupom.First;
    finally
      qrCupom.EnableControls;
    end;
  end;
  Total;
end;

procedure Tfrmnotafiscal_importacupom.ckHojeClick(Sender: TObject);
begin
  btnAbre.Click;
end;

procedure Tfrmnotafiscal_importacupom.ckNFeClick(Sender: TObject);
begin
  btnAbre.Click;
end;

procedure Tfrmnotafiscal_importacupom.cxGrid1DBTableView1SELPropertiesEditValueChanged(
  Sender: TObject);
begin
  Total;
end;

procedure Tfrmnotafiscal_importacupom.DateEdit1Exit(Sender: TObject);
begin
  btnAbre.Click;
end;

procedure Tfrmnotafiscal_importacupom.DateEdit2Exit(Sender: TObject);
begin
  btnAbre.Click;
end;

procedure Tfrmnotafiscal_importacupom.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then begin
    ecliente.Text := resultado_pesquisa1;
    Edit1.text := resultado_pesquisa2;
  end else begin
    ecliente.Text := '';
    Edit1.text := '';
  end;
end;

procedure Tfrmnotafiscal_importacupom.eclienteExit(Sender: TObject);
begin
  if ecliente.Text = '' then begin
    Edit1.Clear;
  end else begin
    ecliente.text := frmprincipal.zerarcodigo(ecliente.text, 6);
    if ecliente.text <> '000000' then begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.sql.clear;
      frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' + ecliente.text + '''');
      frmmodulo.qrcliente.Open;
      if frmmodulo.qrcliente.RecordCount = 0 then begin
        application.messagebox('Cliente não cadastrado!', 'Aviso', mb_ok + mb_iconwarning);
        ecliente.text := '';
        ecliente.setfocus;
        exit;
      end
      else begin
        Edit1.text := frmmodulo.qrclienteNOME.asstring;
      end;
    end else begin
      eclienteButtonClick(frmnotafiscal);
    end;
  end;
  btnAbre.Click;
end;

procedure Tfrmnotafiscal_importacupom.eclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.


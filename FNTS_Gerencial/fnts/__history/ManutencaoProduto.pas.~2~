unit ManutencaoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvMetroButton,
  Vcl.StdCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, AdvGlowButton, Vcl.Mask, RzEdit, RzBtnEdt, ZSqlUpdate, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCalc, cxCurrencyEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmManutencaoProduto = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    pnl1: TPanel;
    qrProduto: TZQuery;
    dsProduto: TDataSource;
    qrgrade_produto: TZQuery;
    qrgrade_produtoNUMERACAO: TWideStringField;
    qrgrade_produtoCODBARRA: TWideStringField;
    qrgrade_produtoESTOQUE: TFloatField;
    qrgrade_produtoCODIGO: TWideStringField;
    qrgrade_produtoCODPRODUTO: TWideStringField;
    qrgrade_produtoCOR: TWideStringField;
    Panel2: TPanel;
    edGrupo: TRzButtonEdit;
    edDesGrupo: TRzEdit;
    Label36: TLabel;
    edSubGrupo: TRzButtonEdit;
    edDesSubGrupo: TRzEdit;
    Label1: TLabel;
    BFILTRO: TAdvGlowButton;
    qrProdutoCODIGO: TWideStringField;
    qrProdutoCODBARRA: TWideStringField;
    qrProdutoPRODUTO: TWideStringField;
    qrProdutoUNIDADE: TWideStringField;
    qrProdutoESTOQUE_ATUAL: TFloatField;
    qrProdutoPRECOCUSTO: TFloatField;
    qrProdutoPRECOVENDA: TFloatField;
    qrProdutoESTOQUEMINIMO: TFloatField;
    qrProdutoATIVA: TWideStringField;
    qrProdutoUSA_GRADE: TIntegerField;
    qryTmp: TZQuery;
    upProduto: TZUpdateSQL;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODBARRA: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1ESTOQUE_ATUAL: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOCUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1ESTOQUEMINIMO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    Label2: TLabel;
    edDesProduto: TRzEdit;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure edGrupoButtonClick(Sender: TObject);
    procedure edGrupoExit(Sender: TObject);
    procedure edSubGrupoButtonClick(Sender: TObject);
    procedure edSubGrupoExit(Sender: TObject);
    procedure BFILTROClick(Sender: TObject);
    procedure qrProdutoAfterPost(DataSet: TDataSet);
    procedure qrProdutoBeforeDelete(DataSet: TDataSet);
    procedure qrProdutoAfterApplyUpdates(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edSubGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure qrProdutoBeforeEdit(DataSet: TDataSet);
    procedure edDesProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    EstoqueAtual:Double;
  public
    { Public declarations }
  end;

var
  frmManutencaoProduto: TfrmManutencaoProduto;

implementation

uses modulo, loc_grupo, loc_subgrupo, Principal, AjustaGradeProduto, UFuncoes;

{$R *.dfm}

procedure TfrmManutencaoProduto.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmManutencaoProduto.BFILTROClick(Sender: TObject);
begin
  if qrProduto.State = dsEdit then
    if Application.MessageBox('Existem alterações não salvas, Deseja Salvar?','Atenção!',MB_ICONQUESTION+MB_YESNO)=mrYes then
      qrProduto.Post
    else
      qrProduto.Cancel;
  qrProduto.Close;
  qrProduto.SQL.Clear;
  qrProduto.SQL.Add('select pro.codigo,  pro.codbarra, pro.produto, pro.unidade, est.estoque_atual,');
  qrProduto.SQL.Add('pro.precocusto,pro.precovenda, pro.estoqueminimo, pro.ativa, pro.usa_grade from c000025 pro inner join c000100 est on est.codproduto = pro.codigo where 1=1');
  if (edGrupo.Text <> '') and (edGrupo.Text <> '000000') then
    qrProduto.SQL.Add(' and pro.codgrupo = ' + QuotedStr(edGrupo.Text));
  if (edSubGrupo.Text <> '') and (edSubGrupo.Text <> '000000') then
    qrProduto.SQL.Add(' and pro.codsubgrupo = ' + QuotedStr(edSubGrupo.Text));
  if (edDesProduto.Text <> '') then
    qrProduto.SQL.Add(' and pro.produto containing (' + QuotedStr(edDesProduto.Text) + ')');
  qrProduto.SQL.Add('order by pro.codigo');
  qrProduto.Open;
end;

procedure TfrmManutencaoProduto.edDesProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_RETURN then begin
 BFILTROClick(Sender);

end;


end;

procedure TfrmManutencaoProduto.edGrupoButtonClick(Sender: TObject);
begin
  frmloc_grupo := tfrmloc_grupo.create(self);
  frmloc_grupo.showmodal;
  edGrupo.Text := FRMMODULO.qrGRUPO.FieldByName('codigo').AsString;
  edDesGrupo.Text := FRMMODULO.qrgrupo.FieldByName('GRUPO').AsString;
  edSubGrupo.SetFocus;
end;

procedure TfrmManutencaoProduto.edGrupoExit(Sender: TObject);
begin
  if edGrupo.Text <> '' then begin
    edGrupo.Text := frmprincipal.zerarcodigo(edGrupo.Text, 6);
    if edGrupo.Text <> '000000' then begin
      if not frmprincipal.Locregistro(FRMMODULO.qrGRUPO, edGrupo.Text, 'codigo') then begin
        edGrupo.SetFocus;
        exit;
      end else begin
        edsubgrupo.SetFocus;
        edDesGrupo.Text := FRMMODULO.qrgrupo.FieldByName('GRUPO').AsString;
      end;
    end else begin
      edDesGrupo.Clear;
      edGrupo.Clear;
    end;
  end else
    edDesGrupo.Clear;
end;

procedure TfrmManutencaoProduto.edGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmManutencaoProduto.edSubGrupoButtonClick(Sender: TObject);
begin
  if (edGrupo.Text = '') or (edGrupo.Text = '000000') then begin
    Application.MessageBox('informe o Grupo para poder selecionar os sub-grupos do grupo.','Atenção!',MB_ICONINFORMATION);
    edGrupo.SetFocus;
    exit;
  end;
  FRMMODULO.qrSUBGRUPO.close;
  FRMMODULO.qrSUBGRUPO.sql.clear;
  FRMMODULO.qrSUBGRUPO.sql.add('select * from c000018 where codgrupo = ''' +
      edGrupo.Text + ''' order by SUBGRUPO');
  FRMMODULO.qrSUBGRUPO.OPEN;
  FRMMODULO.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  if not FRMMODULO.qrSUBGRUPO.IsEmpty then begin
    edSubGrupo.Text := FRMMODULO.qrSUBGRUPO.FieldByName('codigo').AsString;
    edDesSubGrupo.Text := FRMMODULO.qrSUBGRUPO.FieldByName('subgrupo').AsString;
  end;
end;

procedure TfrmManutencaoProduto.edSubGrupoExit(Sender: TObject);
begin
  if edSubGrupo.Text <> '' then begin
    edSubGrupo.Text := frmprincipal.zerarcodigo(edSubGrupo.Text, 6);
    FRMMODULO.qrSUBGRUPO.close;
    FRMMODULO.qrSUBGRUPO.sql.clear;
    FRMMODULO.qrSUBGRUPO.sql.add('select * from c000018 where codgrupo = ''' +
        edGrupo.Text + ''' order by SUBGRUPO');
    FRMMODULO.qrSUBGRUPO.OPEN;
    FRMMODULO.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
    if edSubGrupo.Text <> '000000' then begin
      if not frmprincipal.Locregistro(FRMMODULO.qrSUBGRUPO, edSubGrupo.Text,'codigo') then begin
        edSubGrupo.SetFocus;
        exit;
      end else begin
        edDesSubGrupo.Text := FRMMODULO.qrSUBGRUPO.FieldByName('subgrupo').AsString;
      end;
    end else begin
      edSubGrupo.Clear;
      edDesSubGrupo.Clear;
    end;
  end else begin
    edDesSubGrupo.Clear;
  end;
end;

procedure TfrmManutencaoProduto.edSubGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmManutencaoProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qrProduto.State = dsEdit then
    if Application.MessageBox('Existem alterações não salvas, Deseja Salvar?','Atenção!',MB_ICONQUESTION+MB_YESNO)=mrYes then
      qrProduto.Post
    else
      qrProduto.Cancel;
end;

procedure TfrmManutencaoProduto.FormShow(Sender: TObject);
begin
  FRMMODULO.qrGRUPO.Open;
end;

procedure TfrmManutencaoProduto.qrProdutoAfterApplyUpdates(Sender: TObject);
begin
  frmmodulo.conexao.commit;
end;

procedure TfrmManutencaoProduto.qrProdutoAfterPost(DataSet: TDataSet);
var
  MovEstoque:Double;
begin
  try
    if EstoqueAtual <> qrProdutoESTOQUE_ATUAL.AsFloat then begin
      if qrProdutoUSA_GRADE.AsInteger = 1 then
        ManutencaoGradeProduto(qrProdutoCODIGO.AsString,qrProdutoESTOQUE_ATUAL.AsFloat);
      MovEstoque := qrProdutoESTOQUE_ATUAL.AsFloat - EstoqueAtual;
      FRMMODULO.QRPRODUTO_MOV.CLOSE;
      FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
      FRMMODULO.QRPRODUTO_MOV.SQL.Add('insert into c000032');
      frmmodulo.qrproduto_mov.SQL.add('(codigo,codnota,serial,numeronota,');
      frmmodulo.qrproduto_mov.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
      frmmodulo.qrproduto_mov.SQL.add('total,unidade,aliquota,');
      frmmodulo.qrproduto_mov.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
      frmmodulo.qrproduto_mov.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
      frmmodulo.qrproduto_mov.SQL.add('values');
      frmmodulo.qrproduto_mov.SQL.add('(''' + frmprincipal.codifica('000032') + ''',''000000'',''000000'',''000000'',');
      frmmodulo.qrproduto_mov.SQL.add('''' + qrProdutoCODIGO.AsString + ''',:QTDE,:UNITARIO,:movimento_estoque,');
      frmmodulo.qrproduto_mov.SQL.add(':TOTAL,''' + qrProdutoUNIDADE.AsString + ''',:ALIQUOTA,');
      frmmodulo.qrproduto_mov.SQL.add('''001'',''000000'','''',');
      frmmodulo.qrproduto_mov.SQL.add(''''','''',''000000'',''S/VEND'',10,:datax,''000'')');
      FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('datax').asdatetime := Date;
      FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('UNITARIO').ASFLOAT := 0;
          if MovEstoque > 0 then begin
        FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE').ASFLOAT := MovEstoque;
        FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('TOTAL').ASFLOAT := 0;
        FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('movimento_estoque').ASFLOAT := MovEstoque;
      end else begin
        FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE').ASFLOAT := MovEstoque;
        FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('TOTAL').ASFLOAT := 0;
        FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('movimento_estoque').ASFLOAT := MovEstoque;
      end;
      FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
      frmmodulo.qrproduto_mov.ExecSQL;
      qryTmp.SQL.Clear;
      qryTmp.SQL.Add('update c000100 set');
      qryTmp.SQL.Add('estoque_atual = ' + ConValor(qrProdutoESTOQUE_ATUAL.AsFloat));
//      if MovEstoque > 0 then
//        qryTmp.SQL.Add(', entradas = entradas + ' + ConValor(MovEstoque));
//      if MovEstoque < 0 then
//        qryTmp.SQL.Add(', saidas = saidas + ' + ConValor(MovEstoque));
      qryTmp.SQL.Add('where codproduto = ' + QuotedStr(qrProdutoCODIGO.AsString));
      qryTmp.SQL.Add('and codfilial = ' + QuotedStr(frmmodulo.qrFilialCODIGO.AsString));
      qryTmp.ExecSQL;
    end;
    qrProduto.ApplyUpdates;
  except
    on e:Exception do begin
      frmmodulo.conexao.Rollback;
      Application.MessageBox(PwideChar('Ocorreu um erro no processo:'+#13+e.Message),'Atenção',MB_ICONINFORMATION);
    end;
  end;

end;

procedure TfrmManutencaoProduto.qrProdutoBeforeDelete(DataSet: TDataSet);
begin
  qrProduto.Cancel;
end;

procedure TfrmManutencaoProduto.qrProdutoBeforeEdit(DataSet: TDataSet);
begin
  EstoqueAtual := qrProdutoESTOQUE_ATUAL.AsFloat;
end;

end.

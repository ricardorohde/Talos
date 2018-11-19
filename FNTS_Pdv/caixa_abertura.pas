unit caixa_abertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus,  StdCtrls, Mask, RzEdit, ExtCtrls,
  ComCtrls, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, RzTabs, DB, DBAccess,
  XPMan, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  Uni, MemDS, JvExMask, JvToolEdit;

type
  TfrmCaixa_Abertura = class(TForm)
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    AdvPopupMenu1: TAdvPopupMenu;
    MenuItem2: TMenuItem;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ed_operador: TRzEdit;
    ed_data: TJvDateEdit;
    ed_ecf: TRzEdit;
    Panel1: TPanel;
    bt_ok: TButton;
    StatusBar1: TStatusBar;
    grid_venda: TNextGrid;
    NxTextColumn8: TNxTextColumn;
    NxDateColumn2: TNxDateColumn;
    NxTextColumn9: TNxTextColumn;
    NxNumberColumn14: TNxNumberColumn;
    NxTextColumn10: TNxTextColumn;
    NxNumberColumn15: TNxNumberColumn;
    NxNumberColumn16: TNxNumberColumn;
    NxNumberColumn17: TNxNumberColumn;
    NxNumberColumn18: TNxNumberColumn;
    //qrPre_Venda: TIBCQuery;
    TabSheet3: TRzTabSheet;
    grid_dav: TNextGrid;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn11: TNxNumberColumn;
  //  qrDAV: TIBCQuery;
    TabSheet4: TRzTabSheet;
    grid_abastecimento: TNextGrid;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn13: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    NxTextColumn15: TNxTextColumn;
    NxNumberColumn20: TNxNumberColumn;
    NxNumberColumn21: TNxNumberColumn;
    NxNumberColumn22: TNxNumberColumn;
    NxNumberColumn23: TNxNumberColumn;
    NxNumberColumn24: TNxNumberColumn;
    NxNumberColumn25: TNxNumberColumn;
    NxTextColumn17: TNxTextColumn;
   // qrAbastecimento: TIBCQuery;
  //  qrEncerrante: TIBCQuery;
    bt_cupom_encerrante: TButton;
    XPManifest1: TXPManifest;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    qrPre_Venda: TUniQuery;
    qrDAV: TUniQuery;
    qrAbastecimento: TUniQuery;
    qrEncerrante: TUniQuery;
    procedure bt_okClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixa_Abertura: TfrmCaixa_Abertura;

implementation

uses funcoes, modulo, principal, msg_Operador,
  suprimento, venda, UFuncoes;

{$R *.dfm}


procedure TfrmCaixa_Abertura.bt_okClick(Sender: TObject);
begin
  (*Emitir leitura x*)

  sNumero_Cupom := Zerar( FloatToStr( max('')), 5);

  frmMsg_operador.Hide;

  frmmodulo.query.close;
  frmmodulo.query.sql.clear;
  frmmodulo.query.sql.add('update config set caixa_data_movto = :data, caixa_situacao = ''ABERTO'',');
  frmmodulo.query.sql.add('CAIXA_COO_INICIAL = '''+sNumero_Cupom+'''');
  frmmodulo.query.ParamByName('data').asdatetime := ed_data.Date;
  frmmodulo.query.ExecSQL;

  if Application.MessageBox('Deseja lançar algum suprimento?','Aviso',mb_yesno+MB_ICONQUESTION) = idYes then
  begin
    frmsuprimento := tfrmsuprimento.create(self);
    frmsuprimento.showmodal;
  end;


  bCaixa_aberto := true;
  close;
end;

procedure TfrmCaixa_Abertura.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCaixa_Abertura.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCaixa_Abertura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCaixa_Abertura.FormShow(Sender: TObject);
var i : integer;
begin
  ed_data.Date := dData_Sistema;
  ed_operador.Text := sNome_Operador;
  ed_ecf.Text := sCaixa;


{  if bServidor_Conexao then begin
    // Data abertura: 01/08

    qrPre_Venda.CLOSE;
    qrPre_Venda.SQL.CLEAR;
    qrPre_Venda.SQL.ADD('select');
    qrPre_Venda.SQL.ADD('  c000074.*,');
    qrPre_Venda.SQL.ADD('  c000007.Nome Cliente,');
    qrPre_Venda.SQL.ADD('  c000008.Nome Vendedor');
    qrPre_Venda.SQL.ADD('from');
    qrPre_Venda.SQL.ADD('  c000074, c000007, c000008');
    qrPre_Venda.SQL.ADD('where');
    qrPre_Venda.SQL.ADD('  c000074.codcliente = c000007.codigo and');
    qrPre_Venda.SQL.ADD('  c000074.codvendedor = c000008.codigo and');
    qrPre_Venda.SQL.ADD('  c000074.tipo <> 9 and');
    qrPre_Venda.sql.add('  c000074.situacao = 1');
    qrpre_venda.sql.add('  and c000074.data <= :datam'); //09/09
    qrPre_Venda.sql.add('ORDER BY c000074.CODIGO');
    qrpre_venda.ParamByName('datam').asdatetime := ed_data.date - 2;
    qrPre_Venda.OPEN;

    grid_venda.ClearRows;

    qrpre_venda.First;
    while not qrpre_venda.Eof do
    begin
      i := grid_venda.AddRow(1);
      grid_venda.Cell[0,i].Asstring := qrPre_Venda.fieldbyname('codigo').asstring;
      grid_venda.Cell[1,i].AsDateTime := qrpre_venda.fieldbyname('data').asdatetime;
      grid_venda.Cell[2,i].Asstring := qrPre_Venda.fieldbyname('cliente').asstring;
      grid_venda.Cell[3,i].Asfloat := qrPre_Venda.fieldbyname('total').asfloat;
      grid_venda.Cell[4,i].Asstring := qrPre_Venda.fieldbyname('vendedor').asstring;
      grid_venda.Cell[5,i].Asinteger := qrPre_Venda.fieldbyname('codcliente').asinteger;
      grid_venda.Cell[6,i].Asinteger := qrPre_Venda.fieldbyname('codvendedor').asinteger;
      grid_venda.Cell[7,i].Asfloat := qrPre_Venda.fieldbyname('desconto').asfloat;
      grid_venda.Cell[8,i].Asfloat := qrPre_Venda.fieldbyname('acrescimo').asfloat;
      qrpre_venda.Next;
    end;
  end;
  if grid_venda.RowCount > 0 then begin
    for i := 0 to grid_venda.RowCount - 1 do begin
      frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando pré-venda nº '+grid_venda.cell[0,i].asstring+'...';
      frmMsg_Operador.Show;
      frmMsg_Operador.Refresh;
      bLanca_pre_venda := true;
      with frmVenda do begin
        if not Abre_Venda then begin
          // Caso o comando de abertura de venda retornou false, abortar o processo;
          // fazer o cancelamento apos emissao da reducao Z!
          application.MessageBox('Não foi possível cancelar as pré-vendas!'+#13+
                                 'O sistema repetirá o processo após a emissão da redução Z!',
                                 'Atenção',mb_ok+MB_ICONWARNING);
          break;
        end else begin
          iPre_venda_codigo := grid_venda.cell[0,i].AsInteger;
          sPre_Venda_Numero := 'PV'+ZERAR(grid_venda.Cell[0,i].asSTRING,10);
          frmmodulo.query_servidor.Close;
          frmmodulo.query_servidor.SQL.Clear;
          frmmodulo.query_servidor.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota');
          frmmodulo.query_servidor.sql.add('from c000075 orc,');
          frmmodulo.query_servidor.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+
                          grid_venda.cell[0,i].asstring+'''');
          frmmodulo.query_servidor.SQL.Add('and data = :vdat');
          frmmodulo.query_servidor.params.ParamByName('vdat').AsDateTime := grid_venda.Cell[1,i].AsDateTime;
          frmmodulo.query_servidor.Open;

          // vender os itens
          // rodar a query do modulo filtrada com os produtos da pre-venda
          frmmodulo.query_servidor.first;
          while not frmmodulo.query_servidor.eof do begin
            sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
            sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
            sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
            rProd_aliquota := frmmodulo.query_servidor.fieldbyname('aliquota').asfloat;
            iProd_codigo := frmmodulo.query_servidor.fieldbyname('codproduto').asinteger;
            sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring;
            rProd_qtde    := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
            rProd_preco   := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
            rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
            rProd_desconto := frmmodulo.query_servidor.fieldbyname('desconto').asfloat;
            rProd_acrescimo := frmmodulo.query_servidor.fieldbyname('acrescimo').asfloat;
            // registrar o item
            Registra_Item;
            Application.ProcessMessages;
            frmmodulo.query_servidor.next;
          end;
          Cancela_cupom_aberto;
        end;
      end;
      Application.processmessages;
    end;
  end;
  qrdav.close;
  qrdav.sql.clear;
  qrdav.sql.add('select * from DAV');
  qrdav.sql.add('where ECF = '''+sCaixa+'''');
  qrdav.sql.add('and data >= :datai');
  qrdav.sql.add('order by numero, data');
  qrdav.parambyname('datai').asdatetime := ed_data.date-1;
  qrdav.open;

  grid_dav.ClearRows;
  qrdav.first;
  while not qrdav.eof do
  begin
    i := grid_dav.AddRow(1);
    grid_dav.Cell[0,i].asstring := qrdav.fieldbyname('coo').asstring;
    grid_dav.Cell[1,i].asstring := qrdav.fieldbyname('NUMERO').asstring;
    grid_dav.Cell[2,i].asstring := qrdav.fieldbyname('TITULO').asstring;
    grid_dav.Cell[3,i].asFLOAT := qrdav.fieldbyname('VALOR').asFLOAT;
    qrdav.Next;
  end;   }

end;

end.

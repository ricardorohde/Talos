unit mesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, AdvOfficeImage, StdCtrls,
  RzLabel, jpeg, ExtCtrls, Menus, AdvMenus, DB, DBAccess, pngimage, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, Uni,
  MemDS, frxClass, frxDBSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmMesas = class(TForm)
    lb_cliente: TRzLabel;
    grid_venda: TNextGrid;
    pop_principal: TAdvPopupMenu;
    Retornar1: TMenuItem;
    Finalizar1: TMenuItem;
    Cancelar1: TMenuItem;
    N2: TMenuItem;
  //  qrMesa: TIBCQuery;
    tm_Atualiza: TTimer;
    Imprimir1: TMenuItem;
  //  QRITEM: TIBCQuery;
    NxNumberColumn1: TNxNumberColumn;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    imgFundo: TImage;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label17: TLabel;
    img_cliente: TAdvOfficeImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    qrMesa: TUniQuery;
    QRITEM: TUniQuery;
    qrtmp: TUniQuery;
    frFilial: TfrxDBDataset;
    frProdutos: TfrxDBDataset;
    frComanda: TfrxReport;
    qrProdutos: TUniQuery;
    qrProdutosCODIGO: TStringField;
    qrProdutosDATA: TDateField;
    qrProdutosHORA: TStringField;
    qrProdutosPERGUNTOU_COMISSAO: TStringField;
    qrProdutosCLIENTE_AUTORIZOU: TStringField;
    qrProdutosCOD_FUNCIONARIO: TStringField;
    qrProdutosNOME: TStringField;
    qrProdutosCOD_PRODUTO: TStringField;
    qrProdutosPRODUTO: TStringField;
    qrProdutosCOD_LANCAMENTO: TIntegerField;
    qrProdutosQTDE: TFloatField;
    qrProdutosUNITARIO: TFloatField;
    qrProdutosTOTAL: TFloatField;
    qrProdutosIMPRESSO: TStringField;
    qrProdutosTRANSF_MESA: TIntegerField;
    qrProdutosCOMPLEMENTO: TStringField;
    qrProdutosEXTRA: TBlobField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Retornar1Click(Sender: TObject);
    procedure tm_AtualizaTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure frComandaBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
    mTotal_Comissao,
    mTotal_Venda,
    mTotal_Couvert:Double;
  public
    { Public declarations }
  end;

var
  frmMesas: TfrmMesas;

implementation

uses modulo, funcoes, principal, msg_Operador, venda, senha_supervisor,
  UFuncoes;

{$R *.dfm}

procedure TfrmMesas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmMesas.FormCreate(Sender: TObject);
begin
  Self.DoubleBuffered := True;
  left := 0;
  top := 0;
end;

procedure TfrmMesas.Retornar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmMesas.tm_AtualizaTimer(Sender: TObject);
var
  i : integer;
  x : integer;
sNumero_dav : string;
begin
  if grid_venda.RowCount > 0 then
    if grid_venda.SelectedRow >= 0 then
      x := grid_venda.SelectedRow;


  tm_Atualiza.Enabled := false;

  qrMesa.close;
  qrMesa.sql.clear;
  qrMesa.sql.add('select sum(r000002.total) soma,');
  qrMesa.sql.add('r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('from r000001, r000002');
  qrMesa.sql.add('where r000001.codigo = r000002.cod_mesa');
  qrMesa.sql.add('group by r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('order by r000001.codigo');
  qrMesa.open;

  grid_venda.ClearRows;

  qrMesa.First;
  while not qrMesa.Eof do begin
    i := grid_venda.AddRow(1);
    grid_venda.Cell[0,i].Asstring := qrMesa.fieldbyname('codigo').asstring;
    grid_venda.Cell[1,i].Asdatetime := qrMesa.fieldbyname('data').asdatetime;
    grid_venda.Cell[2,i].Asstring := qrMesa.fieldbyname('hora').asstring;
    grid_venda.Cell[3,i].Asfloat := qrMesa.fieldbyname('soma').asfloat;
    qrMesa.Next;
  end;
  grid_venda.SelectedRow := x;
  grid_venda.SetFocus;
  tm_Atualiza.Enabled := true;
end;

procedure TfrmMesas.FormShow(Sender: TObject);
begin
  tm_AtualizaTimer(frmMesas);
end;

procedure TfrmMesas.frComandaBeforePrint(Sender: TfrxReportComponent);
begin
  if Sender is TfrxMemoView then begin
    if TfrxMemoView(Sender).Name = 'cpTotal' then
      TfrxMemoView(Sender).Text := FormatFloat('#,##0.00',mTotal_Venda);
    if TfrxMemoView(Sender).Name = 'cptaxa' then
      TfrxMemoView(Sender).Text := FormatFloat('#,##0.00',mTotal_Comissao);
    if TfrxMemoView(Sender).Name = 'cpCouvert' then
      TfrxMemoView(Sender).Text := FormatFloat('#,##0.00',mTotal_Couvert);
  end;
end;

procedure TfrmMesas.Finalizar1Click(Sender: TObject);
var
  i : integer;
begin
  if grid_venda.RowCount = 0 then
    exit;
  if grid_venda.SelectedRow < 0 then begin
    application.MessageBox('Favor selecionar uma mesa','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;
  i := grid_venda.SelectedRow;
  // filtrar os produtos
  frmmodulo.query_servidor.close;
  frmmodulo.query_servidor.sql.clear;
  frmmodulo.query_servidor.SQL.add('select r000002.*, C000025.produto, C000025.unidade,');
  frmmodulo.query_servidor.sql.add('c000025.cst, c000025.aliquota, c000025.codbarra');
  frmmodulo.query_servidor.sql.add('from r000002, c000025');
  frmmodulo.query_servidor.sql.add('where r000002.cod_produto = c000025.codigo');
  frmmodulo.query_servidor.sql.add('and r000002.cod_mesa = '+grid_venda.Cell[0,grid_venda.selectedrow].asstring);
  frmmodulo.query_servidor.sql.add('order by r000002.codigo');
  frmmodulo.query_servidor.open;
  qritem.close;
  qritem.sql.clear;
  qritem.sql.add('select * from r000001');
  qritem.sql.add('where codigo = '+grid_venda.Cell[0,grid_venda.selectedrow].asstring);
  qritem.open;
  if (frmmodulo.query_servidor.RecordCount = 0) and (qritem.RecordCount = 0) then begin
    Application.messagebox('Não tem itens lançados para esta Mesa!','Atenção!',mb_ok+mb_ICONerror);
  end else begin
    if application.messagebox('Confirma a impressão do cupom para esta mesa?','Atenção',mb_yesno+MB_ICONQUESTION) = idYes then begin
      if qritem.FieldByName('perguntou_comissao').AsString = 'N' then begin
        qrtmp.SQL.Clear;
        if Application.MessageBox('Cliente autorizou incluir taxa do garçon na comanda?','Atenção?',MB_ICONQUESTION+MB_YESNO) =mrYes then
          qrtmp.SQL.Add('update r000001 set PERGUNTOU_COMISSAO = ' + QuotedStr('S') + ',cliente_autorizou = ' + QuotedStr('S') + ' where CODIGO = ' + qritem.FieldByName('codigo').AsString)
        else
          qrtmp.SQL.Add('update r000001 set PERGUNTOU_COMISSAO = ' + QuotedStr('S') + ',cliente_autorizou = ' + QuotedStr('N') + ' where CODIGO = ' + qritem.FieldByName('codigo').AsString);
        qrtmp.ExecSQL;
      end;

      bLanca_mesa := true;
      imesa_codigo := grid_venda.Cell[0,i].asinteger;
      smesa_Numero := 'ECF: '+zerar(qritem.fieldbyname('ecf').asstring,3)+' - Conferência de Mesa - '+
                      'CER No. '+zerar(qritem.fieldbyname('Cer').asstring,4)+' - '+
                      'COO No. '+zerar(qritem.fieldbyname('coo').asstring,6) + ' - Mesa: ' + Zerar( grid_venda.Cells[0,i],6);

      close;
    end;
  end;
end;

procedure TfrmMesas.Cancelar1Click(Sender: TObject);
var i : integer;
begin
  if grid_venda.RowCount = 0 then exit;

  if grid_venda.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma MESA!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;

  frmsenha_supervisor := tfrmsenha_supervisor.create(self);
  frmsenha_supervisor.showmodal;
  frmvenda.Imprime_display_anterior;
  // verisificar se o supervisor foi logado
  if not bSupervisor_autenticado then exit;




  i := grid_venda.SelectedRow;

    if application.messagebox('Confirma o cancelamento desta o.s.?','Atenção',mb_yesno+
                              MB_ICONWARNING) = idYes then
    begin
      bLanca_OS := true;
      iOS_cliente := grid_venda.cell[6,i].asinteger;
      iOS_vendedor := grid_venda.cell[7,i].asinteger;
      iOS_codigo := grid_venda.Cell[0,i].asinteger;
      sDav_Numero := 'DAV-OS'+ZERAR(grid_venda.Cell[1,i].asSTRING,10);




          frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando a MESA nº '+grid_venda.cell[0,i].asstring+'...';
          frmMsg_Operador.Show;
          frmMsg_Operador.Refresh;



          bLanca_OS := true;
          with frmVenda do
          begin
            if not Abre_Venda then
            begin
              // Caso o comando de abertura de venda retornou false, abortar o processo;
              application.messagebox('Erro ao abrir o cupom fiscal','Erro',mb_ok+MB_ICONERROR);
              exit;
            end;

            iOS_codigo := grid_venda.cell[0,i].AsInteger;


            // cancelar os servicos
            QRITEM.CLOSE;
            QRITEM.SQL.CLEAR;
            QRITEM.SQL.ADD('select sum(valor) total from c000053');
            qritem.sql.add('where codos = '''+qrMesa.fieldbyname('codigo').asstring+'''');
            QRITEM.OPEN;

            if qritem.FieldByName('total').asfloat > 0 then
            begin
              sProd_nome := 'PRESTAC.DE SERVICO MUNICIPAL';
              sProd_unidade := 'UN';
              sProd_CST := '041';
              rProd_aliquota := 0;
              iProd_codigo := 999999;
              sProd_barra := '9999999999999';
              rProd_qtde    := qritem.fieldbyname('total').asfloat;
              rProd_preco   := 1;
              rProd_total := qritem.fieldbyname('total').asfloat;
              rProd_desconto := 0;
              rProd_acrescimo := 0;
              // registrar o item
              Registra_Item;
              frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando o.s. nº '+grid_venda.cell[0,i].asstring+'...';
              frmMsg_Operador.Show;
              frmMsg_Operador.Refresh;
              Application.ProcessMessages;

            end;





            frmmodulo.query_servidor.close;
            frmmodulo.query_servidor.SQL.clear;
            frmmodulo.query_servidor.sql.add('Select c000032.*, c000025.produto');
            frmmodulo.query_servidor.sql.add('from c000032, c000025');
            frmmodulo.query_servidor.sql.add('where c000032.codproduto = c000025.codigo');
            frmmodulo.query_servidor.sql.add('and c000032.codNota = '''+grid_venda.cell[0,grid_venda.selectedrow].asstring+'''');
            frmmodulo.query_servidor.open;

            // vender os itens
            // rodar a query do modulo filtrada com os produtos da OS
            frmmodulo.query_servidor.first;
            while not frmmodulo.query_servidor.eof do
            begin
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
              frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando o.s. nº '+grid_venda.cell[0,i].asstring+'...';
              frmMsg_Operador.Show;
              frmMsg_Operador.Refresh;
              Application.ProcessMessages;
              frmmodulo.query_servidor.next;
            end;
            Cancela_cupom_aberto;
          end;
          Application.processmessages;

        bLanca_OS := false;
        grid_venda.ClearRows;
        frmMsg_Operador.Hide;
        frmMsg_Operador.Refresh;
    end;
end;

procedure TfrmMesas.Imprimir1Click(Sender: TObject);
var
  i : integer;
  sNumero_Dav : string;
  Rsoma : real;
begin
  if grid_venda.RowCount = 0 then
    exit;
  if grid_venda.SelectedRow < 0 then begin
    Application.MessageBox('Favor selecionar uma Mesa!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;
  qrProdutos.Close;
  qrProdutos.Params.Items[0].Value := grid_venda.Cell[0,grid_venda.selectedrow].asstring;
  qrProdutos.Open;
  qrProdutos.First;
  mTotal_Venda := 0;
  mTotal_Comissao := 0;
  while not qrProdutos.Eof do begin
    mTotal_Venda := mTotal_Venda + qrProdutosTOTAL.AsFloat;
    qrProdutos.Next;
  end;
  qrProdutos.First;
  with frmModulo do begin
    if qrProdutosCLIENTE_AUTORIZOU.AsString = 'S' then begin
      mTotal_Comissao := (mTotal_Venda*qrconfigCOMISSAO_PERCENTUAL.AsFloat)/100;
    end else begin
      qrtmp.SQL.Clear;
      if qrconfigCOBRA_COMISSAO.AsString = 'O' then begin
        mTotal_Comissao := (mTotal_Venda*qrconfigCOMISSAO_PERCENTUAL.AsFloat)/100;
        qrtmp.SQL.Add('update r000001 set PERGUNTOU_COMISSAO = ' + QuotedStr('S') + ',cliente_autorizou = ' + QuotedStr('S') + ' where CODIGO = ' + grid_venda.Cell[0,grid_venda.selectedrow].asstring)
      end else if qrconfigCOBRA_COMISSAO.AsString = 'P' then begin
        if Application.MessageBox('Cliente autorizou incluir taxa do garçon na comanda?','Atenção?',MB_ICONQUESTION+MB_YESNO) =mrYes then begin
          qrtmp.SQL.Add('update r000001 set PERGUNTOU_COMISSAO = ' + QuotedStr('S') + ',cliente_autorizou = ' + QuotedStr('S') + ' where CODIGO = ' + grid_venda.Cell[0,grid_venda.selectedrow].asstring);
          mTotal_Comissao := (mTotal_Venda*qrconfigCOMISSAO_PERCENTUAL.AsFloat)/100
        end else begin
          qrtmp.SQL.Add('update r000001 set PERGUNTOU_COMISSAO = ' + QuotedStr('S') + ',cliente_autorizou = ' + QuotedStr('N') + ' where CODIGO = ' + grid_venda.Cell[0,grid_venda.selectedrow].asstring);
          mTotal_Comissao := 0;
        end;
        qrtmp.ExecSQL;
      end;
    end;
    if mTotal_Comissao > 0 then
      mTotal_Venda := mTotal_venda + mTotal_Comissao;
    if qrconfigVALOR_COUVER.AsFloat > 0 then begin
      mTotal_Couvert := qrconfigVALOR_COUVER.AsFloat;
      mTotal_Venda := mTotal_venda + mTotal_Couvert;
    end;
  end;
  frComanda.PrintOptions.Printer := sImpressora_Venda_Simples;
  //frComanda.Print;
  frComanda.ShowReport;
  tm_AtualizaTimer(frmMesas);
end;



end.

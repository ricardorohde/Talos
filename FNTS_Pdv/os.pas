unit os;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, AdvOfficeImage, StdCtrls,
  RzLabel, jpeg, ExtCtrls, Menus, AdvMenus, DB, MemDS, DBAccess, pngimage, Uni;

type
  TfrmOS = class(TForm)
    pnFundo: TPanel;
    Image2: TImage;
    Image1: TImage;
    lb_cliente: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    grid_venda: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxTextColumn5: TNxTextColumn;
    NxNumberColumn6: TNxNumberColumn;
    pop_principal: TAdvPopupMenu;
    Finalizar1: TMenuItem;
    Cancelar1: TMenuItem;
    Imprimir1: TMenuItem;
    N2: TMenuItem;
    Retornar1: TMenuItem;
   // qrOs: TIBCQuery;
    tm_Atualiza: TTimer;
  //  QRITEM: TIBCQuery;
    qrOs: TUniQuery;
    QRITEM: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Retornar1Click(Sender: TObject);
    procedure tm_AtualizaTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOS: TfrmOS;

implementation

uses modulo, funcoes, principal, msg_Operador, venda, senha_supervisor;

{$R *.dfm}

procedure TfrmOS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOS.Retornar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOS.tm_AtualizaTimer(Sender: TObject);
var i : integer;
x : integer;
sNumero_dav : string;
begin
//  frmMsg_Operador.lb_msg.caption := 'Aguarde! Atualizando relação de pré-vendas...';
//  frmMsg_Operador.show;
//  frmMsg_Operador.Refresh;

  if grid_venda.RowCount > 0 then
    if grid_venda.SelectedRow >= 0 then
      x := grid_venda.SelectedRow;


  tm_Atualiza.Enabled := false;
  qrOS.CLOSE;
  qrOS.SQL.CLEAR;
  qrOS.SQL.ADD('select');
  qrOS.SQL.ADD('  c000051.*,');
  qrOS.SQL.ADD('  c000007.Nome Cliente,');
  qrOS.SQL.ADD('  c000008.Nome Vendedor');
  qrOS.SQL.ADD('from');
  qrOS.SQL.ADD('  c000051, c000007, c000008');
  qrOS.SQL.ADD('where');
  qrOS.SQL.ADD('  c000051.codcliente = c000007.codigo and');
  qrOS.SQL.ADD('  c000051.codatendente = c000008.codigo and');
  qrOS.SQL.ADD('  c000051.situacao like ''ABERTA%''');
  qrOS.sql.add('ORDER BY c000051.CODIGO');
  qrOS.OPEN;

  grid_venda.ClearRows;

  qrOS.First;
  while not qrOS.Eof do
  begin
    i := grid_venda.AddRow(1);


    if qros.fieldbyname('dav_atual').asstring = '' then
    begin
      frmmodulo.spDav_Codigo.Prepare;
      frmmodulo.spDav_Codigo.Execute;
      sNumero_Dav := frmModulo.spDav_codigo.parambyname('codigo').asstring;
      while length(sNumero_Dav) < 6 do sNumero_Dav := '0'+sNumero_Dav;
      sNumero_Dav := '9000'+sNumero_Dav;
      qros.edit;
      qros.fieldbyname('dav_atual').asstring := snumero_dav;
      qros.Post;
      with frmmodulo do
      begin
          spDav.Close;
          spDav.parambyname('codigo').asstring := snumero_dav;
          spDav.ParamByName('ECF').ASSTRING := sCaixa;
          spDav.ParamByName('coo').asstring := '';
          spDav.ParamByName('numero').asstring := sNumero_Dav;
          spDav.ParamByName('data').asdatetime := dData_sistema;
          spDav.ParamByName('titulo').asstring := 'OS';
          spDav.ParamByName('valor').asfloat := qros.fieldbyname('total').asfloat;

          spDav.Prepare;
          spDav.Execute;
      end;
    end;

    grid_venda.Cell[0,i].Asstring := qrOS.fieldbyname('codigo').asstring;
    grid_venda.Cell[1,i].Asstring := qrOS.fieldbyname('dav_atual').asstring;
    grid_venda.Cell[2,i].AsDateTime := qrOS.fieldbyname('data').asdatetime;
    grid_venda.Cell[3,i].Asstring := qrOS.fieldbyname('cliente').asstring;
    grid_venda.Cell[4,i].Asfloat := qrOS.fieldbyname('total').asfloat;
    grid_venda.Cell[5,i].Asstring := qrOS.fieldbyname('vendedor').asstring;
    grid_venda.Cell[6,i].Asstring := qrOS.fieldbyname('codcliente').asstring;
    grid_venda.Cell[7,i].Asstring := qrOS.fieldbyname('codAtendente').asstring;


    grid_venda.Cell[10,i].Asstring := qrOS.fieldbyname('dav').asstring;
    grid_venda.Cell[11,i].asinteger := qros.fieldbyname('dav_impresso').asinteger;

    qrOS.Next;
  end;
  grid_venda.SelectedRow := x;
  grid_venda.SetFocus;
  tm_Atualiza.Enabled := true;
//  hide;
//  frmmsg_Operador.Refresh;
end;

procedure TfrmOS.FormShow(Sender: TObject);
begin
  tm_AtualizaTimer(frmos);
end;

procedure TfrmOS.Finalizar1Click(Sender: TObject);
var i : integer;
begin
  if grid_venda.RowCount = 0 then exit;
  if grid_venda.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma ordem de serviço!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;

  if grid_venda.cell[1,grid_venda.SelectedRow].asstring = '' then
  begin
    application.MessageBox('O DAV desta OS não foi impresso!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;


  i := grid_venda.SelectedRow;

  // filtrar os produtos
  frmmodulo.query_servidor.Close;
  frmmodulo.query_servidor.SQL.Clear;
  frmmodulo.query_servidor.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota');
  frmmodulo.query_servidor.sql.add('from c000032 orc,');
  frmmodulo.query_servidor.sql.add('c000025 prod where orc.codproduto = prod.codigo and codnota = '''+
                  grid_venda.cell[0,i].asstring+'''');
  frmmodulo.query_servidor.Open;


  QRITEM.SQL.CLEAR;
  QRITEM.SQL.ADD('select * from c000053');
  qritem.sql.add('where codos = '''+qros.fieldbyname('codigo').asstring+'''');
  QRITEM.OPEN;




  if (frmmodulo.query_servidor.RecordCount = 0) and
     (qritem.RecordCount = 0) then
  begin
    if Application.messagebox('Não itens ou serviços lançados para esta O.S.! Deseja fazer o cancelamento?','Atenção!',mb_yesno+MB_ICONEXCLAMATION) = idno then
      exit
    else
      Cancelar1Click(frmOS);
  end
  else
  begin
    if application.messagebox('Confirma a impressão do cupom para esta O.s.?','Atenção',mb_yesno+
                              MB_ICONQUESTION) = idYes then
    begin
      bLanca_OS := true;
      SDAV_ATUALIZADO := grid_venda.cell[1,i].asstring;
      iOS_cliente := grid_venda.cell[6,i].asinteger;
      iOS_vendedor := grid_venda.cell[7,i].asinteger;
      iOS_codigo := grid_venda.Cell[0,i].asinteger;
      sDav_Numero := 'DAV-OS'+ZERAR(grid_venda.Cell[1,i].asSTRING,10);
      close;
    end;
  end;
end;

procedure TfrmOS.Cancelar1Click(Sender: TObject);
var i : integer;
begin
  if grid_venda.RowCount = 0 then exit;

  if grid_venda.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma o.s.!','Atenção',MB_OK+MB_ICONWARNING);
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




          frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando o.s. nº '+grid_venda.cell[0,i].asstring+'...';
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
            qritem.sql.add('where codos = '''+qros.fieldbyname('codigo').asstring+'''');
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

end.

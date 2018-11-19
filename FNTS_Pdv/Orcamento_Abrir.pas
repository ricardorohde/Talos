unit Orcamento_Abrir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  DB, DBAccess, Menus, AdvMenus, ComCtrls, Uni,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit,
  MemDS;

type
  TfrmOrcamento_Abrir = class(TForm)
    grid: TNextGrid;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    bt_filtrar: TBitBtn;
    ed_cod_cliente: TEdit;
    Button1: TButton;
    ed_nome_cliente: TEdit;
    ed_inicial: TJvDateEdit;
    ed_final: TJvDateEdit;
    Label4: TLabel;
    ed_numero: TEdit;
    NxTextColumn2: TNxTextColumn;
    Panel1: TPanel;
    bt_imprimir: TButton;
    Button3: TButton;
   // query: TIBCQuery;
    NxNumberColumn1: TNxTextColumn;
  //  qrItem: TIBCQuery;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxNumberColumn6: TNxNumberColumn;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    dav_anterior: TNxTextColumn;
    Button2: TButton;
    NxNumberColumn7: TNxNumberColumn;
    ImprimirDAV1: TMenuItem;
    CupomFiscal1: TMenuItem;
    Sair1: TMenuItem;
    qrItem: TUniQuery;
    query: TUniQuery;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bt_filtrarClick(Sender: TObject);
    procedure ed_numeroKeyPress(Sender: TObject; var Key: Char);
    procedure ed_inicialKeyPress(Sender: TObject; var Key: Char);
    procedure ed_finalKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamento_Abrir: TfrmOrcamento_Abrir;

implementation

uses modulo, funcoes, principal, UFuncoes;

{$R *.dfm}

procedure TfrmOrcamento_Abrir.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento_Abrir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOrcamento_Abrir.FormShow(Sender: TObject);
begin
  grid.ClearRows;
  ed_inicial.date := date;
  ed_final.date := date;
  bt_filtrarClick(frmOrcamento_Abrir);
end;

procedure TfrmOrcamento_Abrir.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento_Abrir.bt_filtrarClick(Sender: TObject);
var sNumero, sCliente, sPeriodo,snumero_dav : string;
begin
  sPeriodo := 'and data between :datai and :dataf';
  if ed_numero.text <> '' then sNumero := 'and codigo = '''+ed_numero.text+'''' else sNumero := '';
  if ed_cod_cliente.text <> '' then
     sCliente := ' and codcliente = '''+Zerar(ed_cod_cliente.text,6)+''''
  else
     sCliente := '';

  query.close;
  query.sql.clear;
  query.sql.add('select c000074.*, c000007.nome, c000007.cpf from c000074, c000007');
  query.sql.add('where c000074.codcliente = c000007.codigo and c000074.tipo = 9');
  if sNumero <> '' then
  begin
    query.sql.add(sNumero);
  end
  else
  begin
    query.sql.add(sPeriodo+sCliente);
    query.ParamByName('datai').asdatetime := ed_inicial.date;
    query.parambyname('dataf').asdatetime := ed_final.date;
  end;
  query.SQL.add('order by data,codigo');
  query.open;

  grid.ClearRows;

  query.first;
  while not query.eof do
  begin
    if query.fieldbyname('dav').asstring = '' then
    begin

      frmmodulo.spDav_Codigo.Prepare;
      frmmodulo.spDav_Codigo.Execute;
      sNumero_Dav := frmModulo.spDav_codigo.parambyname('codigo').asstring;
      while length(sNumero_Dav) < 6 do sNumero_Dav := '0'+sNumero_Dav;
      sNumero_Dav := '9000'+sNumero_Dav;

      query.edit;
      query.fieldbyname('dav').asstring := snumero_dav;
      query.Post;
      with frmmodulo do
      begin

          spDav.Close;
          spDav.parambyname('codigo').asstring := snumero_dav;
          spDav.ParamByName('ECF').ASSTRING := sCaixa;
          spDav.ParamByName('coo').asstring := '';
          spDav.ParamByName('numero').asstring := sNumero_Dav;
          spDav.ParamByName('data').asdatetime := dData_sistema;
          spDav.ParamByName('titulo').asstring := 'ORÇAMENTO';
          spDav.ParamByName('valor').asfloat := frmOrcamento_abrir.query.fieldbyname('total').asfloat;
          spDav.Prepare;
          spDav.Execute;
      end;
    end;
    grid.AddRow(1);
    grid.Cell[0,grid.LastAddedRow].Asstring := query.fieldbyname('codigo').asstring;
    grid.cell[1,grid.LastAddedRow].asstring := query.fieldbyname('DAV').asstring;
    grid.cell[2,grid.LastAddedRow].asdatetime := query.fieldbyname('data').asdatetime;
    grid.cell[3,grid.LastAddedRow].asstring := query.fieldbyname('nome').asstring;
    grid.cell[4,grid.LastAddedRow].asfloat := query.fieldbyname('total').asfloat;
    grid.cell[6,grid.LastAddedRow].asstring := query.fieldbyname('cpf').asstring;
    grid.cell[7,grid.LastAddedRow].asfloat := query.fieldbyname('subtotal').asfloat;
    grid.cell[8,grid.LastAddedRow].asfloat := query.fieldbyname('desconto').asfloat;
    grid.cell[9,grid.LastAddedRow].asfloat := query.fieldbyname('acrescimo').asfloat;
    grid.cell[10,grid.lastaddedrow].AsString := query.fieldbyname('dav_anterior').asstring;
    grid.cell[11,grid.lastaddedrow].asstring := query.fieldbyname('codcliente').asstring;
    query.next;
  end;
  grid.SetFocus;


end;

procedure TfrmOrcamento_Abrir.ed_numeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if ed_numero.text <> '' then bt_filtrarClick(frmorcamento_abrir)
    else ed_cod_cliente.setfocus;
end;

procedure TfrmOrcamento_Abrir.ed_inicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOrcamento_Abrir.ed_finalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOrcamento_Abrir.Button2Click(Sender: TObject);
var i : integer;
begin
  if grid.RowCount = 0 then exit;
  if grid.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma orçamento!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;


  i := grid.SelectedRow;

  // filtrar os produtos
  frmmodulo.query_servidor.Close;
  frmmodulo.query_servidor.SQL.Clear;
  frmmodulo.query_servidor.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota');
  frmmodulo.query_servidor.sql.add('from c000075 orc,');
  frmmodulo.query_servidor.sql.add('c000025 prod where orc.codproduto = prod.codigo and codnota = '''+
                  grid.cell[0,i].asstring+'''');
  frmmodulo.query_servidor.Open;




  if (frmmodulo.query_servidor.RecordCount = 0) and
     (qritem.RecordCount = 0) then
  begin
    Application.messagebox('Não itens ou serviços lançados para este Orçamento!','Atenção!',mb_yesno+MB_ICONEXCLAMATION);
    exit;
  end
  else
  begin
    if application.messagebox('Confirma a impressão do cupom para este orçamento?','Atenção',mb_yesno+
                              MB_ICONQUESTION) = idYes then
    begin
      SDAV_ATUALIZADO := grid.cell[1,i].asstring;
      bLanca_OS := true;
      iOS_cliente := grid.cell[11,i].asinteger;
      iOS_vendedor := 0;
      iOS_codigo := IsInteger(IntToStr(grid.Cell[0,i].asinteger));
      sDav_Numero := 'DAV'+ZERAR(grid.Cell[1,i].asSTRING,10);
      close;
    end;
  end;
end;

end.

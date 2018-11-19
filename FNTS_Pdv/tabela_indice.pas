unit tabela_indice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, StdCtrls, ExtCtrls, DB, MemDS,
  DBAccess, Uni;

type
  TfrmTabela_Indice = class(TForm)
    Bevel1: TBevel;
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
   // query: TIBCQuery;
    Panel3: TPanel;
    Bevel2: TBevel;
    Panel4: TPanel;
    grid_indice: TNextGrid;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    Panel2: TPanel;
    Panel5: TPanel;
    Bevel3: TBevel;
    Panel6: TPanel;
    Panel7: TPanel;
    grid_insumo: TNextGrid;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    query: TUniQuery;
    qrInsumo: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_indiceHeaderClick(Sender: TObject; ACol: Integer);
    procedure bt_cancelarClick(Sender: TObject);
    procedure grid_indiceSelectCell(Sender: TObject; ACol, ARow: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabela_Indice: TfrmTabela_Indice;

implementation

uses Math, modulo, principal, funcoes;

{$R *.dfm}

procedure TfrmTabela_Indice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmTabela_Indice.FormShow(Sender: TObject);
var i : integer;
begin
  query.close;
  query.sql.clear;
  query.sql.add('select count(estoque_indice.cod_indice),');
  query.sql.add('estoque_indice.cod_produto, estoque.nome');
  query.sql.add('from estoque_indice, estoque');
  query.sql.add('where estoque_indice.cod_produto = estoque.codigo');
  query.sql.add('group by estoque_indice.cod_produto, estoque.nome');
  query.sql.add('order by estoque.nome');
  query.open;
  query.first;
  grid_indice.ClearRows;
  while not query.eof do
  begin
    i := grid_indice.AddRow(1);
    grid_indice.Cell[0,i].asboolean := false;
    grid_indice.Cell[1,i].Asinteger := query.fieldbyname('cod_produto').asinteger;
    grid_indice.cell[2,0].asstring := query.fieldbyname('nome').asstring;
    query.next;
  end;
  if grid_indice.RowCount > 0 then
  begin
    grid_indice.SetFocus;
    grid_indice.SelectedRow := 0;
  end;


end;

procedure TfrmTabela_Indice.grid_indiceHeaderClick(Sender: TObject;
  ACol: Integer);
  var i : integer;
begin
  if ACol = 0 then
  begin
    If grid_indice.rowcount = 0 then exit;
    If grid_indice.Cell[0,0].AsBoolean = true then
      for i := 0 to grid_indice.RowCount - 1 do grid_indice.cell[0,i].asboolean := false
    else
      for i := 0 to grid_indice.RowCount - 1 do grid_indice.cell[0,i].asboolean := true;
  end;
end;

procedure TfrmTabela_Indice.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTabela_Indice.grid_indiceSelectCell(Sender: TObject; ACol,
  ARow: Integer);
  var i : integer;
begin
  i := grid_indice.SelectedRow;

  if i < 0 then exit;

  try
    query.close;
    query.sql.clear;
    query.sql.add('select');
    query.sql.add('estoque_indice.*, estoque.nome, estoque.unidade');
    query.sql.add('from estoque_indice, estoque');
    query.sql.add('where estoque_indice.cod_indice = estoque.codigo');
    query.sql.add('and cod_produto = '+grid_indice.cell[1,i].asstring);
    query.sql.add('order by estoque.nome');
    query.open;

    query.first;
    grid_insumo.ClearRows;
    while not query.eof do
    begin
      i := grid_insumo.AddRow(1);
      grid_insumo.Cell[0,i].asinteger := query.fieldbyname('cod_indice').asinteger;
      grid_insumo.cell[1,i].Asstring := query.fieldbyname('nome').asstring;
      grid_insumo.cell[2,i].asfloat := query.fieldbyname('qtde').asfloat;
      grid_insumo.cell[3,i].asstring := query.fieldbyname('unidade').asstring;
      query.next;
    end;
  except
  end;
end;

end.

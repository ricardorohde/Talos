unit VendedorConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeImage, jpeg, ExtCtrls, StdCtrls, Mask, RzEdit, RzLabel,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, TFlatPanelUnit, Menus, AdvMenus;

type
  TfrmVendedorConsulta = class(TForm)
    lb_cliente: TRzLabel;
    lb_status: TRzLabel;
    edtVendedor: TRzEdit;
    grid: TNextGrid;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    LB_MENU_FISCAL: TRzLabel;
    RzLabel1: TRzLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure gridEnter(Sender: TObject);
    procedure edtVendedorEnter(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedorConsulta: TfrmVendedorConsulta;

implementation

uses modulo, Math;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.FormShow(Sender: TObject);
begin
  edtVendedor.setfocus;


  if edtVendedor.Text <> '' then
    Keybd_Event(VK_RETURN,0,0,0);

end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.edtVendedorKeyPress(Sender: TObject;
  var Key: Char);
var  bBusca_codigo : boolean;
begin
  if key = #13 then
  begin
    grid.ClearRows;
    if edtVendedor.Text <> '' then
    begin
      // buscar pelo nome
      frmmodulo.qrFunci.close;
      frmmodulo.qrFunci.sql.clear;
      frmmodulo.qrFunci.sql.add('select * from C000008');
      frmmodulo.qrFunci.sql.add('where upper(nome) like '''+ansiuppercase(edtVendedor.text)+'%''');
      frmmodulo.qrFunci.sql.add('order by nome');
      frmmodulo.qrFunci.open;

      if frmmodulo.qrFunci.recordcount = 0 then
      begin
          // buscar pelo codigo
        try
          strtoint(edtVendedor.text);
          bBusca_codigo := true;
        except
          on EConvertError do
            Bbusca_codigo := false;
        end;
        if Bbusca_codigo then
        begin
          frmmodulo.qrFunci.close;
          frmmodulo.qrFunci.sql.clear;
          frmmodulo.qrFunci.sql.add('select * from C000008');
          frmmodulo.qrFunci.sql.add('where codigo = '+ FormatFloat('000000', StrToInt(edtVendedor.text)));
          frmmodulo.qrFunci.sql.add('order by nome');
          frmmodulo.qrFunci.open;
        end;
      end;

      if frmmodulo.qrFunci.RecordCount > 0 then
      begin
        while not frmmodulo.qrFunci.eof do
        begin
          grid.AddRow(1);
          grid.Cell[0,grid.LastAddedRow].AsInteger :=
            frmModulo.qrFunci.fieldbyname('codigo').asinteger;
          grid.Cell[1,grid.LastAddedRow].AsString := frmmodulo.qrFunci.fieldbyname('nome').asstring;
          frmmodulo.qrFunci.next;
        end;
        grid.SelectFirstRow;
        grid.SetFocus;
      end
      else
      begin
        lb_cliente.Font.color := clred;
        lb_cliente.caption := 'Nenhum vendedor encontrado!';
        Application.ProcessMessages;
        Sleep(1500);
        lb_cliente.Font.color := clwhite;
        lb_cliente.Caption := 'Consulta de Vendedor';
        edtVendedor.TEXT := '';
      end;
    end;
  end
  else
  begin
    if key = #27 then
    begin
      ModalResult := mrCancel;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.gridEnter(Sender: TObject);
begin
  lb_status.caption := 'Escolha o vendedor e pressione [ENTER] para selecionar...'
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.edtVendedorEnter(Sender: TObject);
begin
  lb_status.Caption := 'Informe o C�digo ou Nome do Vendedor...';
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.gridKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if grid.RowCount > 0 then
    begin
      If grid.Cell[0,grid.SelectedRow].AsInteger > 0 then
      begin
        // consultar cliente
        frmmodulo.qrFunci.close;
        frmmodulo.qrFunci.sql.clear;
        frmmodulo.qrFunci.sql.add('select * from C000008 where codigo = '+
                               grid.Cell[0,grid.selectedrow].Asstring);
        frmmodulo.qrFunci.open;
        ModalResult := mrOk;
      end;
    end;
  end
  else
  begin
    if key = #27 then
    begin
      edtVendedor.SetFocus;
      edtVendedor.SelectAll;
      Key := #0;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.FormCreate(Sender: TObject);
begin
  left := 0;
  top := 0;
end;

// -------------------------------------------------------------------------- //
end.

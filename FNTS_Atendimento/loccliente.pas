unit loccliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, TFlatEditUnit, DB, Menus, jpeg, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel;

type
  Tfrmloccliente = class(TForm)
    dscliente: TDataSource;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    Panel1: TPanel;
    lpesquisa: TLabel;
    loc: TEdit;
    grid: TwwDBGrid;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    lblNovoCli: TLabel;
    NovoCliente1: TMenuItem;
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure NovoCliente1Click(Sender: TObject);
    procedure lblNovoCliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloccliente: Tfrmloccliente;

implementation

uses modulo, principal, cliente_info;

{$R *.dfm}

procedure Tfrmloccliente.LOCKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if LOC.TEXT <> '' then
     begin
      with frmmodulo.qrcliente do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM c000007 WHERE ');
          if      lpesquisa.Caption = 'F3 | Nome:'     then frmmodulo.qrcliente.sql.add('UPPER(NOME) LIKE ''' + AnsiUppercase(loc.text) + '%''')
          else if lpesquisa.Caption = 'F3 | Código:'   then frmmodulo.qrcliente.sql.add('CODIGO LIKE '''      + loc.text + '%''')
          else if lpesquisa.Caption = 'F3 | CPF/CNPJ:' then frmmodulo.qrcliente.sql.add('CPF LIKE '''         + loc.text + '%''')
          else if lpesquisa.Caption = 'F3 | Telefone:' then frmmodulo.qrcliente.sql.add('TELEFONE1 LIKE '''   + loc.text + '%'' OR TELEFONE2 LIKE''' + loc.text + '%'' OR TELEFONE3 LIKE''' + loc.text + '%'' OR CELULAR LIKE''' + loc.Text + '%''');
          SQL.Add('ORDER BY NOME');

          Open;
          if RecordCount > 0 then
            grid.setfocus
          else
          begin
            frmprincipal.msg('LOCE','Resgistro não encontrado!',false,false,true,'');
            LOC.SelectAll;
            LOC.SetFocus;
          end;
       end;
     end;
  end
  else if key = #27 then
    Close;
end;

procedure Tfrmloccliente.NovoCliente1Click(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  resultado_pesquisa2 := '';
  Close;
  frmcliente_info := tfrmcliente_info.create(self);
  frmcliente_info.showmodal;
end;

procedure Tfrmloccliente.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmloccliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
end;

procedure Tfrmloccliente.FormShow(Sender: TObject);
begin
  frmmodulo.qrcliente.Close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''xxxxxx''');
  frmmodulo.qrcliente.open;
  LOC.setfocus;
end;

procedure Tfrmloccliente.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmmodulo.qrcliente.RecordCount > 0 then
    begin
      resultado_pesquisa1 := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := frmmodulo.qrcliente.fieldbyname('nome').asstring;
      close;
    end;
  end;
  if key = #27 then close;
end;

procedure Tfrmloccliente.ipodePesquisa1Click(Sender: TObject);
begin
  if lpesquisa.Caption = 'F3 | Nome:'     then begin lpesquisa.Caption := 'F3 | Código:'; exit; end;
  if lpesquisa.Caption = 'F3 | Código:'   then begin lpesquisa.Caption := 'F3 | CPF/CNPJ:'; exit; end;
  if lpesquisa.Caption = 'F3 | CPF/CNPJ:' then begin lpesquisa.Caption := 'F3 | Telefone:'; exit; end;
  if lpesquisa.Caption = 'F3 | Telefone:' then begin lpesquisa.Caption := 'F3 | Nome:';   exit; end;
end;

procedure Tfrmloccliente.lblNovoCliClick(Sender: TObject);
begin
  NovoCliente1Click(nil);
end;

procedure Tfrmloccliente.gridDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := frmmodulo.qrcliente.fieldbyname('nome').asstring;
  close;
end;

end.

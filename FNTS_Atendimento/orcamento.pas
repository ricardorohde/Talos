unit orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, TFlatEditUnit, ExtCtrls,
  TFlatPanelUnit, Menus, jpeg, Mask, Buttons, AdvGlowButton,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  Tfrmorcamento = class(TForm)
    dsorcamento: TDataSource;
    qrorcamento: TZQuery;
    qrorcamento_produto: TZQuery;
    qrorcamento_receber: TZQuery;
    qrorcamentovendedor: TStringField;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    N1: TMenuItem;
    Abrir1: TMenuItem;
    Sair1: TMenuItem;
    qrproduto: TZQuery;
    qrorcamento_produtoproduto: TStringField;
    qrorcamentoagc: TStringField;
    query: TZQuery;
    Panel1: TPanel;
    lpesquisa: TLabel;
    loc: TEdit;
    grid: TwwDBGrid;
    Panel2: TPanel;
    Label14: TLabel;
    Label36: TLabel;
    Label1: TLabel;
    ed_inicial: TJvDateEdit;
    ed_final: TJvDateEdit;
    Label2: TLabel;
    qrorcamentoCODIGO: TWideStringField;
    qrorcamentoCODCAIXA: TWideStringField;
    qrorcamentoCODVENDEDOR: TWideStringField;
    qrorcamentoCODCLIENTE: TWideStringField;
    qrorcamentoOBS: TWideStringField;
    qrorcamentoMEIO_DINHEIRO: TFloatField;
    qrorcamentoMEIO_CHEQUEAV: TFloatField;
    qrorcamentoMEIO_CHEQUEAP: TFloatField;
    qrorcamentoMEIO_CARTAOCRED: TFloatField;
    qrorcamentoMEIO_CARTAODEB: TFloatField;
    qrorcamentoMEIO_CREDIARIO: TFloatField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoCUPOM_FISCAL: TIntegerField;
    qrorcamentoNUMERO_CUPOM_FISCAL: TWideStringField;
    qrorcamentoRETIRADO: TWideStringField;
    qrorcamentoTIPO: TIntegerField;
    qrorcamentoMEIO_CONVENIO: TFloatField;
    qrorcamentoDAV: TWideStringField;
    qrorcamentoSITUACAO: TIntegerField;
    qrorcamentoDAV_ANTERIOR: TWideStringField;
    qrorcamentoATACADO_VAREJO: TSmallintField;
    qrorcamentoNOME: TWideStringField;
    qrorcamento_produtoCODIGO: TWideStringField;
    qrorcamento_produtoCODNOTA: TWideStringField;
    qrorcamento_produtoCODPRODUTO: TWideStringField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoICMS: TFloatField;
    qrorcamento_produtoIPI: TFloatField;
    qrorcamento_produtoCFOP: TWideStringField;
    qrorcamento_produtoNUMERONOTA: TWideStringField;
    qrorcamento_produtoCODCLIENTE: TWideStringField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoMOVIMENTO: TIntegerField;
    qrorcamento_produtoCODVENDEDOR: TWideStringField;
    qrorcamento_produtoCODGRADE: TWideStringField;
    qrorcamento_produtoSERIAL: TWideStringField;
    qrorcamento_produtoUNIDADE: TWideStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoVALOR_ICMS: TFloatField;
    qrorcamento_produtoICMS_REDUZIDO: TFloatField;
    qrorcamento_produtoBASE_CALCULO: TFloatField;
    qrorcamento_produtoVALOR_IPI: TFloatField;
    qrorcamento_produtoSITUACAO: TIntegerField;
    qrorcamento_produtoSERIAL_CODINT: TWideStringField;
    qrorcamento_produtoCOD_BARRAS: TWideStringField;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvGlowButton1: TAdvGlowButton;
    qrorcamentoDATA: TDateField;
    qrorcamento_produtoDATA: TDateField;
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure Abrir1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure ed_inicialKeyPress(Sender: TObject; var Key: Char);
    procedure ed_finalKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmorcamento: Tfrmorcamento;

implementation

uses modulo, venda_pdv, principal;

{$R *.dfm}

procedure Tfrmorcamento.ipodePesquisa1Click(Sender: TObject);
begin
  Loc.SetFocus;

  if lpesquisa.Caption = 'F3 | Cliente:'  then begin lpesquisa.Caption := 'F3 | CPF/CNPJ:'; exit; end;
  if lpesquisa.Caption = 'F3 | CPF/CNPJ:' then begin lpesquisa.Caption := 'F3 | Telefone:'; exit; end;
  if lpesquisa.Caption = 'F3 | Telefone:' then begin lpesquisa.Caption := 'F3 | Número:';   exit; end;
  if lpesquisa.Caption = 'F3 | Número:'   then begin lpesquisa.Caption := 'F3 | Tudo:';     exit; end;
  if lpesquisa.Caption = 'F3 | Tudo:'     then begin lpesquisa.Caption := 'F3 | Cliente:';  exit; end;
end;
procedure Tfrmorcamento.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmorcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmorcamento.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl,0,0);
  end;
end;

procedure Tfrmorcamento.Abrir1Click(Sender: TObject);
var
  i: integer;
begin
  ABRE_ORCAMENTO := TRUE;
  FRMVENDA_PDV := TFRMVENDA_PDV.CREATE(SELF);
  with FRMVENDA_PDV do
  begin
    cdsvenda_produto.Close;
    cdsvenda_produto.createDataSet;

    with qrorcamento_produto do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM c000075 WHERE codnota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
      SQL.Add('ORDER BY codigo');
      Open;
    end;;

    with FrmModulo.QrCliente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM C000007 WHERE CODIGO = '''+qrorcamento.fieldbyname('codCLIENTE').asstring+'''');
      Open;
    end;

    i := 1;
    item := 0;

    qrorcamento_produto.First;
    while not qrorcamento_produto.Eof do
    begin
      item := item + 1;

      cdsvenda_produto.Insert;
      cdsvenda_produto.fieldbyname('item').asstring       := frmprincipal.zerarcodigo(inttostr(item),3);
      cdsvenda_produto.fieldbyname('produto').asstring    := qrorcamento_produto.fieldbyname('produto').asstring;
      cdsvenda_produto.fieldbyname('codproduto').asstring := qrorcamento_produto.fieldbyname('codproduto').asstring;
      cdsvenda_produto.fieldbyname('qtde').asfloat        := qrorcamento_produto.fieldbyname('qtde').asfloat;
      cdsvenda_produto.fieldbyname('unitario').asfloat    := qrorcamento_produto.fieldbyname('unitario').asfloat;
      cdsvenda_produto.fieldbyname('total').asfloat       := qrorcamento_produto.fieldbyname('total').asfloat;
      cdsvenda_produto.fieldbyname('desconto').asfloat    := qrorcamento_produto.fieldbyname('desconto').asfloat;
      cdsvenda_produto.fieldbyname('acrescimo').asfloat   := qrorcamento_produto.fieldbyname('acrescimo').asfloat;
      cdsvenda_produto.fieldbyname('numeracao').asstring  := qrorcamento_produto.fieldbyname('unidade').AsString;
      cdsvenda_produto.Post;

      qrorcamento_produto.Next;
    end;

    LDATA_VENDA.Caption := qrorcamento.fieldbyname('data').asstring;
    lhora_venda.Caption := timetostr(time);
    ecliente.Text := qrorcamento.fieldbyname('codcliente').asstring;
    enomecliente.Text := qrorcamento.fieldbyname('nome').asstring;
    evendedor.text := qrorcamento.fieldbyname('codvendedor').asstring;
    enomevendedor.text := qrorcamento.fieldbyname('vendedor').asstring;
    ltotal.Caption := formatfloat('##########0.00',qrorcamento.fieldbyname('subtotal').asfloat);
    litem.Caption := frmprincipal.zerarcodigo(inttostr(item),3);
  end;

  NUMERO_ORCAMENTO := qrorcamento.fieldbyname('codigo').asstring;
  FRMVENDA_PDV.ShowModal;
  qrorcamento.Refresh;
end;

procedure Tfrmorcamento.FormShow(Sender: TObject);
begin
  ed_inicial.Date := date;
  ed_final.date := date;


  qrorcamento.close;
  qrorcamento.SQL.Clear;
  qrorcamento.sql.add('select orc.*, cli.nome ');
  qrorcamento.sql.add('from c000074 orc, c000007 cli');
  qrorcamento.sql.add('where orc.codcliente = cli.codigo and');
  qrorcamento.sql.add('orc.data between :datai and :dataf and');
  qrorcamento.sql.add('orc.tipo = 9 order by orc.data,orc.codigo');
  qrorcamento.ParamByName('datai').asdatetime := ed_inicial.date;
  qrorcamento.ParamByName('dataf').asdatetime := ed_final.Date;
  qrorcamento.open;

  loc.SetFocus;

end;

procedure Tfrmorcamento.gridDblClick(Sender: TObject);
begin
  Abrir1Click(frmOrcamento);
end;

procedure Tfrmorcamento.ed_inicialKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmorcamento.ed_finalKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmorcamento.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmorcamento.BitBtn1Click(Sender: TObject);
begin
  try
    with qrorcamento do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT orc.*, cli.* FROM c000074 orc, c000007 cli');
      SQL.Add('WHERE orc.codcliente = cli.codigo');    // AND orc.tipo = 9
      SQL.Add('AND orc.data BETWEEN :datai AND :dataf');

      if (lpesquisa.Caption = 'F3 | Cliente:') then
      begin
        SQL.Add('AND UPPER(cli.NOME) LIKE ''' + AnsiUppercase(Loc.text) + '%''');
        ParamByName('datai').asdatetime := ed_inicial.date;
        ParamByName('dataf').asdatetime := ed_final.Date;
      end
      else if (lpesquisa.Caption = 'F3 | CPF/CNPJ:') then
      begin
        SQL.Add('AND cli.CPF LIKE ''' + Loc.text + '%''');
        ParamByName('datai').asdatetime := ed_inicial.date;
        ParamByName('dataf').asdatetime := ed_final.Date;
      end
      else if (lpesquisa.Caption = 'F3 | Telefone:') then
      begin
        SQL.Add('AND (' +
        'cli.telefone1 LIKE '''    + Loc.text + '%'''  +
        'OR cli.telefone2 LIKE ''' + Loc.text + '%'''  +
        'OR cli.telefone3 LIKE ''' + Loc.text + '%'''  +
        'OR cli.celular LIKE '''   + Loc.text + '%'')' );
        ParamByName('datai').asdatetime := ed_inicial.date;
        ParamByName('dataf').asdatetime := ed_final.Date;
      end
      else if (lpesquisa.Caption = 'F3 | Número:') then
      begin
        SQL.Add('AND orc.codigo LIKE ''' + Loc.text + '%''');
        ParamByName('datai').asdatetime := ed_inicial.date;
        ParamByName('dataf').asdatetime := ed_final.Date;
      end
      else if (lpesquisa.Caption = 'F3 | Tudo:') then
      begin
        ParamByName('datai').asdatetime := ed_inicial.date;
        ParamByName('dataf').asdatetime := ed_final.Date;
      end;

      SQL.Add('ORDER BY orc.data');
      Open;
    end;
  except
    ShowMessage('Parâmetro inválido!');
  end;

  if qrorcamento.RecordCount = 0 then
    FrmPrincipal.msg('INFO','Nenhum registro encontrado!',false,false,true,'')
  else
    grid.setfocus;
end;

procedure Tfrmorcamento.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Abrir1Click(frmOrcamento);
end;

end.

unit AjustaGradeProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, Vcl.ExtCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel,
  Vcl.Buttons, TFlatPanelUnit, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmAjustaGradeProduto = class(TForm)
    wwDBGrid1: TwwDBGrid;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label105: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RTOTAL: TJvCalcEdit;
    RDIGITADO: TJvCalcEdit;
    RDIFERENCA: TJvCalcEdit;
    dsgrade_produto: TDataSource;
    qrgrade_produto: TZQuery;
    qrgrade_produtoNUMERACAO: TWideStringField;
    qrgrade_produtoCODBARRA: TWideStringField;
    qrgrade_produtoESTOQUE: TFloatField;
    qrgrade_produtoCODIGO: TWideStringField;
    qrgrade_produtoCODPRODUTO: TWideStringField;
    qrgrade_produtoCOR: TWideStringField;
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrgrade_produtoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    vEstoque:Double;
  public
    { Public declarations }
  end;
  procedure ManutencaoGradeProduto(Produto:string;Estoque:Double);

var
  frmAjustaGradeProduto: TfrmAjustaGradeProduto;

implementation

uses Modulo;

{$R *.dfm}

procedure ManutencaoGradeProduto(Produto:string;Estoque:Double);
begin
  Application.CreateForm(TfrmAjustaGradeProduto,frmAjustaGradeProduto);
  with frmAjustaGradeProduto do begin
    vEstoque := Estoque;
    RDIGITADO.Value := 0;
    qrgrade_produto.close;
    qrgrade_produto.sql.clear;
    qrgrade_produto.sql.add('select * from c000021 where codproduto = ''' + Produto  + ''' order by codigo');
    qrgrade_produto.OPEN;
    qrgrade_produto.DisableControls;
    qrgrade_produto.First;
    while not qrgrade_produto.Eof do begin
      RDIGITADO.Value := RDIGITADO.Value + qrgrade_produtoESTOQUE.AsFloat;
      qrgrade_produto.Next;
    end;
    qrgrade_produto.First;
    RTOTAL.Value := Estoque;
    RDIFERENCA.Value := RTOTAL.Value - RDIGITADO.Value;
    qrgrade_produto.EnableControls;
    ShowModal;
  end;
  FreeAndNil(frmAjustaGradeProduto);
end;

procedure TfrmAjustaGradeProduto.bgravarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAjustaGradeProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if RDIFERENCA.Value <> 0 then begin
    Application.MessageBox('A Somatória do Estoque digitado nas grades do produto não confere com o estoque do Produto.','Atenção!',MB_ICONINFORMATION);
    Action := caNone;
    exit;
  end;
end;

procedure TfrmAjustaGradeProduto.qrgrade_produtoAfterPost(DataSet: TDataSet);
var
  cod:string;
begin
  cod := qrgrade_produtoCODIGO.AsString;
  RDIGITADO.Value := 0;
  qrgrade_produto.DisableControls;
  qrgrade_produto.First;
  while not qrgrade_produto.Eof do begin
    RDIGITADO.Value := RDIGITADO.Value + qrgrade_produtoESTOQUE.AsFloat;
    qrgrade_produto.Next;
  end;
  qrgrade_produto.First;
  qrgrade_produto.Locate('CODIGO',cod,[]);
  qrgrade_produto.EnableControls;
  RDIFERENCA.Value := RTOTAL.Value - RDIGITADO.Value;
end;

end.

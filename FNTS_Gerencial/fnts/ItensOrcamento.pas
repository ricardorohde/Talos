unit ItensOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, AdvMetroButton, Vcl.ExtCtrls, cxCheckBox, AdvGlowButton;

type
  TfrmItensOrcamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label20: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsItens: TDataSource;
    qrItens: TZQuery;
    qrItensCODPRODUTO: TWideStringField;
    qrItensPRODUTO: TWideStringField;
    qrItensUNIDADE: TWideStringField;
    qrItensQTDE: TFloatField;
    qrItensUNITARIO: TFloatField;
    qrItensDESCONTO: TFloatField;
    qrItensACRESCIMO: TFloatField;
    qrItensTOTAL: TFloatField;
    qrItensCODORCAMENTO: TWideStringField;
    qrItensCODBARRA: TWideStringField;
    qrItensNCM: TWideStringField;
    qrItensLOTE: TWideStringField;
    qrItensIND: TIntegerField;
    qrItensNUMERACAO: TWideStringField;
    qrItensCST: TWideStringField;
    qrItensICMS: TWideStringField;
    qrItensCFOP: TWideStringField;
    qrItensALIQUOTA: TFloatField;
    qrItensCODGRADE: TWideStringField;
    qrItensTIPO: TIntegerField;
    qrItensSERIAL: TWideStringField;
    qrItensITEM: TWideStringField;
    qrItensTERMINAL: TWideStringField;
    qrItensCODSUBGRUPO: TWideStringField;
    qrItensPISCOFINS: TWideStringField;
    qrItensSERIAL_CODINT: TWideStringField;
    qrItensGRADE_CODINT: TWideStringField;
    qrItensOBS: TWideStringField;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1QTDE: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCONTO: TcxGridDBColumn;
    cxGrid1DBTableView1ACRESCIMO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    qrItensSEL: TWideStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    bfinalizar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrItensXITEM: TWideStringField;
    ColxPed: TcxGridDBColumn;
    ColxItem: TcxGridDBColumn;
    qrItensXPED: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Continua:Boolean;
  end;

var
  frmItensOrcamento: TfrmItensOrcamento;

implementation

uses modulo, principal;

{$R *.dfm}


procedure TfrmItensOrcamento.bcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmItensOrcamento.bfinalizarClick(Sender: TObject);
begin
  Continua := True;
  Close;
end;

procedure TfrmItensOrcamento.FormShow(Sender: TObject);
begin
  ColxPed.Visible := AtivaB2B;
  ColxItem.Visible := AtivaB2B;

  Continua := False;
end;

end.

unit Impressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, Vcl.Samples.Spin, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TfrmImpressao = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel3: TPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    edtipo: TComboBox;
    edVias: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    fsSimples_produto: TfrxDBDataset;
    fxRel: TfrxDBDataset;
    fxvenda: TfrxReport;
    qrorcamento_produto: TZQuery;
    qrorcamento: TZQuery;
    qrorcamentoCODIGO: TWideStringField;
    qrorcamentoCODCAIXA: TWideStringField;
    qrorcamentoCODVENDEDOR: TWideStringField;
    qrorcamentoDATA: TDateField;
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
    qrorcamentoCLIENTE: TWideStringField;
    qrorcamentoENDERECO: TWideStringField;
    qrorcamentoBAIRRO: TWideStringField;
    qrorcamentoCIDADE: TWideStringField;
    qrorcamentoUF: TWideStringField;
    qrorcamentoCEP: TWideStringField;
    qrorcamentoTELEFONE1: TWideStringField;
    qrorcamentoTELEFONE2: TWideStringField;
    qrorcamentoTELEFONE3: TWideStringField;
    qrorcamentoCELULAR: TWideStringField;
    qrorcamentoEMAIL: TWideStringField;
    qrorcamentoRG: TWideStringField;
    qrorcamentoCPF: TWideStringField;
    qrorcamentoVENDEDOR: TWideStringField;
    qrorcamento_produtoCODIGO: TWideStringField;
    qrorcamento_produtoCODNOTA: TWideStringField;
    qrorcamento_produtoCODPRODUTO: TWideStringField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoICMS: TFloatField;
    qrorcamento_produtoIPI: TFloatField;
    qrorcamento_produtoCFOP: TWideStringField;
    qrorcamento_produtoDATA: TDateField;
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
    qrorcamento_produtoCODBARRA: TWideStringField;
    qrorcamento_produtoPRODUTO: TWideStringField;
    qrorcamentoCOMPLEMENTO: TWideStringField;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1KeyPress(Sender: TObject; var Key: Char);
    procedure edtipoSelect(Sender: TObject);
    procedure edViasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Numero:string;
    procedure CarregaDados;
  end;

var
  frmImpressao: TfrmImpressao;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmImpressao.AdvGlowButton1Click(Sender: TObject);
begin
  qrorcamento.Close;
  qrorcamento.Params.Items[0].Value := Numero;
  qrorcamento.Open;
  qrorcamento_produto.Close;
  qrorcamento_produto.Params.Items[0].Value := Numero;
  qrorcamento_produto.Open;

  if edtipo.ItemIndex = 0 then begin
    fxVENDA.LoadFromFile('\TALOS\SERVER\rel\F000210.fr3');
    fxVENDA.PrintOptions.PrintMode := pmDefault;
  end
  else
  begin
    fxVENDA.LoadFromFile('\TALOS\SERVER\rel\F000211.fr3');
    fxVENDA.PrintOptions.PrintMode := pmSplit;
  end;

  fxVENDA.PrintOptions.Copies := edVias.Value;
  fxVENDA.PrintOptions.ShowDialog := False;
  fxVENDA.Print;
  Close;
end;

procedure TfrmImpressao.AdvGlowButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmImpressao.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmImpressao.CarregaDados;
begin
  with frmmodulo do begin
    qrconfig.Close;
    qrconfig.Open;
    edtipo.ItemIndex := qrconfig.FieldByName('atendimentoimpresmodelo').AsInteger;
    edVias.Value := qrconfig.FieldByName('atendimentovias').AsInteger;
    if Trim(qrconfig.FieldByName('atendimentoImpressora').AsString) <> '' then
      fxvenda.PrintOptions.Printer := qrconfig.FieldByName('atendimentoImpressora').AsString
  end;
end;



procedure TfrmImpressao.FormShow(Sender: TObject);
begin
  CarregaDados;

  // Deixando modelo Bobina como padrao
  edtipo.ItemIndex := 1;

  AdvSmoothExpanderPanel1.SetFocus;
end;

procedure TfrmImpressao.AdvSmoothExpanderPanel1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    AdvGlowButton1.Click
  else if Key = #27 then
    AdvGlowButton2.Click;
end;

procedure TfrmImpressao.edtipoSelect(Sender: TObject);
begin
  AdvSmoothExpanderPanel1.SetFocus;
end;

procedure TfrmImpressao.edViasChange(Sender: TObject);
begin
  AdvSmoothExpanderPanel1.SetFocus;
end;

end.

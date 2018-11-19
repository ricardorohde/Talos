unit carta_cobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, AdvGlowButton,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvMetroButton, Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxDBSet,
  frxDesgn, frxExportPDF, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmCarta_cobranca = class(TForm)
    Panel1: TPanel;
    bfechar: TAdvMetroButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label53: TLabel;
    edCliente: TRzButtonEdit;
    Label4: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    frxCartaCobranca: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDesigner1: TfrxDesigner;
    fsConfig: TfrxDBDataset;
    fsContasReceber: TfrxDBDataset;
    fsEmpresa: TfrxDBDataset;
    qrContasReceber: TZQuery;
    qrContasReceberSITUACAO: TIntegerField;
    qrContasReceberCOD_CLIENTE: TWideStringField;
    qrContasReceberNOME: TWideStringField;
    qrContasReceberEMAIL: TWideStringField;
    qrContasReceberTELEFONE1: TWideStringField;
    qrContasReceberTELEFONE2: TWideStringField;
    qrContasReceberTELEFONE3: TWideStringField;
    qrContasReceberCELULAR: TWideStringField;
    qrContasReceberENDERECO: TWideStringField;
    qrContasReceberBAIRRO: TWideStringField;
    qrContasReceberCIDADE: TWideStringField;
    qrContasReceberCEP: TWideStringField;
    qrContasReceberUF: TWideStringField;
    qrContasReceberNUMERO: TWideStringField;
    qrContasReceberRG: TWideStringField;
    qrContasReceberCPF: TWideStringField;
    qrContasReceberCODVENDA: TWideStringField;
    qrContasReceberCODVENDEDOR: TWideStringField;
    qrContasReceberDATA_EMISSAO: TDateField;
    qrContasReceberDATA_VENCIMENTO: TDateField;
    qrContasReceberATRASO: TFloatField;
    qrContasReceberVALOR_ATUAL: TFloatField;
    qrContasReceberRETIRADO_POR: TWideStringField;
    qrContasReceberNOME_VENDEDOR: TWideStringField;
    lbEdicao: TLabel;
    procedure bfecharClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edClienteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarta_cobranca: TfrmCarta_cobranca;

implementation

uses
  modulo;

{$R *.dfm}

procedure TfrmCarta_cobranca.AdvGlowButton2Click(Sender: TObject);
var
  sSql:string;
begin
  qrContasReceber.SQL.Clear;
  sSql := 'select ';
  sSql := sSql + ' rec.situacao,';
  sSql := sSql + ' cli.codigo cod_cliente,';
  sSql := sSql + ' cli.nome,';
  sSql := sSql + ' cli.email,';
  sSql := sSql + ' cli.telefone1,';
  sSql := sSql + ' cli.telefone2,';
  sSql := sSql + ' cli.telefone3,';
  sSql := sSql + ' cli.celular,';
  sSql := sSql + ' cli.endereco,';
  sSql := sSql + ' cli.bairro,';
  sSql := sSql + ' cli.cidade,';
  sSql := sSql + ' cli.cep,';
  sSql := sSql + ' cli.uf,';
  sSql := sSql + ' cli.numero,';
  sSql := sSql + ' cli.rg,';
  sSql := sSql + ' cli.cpf,';
  sSql := sSql + ' rec.codvenda,';
  sSql := sSql + ' rec.codvendedor,';
  sSql := sSql + ' rec.data_emissao,';
  sSql := sSql + ' rec.data_vencimento,';
  sSql := sSql + ' current_timestamp - cast(rec.data_vencimento as timestamp) atraso,';
  sSql := sSql + ' rec.valor_atual,';
  sSql := sSql + ' rec.retirado_por,';
  sSql := sSql + ' fun.nome nome_vendedor ';
  sSql := sSql + ' from ';
  sSql := sSql + '  c000007 cli ';
  sSql := sSql + '  inner join c000049 rec on rec.codcliente = cli.codigo ';
  sSql := sSql + '  left join c000008 fun on fun.codigo = rec.codvendedor ';
  sSql := sSql + ' where rec.situacao = 1 ';
  sSql := sSql + ' and rec.data_vencimento < current_timestamp ';
  if edCliente.Text <> 'TODOS OS CLIENTES' then begin
    sSql := sSql + ' and cli.nome = ' + QuotedStr(edCliente.Text);
  end;
  qrContasReceber.SQL.Text := sSql;
  qrContasReceber.Open;
  if qrContasReceber.RecordCount = 0 then begin
    Application.MessageBox('Não existem dados para gerar carta de cobrança!','Atenção',MB_ICONINFORMATION);
    Exit;
  end;
  frxCartaCobranca.LoadFromFile('\TALOS\server\rel\F000212.fr3');
  if lbEdicao.Visible then
    frxCartaCobranca.DesignReport
  else
    frxCartaCobranca.ShowReport;
end;

procedure TfrmCarta_cobranca.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCarta_cobranca.edClienteExit(Sender: TObject);
begin
  if edCliente.Text = '' then
    edCliente.Text := 'TODOS OS CLIENTES';
end;

procedure TfrmCarta_cobranca.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 69) and (Shift = [ssCtrl]) then
    lbEdicao.Visible := not lbEdicao.Visible;

end;

end.

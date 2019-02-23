unit GridOrcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExMask, JvToolEdit,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls, AdvToolBar, AdvGlowButton,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, Data.DB, Vcl.Grids,
  Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  vcl.wwdbigrd, vcl.wwdbgrid, DateUtils;

type
  TfrmGridOrcamentos = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label26: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    Bevel3: TBevel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bimprimir: TAdvGlowButton;
    btabela: TAdvGlowMenuButton;
    Panel6: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label25: TLabel;
    BFILTRO: TAdvGlowButton;
    ecliente: TRzButtonEdit;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    ENUMERO: TEdit;
    combo_situacao: TComboBox;
    qrcliente2: TZQuery;
    qrcliente2CODIGO: TWideStringField;
    qrcliente2NOME: TWideStringField;
    qrcliente2APELIDO: TWideStringField;
    qrcliente2ENDERECO: TWideStringField;
    qrcliente2BAIRRO: TWideStringField;
    qrcliente2CIDADE: TWideStringField;
    qrcliente2UF: TWideStringField;
    qrcliente2CEP: TWideStringField;
    qrcliente2COMPLEMENTO: TWideStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TWideStringField;
    qrcliente2TELEFONE2: TWideStringField;
    qrcliente2TELEFONE3: TWideStringField;
    qrcliente2CELULAR: TWideStringField;
    qrcliente2EMAIL: TWideStringField;
    qrcliente2RG: TWideStringField;
    qrcliente2CPF: TWideStringField;
    qrcliente2FILIACAO: TWideStringField;
    qrcliente2ESTADOCIVIL: TWideStringField;
    qrcliente2CONJUGE: TWideStringField;
    qrcliente2PROFISSAO: TWideStringField;
    qrcliente2EMPRESA: TWideStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TWideStringField;
    qrcliente2REF2: TWideStringField;
    qrcliente2CODVENDEDOR: TWideStringField;
    dtfldqrcliente2DATA_CADASTRO: TDateField;
    dtfldqrcliente2DATA_ULTIMACOMPRA: TDateField;
    qrcliente2OBS1: TWideStringField;
    qrcliente2OBS2: TWideStringField;
    qrcliente2OBS3: TWideStringField;
    qrcliente2OBS4: TWideStringField;
    qrcliente2OBS5: TWideStringField;
    qrcliente2OBS6: TWideStringField;
    qrcliente2NASCIMENTO: TWideStringField;
    qrcliente2CODREGIAO: TWideStringField;
    qrcliente2CODCONVENIO: TWideStringField;
    qrcliente2CODUSUARIO: TWideStringField;
    qrcliente2NUMERO: TWideStringField;
    qrcliente2RG_ORGAO: TWideStringField;
    qrcliente2RG_ESTADO: TWideStringField;
    dtfldqrcliente2RG_EMISSAO: TDateField;
    qrcliente2SEXO: TWideStringField;
    qrcliente2HISTORICO: TBlobField;
    dtfldqrcliente2PREVISAO: TDateField;
    qrcliente2CNAE: TWideStringField;
    qrcliente2COD_MUNICIPIO_IBGE: TWideStringField;
    qrcliente2IBGE: TWideStringField;
    qrcliente2TAMANHO_CALCA: TWideStringField;
    qrcliente2TAMANHO_BLUSA: TWideStringField;
    qrcliente2TAMANHO_SAPATO: TWideStringField;
    qrcliente2CORRESP_ENDERECO: TWideStringField;
    qrcliente2CORRESP_BAIRRO: TWideStringField;
    qrcliente2CORRESP_CIDADE: TWideStringField;
    qrcliente2CORRESP_UF: TWideStringField;
    qrcliente2CORRESP_CEP: TWideStringField;
    qrcliente2CORRESP_COMPLEMENTO: TWideStringField;
    qrcliente2RG_PRODUTOR: TWideStringField;
    qrcliente2RESP1_NOME: TWideStringField;
    qrcliente2RESP1_CPF: TWideStringField;
    qrcliente2RESP1_RG: TWideStringField;
    qrcliente2RESP1_PROFISSAO: TWideStringField;
    qrcliente2RESP1_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP1_ENDERECO: TWideStringField;
    qrcliente2RESP1_BAIRRO: TWideStringField;
    qrcliente2RESP1_CIDADE: TWideStringField;
    qrcliente2RESP1_UF: TWideStringField;
    qrcliente2RESP1_CEP: TWideStringField;
    qrcliente2RESP2_NOME: TWideStringField;
    qrcliente2RESP2_CPF: TWideStringField;
    qrcliente2RESP2_RG: TWideStringField;
    qrcliente2RESP2_PROFISSAO: TWideStringField;
    qrcliente2RESP2_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP2_ENDERECO: TWideStringField;
    qrcliente2RESP2_BAIRRO: TWideStringField;
    qrcliente2RESP2_CIDADE: TWideStringField;
    qrcliente2RESP2_UF: TWideStringField;
    qrcliente2RESP2_CEP: TWideStringField;
    qrcliente2FOTO: TWideStringField;
    qrcliente2CONDPGTO: TWideStringField;
    qrorcamento: TZQuery;
    dsorcamento: TDataSource;
    grid: TwwDBGrid;
    qrorcamentoCODIGO: TWideStringField;
    qrorcamentoDATA: TDateField;
    qrorcamentoCODCLIENTE: TWideStringField;
    qrorcamentoCODVENDEDOR: TWideStringField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoOBS1: TWideStringField;
    qrorcamentoOBS2: TWideStringField;
    qrorcamentoOBS3: TWideStringField;
    qrorcamentoOBS4: TWideStringField;
    qrorcamentoCODNF: TWideStringField;
    qrorcamentoCODVENDA: TWideStringField;
    qrorcamentoGERA_NF: TIntegerField;
    qrorcamentoQTDE_MESES: TIntegerField;
    qrorcamentoCONDPAGTOCLIENTE: TWideStringField;
    qrorcamentoPEND_ENTRADA: TIntegerField;
    qrorcamentoPEND_CHEQUE: TIntegerField;
    qrorcamentoPEND_CARTAO: TIntegerField;
    qrorcamentoNOME_VENDEDOR: TWideStringField;
    qrorcamentoSTATUS: TWideStringField;
    qrorcamentoCLIENTE: TStringField;
    bitbtn7: TAdvGlowButton;
    qrorcamentoNOME_CLIENTE: TWideStringField;
    qrorcamentoNOME_CPFCNPJ: TWideStringField;
    procedure eclienteButtonClick(Sender: TObject);
    procedure eclienteEnter(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROExit(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure BFILTROClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bitbtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridOrcamentos: TfrmGridOrcamentos;

implementation

uses
  modulo, principal, loc_cliente, xloc_cliente, orcamento;


{$R *.dfm}

procedure TfrmGridOrcamentos.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmGridOrcamentos.balterarClick(Sender: TObject);
begin
  if qrorcamento.fieldbyname('CODNF').asstring <> '' then begin
    application.messagebox('Nota Fiscal já emitida, não é permitido Alterar!' +
      #13 + 'Para Cancelar esta Venda somente em Notas de Venda!', 'Atenção!',
      mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;
  if qrorcamento.fieldbyname('CODVENDA').asstring <> '' then begin
    application.messagebox('Já Foi Gerado Venda, não é permitido Alterar!' + #13
      + 'Para Cancelar esta Venda somente em Notas de Venda!', 'Atenção!',
      mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;
  frmorcamento := tfrmorcamento.create(self);
  frmorcamento.Codigo := qrorcamentoCODIGO.AsString;
  frmorcamento.externo := True;
  frmorcamento.balterar.Click;
  frmorcamento.showmodal;
  FreeAndNil(frmorcamento);
  BFILTRO.Click;
end;

procedure TfrmGridOrcamentos.bexcluirClick(Sender: TObject);
begin
  if qrorcamento.fieldbyname('CODNF').asstring <> '' then
  begin
    application.messagebox('Nota Fiscal já emitida, não é permitido excluir!' +
      #13 + 'Para Cancelar esta Venda somente em Notas de Venda!', 'Atenção!',
      mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if qrorcamento.fieldbyname('CODVENDA').asstring <> '' then
  begin
    application.messagebox('Já Foi Gerado Venda, não é permitido excluir!' + #13
      + 'Para Cancelar esta Venda vá em Notas de Venda!', 'Atenção!',
      mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;
  frmorcamento := tfrmorcamento.create(self);
  frmorcamento.Codigo := qrorcamentoCODIGO.AsString;
  frmorcamento.externo := True;
  frmorcamento.bexcluir.Click;
  FreeAndNil(frmorcamento);
  BFILTRO.Click;
end;

procedure TfrmGridOrcamentos.BFILTROClick(Sender: TObject);
var
  filtro:string;
begin
  if ecliente.Text <> '' then
    filtro := filtro + ' and orc.codcliente = ' + QuotedStr(Copy(ecliente.Text, 1, 6));
  if (ENUMERO.Text <> '') and (ENUMERO.Text <> '000000') then
    filtro := filtro + ' and orc.codigo = ' + QuotedStr(ENUMERO.Text);
  if (DateEdit1.Date > 0) then
    filtro := filtro + ' and orc.data >= ' + QuotedStr(FormatDateTime('dd.mm.yyyy',DateEdit1.Date));
  if (DateEdit2.Date > 0) then
    filtro := filtro + ' and orc.data <= ' + QuotedStr(FormatDateTime('dd.mm.yyyy',DateEdit2.Date));
  if combo_situacao.ItemIndex = 1 then
    filtro := filtro + ' and orc.gera_nf = ' + QuotedStr('0');
  if combo_situacao.ItemIndex = 2 then
    filtro := filtro + ' and orc.gera_nf = ' + QuotedStr('2');
  qrorcamento.Close;
  qrorcamento.SQL.Clear;
  qrorcamento.SQL.Add('select orc.*, case orc.gera_nf when 0 then ' + QuotedStr('PENDENTE') + ' when 2 then ' + QuotedStr('GERADO VENDA') + ' end status from c000056 orc  where 1=1 ' + filtro + ' ORDER BY ORC.data');
  qrorcamento.Open;
end;

procedure TfrmGridOrcamentos.bincluirClick(Sender: TObject);
begin
  frmorcamento := tfrmorcamento.create(self);
  frmorcamento.externo := True;
  frmorcamento.bincluir.Click;
  frmorcamento.showmodal;
  FreeAndNil(frmorcamento);
  BFILTRO.Click;
end;

procedure TfrmGridOrcamentos.bitbtn7Click(Sender: TObject);
begin
  frmorcamento := tfrmorcamento.create(self);
  frmorcamento.Codigo := qrorcamentoCODIGO.AsString;
  frmorcamento.externo := True;
  frmorcamento.bitbtn7.Click;
  BFILTRO.Click;
end;

procedure TfrmGridOrcamentos.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmGridOrcamentos.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmGridOrcamentos.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmGridOrcamentos.eclienteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ecliente.Text;
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then begin
    ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
  end;
end;

procedure TfrmGridOrcamentos.eclienteEnter(Sender: TObject);
begin
  ecliente.Text := '';
end;

procedure TfrmGridOrcamentos.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if ecliente.Text <> '' then begin
      qrcliente2.Close;
      qrcliente2.sql.clear;
      qrcliente2.sql.add('select * from c000007 where codigo = ''' +
        frmPrincipal.zerarcodigo(copy(ecliente.Text, 1, 6), 6) + '''');
      qrcliente2.open;
      if qrcliente2.recordcount > 0 then begin
        if qrcliente2.recordcount = 1 then begin
          ecliente.Text := qrcliente2.FIELDBYNAME('codigo').AsString + ' ' +
            qrcliente2.FIELDBYNAME('nome').AsString;
          ENUMERO.SETFOCUS;
        end else begin
          resultado_pesquisa1 := '';
          parametro_pesquisa :=
            'select * from c000007 where upper(nome) like ''' +
            ansiuppercase(ecliente.Text) + '%'' order by nome';
          frmxloc_cliente := tfrmxloc_cliente.create(self);
          frmxloc_cliente.showmodal;
          if resultado_pesquisa1 <> '' then begin
            ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
            ENUMERO.SETFOCUS;
          end;
        end;
      end else begin
        APPLICATION.MESSAGEBOX('Cliente não encontrado!', 'Atenção',
          mb_ok + mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa := '';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
          ENUMERO.SETFOCUS;
        end;
      end;
    end;
  end;
end;

procedure TfrmGridOrcamentos.ENUMEROExit(Sender: TObject);
begin
  ENUMERO.Text := frmPrincipal.zerarcodigo(ENUMERO.Text, 6);
end;

procedure TfrmGridOrcamentos.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmGridOrcamentos.FormShow(Sender: TObject);
begin
  DateEdit1.date := StrToDate('01/' + IntToStr(MonthOf(Date))+'/'+IntToStr(YearOf(Date))) ;
  DateEdit2.date := frmPrincipal.UltimoDiaMes(date);
  BFILTRO.Click;
end;

end.

unit cliente_info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  AdvGlowButton, ExtCtrls, RzEdit, RzDBEdit, Mask, DBCtrls, Menus,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, TFlatPanelUnit;

type
  Tfrmcliente_info = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    qrcliente: TZQuery;
    dscliente: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    ed_situacao: TEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Incluir1: TMenuItem;
    Label14: TLabel;
    DBEdit17: TDBEdit;
    bincluir: TAdvGlowButton;
    qrclienteCODIGO: TWideStringField;
    qrclienteNOME: TWideStringField;
    qrclienteAPELIDO: TWideStringField;
    qrclienteENDERECO: TWideStringField;
    qrclienteBAIRRO: TWideStringField;
    qrclienteCIDADE: TWideStringField;
    qrclienteUF: TWideStringField;
    qrclienteCEP: TWideStringField;
    qrclienteCOMPLEMENTO: TWideStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TWideStringField;
    qrclienteTELEFONE2: TWideStringField;
    qrclienteTELEFONE3: TWideStringField;
    qrclienteCELULAR: TWideStringField;
    qrclienteEMAIL: TWideStringField;
    qrclienteRG: TWideStringField;
    qrclienteCPF: TWideStringField;
    qrclienteFILIACAO: TWideStringField;
    qrclienteESTADOCIVIL: TWideStringField;
    qrclienteCONJUGE: TWideStringField;
    qrclientePROFISSAO: TWideStringField;
    qrclienteEMPRESA: TWideStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TWideStringField;
    qrclienteREF2: TWideStringField;
    qrclienteCODVENDEDOR: TWideStringField;
    qrclienteDATA_CADASTRO: TDateField;
    qrclienteDATA_ULTIMACOMPRA: TDateField;
    qrclienteOBS1: TWideStringField;
    qrclienteOBS2: TWideStringField;
    qrclienteOBS3: TWideStringField;
    qrclienteOBS4: TWideStringField;
    qrclienteOBS5: TWideStringField;
    qrclienteOBS6: TWideStringField;
    qrclienteNASCIMENTO: TWideStringField;
    qrclienteCODREGIAO: TWideStringField;
    qrclienteCODCONVENIO: TWideStringField;
    qrclienteCODUSUARIO: TWideStringField;
    qrclienteNUMERO: TWideStringField;
    qrclienteRG_ORGAO: TWideStringField;
    qrclienteRG_ESTADO: TWideStringField;
    qrclienteRG_EMISSAO: TDateField;
    qrclienteSEXO: TWideStringField;
    qrclienteHISTORICO: TBlobField;
    qrclientePREVISAO: TDateField;
    qrclienteCNAE: TWideStringField;
    qrclienteCOD_MUNICIPIO_IBGE: TWideStringField;
    qrclienteIBGE: TWideStringField;
    qrclienteTAMANHO_CALCA: TWideStringField;
    qrclienteTAMANHO_BLUSA: TWideStringField;
    qrclienteTAMANHO_SAPATO: TWideStringField;
    qrclienteCORRESP_ENDERECO: TWideStringField;
    qrclienteCORRESP_BAIRRO: TWideStringField;
    qrclienteCORRESP_CIDADE: TWideStringField;
    qrclienteCORRESP_UF: TWideStringField;
    qrclienteCORRESP_CEP: TWideStringField;
    qrclienteCORRESP_COMPLEMENTO: TWideStringField;
    qrclienteRG_PRODUTOR: TWideStringField;
    qrclienteRESP1_NOME: TWideStringField;
    qrclienteRESP1_CPF: TWideStringField;
    qrclienteRESP1_RG: TWideStringField;
    qrclienteRESP1_PROFISSAO: TWideStringField;
    qrclienteRESP1_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP1_ENDERECO: TWideStringField;
    qrclienteRESP1_BAIRRO: TWideStringField;
    qrclienteRESP1_CIDADE: TWideStringField;
    qrclienteRESP1_UF: TWideStringField;
    qrclienteRESP1_CEP: TWideStringField;
    qrclienteRESP2_NOME: TWideStringField;
    qrclienteRESP2_CPF: TWideStringField;
    qrclienteRESP2_RG: TWideStringField;
    qrclienteRESP2_PROFISSAO: TWideStringField;
    qrclienteRESP2_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP2_ENDERECO: TWideStringField;
    qrclienteRESP2_BAIRRO: TWideStringField;
    qrclienteRESP2_CIDADE: TWideStringField;
    qrclienteRESP2_UF: TWideStringField;
    qrclienteRESP2_CEP: TWideStringField;
    qrclienteFOTO: TWideStringField;
    qrclienteCONDPGTO: TWideStringField;
    qrclienteCPAIS: TWideStringField;
    qrclienteDPAIS: TWideStringField;
    qrclienteTIPO_IE: TWideStringField;
    qrclienteCONSUMIDOR_FINAL: TWideStringField;
    procedure isairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente_info: Tfrmcliente_info;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmcliente_info.isairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente_info.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcliente_info.FormShow(Sender: TObject);
begin
  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select  * from c000007 where codigo = '''+resultado_pesquisa1+'''');
  qrcliente.open;

  ed_situacao.text := 'APROVADO';
  if qrcliente.FieldByName('situacao').asstring = '2' then ed_situacao.text := 'EM OBSERVAÇÃO';
  if qrcliente.FieldByName('situacao').asstring = '3' then ed_situacao.text := 'BLOQUEADO';
  if qrcliente.FieldByName('situacao').asstring = '4' then ed_situacao.text := 'INATIVO';
  if qrcliente.FieldByName('situacao').asstring = '5' then ed_situacao.text := 'SPC';

   AdvMetroButton1.SetFocus;

  if (resultado_pesquisa1 = '') and (resultado_pesquisa2 = '') then
  begin
    Panel2.Visible := True;
    FrmCliente_info.Caption := 'Cliente';
  end
  else
  begin
    FrmCliente_info.Caption := 'Cliente - Informações';
    Panel2.Visible := False;
  end;

  pGravar.Visible := False;
  Panel1.Enabled := False;
end;

procedure Tfrmcliente_info.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente_info.Fechar1Click(Sender: TObject);
begin
 close;
end;

procedure Tfrmcliente_info.Incluir1Click(Sender: TObject);
begin
  bincluir.Click;
end;

procedure Tfrmcliente_info.bincluirClick(Sender: TObject);
begin
  QRCliente.Insert;
  ed_situacao.text := 'APROVADO';
  bIncluir.Visible := False;
  pGravar.Visible  := True;
  Panel1.Enabled   := True;
end;

procedure Tfrmcliente_info.bcancelarClick(Sender: TObject);
begin
  QRCliente.Cancel;
  pGravar.visible  := False;
  Panel1.Enabled   := False;
  bIncluir.Visible := True;
end;

procedure Tfrmcliente_info.bgravarClick(Sender: TObject);
var
  Q: TZQuery;
begin
  Q := TZQuery.Create(Self);

  with Q do
  begin
    Connection := FrmModulo.Conexao;
    {SQL.Add('INSERT INTO c000007 CODIGO NOME APELIDO ENDERECO BAIRRO CIDADE UF CEP COMPLEMENTO MORADIA TIPO SITUACAO
    TELEFONE1 TELEFONE2 TELEFONE3 CELULAR EMAIL RG CPF FILIACAO ESTADOCIVIL CONJUGE PROFISSAO EMPRESA RENDA LIMITE REF1
    REF2 CODVENDEDOR DATA_CADASTRO DATA_ULTIMACOMPRA OBS1 OBS2 OBS3 OBS4 OBS5 OBS6 NASCIMENTO CODREGIAO CODCONVENIO CODUSUARIO NUMERO
    RG_ORGAO RG_ESTADO RG_EMISSAO SEXO HISTORICO PREVISAO CNAE COD_MUNICIPIO_IBGE IBGE TAMANHO_CALCA TAMANHO_BLUSA TAMANHO_SAPATO CORRESP_ENDERECO
    CORRESP_BAIRRO CORRESP_CIDADE CORRESP_UF CORRESP_CEP CORRESP_COMPLEMENTO RG_PRODUTOR RESP1_NOME RESP1_CPF RESP1_RG RESP1_PROFISSAO
    RESP1_ESTADO_CIVIL RESP1_ENDERECO RESP1_BAIRRO RESP1_CIDADE RESP1_UF RESP1_CEP RESP2_NOME RESP2_CPF RESP2_RG RESP2_PROFISSAO
    RESP2_ESTADO_CIVIL RESP2_ENDERECO RESP2_BAIRRO RESP2_CIDADE RESP2_UF RESP2_CEP FOTO CONDPGTO CPAIS DPAIS TIPO_IE CONSUMIDOR_FINAL');
    //ExecSQL;
    QRCliente.Post;
    //SQL.Clear;
    //SQL.Add('ALTER TABLE c000007 ENABLE *');
    //ExecSQL;   }
  end;
  QRCliente.Post;
  pGravar.visible  := false;
  Panel1.Enabled   := False;
  bIncluir.Visible := True;
end;

end.

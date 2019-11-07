unit venda_fechamento_aprazo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, TFlatComboBoxUnit, Menus, jpeg, Buttons, frxClass, frxDBSet,
  frxDesgn, AdvGlowButton, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmvenda_fechamento_aprazo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rdesconto2: TJvCalcEdit;
    racrescimo2: TJvCalcEdit;
    rdesconto1: TJvCalcEdit;
    racrescimo1: TJvCalcEdit;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    Parcelamento1: TMenuItem;
    Panel3: TPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    bParcelamento: TBitBtn;
    rsubtotal: TJvCalcEdit;
    rtotal: TJvCalcEdit;
    rparcelas: TJvCalcEdit;
    comboforma: TComboBox;
    fxvenda: TfrxReport;
    fxdesenhar: TfrxDesigner;
    fsorcamento: TfrxDBDataset;
    fsorcamento_produto: TfrxDBDataset;
    fsorcamento_receber: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    procedure bcancelarClick(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimo2Exit(Sender: TObject);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure rdinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure comboformaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rparcelasKeyPress(Sender: TObject; var Key: Char);
    procedure bparcelamentoClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_fechamento_aprazo: Tfrmvenda_fechamento_aprazo;

implementation

uses principal, venda_pdv, modulo, venda_impressao, Impressao, Data.DB;

{$R *.dfm}

procedure Tfrmvenda_fechamento_aprazo.AdvGlowButton1Click(Sender: TObject);
begin
  bgravar.Click;
end;

procedure Tfrmvenda_fechamento_aprazo.AdvGlowButton2Click(Sender: TObject);
begin
  bcancelar.Click
end;

procedure Tfrmvenda_fechamento_aprazo.AdvGlowButton3Click(Sender: TObject);
begin
  bParcelamento.Click;
end;

procedure Tfrmvenda_fechamento_aprazo.AdvMetroButton1Click(Sender: TObject);
begin
  bcancelar.Click;
end;

procedure Tfrmvenda_fechamento_aprazo.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento_aprazo.rdesconto1Exit(Sender: TObject);
begin
  if rdesconto1.value <> 0 then begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento_aprazo.rdesconto2Exit(Sender: TObject);
begin
  if rsubtotal.value <> 0 then begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento_aprazo.racrescimo1Exit(Sender: TObject);
begin
  if racrescimo1.value <> 0 then begin
    racrescimo2.Value := rsubtotal.value * (racrescimo1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento_aprazo.racrescimo2Exit(Sender: TObject);
begin
  if rsubtotal.value <> 0 then begin
    racrescimo1.Value := (racrescimo2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento_aprazo.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_fechamento_aprazo.bgravarClick(Sender: TObject);
var
  codigo_venda : string;
  x, prest : integer;
  prestacao : real;
  sCod :string;
  imprime:Boolean;
begin
  try
    frmvenda_pdv.cdsvenda_produto.DisableControls;
    frmmodulo.qrorcamento_produto.DisableControls;
    forma1 := comboforma.text;
    vforma1 := rtotal.value;
    if frmvenda_pdv.PreVenda_TipoFixa = taSistema then
      codigo_venda := frmprincipal.codifica('000048')
    else
      codigo_venda := frmvenda_pdv.Numero_Ficha;
    frmmodulo.qrorcamento.close;
    frmmodulo.qrorcamento.sql.clear;
    frmmodulo.qrorcamento.sql.add('select * from c000074 where codigo = ' + QuotedStr(codigo_venda));
    frmmodulo.QRORCAMENTO.open;
    if frmmodulo.QRORCAMENTO.IsEmpty then
      frmmodulo.QRORCAMENTO.insert
    else
      frmmodulo.QRORCAMENTO.Edit;
    frmmodulo.QRORCAMENTO.fieldbyname('codigo').asstring         := codigo_venda;
    frmmodulo.QRORCAMENTO.fieldbyname('data').asstring           := frmvenda_pdv.ldata_venda.Caption;
    frmmodulo.QRORCAMENTO.fieldbyname('hora').asstring           := frmvenda_pdv.lhora_venda.Caption;
    frmmodulo.QRORCAMENTO.fieldbyname('codcliente').asstring     := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
    frmmodulo.QRORCAMENTO.fieldbyname('codvendedor').asstring    := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
    frmmodulo.QRORCAMENTO.fieldbyname('codcaixa').asstring       := '000099';
    frmmodulo.QRORCAMENTO.fieldbyname('TOTAL').asfloat           := rtotal.value;
    frmmodulo.QRORCAMENTO.fieldbyname('SUBTOTAL').asfloat        := rsubtotal.value;
    if comboforma.ItemIndex = 0 then
      frmmodulo.qrorcamento.FieldByName('meio_crediario').asfloat  := rtotal.value;
    if comboforma.ItemIndex = 1 then
      frmmodulo.qrorcamento.FieldByName('meio_chequeap').asfloat   := rtotal.value;
    if comboforma.ItemIndex = 2 then
      frmmodulo.qrorcamento.FieldByName('meio_cartaocred').asfloat := rtotal.value;
    FRMMODULO.QRORCAMENTO.FIELDBYNAME('desconto').asfloat        := rdesconto2.Value;
    FRMMODULO.QRORCAMENTO.FIELDBYNAME('acrescimo').asfloat       := racrescimo2.Value;
    frmmodulo.QRORCAMENTO.fieldbyname('OBS').asstring            := rparcelas.text;
    frmmodulo.QRORCAMENTO.fieldbyname('RETIRADO').asstring       := frmvenda_pdv.COMBOBOX1.TEXT;
    frmmodulo.QRORCAMENTO.fieldbyname('cupom_fiscal').asinteger := 0;
    frmmodulo.qrorcamento.fieldbyname('tipo').asinteger := 0;
    frmmodulo.qrorcamento.fieldbyname('situacao').asinteger := 1;
    frmmodulo.QRORCAMENTO.post;
    // lancamento dos produtos
    frmmodulo.qrorcamento_produto.OPEN;
    frmvenda_pdv.cdsvenda_produto.First;
    while not frmvenda_pdv.cdsvenda_produto.Eof do begin
      if frmmodulo.qrorcamento_produto.Locate('codigo', frmvenda_pdv.cdsVenda_Produtocodigo.AsString,[loCaseInsensitive]) then
        frmmodulo.qrorcamento_produto.Edit
      else
        frmmodulo.qrorcamento_produto.Insert;
      frmmodulo.qrorcamento_produto.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
      frmmodulo.qrorcamento_produto.fieldbyname('codnota').AsString := codigo_venda;
      frmmodulo.qrorcamento_produto.fieldbyname('numeronota').AsString := codigo_venda;
      frmmodulo.qrorcamento_produto.fieldbyname('codproduto').asstring := frmvenda_pdv.cdsvenda_produto.fieldbyname('codproduto').asstring;
      frmmodulo.qrorcamento_produto.fieldbyname('qtde').asfloat := frmvenda_pdv.cdsvenda_produto.fieldbyname('qtde').asfloat;
      frmmodulo.qrorcamento_produto.fieldbyname('unitario').asfloat := frmvenda_pdv.cdsvenda_produto.fieldbyname('unitario').asfloat;
      frmmodulo.qrorcamento_produto.fieldbyname('total').asfloat := frmvenda_pdv.cdsvenda_produto.fieldbyname('total').asfloat;
      frmmodulo.qrorcamento_produto.fieldbyname('desconto').asfloat := frmvenda_pdv.cdsvenda_produto.fieldbyname('desconto').asfloat;
      frmmodulo.qrorcamento_produto.fieldbyname('acrescimo').asfloat := frmvenda_pdv.cdsvenda_produto.fieldbyname('acrescimo').asfloat;
      frmmodulo.qrorcamento_produto.fieldbyname('unidade').asstring := frmvenda_pdv.cdsvenda_produto.fieldbyname('numeracao').AsString;
      frmmodulo.qrorcamento_produto.fieldbyname('codcliente').AsString := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      frmmodulo.qrorcamento_produto.fieldbyname('codvendedor').AsString := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
      frmmodulo.qrorcamento_produto.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
      frmmodulo.qrorcamento_produto.FieldByName('data').asstring := frmvenda_pdv.ldata_venda.Caption;
      frmmodulo.qrorcamento_produto.Post;
      frmvenda_pdv.cdsvenda_produto.next;
    end;
    frmmodulo.Conexao.Commit;
    frmmodulo.ConexaoLocal.Commit;
    if frmvenda_pdv.PreVenda_TipoFixa <> taUsuario then
      frmprincipal.msg('INFO','PRÉ-VENDA CONCLUÍDA!'+#13+'NÚMERO: '+codigo_venda,false,false,true,'');
    frmmodulo.ConexaoLocal.Commit;
    close;
    if frmvenda_pdv.PreVenda_Impressao <> 'N' then begin
      imprime := True;
      if frmvenda_pdv.PreVenda_Impressao = 'P' then begin
        if Application.MessageBox('Imprimir o Atendimento?','Atenção',MB_ICONQUESTION+MB_YESNO)=mrNo  then
          imprime := False;
      end;
      if imprime then begin
        Application.CreateForm(TfrmImpressao, frmImpressao);
        frmImpressao.Numero := codigo_venda;
        if frmvenda_pdv.PreVenda_Impressao = 'I' then begin
          frmImpressao.CarregaDados;
          frmImpressao.AdvGlowButton1.Click;
        end else
          frmImpressao.ShowModal;
        FreeAndNil(frmvenda_impressao);
      end;
    end;
  finally
    frmvenda_pdv.cdsvenda_produto.EnableControls;
    frmmodulo.qrorcamento_produto.EnableControls;
    frmvenda_pdv.close;
  end;
end;

procedure Tfrmvenda_fechamento_aprazo.rdinheiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmvenda_fechamento_aprazo.comboformaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    rparcelas.setfocus;
end;

procedure Tfrmvenda_fechamento_aprazo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_fechamento_aprazo.rparcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmvenda_fechamento_aprazo.bparcelamentoClick(Sender: TObject);
var
  vencs : string;
begin
  showmessage('*** P A R C E L A M E N T O: ***'+ #13+
              RPARCELAS.TEXT+' X de -->  R$'+FORMATFLOAT('###,###,##0.00',RTOTAL.VALUE / RPArCELAS.VALUE)+#13);
end;

end.

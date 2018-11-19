unit Recebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  AdvGlowButton, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Data.DB,
  Datasnap.DBClient;

type
  TRecebimento = record
    Confirma:Boolean;
    ValorPago, Troco, Desconto, Acrescimo:Double;
    CancelaImpressaoCozinha:Boolean
  end;
  TfrmRecebimento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnDinheiro: TAdvGlowButton;
    btnCartaoCR: TAdvGlowButton;
    btnCheque: TAdvGlowButton;
    Panel6: TPanel;
    Panel7: TPanel;
    pnTroco: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    pnTotal: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    pnDesconto: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    pnAcrescimo: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    pnSaldo: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Image1: TImage;
    pnDinheiro: TPanel;
    Image2: TImage;
    Panel33: TPanel;
    pnRecebido: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    pnTEF: TPanel;
    Image3: TImage;
    pnConvenio: TPanel;
    Image4: TImage;
    pnCrediario: TPanel;
    Image5: TImage;
    pnCartaoDebito: TPanel;
    Image6: TImage;
    pnCartaoCredito: TPanel;
    Image7: TImage;
    pnChque: TPanel;
    Panel44: TPanel;
    btnFinalizar: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    Action10: TAction;
    Action11: TAction;
    Panel45: TPanel;
    lCouvert: TLabel;
    lTaxa: TLabel;
    vGarcom: TLabel;
    vCouvert: TLabel;
    edCancelaImpressaoCozinha: TCheckBox;
    btnDesconto: TAdvGlowButton;
    btnAcrescimo: TAdvGlowButton;
    btnConvenio: TAdvGlowButton;
    btnCartaoDE: TAdvGlowButton;
    btnCrediario: TAdvGlowButton;
    btnTef: TAdvGlowButton;
    procedure Action11Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
  private
    { Private declarations }
    RecDinheiro, RecCrediario, RecConvenio, RecCartaoCR, RecCartaoDE,
    RecCheque, RecTEF, Desconto, Acrescimo, Recebido, Troco, TotalReceber,
    NovoAcrescimo,Saldo:Double;
    Continua:Boolean;
    procedure MostraDados;
  public
    { Public declarations }
    NovoDesconto:Double;
  end;
  function EfetuaRecebimento(ValorTotal, ValorCouvert, ValorGarcom, ValorDesconto,
     ValorAcrescimo:Double):TRecebimento;

var
  frmRecebimento: TfrmRecebimento;

implementation

uses Receber_Valor, venda, venda_crediario, principal, uBandeira, pcnConversao,
  System.Math, venda_convenio, senha_supervisor;

{$R *.dfm}


function EfetuaRecebimento(ValorTotal, ValorCouvert, ValorGarcom, ValorDesconto,
   ValorAcrescimo:Double):TRecebimento;
begin
  Application.CreateForm(TfrmRecebimento, frmRecebimento);
  with frmRecebimento do begin
    TotalReceber := ValorTotal;
    Continua := False;
    if ValorCouvert > 0 then begin
      lCouvert.Visible := True;
      vCouvert.Caption := 'R$ '+FormatFloat('#,##0.00',ValorCouvert);
    end;
    if ValorGarcom > 0 then begin
      lTaxa.Visible := True;
      vGarcom.Caption := 'R$ '+FormatFloat('#,##0.00',ValorGarcom);
    end;
    pnTotal.Caption := 'R$ '+FormatFloat('#,##0.00',ValorTotal);
    pnSaldo.Caption := 'R$ '+FormatFloat('#,##0.00',ValorTotal);
    pnDesconto.Caption := 'R$ '+FormatFloat('#,##0.00',0);
    pnAcrescimo.Caption := 'R$ '+FormatFloat('#,##0.00',ValorAcrescimo);
    Acrescimo := ValorAcrescimo;
    Desconto := ValorDesconto;
    NovoDesconto := 0;
    NovoAcrescimo := 0;
    Saldo := ValorTotal;
    ShowModal;
    Result.Confirma := Continua;
    Result.Troco := Troco;
    Result.CancelaImpressaoCozinha := edCancelaImpressaoCozinha.Checked;
    Result.ValorPago := Recebido;
    Result.Desconto := NovoDesconto;
    Result.Acrescimo := NovoAcrescimo;
  end;
  FreeAndNil(frmRecebimento);
end;


procedure TfrmRecebimento.Action10Execute(Sender: TObject);
begin
  if Saldo > 0 then begin
    Application.MessageBox('Existe saldo a receber!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Continua := True;
  Close;
end;

procedure TfrmRecebimento.Action11Execute(Sender: TObject);
begin
  Continua := False;
  Close;
end;

procedure TfrmRecebimento.Action1Execute(Sender: TObject);
var
  Valor:tValorReceber;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('Não existe mais saldo para receber!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Valor := RetornaValorRecebimento(Saldo, True, tmDinheiro,tvRecebimento);
  if Valor.Confirma then begin
    RecDinheiro := Roundto(RecDinheiro + Valor.Valor,-2);
    Saldo := Roundto(Saldo - Valor.Valor,-2);
    Recebido := Recebido + Valor.Valor;
    with frmVenda do begin
      cdsRecebimento.Append;
      cdsRecebimentoTipo.AsString := StRecDinheiro;
      cdsRecebimentovalor.AsFloat := Valor.Valor;
      cdsRecebimento.Post;
    end;
  end;
  if Saldo < 0 then begin
    Troco := -Saldo;
    Saldo := 0;
  end;
  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;

procedure TfrmRecebimento.Action2Execute(Sender: TObject);
var
  Valor:tValorReceber;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('Não existe mais saldo para receber!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Valor := RetornaValorRecebimento(Saldo, False, tmCrediario, tvRecebimento);
  if Valor.Confirma then begin
    with frmVenda do begin
      bContinua := False;
      frmVenda_Crediario := TfrmVenda_Crediario.Create(Self);
      if sConsumidor_CPF <> '' then
        frmVenda_Crediario.ed_cred_cliente.Text := sConsumidor_CPF;
      frmVenda_Crediario.ShowModal;
      if not bContinua then begin
        Exit;
      end;
      bCadastra_Crediario := True;
      rvalor_total_crediario := Valor.Valor;
      cdsRecebimento.Append;
      cdsRecebimentoTipo.AsString := StRecCrediario;
      cdsRecebimentovalor.AsFloat := Valor.Valor;
      cdsRecebimentocliente.AsString := sCli_codigo;
      cdsRecebimentoParcelas.AsInteger := iCrediario_prestacao;
      cdsRecebimento.Post;
    end;
    RecCrediario := Roundto(RecCrediario + Valor.Valor,-2);
    Saldo := Roundto(Saldo - Valor.Valor,-2);
    Recebido := Roundto(Recebido + Valor.Valor,-2);
  end;
  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;

procedure TfrmRecebimento.Action3Execute(Sender: TObject);
var
  Valor:tValorReceber;
  calConvenio:Double;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('Não existe mais saldo para receber!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  with frmVenda do begin
    bContinua := False;
    frmVenda_convenio := TfrmVenda_convenio.Create(Self);
    if sConsumidor_CPF <> '' then
      frmVenda_convenio.ed_cred_cliente.Text := sConsumidor_CPF;
    frmVenda_convenio.ShowModal;
    if not bContinua then
      Exit;
    calConvenio := 0;
    if frmVenda_convenio.DescontoConvenio > 0 then begin
      calConvenio := RoundTo((TotalReceber * frmVenda_convenio.DescontoConvenio)/100,-2);
      TotalReceber := RoundTo(TotalReceber - calConvenio,-2);
      NovoDesconto := RoundTo(NovoDesconto + calConvenio,-2);
      Saldo := TotalReceber;
    end;
    Valor := RetornaValorRecebimento(Saldo, False, tmConvenio, tvRecebimento);
    if Valor.Confirma then begin
      rvalor_total_convenio := Valor.Valor;
      bCadastra_Convenio := True;
      cdsRecebimento.Append;
      cdsRecebimentoTipo.AsString := StRecConvenio;
      cdsRecebimentovalor.AsFloat := Valor.Valor;
      cdsRecebimentocliente.AsString := sCli_codigo;
      cdsRecebimentoParcelas.AsInteger := 1;
      cdsRecebimento.Post;
      RecConvenio := Roundto(RecConvenio + Valor.Valor,-2);
      Saldo := Roundto(Saldo - Valor.Valor,-2);
      Recebido := Roundto(Recebido + Valor.Valor,-2);
    end else begin
      TotalReceber := RoundTo(TotalReceber + calConvenio,-2);
      Saldo := TotalReceber;
      NovoDesconto := NovoDesconto - calConvenio;
    end;
  end;
  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;

procedure TfrmRecebimento.Action4Execute(Sender: TObject);
var
  Valor:tValorReceber;
  Banceira: TBaneira;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('Não existe mais saldo para receber!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Valor := RetornaValorRecebimento(Saldo, False, tmCartaoCredito, tvRecebimento);
  if Valor.Confirma then begin
    Banceira := RetBandeira(Valor.Valor,tcCredito);
    if Banceira.Numero > 0 then begin
      with frmVenda do begin
        cdsRecebimento.Append;
        cdsRecebimentoTipo.AsString := StRecCartaoCR;
        cdsRecebimentoParcelas.AsInteger := Banceira.Parcela.Parcelas;
        cdsRecebimentoBanco.AsInteger := Banceira.Numero;
        cdsRecebimentobandeira.AsString := BandeiraCartaoToDescStr(Banceira.Bandeira);
        cdsRecebimentovalor.AsFloat := Valor.Valor;
        cdsRecebimento.Post;
      end;
      RecCartaoCR := Roundto(RecCartaoCR + Valor.Valor,-2);
      Saldo := Roundto(Saldo - Valor.Valor,-2);
      Recebido := Roundto(Recebido + Valor.Valor,-2);
      if (TipoDeCupom <> tcSimples) then
        frmPrincipal.TipoImpressora := SemImpressora;
      frmVenda.CorEditTotaL;
    end;
  end;
  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;


procedure TfrmRecebimento.Action5Execute(Sender: TObject);
var
  Valor:tValorReceber;
  Banceira: TBaneira;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('Não existe mais saldo para receber!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Valor := RetornaValorRecebimento(Saldo, False, tmCartaoDebito, tvRecebimento);
  if Valor.Confirma then begin
    Banceira := RetBandeira(Valor.Valor,tcDebito);
    if Banceira.Numero > 0 then begin
      with frmVenda do begin
        cdsRecebimento.Append;
        cdsRecebimentoTipo.AsString := StRecCartaoDE;
        cdsRecebimentoParcelas.AsInteger := Banceira.Parcela.Parcelas;
        cdsRecebimentoBanco.AsInteger := Banceira.Numero;
        cdsRecebimentobandeira.AsString := BandeiraCartaoToDescStr(Banceira.Bandeira);
        cdsRecebimentovalor.AsFloat := Valor.Valor;
        cdsRecebimento.Post;
      end;
      RecCartaoDE := Roundto(RecCartaoDE + Valor.Valor,-2);
      Saldo := Roundto(Saldo - Valor.Valor,-2);
      Recebido := Roundto(Recebido + Valor.Valor,-2);
      if (TipoDeCupom <> tcSimples) then
        frmPrincipal.TipoImpressora := SemImpressora;
      frmVenda.CorEditTotaL;
    end;
  end;
  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;

procedure TfrmRecebimento.Action8Execute(Sender: TObject);
var
  Valor:tValorReceber;
  rd:Double;
begin
  if Recebido > 0 then begin
    Application.MessageBox('Não é permitido dar desconto após lançamento de recebimento!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  TotalReceber := RoundTo(TotalReceber + NovoDesconto,-2);
  Saldo := TotalReceber;
  Valor := RetornaValorRecebimento(Saldo, True, tmDinheiro,tvDesconto);
  if not Valor.Confirma then begin
    TotalReceber := RoundTo(TotalReceber - NovoDesconto,-2);
    Saldo := TotalReceber;
    Exit;
  end;
  if rDesconto_maximo > 0 then begin
    rd := RoundTo(((Valor.Valor+Desconto) / (rTotal_Venda+Desconto)) * 100,-2);
    if rd > rDesconto_maximo then begin
      frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
      frmSenha_Supervisor.ValidaDesconto := True;
      frmSenha_Supervisor.showmodal;
      if not bSupervisor_autenticado then begin
        TotalReceber := RoundTo(TotalReceber - NovoDesconto,-2);
        Saldo := TotalReceber;
        Exit;
      end;
    end;
  end;
  NovoDesconto := Valor.Valor;
  TotalReceber := RoundTo(TotalReceber - NovoDesconto,-2);
  Saldo := TotalReceber;
  MostraDados;
end;

procedure TfrmRecebimento.FormCreate(Sender: TObject);
begin
  RecDinheiro := 0;
  RecCrediario := 0;
  RecConvenio := 0;
  RecCartaoCR := 0;
  RecCartaoDE := 0;
  RecCheque := 0;
  RecTEF := 0;
  Desconto := 0;
  Acrescimo := 0;
  Recebido := 0;
  Troco := 0;
  TotalReceber := 0;
end;

procedure TfrmRecebimento.FormShow(Sender: TObject);
begin
  edCancelaImpressaoCozinha.Visible := bImpressaoCozinha;
end;

procedure TfrmRecebimento.MostraDados;
begin
  pnDinheiro.Caption := 'R$ ' + FormatFloat('#,##0.00',RecDinheiro);
  pnCrediario.Caption := 'R$ ' + FormatFloat('#,##0.00',RecCrediario);
  pnConvenio.Caption := 'R$ ' + FormatFloat('#,##0.00',RecConvenio);
  pnCartaoCredito.Caption := 'R$ ' + FormatFloat('#,##0.00',RecCartaoCR);
  pnCartaoDebito.Caption := 'R$ ' + FormatFloat('#,##0.00',RecCartaoDE);
  pnChque.Caption := 'R$ ' + FormatFloat('#,##0.00',RecCheque);
  pnTEF.Caption := 'R$ ' + FormatFloat('#,##0.00',RecTEF);

  pnDesconto.Caption := 'R$ ' + FormatFloat('#,##0.00',NovoDesconto);
  pnAcrescimo.Caption := 'R$ ' + FormatFloat('#,##0.00',Acrescimo);
  pnRecebido.Caption := 'R$ ' + FormatFloat('#,##0.00',Recebido);
  pnSaldo.Caption := 'R$ ' + FormatFloat('#,##0.00',Saldo);
  pnTroco.Caption := 'R$ ' + FormatFloat('#,##0.00',Troco);
end;

end.

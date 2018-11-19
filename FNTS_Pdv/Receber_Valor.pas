unit Receber_Valor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, cxTextEdit,
  System.Actions, Vcl.ActnList, AdvGlowButton, Vcl.ExtCtrls, Vcl.Touch.Keyboard,
  AdvTouchKeyboard, AdvSmoothTouchKeyBoard, cxMaskEdit, cxDropDownEdit, cxCalc,
  Vcl.Mask, RzEdit;

type
  tValorReceber = record
    Confirma:Boolean;
    Valor:Double;
  end;
  tTipoMovimento = (tmDinheiro, tmCrediario, tmConvenio, tmCartaoCredito,
      tmCartaoDebito, tmCheque, tmTEF, tmDesconto, tmAcrescimo);
  tTipoValor = (tvRecebimento, tvDesconto);
  TfrmReceber_Valor = class(TForm)
    Panel1: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Panel2: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Label1: TLabel;
    pnTeclado: TPanel;
    Teclado: TAdvSmoothTouchKeyBoard;
    lbTotal: TLabel;
    edPercentual: TCheckBox;
    lbDesAcre: TLabel;
    edValor: TRzNumericEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure edValorChange(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure edValorEnter(Sender: TObject);
    procedure edPercentualClick(Sender: TObject);
  private
    { Private declarations }
    vContinua:Boolean;
    RecebeMais:Boolean;
    ValorMaximo, ValorCalculado:Double;
    vTipo:tTipoValor;
  public
    { Public declarations }
  end;
  function RetornaValorRecebimento(ValorTotal:Double;RecebimentoMaior:Boolean;Tipo:tTipoMovimento;TipoValor:tTipoValor):tValorReceber;

var
  frmReceber_Valor: TfrmReceber_Valor;

implementation

uses principal, System.Math;

{$R *.dfm}


function RetornaValorRecebimento(ValorTotal:Double;RecebimentoMaior:Boolean;
   Tipo:tTipoMovimento;TipoValor:tTipoValor):tValorReceber;
begin
  Application.CreateForm(TfrmReceber_Valor,frmReceber_Valor);
  with frmReceber_Valor do begin
    lbTotal.Caption := 'Total R$ ' + FormatFloat('#,##0.00',ValorTotal);
    ValorMaximo := ValorTotal;
    RecebeMais := RecebimentoMaior;
    ValorCalculado := 0;
    vTipo := TipoValor;
    edValor.DisplayFormat := 'R$ #,##0.00';
    if TipoValor = tvRecebimento then begin
      edValor.Value := ValorTotal;
    end else begin
      edPercentual.Visible := True;
      lbDesAcre.Visible := True;
      lbDesAcre.Caption := 'Desconto R$ 0.00';
    end;
    vContinua := False;
    ShowModal;
    if vContinua then
      if vTipo = tvRecebimento then
        Result.Valor := edValor.Value
      else
        Result.Valor := ValorCalculado
    else
      Result.Valor := 0;
    Result.Confirma := vContinua;
  end;
  FreeAndNil(frmReceber_Valor);
end;


procedure TfrmReceber_Valor.Action1Execute(Sender: TObject);
begin
  vContinua := False;
  Close;
end;

procedure TfrmReceber_Valor.Action2Execute(Sender: TObject);
begin
  if edValor.Value <=0 then begin
    Application.MessageBox('Informe o valor recebido!','Atenção!',MB_ICONINFORMATION);
    edValor.SetFocus;
    Exit;
  end;
  if not RecebeMais then begin
    if RoundTo(edValor.Value,-2) > RoundTo(ValorMaximo,-2) then begin
      Application.MessageBox('Valor informádo é superior ao saldo a receber do cupom!','Atenção!',MB_ICONINFORMATION);
      edValor.SetFocus;
      Exit;
    end;
  end;
  vContinua := True;
  Close;
end;

procedure TfrmReceber_Valor.edPercentualClick(Sender: TObject);
begin
  if edPercentual.Checked then
    edValor.DisplayFormat := '% #,##0.00'
  else
    edValor.DisplayFormat := 'R$ #,##0.00';

end;

procedure TfrmReceber_Valor.edValorChange(Sender: TObject);
begin
  if vTipo = tvDesconto then begin
    if edPercentual.Checked then
      ValorCalculado := RoundTo(((ValorMaximo * edValor.Value)/100),-2)
    else
      ValorCalculado := RoundTo(edValor.Value,-2);
    lbDesAcre.Caption := 'Desconto R$ ' + FormatFloat('#,##0.00', ValorCalculado);
  end;
end;

procedure TfrmReceber_Valor.edValorEnter(Sender: TObject);
begin
  edValor.SelectAll;
end;

procedure TfrmReceber_Valor.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Action2Execute(Sender);
end;

procedure TfrmReceber_Valor.FormCreate(Sender: TObject);
begin
  if not(AtivaTouch) or not(ExibeTecladoVirtual) then begin
    ClientHeight := 300;
    ClientWidth := 365;
    pnTeclado.Visible := False;
    Teclado.Update;
  end;
end;

procedure TfrmReceber_Valor.FormShow(Sender: TObject);
begin
  edValor.SelectAll;
  edValor.SetFocus;
  Update;
end;

end.

unit MensagemAdicional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TfrmMensagemAdicional = class(TForm)
    Panel1: TPanel;
    edtexto: TMemo;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    ActionList1: TActionList;
    acImp: TAction;
    acCanc: TAction;
    procedure edtextoKeyPress(Sender: TObject; var Key: Char);
    procedure acCancExecute(Sender: TObject);
    procedure acImpExecute(Sender: TObject);
  private
    { Private declarations }
    Confirma:Boolean;
  public
    { Public declarations }
  end;
  function RetTexto(var Mensagem:TMemo; CapBtnCanc:string = 'Cancelar (F3)'; CapBtnImp:string = 'Imprimir (F2)'; Titulo:string = 'Mensagem a ser impressa no cupom'):Boolean;
var
  frmMensagemAdicional: TfrmMensagemAdicional;

implementation

uses modulo;

{$R *.dfm}

function RetTexto(var Mensagem:TMemo; CapBtnCanc:string = 'Cancelar (F3)'; CapBtnImp:string = 'Imprimir (F2)'; Titulo:string = 'Mensagem a ser impressa no cupom'):Boolean;
begin
  Application.CreateForm(TfrmMensagemAdicional, frmMensagemAdicional);
  with frmMensagemAdicional do begin
    Confirma := False;
    acImp.Caption := CapBtnImp;
    acCanc.Caption := CapBtnCanc;
    Panel1.Caption := Titulo;
    ShowModal;
    Mensagem.Lines := edtexto.Lines;
  end;
  FreeAndNil(frmMensagemAdicional);
end;


procedure TfrmMensagemAdicional.acCancExecute(Sender: TObject);
begin
  Confirma := False;
  edtexto.Lines.Clear;
  Close;
end;

procedure TfrmMensagemAdicional.acImpExecute(Sender: TObject);
begin
  if Length(edtexto.Lines.Text) <= 0 then begin
    Application.MessageBox('Informe a Mensagem a ser impressa no cupom!','Atenção',MB_ICONINFORMATION);
    edtexto.SetFocus;
    Exit;
  end;
  Confirma := True;
  Close;
end;

procedure TfrmMensagemAdicional.edtextoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Length(edtexto.Lines[edtexto.CaretPos.Y]) >= iLarguraBobina) then
    key := #13;
end;

end.

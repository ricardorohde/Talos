unit Parcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.ExtCtrls, System.Math, Vcl.Buttons, AdvGlowButton;

type
  TParcelas = record
    Parcelas:Integer;
    Valor:Double;
    Diferenca:Double;
  end;
type
  TfrmParcelas = class(TForm)
    Panel1: TPanel;
    Label53: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    edParcelas: TRzNumericEdit;
    lbResultado: TLabel;
    lbTotal: TLabel;
    btnDimQtd: TSpeedButton;
    btnAumQtd: TSpeedButton;
    btnFinalizar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    procedure edParcelasChange(Sender: TObject);
    procedure edParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure btnAumQtdClick(Sender: TObject);
    procedure btnDimQtdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
    vtotal, VValor, VDiferenca:Double;
    iParcelas:Integer;
    Continua:Boolean;
  public
    { Public declarations }
  end;
  function RetornaParcelas(Total:double):TParcelas;

var
  frmParcelas: TfrmParcelas;

implementation

uses principal;

{$R *.dfm}

function RetornaParcelas(Total:double):TParcelas;
begin
  Application.CreateForm(TfrmParcelas, frmParcelas);
  with frmParcelas do begin
    Continua := False;
    vtotal := Total;
    lbTotal.Caption := FormatFloat('#,##0.00',Total);
    edParcelas.Text := '1';
    edParcelasChange(edParcelas);
    ShowModal;
    if Continua then begin
      Result.Parcelas := iParcelas;
      Result.Valor := VValor;
      Result.Diferenca := VDiferenca;
    end else begin
      Result.Parcelas := -1;
      Result.Valor := 0;
      Result.Diferenca := 0;
    end;
  end;
  FreeAndNil(frmParcelas);
end;


procedure TfrmParcelas.AdvGlowButton1Click(Sender: TObject);
begin
  Continua := False;
  Close;
end;

procedure TfrmParcelas.btnAumQtdClick(Sender: TObject);
begin
  edParcelas.Value := edParcelas.Value + 1;
end;

procedure TfrmParcelas.btnDimQtdClick(Sender: TObject);
begin
  if edParcelas.Value > 1 then
    edParcelas.Value := edParcelas.Value - 1;
end;

procedure TfrmParcelas.btnFinalizarClick(Sender: TObject);
begin
  Continua := True;
  Close;
end;

procedure TfrmParcelas.edParcelasChange(Sender: TObject);
var
  Parcela, diferenca:Double;
begin
  if edParcelas.Text <> '' then begin
    Parcela := Roundto(vtotal/StrToInt(edParcelas.Text),-2);
    diferenca := vtotal - (Parcela * StrToInt(edParcelas.Text));
    lbResultado.Caption := edParcelas.Text + ' X de R$ ' + FormatFloat('#,##0.00',Parcela);
    iParcelas := StrToInt(edParcelas.Text);
    VValor := Parcela;
    VDiferenca := diferenca;
  end else
    lbResultado.Caption := '';
end;

procedure TfrmParcelas.edParcelasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Continua := True;
    Close;
  end;
  if Key = #27 then begin
    Continua := False;
    Close;
  end;

end;

procedure TfrmParcelas.FormCreate(Sender: TObject);
begin
  btnDimQtd.Visible := AtivaTouch;
  btnAumQtd.Visible := AtivaTouch;
end;

end.

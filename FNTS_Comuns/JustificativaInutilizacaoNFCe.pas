unit JustificativaInutilizacaoNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvMetroButton, Vcl.StdCtrls,
  AdvSmoothPanel, AdvSmoothExpanderPanel, Vcl.ExtCtrls, AdvGlowButton;

type
  TfrmJustificativaInutilizacaoNFCe = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label26: TLabel;
    edAno: TEdit;
    edModelo: TEdit;
    edSerie: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edNumero: TEdit;
    edJustificativa: TMemo;
    Label5: TLabel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure edNumeroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Continua:Boolean;
  end;

var
  frmJustificativaInutilizacaoNFCe: TfrmJustificativaInutilizacaoNFCe;

implementation

uses principal, funcoes;

{$R *.dfm}

procedure TfrmJustificativaInutilizacaoNFCe.bcancelarClick(Sender: TObject);
begin
  Continua := False;
  Close;
end;

procedure TfrmJustificativaInutilizacaoNFCe.bgravarClick(Sender: TObject);
begin
  if edAno.Text = '' then begin
    Application.MessageBox('Informe o Ano.','Atenção!',MB_ICONINFORMATION);
    edAno.SetFocus;
    exit;
  end;
  try
    if StrToInt(edAno.Text) < 2010 then begin
      Application.MessageBox('Ano inválido.','Atenção!',MB_ICONINFORMATION);
      edAno.SetFocus;
      exit;
    end;
  except
    Application.MessageBox('Ano inválido.','Atenção!',MB_ICONINFORMATION);
    edAno.SetFocus;
    exit;
  end;
  if edModelo.Text = '' then begin
    Application.MessageBox('Informe o Modelo.','Atenção!',MB_ICONINFORMATION);
    edModelo.SetFocus;
    exit;
  end;
  if edSerie.Text = '' then begin
    Application.MessageBox('Informe a Série.','Atenção!',MB_ICONINFORMATION);
    edSerie.SetFocus;
    exit;
  end;
  if (edNumero.Text = '000000') or (edNumero.Text = '') then begin
    Application.MessageBox('Informe o Número da NF.','Atenção!',MB_ICONINFORMATION);
    edNumero.SetFocus;
    exit;
  end;
  if edJustificativa.Lines.Text = '' then begin
    Application.MessageBox('Informe a Justificativa.','Atenção!',MB_ICONINFORMATION);
    edJustificativa.SetFocus;
    exit;
  end;
  if Length(edJustificativa.Lines.Text) < 15 then begin
    Application.MessageBox('A Justificativa tem que ter no mínimo 15 Caracteres.','Atenção!',MB_ICONINFORMATION);
    edJustificativa.SetFocus;
    exit;
  end;
  Continua := True;
  Close;
end;

procedure TfrmJustificativaInutilizacaoNFCe.edNumeroExit(Sender: TObject);
begin
  edNumero.Text := zerar(edNumero.Text, 6);
end;

end.

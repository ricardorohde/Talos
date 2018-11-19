unit AlteraItemVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvGlowButton,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, ACBrBase,
  ACBrEnterTab;

type
  TfrmAlteraItemVenda = class(TForm)
    pnTitulo: TPanel;
    rqtde: TJvCalcEdit;
    Label1: TLabel;
    runitario: TJvCalcEdit;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    rsubtotal: TJvCalcEdit;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    ACBrEnterTab1: TACBrEnterTab;
    procedure FormCreate(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure runitarioExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bGrava:Boolean;
  end;

var
  frmAlteraItemVenda: TfrmAlteraItemVenda;

implementation

{$R *.dfm}

procedure TfrmAlteraItemVenda.bcancelarClick(Sender: TObject);
begin
  bGrava := False;
  Close;
end;

procedure TfrmAlteraItemVenda.bgravarClick(Sender: TObject);
begin
  bgrava := True;
  Close;
end;

procedure TfrmAlteraItemVenda.FormCreate(Sender: TObject);
begin
  bgrava := False;
end;

procedure TfrmAlteraItemVenda.rqtdeExit(Sender: TObject);
begin
  rsubtotal.Value := rqtde.Value * runitario.Value;
end;

procedure TfrmAlteraItemVenda.runitarioExit(Sender: TObject);
begin
  rsubtotal.Value := rqtde.Value * runitario.Value;
end;

end.

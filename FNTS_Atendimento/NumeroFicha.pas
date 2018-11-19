unit NumeroFicha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  TfrmNumeroFicha = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    Image1: TImage;
    edFicha: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    procedure edFichaKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNumeroFicha: TfrmNumeroFicha;

implementation

{$R *.dfm}

uses principal, venda_pdv;

procedure TfrmNumeroFicha.AdvGlowButton1Click(Sender: TObject);
begin
  frmvenda_pdv.Numero_Ficha := edFicha.Text;
  Close;
end;

procedure TfrmNumeroFicha.edFichaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edFicha.Text := frmprincipal.zerarcodigo(edFicha.Text,6);
    AdvGlowButton1.Click;
  end;
end;

end.

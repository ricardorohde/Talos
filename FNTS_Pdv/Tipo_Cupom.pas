unit Tipo_Cupom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  AdvGlowButton, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Data.DB, AdvSmoothButton;

type
  Tfrmtipo_cupom = class(TForm)
    Panel1: TPanel;
    AdvSmoothButton4: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtipo_cupom: Tfrmtipo_cupom;

implementation

{$R *.dfm}

uses venda, Recebimento, principal,Thread.CheckConnection;

procedure Tfrmtipo_cupom.AdvSmoothButton1Click(Sender: TObject);
begin
TipoDeCupom := tcNFCE;
frmPrincipal.TipoImpressora := SemImpressora;
frmVenda.cpBarra.Panels[13].Text := 'NFC-e';
frmVenda.CheckConnect := TThreadCheckConnection.GetInstance;
    with frmVenda.CheckConnect do begin
      OnStatusChange := frmVenda.OnInternetChange;
    end;
frmtipo_cupom.Close;
end;

procedure Tfrmtipo_cupom.AdvSmoothButton4Click(Sender: TObject);
begin
TipoDeCupom := tcSimples;
frmPrincipal.TipoImpressora := NaoFiscal;
frmVenda.cpBarra.Panels[13].Text := 'Venda Simples';
frmtipo_cupom.Close;
end;
procedure Tfrmtipo_cupom.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then begin
close;
end;

if key = VK_F10 then begin
TipoDeCupom := tcSimples;
frmPrincipal.TipoImpressora := NaoFiscal;
frmVenda.cpBarra.Panels[13].Text := 'Venda Simples';
frmtipo_cupom.Close;
end;

if key = VK_F11 then begin
TipoDeCupom := tcNFCE;
frmPrincipal.TipoImpressora := SemImpressora;
frmVenda.cpBarra.Panels[13].Text := 'NFC-e';
frmVenda.CheckConnect := TThreadCheckConnection.GetInstance;
    with frmVenda.CheckConnect do begin
      OnStatusChange := frmVenda.OnInternetChange;
    end;
frmtipo_cupom.Close;

end;
end;

procedure Tfrmtipo_cupom.FormShow(Sender: TObject);
begin
frmtipo_cupom.SetFocus;
end;

end.
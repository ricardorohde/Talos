unit chavenfe_importar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvMetroButton, Vcl.StdCtrls,
  AdvSmoothPanel, AdvSmoothExpanderPanel, AdvReflectionImage, AdvGlowButton,
  Vcl.Buttons, Vcl.ExtCtrls, RzPanel;

type
  Tfrmchavenfe_importar = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    eid: TEdit;
    Label9: TLabel;
    RzPanel1: TRzPanel;
    bimprime: TBitBtn;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
  private
    { Private declarations }
    Continua:Boolean;
  public
    { Public declarations }
  end;
  function RetornaChaveDigitada:string;

var
  frmchavenfe_importar: Tfrmchavenfe_importar;

implementation

uses UFuncoes;

{$R *.dfm}

function RetornaChaveDigitada:string;
begin
  Application.CreateForm(Tfrmchavenfe_importar, frmchavenfe_importar);
  with frmchavenfe_importar do begin
    Continua := False;
    ShowModal;
    if Continua then
      Result := eid.Text;
  end;
  FreeAndNil(frmchavenfe_importar);
end;

procedure Tfrmchavenfe_importar.AdvGlowButton1Click(Sender: TObject);
begin
  if Trim(eid.Text) = '' then begin
    Application.MessageBox('Informe uma chave de acesso válida.','Atenção!',MB_ICONINFORMATION);
    eid.SetFocus;
    Exit;
  end;
  if ValidarChaveNFe(eid.Text) then begin
    Continua := True;
    Close;
  end else begin
    Application.MessageBox('Informe uma chave de acesso válida.','Atenção!',MB_ICONINFORMATION);
    eid.SetFocus;
    Exit;
  end;

end;

procedure Tfrmchavenfe_importar.AdvGlowButton3Click(Sender: TObject);
begin
  Continua := False;
  Close;
end;

end.

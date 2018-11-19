unit Unit_ativar;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Data.DB, Vcl.DBCtrls, Vcl.Buttons, cyBaseSpeedButton,
  cySpeedButton, dxGDIPlusClasses, Vcl.ExtCtrls, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel;

type
  TForm_ativar = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    cySpeedButton1: TcySpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    dados: TMemo;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ativar: TForm_ativar;

implementation

{$R *.dfm}

uses modulo, principal;

procedure TForm_ativar.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_ativar.cySpeedButton1Click(Sender: TObject);
begin
   frmPrincipal.store_protect.renovar;
     Label1.Caption := '';
   Label1.Caption := 'Chave Nº: : '+ IntToStr(frmPrincipal.store_protect.IDInstalacao) + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(frmPrincipal.store_protect.Dias_RestantesU) + #13;
   Label1.Caption := Label1.Caption + 'Data de vencimento : ' + frmPrincipal.store_protect.Data_VencimentoU + #13;
   Label1.Caption := Label1.Caption + 'Chave de Ativação: ' + frmPrincipal.store_protect.Chave_RegistradaU + #13;
   Label1.Caption := Label1.Caption + 'E-mail do cliente : ' + frmPrincipal.store_protect.Email_ClienteU + #13;
  // Label1.Caption := Label1.Caption + 'Versão : ' + IntToStr(frmPrincipal.store_protect.Versao_Sistema )+ #13;
   if frmPrincipal.store_protect.Sistema_DemoU then
         Label1.Caption := Label1.Caption + 'TRIAL'
   else
         Label1.Caption := Label1.Caption + 'CÓPIA REGISTRADA'
end;

procedure TForm_ativar.FormShow(Sender: TObject);
begin
  FRMMODULO.qrFilial.CLOSE;
  FRMMODULO.qrFilial.SQL.CLEAR;
  FRMMODULO.qrFilial.SQL.ADD('SELECT * FROM C000004 ORDER BY CODIGO');
  FRMMODULO.qrFilial.OPEN;
end;

end.

unit senha_supervisor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, AdvOfficeImage, ExtCtrls,
  pngimage, JvGIF, Vcl.Touch.Keyboard, AdvSmoothTouchKeyBoard;

type
  TfrmSenha_Supervisor = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    ed_senha: TRzEdit;
    Label1: TLabel;
    AdvOfficeImage3: TAdvOfficeImage;
    Teclado: TAdvSmoothTouchKeyBoard;
    procedure ed_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ed_senhaEnter(Sender: TObject);
    procedure ed_senhaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ValidaDesconto, AbrirCaixa, FechaCaixa, Configuracoes, CancelarVenda, CancelarItem :Boolean;
  end;

var
  frmSenha_Supervisor: TfrmSenha_Supervisor;

implementation

uses principal, funcoes, venda;

{$R *.dfm}

procedure TfrmSenha_Supervisor.ed_senhaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    if Executa_Login('DELPHOS',ed_senha.text,'',ValidaDesconto, AbrirCaixa, FechaCaixa, Configuracoes, CancelarVenda, CancelarItem) then begin
      bSupervisor_autenticado := true;
      close;
    end else begin
//      if not ValidaDesconto then
//        application.messagebox('Acesso não autorizado!','Erro',mb_ok+mb_iconerror);
      bSair_campo := true;
      close;
    end;
  end else begin
    if key = #27 then begin
      // aborta o cancelamento do item
      bSair_campo := true;
      close;
    end;
  end;
end;

procedure TfrmSenha_Supervisor.FormCreate(Sender: TObject);
begin
  ValidaDesconto := False;
  AbrirCaixa := False;
  FechaCaixa := False;
  Configuracoes := False;
  CancelarVenda := False;
  CancelarItem := False;
  if AtivaTouch then begin
    if not ExibeTecladoVirtual then begin
      Teclado.Visible := False;
      ClientHeight := 173;
      ClientWidth := 342;
    end else
      Teclado.Visible := True;
  end else begin
    Teclado.Visible := False;
    ClientHeight := 173;
    ClientWidth := 342;
  end;

end;

procedure TfrmSenha_Supervisor.FormShow(Sender: TObject);
begin
  bsupervisor_autenticado := false;
  Update;
end;

procedure TfrmSenha_Supervisor.ed_senhaEnter(Sender: TObject);
begin
  PopupMenu := nil;
  // controlar a saida do edit de cancelamento de item
  bSair_campo := false;
end;

procedure TfrmSenha_Supervisor.ed_senhaExit(Sender: TObject);
begin
  // nao permitir a saida do campo clicando com o mouse em outro lugar
  // ou pressionando tab
  if not bsair_campo then ed_senha.setfocus;
end;

end.

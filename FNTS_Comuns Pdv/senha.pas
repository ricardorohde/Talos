unit senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, AdvOfficeImage, ExtCtrls,
  AdvReflectionLabel, RzLabel, RzBckgnd, pngimage, AdvReflectionImage, jpeg,
  acPNG, dxGDIPlusClasses, AdvGlowButton;

type
  Tfrmsenha = class(TForm)
    Label1: TLabel;
    ed_codigo: TRzEdit;
    ed_senha: TRzEdit;
    Label2: TLabel;
    button1: TAdvGlowButton;
    button2: TAdvGlowButton;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure ed_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure button1Click(Sender: TObject);
    procedure button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function LogarAutomaticamente: Boolean;
  end;

var
  frmsenha: Tfrmsenha;

implementation

uses funcoes, modulo, principal, md52, IniFiles, UFuncoes; // unit de leitura do arquivo INI;

{$R *.dfm}

procedure Tfrmsenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsenha.ed_senhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Perform(wm_nextdlgctl, 0, 0);
  end else if key = #27 then begin
    busuario_Autenticado := False;
    close;
  end;
end;

procedure Tfrmsenha.button1Click(Sender: TObject);
begin
  if ed_codigo.Text = '' then begin
    application.messagebox('Informe o operador!', 'Erro', mb_ok + mb_iconerror);
    ed_codigo.SetFocus;
    exit;
  end;
  if ed_senha.text = '' then begin
    application.messagebox('Informe a senha!', 'Erro', mb_ok + mb_iconerror);
    ed_senha.SetFocus;
    exit;
  end;
  if not Executa_Login(ed_codigo.text, ed_senha.text, sfuncao_senha) then begin
    application.messagebox('Acesso n�o autorizado!', 'Erro', mb_ok + mb_iconerror);
    busuario_Autenticado := false;
    ed_codigo.SetFocus;
    exit;
  end else begin
    busuario_Autenticado := true;
    close;
  end;
end;

procedure Tfrmsenha.button2Click(Sender: TObject);
begin
  busuario_Autenticado := False;
  close;
end;

procedure Tfrmsenha.ed_codigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Perform(wm_nextdlgctl, 0, 0);
  end else if key = #27 then begin
    busuario_Autenticado := False;
    close;
  end;
end;

function Tfrmsenha.LogarAutomaticamente: Boolean;
var
  sUsuario, sSenha: string;
begin
  busuario_autenticado := false;
  sUsuario := LerIni(sConfiguracoes, 'LOGIN', 'USUARIO', '');
  sSenha := Cript('D', LerIni(sConfiguracoes, 'LOGIN', 'SENHA', ''));
  if not Executa_Login(sUsuario, sSenha, sfuncao_senha) then begin
    application.messagebox('Acesso n�o autorizado!' + #13#10 + 'Identifica��o do usuario ou senha incorreta.', 'Erro', mb_ok + mb_iconerror);
    exit;
  end else begin
    busuario_Autenticado := true;
    close;
  end;
end;

end.


unit mensagem_senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, TFlatEditUnit, TFlatComboBoxUnit, DB,
  TFlatPanelUnit, acPNG, AdvReflectionImage, AdvGlowButton, dxGDIPlusClasses;

type
  Tfrmmensagem_senha = class(TForm)
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    edit2: TEdit;
    combobox1: TComboBox;
    Panel2: TPanel;
    lfuncao: TLabel;
    bok: TBitBtn;
    bsim: TBitBtn;
    bnao: TBitBtn;
    bsim2: TAdvGlowButton;
    bnao2: TAdvGlowButton;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Image1: TImage;
    procedure bsimClick(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure bnaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combobox1KeyPress(Sender: TObject; var Key: Char);
    procedure combobox1Exit(Sender: TObject);
    procedure edit2KeyPress(Sender: TObject; var Key: Char);
    procedure bsim2Click(Sender: TObject);
    procedure bnao2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmensagem_senha: Tfrmmensagem_senha;
  AUTENTICADO: BOOLEAN;

implementation

uses
  modulo, principal;

{$R *.dfm}

procedure Tfrmmensagem_senha.bsim2Click(Sender: TObject);
begin
  bsim.Click;
end;

procedure Tfrmmensagem_senha.bsimClick(Sender: TObject);
begin
  if autenticado then begin
    resultado_mensagem := 'SIM';
    close;
  end else begin
    if frmprincipal.msg('ERRO', 'Acesso n�o permitido!' + #13 + 'Tentar outra vez?', true, true, false, '') = 'SIM' then begin
      COMBOBOX1.SETFOCUS;
    end else begin
      RESULTADO_MENSAGEM := 'NAO';
      close;
    end;
  end;
end;

procedure Tfrmmensagem_senha.bokClick(Sender: TObject);
begin
  resultado_mensagem := 'OK';
  close;
end;

procedure Tfrmmensagem_senha.bnao2Click(Sender: TObject);
begin
  bnao.Click;
end;

procedure Tfrmmensagem_senha.bnaoClick(Sender: TObject);
begin
  resultado_mensagem := 'NAO';
  close;
end;

procedure Tfrmmensagem_senha.FormShow(Sender: TObject);
begin
  AUTENTICADO := FALSE;
  combobox1.CharCase := ecUpperCase;
  frmmodulo.qrUsuario.Close;
  frmmodulo.qrUsuario.open;
  frmmodulo.qrUsuario.first;
  ComboBox1.Items.clear;
  while not frmmodulo.qrUsuario.eof do begin
    if frmmodulo.qrUsuario.fieldbyname('nome').asstring <> '' then
      ComboBox1.Items.Add(frmmodulo.qrUsuario.fieldbyname('nome').asstring);
    frmmodulo.qrUsuario.Next;
  end;
  combobox1.text := '';
  edit2.text := '';
  combobox1.setfocus;
end;

procedure Tfrmmensagem_senha.combobox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    EDIT2.SETFOCUS;
  if Key = #27 then
    BNAOCLICK(frmMENSAGEM_senha);
end;

procedure Tfrmmensagem_senha.combobox1Exit(Sender: TObject);
begin
  if combobox1.Text <> '' then begin
    if not frmmodulo.qrUsuario.LOCATE('nome', COMBOBOX1.TEXT, [LOPARTIALKEY]) then begin
      if frmprincipal.msg('ERRO', 'Usu�rio n�o cadastrado!' + #13 + 'Tentar outra vez?', true, true, false, '') = 'SIM' then begin
        combobox1.text := '';
        combobox1.setfocus;
      end
      else begin
        bnaoclick(frmMENSAGEM_senha);
      end;
    end;
  end
  else begin
    combobox1.SetFocus;
  end;
end;

procedure Tfrmmensagem_senha.edit2KeyPress(Sender: TObject; var Key: Char);
var
  SENHA: string;
begin
  if Key = #13 then begin
    try
      SENHA := Frmprincipal.Cript('D', frmmodulo.qrUsuario.fieldbyname('senha').asstring);
      if edit2.text = SENHA then begin
        if lfuncao.Caption = '4 - DESCONTO' then
          autenticado := frmmodulo.qrUsuarioAPROVA_DESCONTO.asstring = 'S'
        else
          autenticado := true;
        if autenticado then begin
          RESULTADO_MENSAGEM := 'SIM';
          Close;
        end else begin
          if APPLICATION.MESSAGEBOX('Sem permiss�o para conceder desconto!' + #13 + 'Deseja tentar outra vez?', 'Aten��o', mb_yesno + mb_iconerror) = idYes then begin
            edit2.text := '';
            edit2.setfocus;
          end else begin
            RESULTADO_MENSAGEM := 'NAO';
            close;
          end;
        end;
      end
      else begin
        if APPLICATION.MESSAGEBOX('Senha inv�lida!' + #13 + 'Deseja tentar outra vez?          ', 'Aten��o', mb_yesno + mb_iconerror) = idYes then begin
          edit2.text := '';
          edit2.setfocus;
        end
        else begin
          bnaoclick(frmMENSAGEM_senha);
        end;
      end;
    except
      if APPLICATION.MESSAGEBOX('Senha inv�lida!' + #13 + 'Deseja tentar outra vez?          ', 'Aten��o', mb_yesno + mb_iconerror) = idYes then begin
        edit2.text := '';
        edit2.setfocus;
      end
      else begin
        bnaoclick(frmMENSAGEM_senha);
      end;
    end;
  end;
  if Key = #27 then
    bnaoCLICK(frmMENSAGEM_senha);
end;

end.


unit senha_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBCtrls, ExtDlgs, CellEditors, jpeg, ExtCtrls,
  AdvGlowButton, acPNG, AdvReflectionImage, dxGDIPlusClasses;

type
  Tfrmsenha_caixa = class(TForm)
    Label1: TLabel;
    dscaixa_operador: TDataSource;
    ds: TDataSource;
    Label2: TLabel;
    edit2: TEdit;
    combobox1: TEdit;
    lfuncao: TLabel;
    button1: TAdvGlowButton;
    button2: TAdvGlowButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Exit(Sender: TObject);
    procedure BUTTON2Click(Sender: TObject);
    procedure BUTTON1Click(Sender: TObject);
    procedure edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsenha_caixa: Tfrmsenha_caixa;

implementation

uses
  Principal, modulo;

{$R *.dfm}

procedure Tfrmsenha_caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmsenha_caixa.FormShow(Sender: TObject);
begin

  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 order by codigo');
  frmmodulo.qrcaixa_operador.open;
  autenticado := false;
end;

procedure Tfrmsenha_caixa.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    EDIT2.SETFOCUS;
  if Key = #27 then
    BUTTON2CLICK(frmsenha_caixa);
end;

procedure Tfrmsenha_caixa.ComboBox1Exit(Sender: TObject);
begin
  combobox1.Text := frmprincipal.zerarcodigo(combobox1.text, 6);
end;

procedure Tfrmsenha_caixa.BUTTON2Click(Sender: TObject);
begin
  autenticado := false;
  close;
end;

procedure Tfrmsenha_caixa.BUTTON1Click(Sender: TObject);
var
  SENHA: string;
  Sego:Boolean;
begin
  if combobox1.Text <> '000000' then begin
    if frmmodulo.qrcaixa_operador.LOCATE('codigo', COMBOBOX1.TEXT, [loCaseInsensitive]) then begin
      if COMBOBOX1.Text <> '000099' then begin
        FRMMODULO.QRCAIXA_OPERADOR.Locate('CODIGO', '000099', [loCaseInsensitive]);
        if FRMMODULO.QRCAIXA_OPERADOR.FieldByName('SITUACAO').ASINTEGER = 1 then begin
          frmmodulo.qrcaixa_operador.LOCATE('codigo', COMBOBOX1.TEXT, [loCaseInsensitive]);
        end
        else begin
          APPLICATION.MessageBox('O Caixa Geral está fechado! Impossível acessar caixa individual!', 'Aviso', mb_ok + MB_ICONWARNING);
          combobox1.setfocus;
          Exit;
        end;
      end;
      try
        Sego := False;
        if COMBOBOX1.Text <> '000099' then
          Sego := frmmodulo.qrcaixa_operadorFECHAMENTO_CEGO.AsString = 'S';
        SENHA := Frmprincipal.Cript('D', frmmodulo.qrcaixa_operador.fieldbyname('senha').asstring);
        if edit2.text = SENHA then begin
          autenticado := true;
        end
        else begin
          if sego then begin
            FRMMODULO.QRCAIXA_OPERADOR.Locate('CODIGO', '000099', [loCaseInsensitive]);
            SENHA := Frmprincipal.Cript('D', frmmodulo.qrcaixa_operador.fieldbyname('senha').asstring);
            if edit2.text = SENHA then begin
              autenticado := true;
              frmmodulo.qrcaixa_operador.LOCATE('codigo', COMBOBOX1.TEXT, [loCaseInsensitive]);
            end;
          end;
          if not autenticado then begin
            if APPLICATION.MESSAGEBOX('Senha inválida!' + #13 + 'Deseja tentar outra vez?          ', 'Atenção', mb_yesno + mb_iconerror) = idYes then begin
              edit2.text := '';
              edit2.setfocus;
              Exit;
            end
            else begin
              button2click(frmsenha_caixa);
              Exit;
            end;
          end;
        end;
      except
        if APPLICATION.MESSAGEBOX('Senha inválida!' + #13 + 'Deseja tentar outra vez?          ', 'Atenção', mb_yesno + mb_iconerror) = idYes then begin
          edit2.text := '';
          edit2.setfocus;
          Exit;
        end
        else begin
          button2click(frmsenha_caixa);
          Exit;
        end;
      end;
    end
    else begin
      if APPLICATION.MESSAGEBOX('Caixa não cadastrado!            ' + #13 + 'Deseja tentar outra vez?         ', 'Atenção', mb_yesno + mb_iconerror) = idYes then begin
        combobox1.text := '';
        combobox1.setfocus;
        Exit;
      end
      else begin
        button2click(frmsenha_caixa);
        Exit;
      end;
    end;
  end
  else begin
    APPLICATION.MessageBox('Informe o Caixa !', 'Aviso', mb_ok + MB_ICONWARNING);
    combobox1.SetFocus;
  end;
  CLOSE;
end;

procedure Tfrmsenha_caixa.edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BUTTON1.SETFOCUS;
  if Key = #27 then
    BUTTON2CLICK(frmsenha_caixa);
end;

end.


unit mesa_abertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, RzCmboBx, DB, DBAccess, wwdblook, MemDS, Menus, AdvReflectionImage, AdvSmoothTouchKeyBoard,
  AdvGlowButton, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, dxGDIPlusClasses, Uni; //Vcl.DBLookup,

type
  Tfrmmesa_abertura = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    lb_mesa: TLabel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    bt_confirmar: TAdvGlowButton;
    Image1: TImage;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label17: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    qrfunci: TUniQuery;
    query: TUniQuery;
    dsfunci: TUniDataSource;
    GroupBox3: TGroupBox;
    lbComissao: TLabel;
    lbCouver: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelar555Click(Sender: TObject);
    procedure bt_confirmar55Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmesa_abertura: Tfrmmesa_abertura;

implementation

uses Modulo, principal;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.bt_cancelar555Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.bt_confirmar55Click(Sender: TObject);
begin
  if Edit1.text = '' then
  begin
    Application.messagebox('Favor informar o atendente!', 'Erro',
      MB_OK + mb_iconerror);
    Edit1.setfocus;
    exit;
  end
  else
  begin
    query.close;
    query.sql.clear;
    query.sql.add('select nome, codigo from c000008 where upper(codigo) = ''' +
      Edit1.text + '''');
    query.Open;

    if query.RecordCount = 0 then
    begin
      Application.messagebox('Funcionário não localizado!', 'Erro',
        MB_OK + mb_iconerror);
      Edit1.setfocus;
      Edit1.text := '';
      exit;
    end
  end;

  sFunci := query.fieldbyname('codigo').asstring;
  sNome_funci := query.fieldbyname('nome').asstring;
  bContinua_mesa := true;
  close;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.FormShow(Sender: TObject);
begin
  qrfunci.Open;
  with frmModulo do begin
    qrConfig.Close;
    qrConfig.Open;
    if qrConfigCOBRA_COUVER.AsString = 'S' then
      lbCouver.Caption := 'Valor do Couvert Artistico R$ ' + FormatFloat('#,##0.00',qrConfigVALOR_COUVER.AsFloat)
    else
      lbCouver.Caption := 'Sem adicional de Couvert Artistico.';
    if qrConfigCOBRA_COMISSAO.AsString = 'N' then
      lbComissao.Caption := 'Sem Taxa do Garçon.'
    else if qrConfigCOBRA_COMISSAO.AsString = 'O' then
      lbComissao.Caption := 'Taxa do Garçon obrigatória de ' + FormatFloat('##0.00',qrConfigCOMISSAO_PERCENTUAL.AsFloat)+ '%'
    else if qrConfigCOBRA_COMISSAO.AsString = 'P' then
      lbComissao.Caption := 'No Fechamento perguntar se cliente concorda com Taxa do Garçon de ' + FormatFloat('##0.00',qrConfigCOMISSAO_PERCENTUAL.AsFloat)+ '%.';
  end;
  Edit1.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Edit1.text := frmPrincipal.zerarcodigo(Edit1.text, 6);

    if Edit1.text = '' then
    begin
      Application.messagebox('Favor informar o atendente!', 'Erro',
        MB_OK + mb_iconerror);
      Edit1.setfocus;
      Edit1.text := '';
      Edit2.text := '';
      exit;
    end
    else
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select codigo, nome from c000008 where upper(codigo) = ''' +
        Edit1.text + '''');
      query.Open;


      // ShowMessage(query.fieldbyname('nome').asstring);

      if query.RecordCount = 0 then
      begin
        Application.messagebox('Funcionário não localizado!', 'Erro',
          MB_OK + mb_iconerror);
        Edit1.setfocus;
        Edit1.text := '';
        Edit2.text := '';
        exit;
      end
      else
      begin
        sFunci := query.fieldbyname('codigo').asstring;
        sNome_funci := query.fieldbyname('nome').asstring;
        Edit2.text := sNome_funci;
        bt_confirmar.setfocus;
      end;

    end;

  end;
end;

end.

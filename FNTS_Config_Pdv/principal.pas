unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, AdvShapeButton, Mask, RzEdit, RzBtnEdt, XPMan, IniFiles, Registry,
  RzPanel, DB, MemDS, DBAccess, VirtualTable, ADODB, Grids, DBGrids,
  ACBrBase, ACBrValidador, AdvOfficePager, AdvOfficePagerStylers,
  AdvGlowButton, AdvReflectionImage, Buttons,
  Spin, Printers, GravaIni, sSkinManager, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, Uni, UniProvider, InterBaseUniProvider, MidasLib,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons;

type
  TfrmPrincipal = class(TForm)
//    conexao: TIBCConnection;
  //  qrpaf: TIBCQuery;
    OpenDialog1: TOpenDialog;
    pn1: TPanel;
    Label1: TLabel;
    ed_diretorio: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    pnl1: TPanel;
    ed_base_local: TRzButtonEdit;
    ed_server: TRzEdit;
    ed_base: TRzButtonEdit;
    cxButton1: TcxButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label5: TLabel;
    AdvMetroButton2: TAdvMetroButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ed_base_localButtonClick(Sender: TObject);
    procedure ed_baseButtonClick(Sender: TObject);
    procedure GravarConfig;
    procedure CarregaConfig;
    procedure FormCreate(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GravaIni(sArquivo, Secao, Linha, Valor: String);
    Function LerIni(sArquivo, Secao, Linha: String; Def: String): String;
  end;

var
  frmPrincipal: TfrmPrincipal;
  bContinua: Boolean;

implementation

{$R *.dfm}

procedure TfrmPrincipal.AdvMetroButton2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not bContinua then begin
    if application.messagebox('Tem certeza que deseja abandonar o processo de configuração da ' + 'instalação do sistema?', 'Atenção', mb_yesno + mb_iconwarning + MB_DEFBUTTON2) = idNo then
      abort;
  end else begin
    Action := cafree;
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  bContinua := false;
end;

procedure TfrmPrincipal.ed_base_localButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    ed_base_local.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmPrincipal.ed_baseButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    ed_base.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmPrincipal.GravarConfig;
begin
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','SERVIDOR',ed_server.Text);
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','BDSERVIDOR',ed_base.Text);
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','BDLOCAL',ed_base_local.Text);
  bContinua := true;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  CarregaConfig;
end;

procedure TfrmPrincipal.GravaIni(sArquivo, Secao, Linha, Valor: String);
var
  Ini: TIniFile;
  Arquivo: String;
begin
  Arquivo := sArquivo;
  Ini := TIniFile.Create(Arquivo);
  Ini.WriteString(Secao, Linha, Valor);
  Ini.Free;
end;

function TfrmPrincipal.LerIni(sArquivo, Secao, Linha, Def: String): String;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(sArquivo);
  Result := Ini.ReadString(Secao, Linha, Def);
  Ini.Free;
end;

procedure TfrmPrincipal.CarregaConfig;
begin
  ed_server.Text := LerIni('.\Cfg\cfg.ini','CONFIGURACOES','SERVIDOR','localhost');
  ed_base.Text := LerIni('.\Cfg\cfg.ini','CONFIGURACOES','BDSERVIDOR','');
  ed_base_local.Text := LerIni('.\Cfg\cfg.ini','CONFIGURACOES','BDLOCAL','');
end;

procedure TfrmPrincipal.cxButton1Click(Sender: TObject);
begin
  GravarConfig;
  Close;
end;

end.

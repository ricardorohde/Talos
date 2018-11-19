unit Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvMetroButton, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  StatusBotao = (stON, stOFF);
  TfrmConfig = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton1: TAdvMetroButton;
    Panel3: TPanel;
    btGerImpressao: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btGerImpressaoClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure AcionaBotao(Botao:TPanel; Status:StatusBotao);
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

{$R *.dfm}

uses principal;

{ TForm1 }

procedure TfrmConfig.AcionaBotao(Botao: TPanel; Status: StatusBotao);
begin
  if Status = stON then begin
    TPanel(Botao.Parent).Color := clGreen;
    Botao.Align := alLeft;
    Botao.Caption := 'On';
  end else begin
    TPanel(Botao.Parent).Color := clRed;
    Botao.Align := alRight;
    Botao.Caption := 'Off';
  end;
end;

procedure TfrmConfig.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfig.AdvMetroButton2Click(Sender: TObject);
begin
  with frmPrincipal do begin
    if btGerImpressao.Caption = 'On' then
      GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'Gerenciador_Impressao', 'S')
    else
      GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'Gerenciador_Impressao', 'N');
  end;
  Close;
end;

procedure TfrmConfig.btGerImpressaoClick(Sender: TObject);
begin
  if btGerImpressao.Caption = 'On' then
    AcionaBotao(btGerImpressao,stOFF)
  else
    AcionaBotao(btGerImpressao,stON);
end;

procedure TfrmConfig.FormCreate(Sender: TObject);
begin
  with frmPrincipal do begin
    if LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'Gerenciador_Impressao', 'N') = 'S' then
      AcionaBotao(btGerImpressao,stON)
    else
      AcionaBotao(btGerImpressao,stOFF);
  end;
end;

end.

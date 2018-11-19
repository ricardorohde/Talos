unit config_balanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, registry, XPMan, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, AdvGlowButton, Vcl.ExtCtrls, IniFiles,
  ACBrDevice, ACBrBAL, ACBrBase, System.TypInfo, Vcl.Samples.Spin;

type
  Tfrmconfig_balanca = class(TForm)
    GroupBox6: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cb_bal_porta: TComboBox;
    cb_bal_modelo: TComboBox;
    cb_bal_baudrate: TComboBox;
    cb_bal_databits: TComboBox;
    cb_bal_hand: TComboBox;
    cb_bal_stop: TComboBox;
    cb_bal_time_out: TEdit;
    cb_parity: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    EditQtdDigitos: TSpinEdit;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function LerIni(sArquivo, Secao, Linha, Def: string): string;
    procedure GravaIni(sArquivo, Secao, Linha, Valor: string);
  end;

var
  frmconfig_balanca: Tfrmconfig_balanca;

implementation

uses modulo;

{$R *.dfm}

function Tfrmconfig_balanca.LerIni(sArquivo, Secao, Linha, Def: string): string;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(sArquivo);
  Result := Ini.ReadString(Secao, Linha, Def);
  Ini.Free;

end;


procedure Tfrmconfig_balanca.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmconfig_balanca.BitBtn1Click(Sender: TObject);
var Registro: TRegistry;
begin
  GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Modelo',inttostr(cb_bal_modelo.ItemIndex));
  GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Handshaking',inttostr(cb_bal_hand.ItemIndex));
  GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Parity',inttostr(cb_parity.ItemIndex));
  GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Stopbits',inttostr(cb_bal_stop.ItemIndex));
  GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Porta',cb_bal_porta.Text);
  GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Databits', cb_bal_databits.Text);
  GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Baudrate',cb_bal_baudrate.Text);
  GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Timeout',cb_bal_time_out.Text);
  GravaIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'NDIGITOS',EditQtdDigitos.Text);
  application.messagebox('É necessário reiniciar o sistema para atualizar as novas configurações!','Aviso',mb_ok+MB_ICONINFORMATION);
  close;
end;

procedure Tfrmconfig_balanca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconfig_balanca.FormCreate(Sender: TObject);
var
  I : TACBrBALModelo ;
begin
  cb_bal_modelo.Items.Clear ;
  For I := Low(TACBrBALModelo) to High(TACBrBALModelo) do
     cb_bal_modelo.Items.Add(GetEnumName(TypeInfo(TACBrBALModelo), integer(I) ) ) ;
  cb_bal_modelo.ItemIndex := 0;
end;

procedure Tfrmconfig_balanca.FormShow(Sender: TObject);
var  Registro: TRegistry;
begin
  frmModulo.Balanca.Desativar;
  cb_bal_modelo.itemindex :=  StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Modelo', '0'));
  cb_bal_hand.itemindex := StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Handshaking', '0'));
  cb_parity.itemindex := StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Parity', '0'));
  cb_bal_stop.itemindex := StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Stopbits', '0'));
  cb_bal_porta.text  := LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Porta', '');
  cb_bal_databits.Text :=  LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Databits', '0');
  cb_bal_baudrate.ItemIndex :=  StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Baudrate', '0'));
  cb_bal_time_out.text :=  LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Timeout', '');
  EditQtdDigitos.Text := LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'NDIGITOS','5');
end;

procedure Tfrmconfig_balanca.GravaIni(sArquivo, Secao, Linha, Valor: string);
var
  Ini: TIniFile;
  Arquivo: string;
begin
  Arquivo := sArquivo;
  Ini := TIniFile.Create(Arquivo);
  Ini.WriteString(Secao, Linha, Valor);
  Ini.Free;
end;

procedure Tfrmconfig_balanca.BitBtn2Click(Sender: TObject);
begin
 close;
end;

end.

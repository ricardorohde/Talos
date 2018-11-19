unit sangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, RzEdit, Menus, AdvMenus, ComCtrls,
  XPMan, AdvGlowButton, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  principal, frxClass, frxDBSet, frxDesgn, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TfrmSangria = class(TForm)
    Panel1: TPanel;
    bt_ok1: TButton;
    bt_cancelar1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    ed_valor: TRzNumericEdit;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    bt_ok: TAdvGlowButton;
    bt_cancelar: TAdvGlowButton;
    fxSangria: TfrxReport;
    frxEmitente: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    ActionManager1: TActionManager;
    Action1: TAction;
    lbEdicao: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelar1Click(Sender: TObject);
    procedure bt_ok1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fxSangriaBeforePrint(Sender: TfrxReportComponent);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    TipoImp: TImpressora;
    Editar:Boolean;
  public
    { Public declarations }
  end;

var
  frmSangria: TfrmSangria;

implementation

uses modulo, funcoes, UFuncoes;

{$R *.dfm}

procedure TfrmSangria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.TipoImpressora := TipoImp;
  action := cafree;
end;

procedure TfrmSangria.FormCreate(Sender: TObject);
begin
  Editar := False;
end;

procedure TfrmSangria.FormShow(Sender: TObject);
begin
  TipoImp := frmPrincipal.TipoImpressora;
  frmPrincipal.TipoImpressora := NaoFiscal;
end;

procedure TfrmSangria.fxSangriaBeforePrint(Sender: TfrxReportComponent);
begin
  if Sender is TfrxMemoView then begin
    if TfrxMemoView(Sender).Name = 'mCaixa' then
      TfrxMemoView(Sender).Text := 'Caixa:'+Zerar(IntToStr(iNumCaixa),3);
    if TfrxMemoView(Sender).Name = 'mValor' then
      TfrxMemoView(Sender).Text := FormatFloat('#,##0.00',ed_valor.Value);
    if TfrxMemoView(Sender).Name = 'mOperador' then
      TfrxMemoView(Sender).Text := 'Operador: ' + sNome_Operador;
  end;

end;

procedure TfrmSangria.Action1Execute(Sender: TObject);
begin
  if Editar then
    Editar := False
  else
    Editar := True;
  lbEdicao.Visible := Editar;
end;

procedure TfrmSangria.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmSangria.bt_cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmSangria.bt_ok1Click(Sender: TObject);
begin
  if ed_valor.value <= 0 then begin
    Application.MessageBox('Favor informar um valor MAIOR que ZERO!','Erro',mb_ok+mb_iconerror);
    ed_valor.setfocus;
    exit;
  end;

  // extrair do ecf
  fxSangria.LoadFromFile(ExtractFilePath(application.ExeName) + '\rel\F000001.fr3');
  frmModulo.Qremitente.Close;
  frmModulo.Qremitente.Open;
  if Editar then
    fxSangria.DesignReport
  else
    fxSangria.ShowReport;
  sMsg := 'OK';
  // extrair o numero dos contadores
  sGNF := zerar(FloatToStr(Max('')),5  );
  if Length(sGNF) = 5 then
    sNumero_cupom := Zerar( FloatToStr( Max('') ),5 );
  with frmModulo do begin
    spNao_Fiscal.close;
    spNao_Fiscal.ParamByName('codigo').asstring := codifica_cupom;
    spNao_Fiscal.ParamByName('ecf').AsString := sCaixa;
    spNao_Fiscal.ParamByName('data').asdatetime := dData_Sistema;
    spNao_Fiscal.ParamByName('indice').asstring := sIndice_Sangria;
    spNao_Fiscal.ParamByName('descricao').asstring := 'SANGRIA';
    spNao_Fiscal.ParamByName('valor').asfloat := ed_valor.value;
    spNao_fiscal.ParamByName('hora').Astime := Time;
    spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
    spNao_fiscal.ParamByName('GNF').asstring := sGNF;
    spNao_fiscal.ParamByName('CDC').Clear;
    spNao_fiscal.ParamByName('GRG').clear;
    spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CN';
    spNao_fiscal.ParamByName('codVendedor').asstring := IntToStr(icodigo_Usuario);
    spNao_Fiscal.Prepare;
    spNao_Fiscal.Execute;
  end;
  close;
end;

procedure TfrmSangria.Cancelar1Click(Sender: TObject);
begin
   close;
end;


end.

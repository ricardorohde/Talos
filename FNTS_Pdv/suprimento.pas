unit suprimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, RzEdit, Menus, AdvMenus, ComCtrls,
  XPMan, AdvGlowButton, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  principal, frxClass, frxDBSet, frxDesgn, frxExportPDF, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TfrmSuprimento = class(TForm)
    Panel1: TPanel;
    bt_ok1: TButton;
    bt_cancelar: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    ed_valor: TRzNumericEdit;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    list_Forma: TListBox;
    Label2: TLabel;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    bt_ok: TAdvGlowButton;
    frxDesigner1: TfrxDesigner;
    fxSangria: TfrxReport;
    frxEmitente: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    lbEdicao: TLabel;
    ActionManager1: TActionManager;
    Action1: TAction;
    Shape1: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_ok1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure list_FormaKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure fxSangriaBeforePrint(Sender: TfrxReportComponent);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    TipoImp: TImpressora;
    Editar:Boolean;
  public
    { Public declarations }
  end;

var
  frmSuprimento: TfrmSuprimento;

implementation

uses modulo, funcoes, UFuncoes;

{$R *.dfm}

procedure TfrmSuprimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.TipoImpressora := TipoImp;
  action := cafree;
end;

procedure TfrmSuprimento.FormCreate(Sender: TObject);
begin
  Editar := False;
end;

procedure TfrmSuprimento.Action1Execute(Sender: TObject);
begin
  if Editar then
    Editar := False
  else
    Editar := True;
  lbEdicao.Visible := Editar;
end;

procedure TfrmSuprimento.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmSuprimento.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSuprimento.bt_ok1Click(Sender: TObject);
begin
  if ed_valor.value <= 0 then begin
    Application.MessageBox('Favor informar um valor MAIOR que ZERO!','Erro',mb_ok+mb_iconerror);
    ed_valor.setfocus;
    exit;
  end;
  if list_forma.ItemIndex < 0 then begin
    Application.MessageBox('Favor selecionar uma forma!','Erro',mb_ok+mb_iconerror);
    list_forma.setfocus;
    exit;
  end;
  sNumero_cupom := Zerar( FloatToStr( Max('') ),5 );
  fxSangria.LoadFromFile(ExtractFilePath(application.ExeName) + '\rel\F000002.fr3');
  frmModulo.Qremitente.Close;
  frmModulo.Qremitente.Open;
  if Editar then
    fxSangria.DesignReport
  else
    fxSangria.ShowReport;
  sGNF := Zerar( FloatToStr( Max('') ),5 );
  with frmModulo do begin
    spNao_Fiscal.close;
    spNao_fiscal.parambyname('codigo').asstring := codifica_cupom;
    spNao_Fiscal.ParamByName('ecf').AsString := sCaixa;
    spNao_Fiscal.ParamByName('data').asdatetime := dData_Sistema;
    spNao_Fiscal.ParamByName('indice').asstring := sIndice_Suprimento;
    spNao_Fiscal.ParamByName('descricao').asstring := 'SUPRIMENTO';
    spNao_Fiscal.ParamByName('valor').asfloat := ed_valor.value;
    spNao_fiscal.ParamByName('hora').Astime := Time;
    spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
    spNao_fiscal.ParamByName('GNF').asstring := sGNF;
    spNao_fiscal.ParamByName('CDC').Clear;
    spNao_fiscal.ParamByName('GRG').clear;
    spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CN';
    spNao_fiscal.ParamByName('codvendedor').asstring := IntToStr(icodigo_Usuario);
    spNao_Fiscal.Prepare;
    spNao_Fiscal.Execute;

    spCupom_Forma.close;
    spCupom_Forma.ParamByName('codigo').asstring     :=  codifica_forma(1);
    spCupom_Forma.ParamByName('cod_cupom').asstring  :=  codifica_cupom;
    spCupom_Forma.ParamByName('forma').asstring      := list_forma.Items.Strings[list_Forma.ItemIndex];
    spCupom_Forma.ParamByName('valor').asfloat       := ed_valor.value;
    spCupom_Forma.ParamByName('prestacao').asinteger := 1;
    spCupom_Forma.ParamByName('tipo').asstring       := 'SUPRIMENTO';
    spCupom_Forma.Prepare;
    spCupom_Forma.Execute;
  end;
  Close;
end;

procedure TfrmSuprimento.Cancelar1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmSuprimento.FormShow(Sender: TObject);
begin
  TipoImp := frmPrincipal.TipoImpressora;
  frmPrincipal.TipoImpressora := NaoFiscal;

  list_forma.Clear;
  frmmodulo.tbforma_pgto.open;
  frmmodulo.tbForma_Pgto.First;
  while not frmModulo.tbForma_Pgto.Eof do
  begin
    sMsg := TrimLeft(TrimRight(frmmodulo.tbForma_Pgto.fieldbyname('nome').asstring));
    if (sMsg = '') or
       (ansiuppercase(sMsg) = 'VALOR RECEBIDO') or
       (ansiuppercase(sMsg) = 'TROCO') Then
    begin
       // nao copiar
    end
    else
    begin
      list_Forma.Items.Add(sMsg);
    end;
    frmModulo.tbForma_Pgto.Next;
  end;
end;

procedure TfrmSuprimento.fxSangriaBeforePrint(Sender: TfrxReportComponent);
begin
  if Sender is TfrxMemoView then begin
    if TfrxMemoView(Sender).Name = 'mCaixa' then
      TfrxMemoView(Sender).Text := 'Caixa:'+Zerar(IntToStr(iNumCaixa),3);
    if TfrxMemoView(Sender).Name = 'mValor' then
      TfrxMemoView(Sender).Text := FormatFloat('#,##0.00',ed_valor.Value);
    if TfrxMemoView(Sender).Name = 'mOperador' then
      TfrxMemoView(Sender).Text := 'Operador: ' + sNome_Operador;
    if TfrxMemoView(Sender).Name = 'mForma' then
      TfrxMemoView(Sender).Text := 'Forma: ' + list_forma.Items.Strings[list_Forma.ItemIndex];


  end;
end;

procedure TfrmSuprimento.list_FormaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then ed_valor.setfocus;
end;


end.

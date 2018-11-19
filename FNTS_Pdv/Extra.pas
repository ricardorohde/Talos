unit Extra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  AdvGlowButton, Vcl.ExtCtrls, AdvMetroButton, Vcl.StdCtrls, AdvSmoothPanel,
  AdvSmoothExpanderPanel, Vcl.DBCGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxLabel,
  cxDBLabel;
type
  tRetExtra = record
    Texto:WideString;
    valor:double
  end;
type
  TfrmExtra = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label17: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    Panel19: TPanel;
    bt_transf: TAdvGlowButton;
    dsExtra: TDataSource;
    qrExtra: TUniQuery;
    qrExtraDESCRICAO: TStringField;
    qrExtraVALOR: TFloatField;
    qrExtraREMOVER: TStringField;
    qrExtraINCLUIR: TStringField;
    qrExtraDOBRO: TStringField;
    qrExtraTRIPLO: TStringField;
    cxDBLabel1: TcxDBLabel;
    edRem: TcxDBCheckBox;
    edInc: TcxDBCheckBox;
    edDob: TcxDBCheckBox;
    edTrp: TcxDBCheckBox;
    cxDBLabel2: TcxDBLabel;
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure bt_transfClick(Sender: TObject);
    procedure edTrpPropertiesEditValueChanged(Sender: TObject);
    procedure edDobPropertiesEditValueChanged(Sender: TObject);
    procedure edIncPropertiesEditValueChanged(Sender: TObject);
    procedure edRemPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    Retorno:tRetExtra;
  public
    { Public declarations }
  end;
  function RetornaAdcional(CodProduto:string):tRetExtra;
var
  frmExtra: TfrmExtra;


implementation

uses modulo;

{$R *.dfm}

function RetornaAdcional(CodProduto:string):tRetExtra;
begin
  Application.CreateForm(TfrmExtra, frmExtra);
  with frmExtra do begin
    qrExtra.Close;
    qrExtra.ParamByName('codpro').AsString := CodProduto;
    qrExtra.Open;
    if qrExtra.IsEmpty then
      Application.MessageBox('Produto não possui extras cadastrado!','Atenção!',MB_ICONINFORMATION)
    else
      ShowModal;
    Result := Retorno;
  end;
  FreeAndNil(frmExtra);
end;

procedure TfrmExtra.AdvMetroButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmExtra.bt_transfClick(Sender: TObject);
var
  Texto:string;
begin
  Retorno.Texto := '';
  Retorno.valor := 0;
  qrExtra.DisableControls;
  qrExtra.First;
  while not qrExtra.Eof do begin
    if qrExtraREMOVER.AsString = 'S' then begin
      if Texto <> '' then
        Texto := Texto + #13;
      Texto := Texto + 'REMOVER => ' + UpperCase(qrExtraDESCRICAO.AsString);
    end;
    if qrExtraINCLUIR.AsString = 'S' then begin
      if Texto <> '' then
        Texto := Texto + #13;
      Texto := Texto + 'ADICIONAR => ' + UpperCase(qrExtraDESCRICAO.AsString);
      Retorno.valor := Retorno.valor + qrExtraVALOR.AsFloat;
    end;
    if qrExtraDOBRO.AsString = 'S' then begin
      if Texto <> '' then
        Texto := Texto + #13;
      Texto := Texto + 'DOBRO DE => ' + UpperCase(qrExtraDESCRICAO.AsString);
      Retorno.valor := Retorno.valor + (qrExtraVALOR.AsFloat*2);
    end;
    if qrExtraTRIPLO.AsString = 'S' then begin
      if Texto <> '' then
        Texto := Texto + #13;
      Texto := Texto + 'TRIPLO DE => ' + UpperCase(qrExtraDESCRICAO.AsString);
      Retorno.valor := Retorno.valor + (qrExtraVALOR.AsFloat*3);
    end;
    qrExtra.Next;
  end;
  Retorno.Texto := Texto;
  Close;
end;

procedure TfrmExtra.edDobPropertiesEditValueChanged(Sender: TObject);
begin
  if qrExtra.State = dsEdit then begin
    if qrExtraDOBRO.AsString = 'S' then begin
      qrExtraINCLUIR.AsString := 'N';
      qrExtraREMOVER.AsString := 'N';
      qrExtraTRIPLO.AsString := 'N';
    end;
  end;

end;

procedure TfrmExtra.edIncPropertiesEditValueChanged(Sender: TObject);
begin
  if qrExtra.State = dsEdit then begin
    if qrExtraINCLUIR.AsString = 'S' then begin
      qrExtraREMOVER.AsString := 'N';
      qrExtraDOBRO.AsString := 'N';
      qrExtraTRIPLO.AsString := 'N';
    end;
  end;

end;

procedure TfrmExtra.edRemPropertiesEditValueChanged(Sender: TObject);
begin
  if qrExtra.State = dsEdit then begin
    if qrExtraREMOVER.AsString = 'S' then begin
      qrExtraINCLUIR.AsString := 'N';
      qrExtraDOBRO.AsString := 'N';
      qrExtraTRIPLO.AsString := 'N';
    end;
  end;

end;

procedure TfrmExtra.edTrpPropertiesEditValueChanged(Sender: TObject);
begin
  if qrExtra.State = dsEdit then begin
    if qrExtraTRIPLO.AsString = 'S' then begin
      qrExtraINCLUIR.AsString := 'N';
      qrExtraDOBRO.AsString := 'N';
      qrExtraREMOVER.AsString := 'N';
    end;
  end;

end;

end.

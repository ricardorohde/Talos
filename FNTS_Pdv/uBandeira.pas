unit uBandeira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, MemDS, DBAccess, Uni, Parcelas, pcnConversao;

type
  TBaneira = record
    Bandeira:TpcnBandeiraCartao;
    Numero:Integer;
    Parcela:TParcelas;
  end;
  TTipoCartao = (tcCredito, tcDebito);

type
  TfrmBandeira = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Label53: TLabel;
    DataSource1: TDataSource;
    qrBanco: TUniQuery;
    qrBancoNUMERO: TIntegerField;
    qrBancoBANCO: TStringField;
    qrBancoLOGO: TBlobField;
    qrBancoCARTAO_CREDITO: TIntegerField;
    qrBancoFINANCEIRA: TIntegerField;
    cxGrid1DBTableView1BANCO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel2: TPanel;
    Label1: TLabel;
    qrBancoADMINISTRADORA: TStringField;
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    Continua:Boolean;
    Parcela:TParcelas;
    Vtotal:Double;
    vTipoCartac:TTipoCartao;
  public
    { Public declarations }
  end;
  function RetBandeira(Total:Double; Tipo:TTipoCartao):TBaneira;


var
  frmBandeira: TfrmBandeira;

implementation

uses
  modulo, principal, venda;

{$R *.dfm}

function RetBandeira(Total:Double; Tipo:TTipoCartao):TBaneira;
begin
  Application.CreateForm(TfrmBandeira, frmBandeira);
  with frmBandeira do begin
    vTipoCartac := Tipo;
    Vtotal := Total;
    ShowModal;
    if Continua then begin
      if UpperCase(qrBancoADMINISTRADORA.AsString) = 'VISA' then
        Result.Bandeira := bcVisa
      else if UpperCase(qrBancoADMINISTRADORA.AsString) = 'MASTERCARD' then
        Result.Bandeira := bcMasterCard
      else if UpperCase(qrBancoADMINISTRADORA.AsString) = 'AMERICAN EXPRESS' then
        Result.Bandeira := bcAmericanExpress
      else if UpperCase(qrBancoADMINISTRADORA.AsString) = 'SOROCRED' then
        Result.Bandeira := bcSorocred
      else if UpperCase(qrBancoADMINISTRADORA.AsString) = 'DINERS CLUB' then
        Result.Bandeira := bcDinersClub
      else if UpperCase(qrBancoADMINISTRADORA.AsString) = 'ELO' then
        Result.Bandeira := bcElo
      else if UpperCase(qrBancoADMINISTRADORA.AsString) = 'HIPERCARD' then
        Result.Bandeira := bcHipercard
      else if UpperCase(qrBancoADMINISTRADORA.AsString) = 'AURA' then
        Result.Bandeira := bcAura
      else if UpperCase(qrBancoADMINISTRADORA.AsString) = 'CABAL' then
        Result.Bandeira := bcCabal
      else if UpperCase(qrBancoADMINISTRADORA.AsString) = 'OUTROS' then
        Result.Bandeira := bcOutros;
      Result.Numero := qrBancoNUMERO.AsInteger;
      Result.Parcela := Parcela;
    end else begin
      Result.Bandeira := Null;
      Result.Numero := -1;
      Result.Parcela.Parcelas := -1;
      Result.Parcela.Valor := 0;
      Result.Parcela.Diferenca := 0;
    end;
  end;
  FreeAndNil(frmBandeira);
end;

procedure TfrmBandeira.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if AtivaTouch then begin
    if vTipoCartac = tcCredito then
      Parcela := RetornaParcelas(Vtotal)
    else begin
      Parcela.Parcelas := 1;
      Parcela.Valor := Vtotal;
      Parcela.Diferenca := 0;
    end;
    if Parcela.Parcelas > 0 then
      Continua := True
    else
      Continua := False;
    Close;
  end;
end;

procedure TfrmBandeira.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
    if vTipoCartac = tcCredito then
      Parcela := RetornaParcelas(Vtotal)
    else begin
      Parcela.Parcelas := 1;
      Parcela.Valor := Vtotal;
      Parcela.Diferenca := 0;
    end;
    if Parcela.Parcelas > 0 then
      Continua := True
    else
      Continua := False;
    Close;
  end;
  if Key = #27 then begin
    Continua := False;
    Close;
  end;
end;

end.

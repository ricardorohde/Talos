unit loc_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmloc_caixa = class(TForm)
    dsfunci: TDataSource;
    qrcaixa_operador: TZQuery;
    wwDBGrid1: TwwDBGrid;
    qrcaixa_operadorCODIGO: TWideStringField;
    qrcaixa_operadorCODFUNCIONARIO: TWideStringField;
    qrcaixa_operadorSENHA: TWideStringField;
    qrcaixa_operadorDATA: TDateField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadorSALDO: TFloatField;
    qrcaixa_operadorSITUACAO_ATUAL: TWideStringField;
    qrcaixa_operadorNOME: TWideStringField;
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_caixa: Tfrmloc_caixa;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_caixa.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then
    close;
end;

procedure Tfrmloc_caixa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then
    close;
end;

procedure Tfrmloc_caixa.DBGrid1DblClick(Sender: TObject);
begin
  resultado_pesquisa1 := qrcaixa_operador.FieldByName('CODIGO').AsString;
  resultado_pesquisa2 :=QRCAIXA_OPERADOR.fieldbyname('nome').asstring ;
  close;
end;

procedure Tfrmloc_caixa.FormShow(Sender: TObject);
begin
  qrcaixa_operador.close;
  qrcaixa_operador.Open;
end;

procedure Tfrmloc_caixa.locEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_caixa.locExit(Sender: TObject);
begin
  tedit(Sender).Color := CLWINDOW;
end;

end.

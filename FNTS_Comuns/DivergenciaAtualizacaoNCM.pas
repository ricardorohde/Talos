unit DivergenciaAtualizacaoNCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvMetroButton, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, AdvGlowButton,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Mask, RzEdit,
  RzDBEdit, RzDBBnEd, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxDBEdit;

type
  TfrmDivergenciaAtualizacaoNCM = class(TForm)
    Panel1: TPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    Panel3: TPanel;
    GRID: TwwDBGrid;
    dspro: TDataSource;
    bgravar: TAdvGlowButton;
    RzDBButtonEdit1: TRzDBButtonEdit;
    GRIDIButton: TwwIButton;
    procedure bgravarClick(Sender: TObject);
    procedure Panel3DblClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDivergenciaAtualizacaoNCM: TfrmDivergenciaAtualizacaoNCM;

implementation

uses
  AtualizaNCM, Ncm, modulo;

{$R *.dfm}

procedure TfrmDivergenciaAtualizacaoNCM.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmDivergenciaAtualizacaoNCM.bgravarClick(Sender: TObject);
begin
  if frmAtualizaNCM.cdsProdutos.State = dsedit then
    frmAtualizaNCM.cdsProdutos.Post;
  Close;
end;

procedure TfrmDivergenciaAtualizacaoNCM.Panel3DblClick(Sender: TObject);
begin
  ShowMessage(IntToStr(frmAtualizaNCM.cdsProdutos.RecordCount));
end;

procedure TfrmDivergenciaAtualizacaoNCM.RzDBButtonEdit1ButtonClick(
  Sender: TObject);
begin
  with frmAtualizaNCM do begin
    if cdsProdutos.State <> dsinsert then
      if cdsProdutos.State <> dsinsert then
        cdsProdutos.Edit;

    frmNCM := tfrmNCM.create(self);
    frmNCM.showmodal;
    cdsProdutosNCM_N.AsString := FRMMODULO.qrNCM.FieldByName('NCM').AsString;
  end;
end;

end.

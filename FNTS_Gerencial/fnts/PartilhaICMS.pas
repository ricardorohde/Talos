unit PartilhaICMS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, AdvMetroButton, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, AdvGlowButton, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfrmPartilhaICMS = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label26: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    dsPartilha: TDataSource;
    qrPartilha: TZQuery;
    qrPartilhaCODIGO: TIntegerField;
    qrPartilhaUF: TWideStringField;
    qrPartilhaDESCR_UF: TWideStringField;
    qrPartilhaIBGE: TWideStringField;
    qrPartilhaALIQ: TFloatField;
    qrPartilhaALIQREDUZBASE: TFloatField;
    qrPartilhaALIQIMPORTADO: TFloatField;
    qrPartilhaIE_SUBTRIB: TWideStringField;
    qrPartilhaMVAST: TFloatField;
    qrPartilhaALIQST: TFloatField;
    qrPartilhaFCP: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure qrPartilhaAfterPost(DataSet: TDataSet);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrPartilhaNewRecord(DataSet: TDataSet);
    procedure qrPartilhaBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPartilhaICMS: TfrmPartilhaICMS;

implementation

{$R *.dfm}

uses
  modulo;

procedure TfrmPartilhaICMS.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPartilhaICMS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qrPartilha.State = dsEdit then
    qrPartilha.Post;
end;

procedure TfrmPartilhaICMS.FormShow(Sender: TObject);
begin
  qrPartilha.Close;
  qrPartilha.Open;
  qrPartilha.First;
end;

procedure TfrmPartilhaICMS.qrPartilhaAfterPost(DataSet: TDataSet);
begin
  qrPartilha.ApplyUpdates;
end;

procedure TfrmPartilhaICMS.qrPartilhaBeforeDelete(DataSet: TDataSet);
begin
  qrPartilha.Cancel;
end;

procedure TfrmPartilhaICMS.qrPartilhaNewRecord(DataSet: TDataSet);
begin
  qrPartilha.Cancel;
end;

end.

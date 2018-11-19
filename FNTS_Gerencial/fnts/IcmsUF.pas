unit IcmsUF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvMetroButton, Vcl.StdCtrls,
  AdvSmoothPanel, AdvSmoothExpanderPanel, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids;

type
  TfrmIcmsUF = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    DBGrid1: TDBGrid;
    dsIcms: TDataSource;
    qricms: TZQuery;
    qricmsUF: TWideStringField;
    qricmsICMS: TFloatField;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure qricmsAfterPost(DataSet: TDataSet);
    procedure qricmsAfterApplyUpdates(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIcmsUF: TfrmIcmsUF;

implementation

uses
  modulo;

{$R *.dfm}

procedure TfrmIcmsUF.AdvMetroButton1Click(Sender: TObject);
begin
  if qricms.State = dsEdit  then
    qricms.Post;
  Close;
end;

procedure TfrmIcmsUF.FormShow(Sender: TObject);
begin
  qricms.Open;
end;

procedure TfrmIcmsUF.qricmsAfterApplyUpdates(Sender: TObject);
begin
  frmmodulo.Conexao.Commit;
end;

procedure TfrmIcmsUF.qricmsAfterPost(DataSet: TDataSet);
begin
  qricms.ApplyUpdates;
end;

end.

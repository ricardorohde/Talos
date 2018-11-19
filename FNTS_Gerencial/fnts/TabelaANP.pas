unit TabelaANP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, AdvGlowButton, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, AdvMetroButton, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmTabelaANP = class(TForm)
    qrExclui: TZQuery;
    qrExcluiQTD: TIntegerField;
    qrANP: TZQuery;
    dsANP: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    qrANPCODIGO: TWideStringField;
    qrANPDESCRICAO: TWideStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrExcluiAfterPost(DataSet: TDataSet);
    procedure qrExcluiBeforePost(DataSet: TDataSet);
    procedure dsANPStateChange(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure qrANPAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabelaANP: TfrmTabelaANP;

implementation

uses
  modulo;

{$R *.dfm}

procedure TfrmTabelaANP.AdvMetroButton1Click(Sender: TObject);
begin
  if (qrANP.State in [dsEdit , dsInsert]) then
    qrANP.Post;
  Close;
end;

procedure TfrmTabelaANP.bcancelarClick(Sender: TObject);
begin
  qrANP.Cancel;
end;

procedure TfrmTabelaANP.bexcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir este registro?','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then begin
    qrExclui.Close;
    qrExclui.Close;
    qrExclui.Params.Items[0].Value := qrANPCODIGO.AsString;
    qrExclui.Open;
    if qrExcluiQTD.AsInteger > 0 then begin
      Application.MessageBox('Não é possivel excluir este registro pois o mesmo está sendo utilizada no cadastro produtos.','Atenção',MB_ICONINFORMATION);
      Exit;
    end;
    qrANP.Delete;
    qrANP.ApplyUpdates;
    frmmodulo.Conexao.commit;
  end;
end;

procedure TfrmTabelaANP.bgravarClick(Sender: TObject);
begin
  qrANP.Post;
end;

procedure TfrmTabelaANP.bincluirClick(Sender: TObject);
begin
  qrANP.Insert;
end;

procedure TfrmTabelaANP.dsANPStateChange(Sender: TObject);
begin
  case dsANP.State of
    dsBrowse:begin
      bincluir.Visible := True;
      bgravar.Visible := False;
      bcancelar.Visible := False;
      bexcluir.Visible := True;
    end ;
    dsEdit, dsInsert:begin
      bincluir.Visible := False;
      bgravar.Visible := True;
      bcancelar.Visible := True;
      bexcluir.Visible := False;
    end;
  end;
end;

procedure TfrmTabelaANP.FormShow(Sender: TObject);
begin
  qrANP.Close;
  qrANP.Open;
end;

procedure TfrmTabelaANP.qrANPAfterPost(DataSet: TDataSet);
begin
  frmmodulo.Conexao.commit;
end;

procedure TfrmTabelaANP.qrExcluiAfterPost(DataSet: TDataSet);
begin
  frmmodulo.Conexao.commit;
  qrANP.Refresh;
end;

procedure TfrmTabelaANP.qrExcluiBeforePost(DataSet: TDataSet);
begin
  if qrANPCODIGO.IsNull then begin
    Application.MessageBox('Informe a Código!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
  if qrANPDESCRICAO.IsNull then begin
    Application.MessageBox('Informe a Descrição!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
end;

end.

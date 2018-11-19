unit Impressoras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvMetroButton, Vcl.StdCtrls, Vcl.ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxCheckBox, AdvGlowButton;

type
  TfrmImpressoras = class(TForm)
    Panel2: TPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrImpressora: TZQuery;
    dsImpressora: TDataSource;
    Panel1: TPanel;
    bincluir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    qrExclui: TZQuery;
    qrExcluiQTD: TIntegerField;
    qrImpressoraID: TIntegerField;
    qrImpressoraDESCRICAO: TWideStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrImpressoraAfterPost(DataSet: TDataSet);
    procedure dsImpressoraStateChange(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure qrImpressoraBeforePost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpressoras: TfrmImpressoras;

implementation

uses
  modulo;

{$R *.dfm}

procedure TfrmImpressoras.AdvMetroButton1Click(Sender: TObject);
begin
  if (qrImpressora.State in [dsEdit , dsInsert]) then
    qrImpressora.Post;
  Close;
end;

procedure TfrmImpressoras.bcancelarClick(Sender: TObject);
begin
  qrImpressora.Cancel;
end;

procedure TfrmImpressoras.bexcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta impressora?','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then begin
    qrExclui.Close;
    qrExclui.SQL.Clear;
    qrExclui.SQL.Add('select count(*) qtd  from c000017 gr where gr.id_tp_impressora = ' + qrImpressoraID.AsString);
    qrExclui.Open;
    if qrExcluiQTD.AsInteger > 0 then begin
      Application.MessageBox('Não é possivel excluir esta impressora pois a mesma está sendo utilizada no cadastro de grupo de produtos.','Atenção',MB_ICONINFORMATION);
      Exit;
    end;
    qrImpressora.Delete;
    qrImpressora.ApplyUpdates;
    frmmodulo.Conexao.commit;
  end;
end;

procedure TfrmImpressoras.bgravarClick(Sender: TObject);
begin
  qrImpressora.Post;
end;

procedure TfrmImpressoras.bincluirClick(Sender: TObject);
begin
  qrImpressora.Insert;
end;

procedure TfrmImpressoras.dsImpressoraStateChange(Sender: TObject);
begin
  case dsImpressora.State of
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

procedure TfrmImpressoras.FormShow(Sender: TObject);
begin
  qrImpressora.Close;
  qrImpressora.Open;
end;

procedure TfrmImpressoras.qrImpressoraAfterPost(DataSet: TDataSet);
begin
  frmmodulo.Conexao.commit;
  qrImpressora.Refresh;
end;

procedure TfrmImpressoras.qrImpressoraBeforePost(DataSet: TDataSet);
begin
  if qrImpressoraDESCRICAO.IsNull then begin
    Application.MessageBox('Informe a Descrição da Impressora!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
end;

end.

unit ConversaoUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, AdvGlowButton, Vcl.ExtCtrls, TFlatPanelUnit,
  AdvMetroButton, Vcl.StdCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel,
  Datasnap.Provider, Datasnap.DBClient, MemDS, DBAccess, Uni,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmConversaoUnidade = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    bitbtn2: TAdvMetroButton;
    pgravar: TFlatPanel;
    bGravar: TAdvGlowButton;
    dsConversao: TDataSource;
    qrConversao: TZQuery;
    qrConversaoCODPRODUTO: TWideStringField;
    qrConversaoUN_ORIGEM: TWideStringField;
    qrConversaoUN_DESTINO: TWideStringField;
    qrConversaoFATOR: TFloatField;
    qrConversaoTIPO: TWideStringField;
    DBGrid1: TDBGrid;
    qrConversaoDFATOR: TWideStringField;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrConversaoID: TIntegerField;
    bexcluir: TAdvGlowButton;
    procedure bitbtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsConversaoStateChange(Sender: TObject);
    procedure bGravarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure qrConversaoAfterDelete(DataSet: TDataSet);
    procedure qrConversaoAfterPost(DataSet: TDataSet);
    procedure qrConversaoBeforePost(DataSet: TDataSet);
    procedure qrConversaoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo:string;
  end;

var
  frmConversaoUnidade: TfrmConversaoUnidade;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmConversaoUnidade.balterarClick(Sender: TObject);
begin
  if qrConversao.RecordCount > 0 then
    qrConversao.Edit
  else
    Application.MessageBox('Não existe lançamento dde conversão para alterar.','Atenção!',MB_ICONINFORMATION);
end;

procedure TfrmConversaoUnidade.bcancelarClick(Sender: TObject);
begin
  qrConversao.Cancel;
end;

procedure TfrmConversaoUnidade.bexcluirClick(Sender: TObject);
begin
  if qrConversao.RecordCount > 0 then begin
    if Application.MessageBox('Deseja realmente excluir este registro?','Atenção!',MB_ICONQUESTION+MB_YESNO) = mrYes then begin
      qrConversao.Delete;
    end;
  end;
end;

procedure TfrmConversaoUnidade.bGravarClick(Sender: TObject);
begin
  qrConversao.Post;
end;

procedure TfrmConversaoUnidade.bincluirClick(Sender: TObject);
begin
  qrConversao.Insert;
end;

procedure TfrmConversaoUnidade.bitbtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConversaoUnidade.dsConversaoStateChange(Sender: TObject);
begin
  if 'A' <> 'A' then begin
    ShowMessage('a = a');
    ShowMessage('a nao diferente de a');
  end;


  case dsConversao.State of
    dsBrowse: begin
      bincluir.Visible := True;
      balterar.Visible := True;
      bGravar.Visible := False;
      bcancelar.Visible := False;
      bexcluir.Visible := True;
    end;
    dsEdit, dsInsert: begin
      bincluir.Visible := False;
      balterar.Visible := False;
      bGravar.Visible := True;
      bcancelar.Visible := True;
      bexcluir.Visible := False;
    end;
  end;
  bcancelar.Top := -1;
  bGravar.Top := -1;
  bexcluir.Top := -1;
  balterar.Top := -1;
  bincluir.Top := -1;
end;

procedure TfrmConversaoUnidade.FormShow(Sender: TObject);
begin
  qrConversao.Close;
  qrConversao.Params.Items[0].Value := Codigo;
  qrConversao.Open;
end;

procedure TfrmConversaoUnidade.qrConversaoAfterDelete(DataSet: TDataSet);
begin
  qrConversao.ApplyUpdates;
  FRMMODULO.Conexao.commit;
end;

procedure TfrmConversaoUnidade.qrConversaoAfterPost(DataSet: TDataSet);
begin
  qrConversao.ApplyUpdates;
  FRMMODULO.Conexao.commit;
end;

procedure TfrmConversaoUnidade.qrConversaoBeforePost(DataSet: TDataSet);
var
  Mens:string;
begin
  Mens := '';
  if Trim(qrConversaoUN_ORIGEM.AsString) = '' then
    Mens := Mens + 'Unidade de Origem.' + #13;
  if Trim(qrConversaoUN_DESTINO.AsString) = '' then
    Mens := Mens + 'Unidade de Destino.' + #13;
  if Trim(qrConversaoDFATOR.AsString) = '' then
    Mens := Mens + 'Tipo de conversão.' + #13;
  if Trim(qrConversaoFATOR.AsString) = '' then
    Mens := Mens + 'Fator de conversão.' + #13;
  if Mens <> '' then begin
    Application.MessageBox(PWideChar('Informe:' +#13+Mens),'Atenção!',MB_ICONINFORMATION);
    Abort;
    Exit;
  end;
  if qrConversaoDFATOR.AsString = 'Multiplicar' then
    qrConversaoTIPO.AsString := 'M'
  else if qrConversaoDFATOR.AsString = 'Divisão' then
    qrConversaoTIPO.AsString := 'D';
end;

procedure TfrmConversaoUnidade.qrConversaoNewRecord(DataSet: TDataSet);
begin
  qrConversao.FieldByName('codproduto').AsString := Codigo;
end;

end.

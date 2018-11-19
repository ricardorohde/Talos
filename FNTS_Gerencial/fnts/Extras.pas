unit Extras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, AdvGlowButton, AdvMetroButton, Vcl.StdCtrls, Vcl.ExtCtrls, cxCalc;

type
  TfrmExtras = class(TForm)
    Panel2: TPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    bincluir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    qrExtras: TZQuery;
    dsExtras: TDataSource;
    qrExclui: TZQuery;
    qrExcluiQTD: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qrExtrasID: TIntegerField;
    qrExtrasDESCRICAO: TWideStringField;
    qrExtrasVALOR: TFloatField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    procedure qrExtrasAfterPost(DataSet: TDataSet);
    procedure qrExtrasBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsExtrasStateChange(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExtras: TfrmExtras;

implementation

uses
  modulo;

{$R *.dfm}

procedure TfrmExtras.AdvMetroButton1Click(Sender: TObject);
begin
  if (qrExtras.State in [dsEdit , dsInsert]) then
    qrExtras.Post;
  Close;
end;

procedure TfrmExtras.bcancelarClick(Sender: TObject);
begin
  qrExtras.Cancel;
end;

procedure TfrmExtras.bexcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta Regisro?','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then begin
    qrExclui.Close;
    qrExclui.SQL.Clear;
    qrExclui.SQL.Add('select count(*) qtd  from extra_produtos gr where gr.id_extra = ' + qrExtrasID.AsString);
    qrExclui.Open;
    if qrExcluiQTD.AsInteger > 0 then begin
      Application.MessageBox('Não é possivel excluir exte registro pois o mesmo está sendo utilizado no cadastro de produto.','Atenção',MB_ICONINFORMATION);
      Exit;
    end;
    qrExtras.Delete;
    qrExtras.ApplyUpdates;
    frmmodulo.Conexao.commit;
  end;
end;

procedure TfrmExtras.bgravarClick(Sender: TObject);
begin
  qrExtras.Post;
end;

procedure TfrmExtras.bincluirClick(Sender: TObject);
begin
  qrExtras.Insert;
end;

procedure TfrmExtras.dsExtrasStateChange(Sender: TObject);
begin
  case dsExtras.State of
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

procedure TfrmExtras.FormShow(Sender: TObject);
begin
  qrExtras.Close;
  qrExtras.Open;
end;

procedure TfrmExtras.qrExtrasAfterPost(DataSet: TDataSet);
begin
  frmmodulo.Conexao.commit;
  qrExtras.Refresh;
end;

procedure TfrmExtras.qrExtrasBeforePost(DataSet: TDataSet);
begin
  if qrExtrasDESCRICAO.IsNull then begin
    Application.MessageBox('Informe a Descrição!','Atenção',MB_ICONINFORMATION);
    Abort;
   end;
end;

end.

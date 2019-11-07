unit CadastroEtiquetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, AdvGlowButton, AdvMetroButton, Vcl.ExtCtrls, frxBarcode,
  frxClass, frxDBSet, frxDesgn;

type
  TfrmCadastroEtiquetas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dsEtiqueta: TDataSource;
    qrEtiqueta: TZQuery;
    FileRel: TFileOpenDialog;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    qrEtiquetaID: TIntegerField;
    qrEtiquetaDESCRICAO: TWideStringField;
    qrEtiquetaCAMINHO: TWideStringField;
    btnEditar: TAdvGlowButton;
    QRPRODUTO: TZQuery;
    fxproduto: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsproduto: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    QRPRODUTOCODIGO: TWideStringField;
    QRPRODUTOCODBARRA: TWideStringField;
    QRPRODUTOPRODUTO: TWideStringField;
    QRPRODUTOUNIDADE: TWideStringField;
    QRPRODUTOCODGRUPO: TWideStringField;
    QRPRODUTOCODSUBGRUPO: TWideStringField;
    QRPRODUTOCODFORNECEDOR: TWideStringField;
    QRPRODUTOCODMARCA: TWideStringField;
    QRPRODUTOPRECOCUSTO: TFloatField;
    QRPRODUTOPRECOVENDA: TFloatField;
    QRPRODUTOESTOQUE: TFloatField;
    QRPRODUTOESTOQUEMINIMO: TFloatField;
    QRPRODUTOLOCALICAZAO: TWideStringField;
    QRPRODUTOCST: TWideStringField;
    QRPRODUTOCLASSIFICACAO_FISCAL: TWideStringField;
    QRPRODUTONBM: TWideStringField;
    QRPRODUTONCM: TWideStringField;
    QRPRODUTOALIQUOTA: TFloatField;
    QRPRODUTOIPI: TFloatField;
    QRPRODUTOREDUCAO: TFloatField;
    QRPRODUTOQTDE_EMBALAGEM: TFloatField;
    QRPRODUTOTIPO: TWideStringField;
    QRPRODUTOPESO_LIQUIDO: TFloatField;
    QRPRODUTOTAMANHO: TWideStringField;
    QRPRODUTOCOR: TWideStringField;
    QRPRODUTOIAT: TWideStringField;
    QRPRODUTOIPPT: TWideStringField;
    QRPRODUTOSITUACAO_TRIBUTARIA: TWideStringField;
    QRPRODUTOCEST: TWideStringField;
    QRPRODUTOORIGEM: TIntegerField;
    QRPRODUTOCODIGO_ANP: TWideStringField;
    QRPRODUTOPRECOVENDA_DINHEIRO: TFloatField;
    QRPRODUTOPRECOVENDA_CARTAO: TFloatField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsEtiquetaStateChange(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure qrEtiquetaAfterPost(DataSet: TDataSet);
    procedure qrEtiquetaBeforePost(DataSet: TDataSet);
    procedure btnEditarClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroEtiquetas: TfrmCadastroEtiquetas;

implementation

{$R *.dfm}

uses modulo;

procedure TfrmCadastroEtiquetas.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroEtiquetas.bcancelarClick(Sender: TObject);
begin
  qrEtiqueta.Cancel;
end;

procedure TfrmCadastroEtiquetas.bexcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta etiqueta?','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then begin
    qrEtiqueta.Delete;
    qrEtiqueta.ApplyUpdates;
    frmmodulo.Conexao.commit;
  end;
end;

procedure TfrmCadastroEtiquetas.bgravarClick(Sender: TObject);
begin
  qrEtiqueta.Post;
end;

procedure TfrmCadastroEtiquetas.bincluirClick(Sender: TObject);
begin
  qrEtiqueta.Append;
end;

procedure TfrmCadastroEtiquetas.btnEditarClick(Sender: TObject);
begin
  if (qrEtiquetaCAMINHO.IsNull) then
  begin
    fxproduto.Clear;
    fxproduto.DesignReport;
    if not (qrEtiqueta.State in [dsEdit, dsInsert]) then
      qrEtiqueta.Edit;
    qrEtiquetaCAMINHO.AsString := fxproduto.FileName;
  end
  else
  begin
    if not FileExists(qrEtiquetaCAMINHO.AsString) then begin
      Application.MessageBox('Arquivo de impressão da etoqueta inválido!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
    fxproduto.Clear;
    fxproduto.LoadFromFile(qrEtiquetaCAMINHO.AsString);
    fxproduto.DesignReport;
    if not (qrEtiqueta.State in [dsEdit, dsInsert]) then
      qrEtiqueta.Edit;
    qrEtiquetaCAMINHO.AsString := fxproduto.FileName;
  end;
end;

procedure TfrmCadastroEtiquetas.dsEtiquetaStateChange(Sender: TObject);
begin
  case dsEtiqueta.State of
    dsBrowse:begin
      bincluir.Visible := True;
      bgravar.Visible := False;
      bcancelar.Visible := False;
      bexcluir.Visible := True;
      if qrEtiqueta.IsEmpty then begin
        btnEditar.Caption := 'Criar Etiqueta';
        btnEditar.Enabled := False;
      end else begin
        btnEditar.Caption := 'Editar Etiqueta';
        btnEditar.Enabled := True;
      end;
    end ;
    dsEdit, dsInsert:begin
      btnEditar.Caption := 'Criar Etiqueta';
      btnEditar.Enabled := True;
      bincluir.Visible := False;
      bgravar.Visible := True;
      bcancelar.Visible := True;
      bexcluir.Visible := False;
    end;
  end;
end;

procedure TfrmCadastroEtiquetas.FormShow(Sender: TObject);
begin
  qrEtiqueta.Close;
  qrEtiqueta.Open;
end;

procedure TfrmCadastroEtiquetas.qrEtiquetaAfterPost(DataSet: TDataSet);
begin
  frmmodulo.Conexao.commit;
  qrEtiqueta.Refresh;
end;

procedure TfrmCadastroEtiquetas.qrEtiquetaBeforePost(DataSet: TDataSet);
begin
  if qrEtiquetaDESCRICAO.IsNull then begin
    Application.MessageBox('Informe a Descrição da Etiqueta!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
  if (qrEtiquetaCAMINHO.IsNull) or not(FileExists(qrEtiquetaCAMINHO.AsString)) then begin
    Application.MessageBox('Informe um arquivo válido de Impressão da Etiqueta!','Atenção',MB_ICONINFORMATION);
    Abort;
  end;
end;

procedure TfrmCadastroEtiquetas.SpeedButton1Click(Sender: TObject);
begin
  if FileRel.Execute then
    qrEtiquetaCAMINHO.AsString := FileRel.FileName;
end;

end.

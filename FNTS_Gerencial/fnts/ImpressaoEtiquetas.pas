unit ImpressaoEtiquetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Datasnap.DBClient, Vcl.StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvGlowButton, AdvMetroButton, Vcl.ExtCtrls,
  cxDBLookupComboBox, Vcl.ComCtrls, Vcl.Mask, RzEdit, RzSpnEdt, cxSpinEdit,
  cxButtonEdit, frxBarcode, frxClass, frxDBSet, Vcl.Samples.Gauges,
  dxBarBuiltInMenu, cxPC;

type
  TfrmImpressaoEtiquetas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    bcancelar: TAdvGlowButton;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    edEtiqueta: TComboBox;
    Label2: TLabel;
    cdsImprimir: TClientDataSet;
    qrproduto: TZQuery;
    qrEtiqueta: TZQuery;
    qrEtiquetaID: TIntegerField;
    qrEtiquetaDESCRICAO: TWideStringField;
    qrEtiquetaCAMINHO: TWideStringField;
    cdsTemp: TClientDataSet;
    dsTemp: TDataSource;
    cdsTempProduto: TStringField;
    cdsTempDescricao: TStringField;
    cdsTempQuantidade: TIntegerField;
    cxGrid1DBTableView1Produto: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    cxGrid1DBTableView1Quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    fsproduto: TfrxDBDataset;
    fxproduto: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    AdvGlowButton1: TAdvGlowButton;
    Barra: TGauge;
    cdsImprimirCODIGO: TWideStringField;
    cdsImprimirCODBARRA: TWideStringField;
    cdsImprimirPRODUTO: TWideStringField;
    cdsImprimirUNIDADE: TWideStringField;
    cdsImprimirCODGRUPO: TWideStringField;
    cdsImprimirCODSUBGRUPO: TWideStringField;
    cdsImprimirCODFORNECEDOR: TWideStringField;
    cdsImprimirCODMARCA: TWideStringField;
    cdsImprimirPRECOCUSTO: TFloatField;
    cdsImprimirPRECOVENDA: TFloatField;
    cdsImprimirESTOQUE: TFloatField;
    cdsImprimirESTOQUEMINIMO: TFloatField;
    cdsImprimirLOCALICAZAO: TWideStringField;
    cdsImprimirCST: TWideStringField;
    cdsImprimirCLASSIFICACAO_FISCAL: TWideStringField;
    cdsImprimirNBM: TWideStringField;
    cdsImprimirNCM: TWideStringField;
    cdsImprimirALIQUOTA: TFloatField;
    cdsImprimirIPI: TFloatField;
    cdsImprimirREDUCAO: TFloatField;
    cdsImprimirQTDE_EMBALAGEM: TFloatField;
    cdsImprimirTIPO: TWideStringField;
    cdsImprimirPESO_LIQUIDO: TFloatField;
    cdsImprimirTAMANHO: TWideStringField;
    cdsImprimirCOR: TWideStringField;
    cdsImprimirIAT: TWideStringField;
    cdsImprimirIPPT: TWideStringField;
    cdsImprimirSITUACAO_TRIBUTARIA: TWideStringField;
    cdsImprimirCEST: TWideStringField;
    cdsImprimirORIGEM: TIntegerField;
    cdsImprimirCODIGO_ANP: TWideStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    ed_produto: TRzEdit;
    Label3: TLabel;
    edEtiquetas: TRzSpinEdit;
    Label4: TLabel;
    btnAdd: TAdvGlowButton;
    edDias: TRzSpinEdit;
    Label6: TLabel;
    edEtiquetaDias: TRzSpinEdit;
    Label7: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    lbCodigo: TLabel;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddClick(Sender: TObject);
    procedure edEtiquetasKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure edEtiquetaKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelarClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpressaoEtiquetas: TfrmImpressaoEtiquetas;

implementation

uses
  xloc_produto, modulo, UFuncoes, principal;

{$R *.dfm}

procedure TfrmImpressaoEtiquetas.AdvGlowButton1Click(Sender: TObject);
begin
  edEtiqueta.ItemIndex := 0;
  ed_produto.Clear;
  edEtiquetas.IntValue := 0;
  lbCodigo.Caption := '';
  cdsImprimir.Close;
  cdsTemp.Close;
  cdsTemp.CreateDataSet;
  edEtiqueta.SetFocus;
end;

procedure TfrmImpressaoEtiquetas.AdvGlowButton2Click(Sender: TObject);
var
  Data:TDate;
begin
  if edEtiquetaDias.Value <= 0 then begin
    Application.MessageBox('Quantidade de etiquetas a serem impressas inválida!','Atenção!',MB_ICONINFORMATION);
    edEtiquetaDias.SetFocus;
    Exit;
  end;
  Data := Date -edDias.Value;
  qrproduto.Close;
  qrproduto.SQL.Clear;
  qrproduto.SQL.Add('select * from c000025 where data_remarcacao_venda >= ' + QuotedStr(FormatDateTime('DD.MM.YYYY',Data)));
  qrproduto.Open;
  if not qrproduto.IsEmpty then begin
    qrproduto.First;
    while not qrproduto.Eof do begin
      cdsTemp.Insert;
      cdsTempProduto.AsString := qrproduto.FieldByName('codigo').AsString;
      cdsTempDescricao.AsString := qrproduto.FieldByName('produto').AsString;
      cdsTempQuantidade.AsInteger := edEtiquetaDias.IntValue;
      cdsTemp.Post;
      qrproduto.Next;
    end;
  end else begin
    Application.MessageBox('Não foi encontrado produtos com alteração de preço com estes dias!','Atenção!',MB_ICONINFORMATION);
    edDias.SetFocus;
    Exit;
  end;
end;

procedure TfrmImpressaoEtiquetas.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmImpressaoEtiquetas.bcancelarClick(Sender: TObject);
var
  i,j:Integer;
begin
  if (cdsTemp.Active) and (cdsTemp.RecordCount > 0)then begin
    try
      cdsTemp.DisableControls;
      Barra.MinValue := 0;
      Barra.MaxValue := cdsTemp.RecordCount;
      cdsTemp.First;
      cdsImprimir.Close;
      cdsImprimir.CreateDataSet;
      while not cdsTemp.Eof do begin
        Barra.Progress := Barra.Progress + 1;
        cdsTemp.Next;
        qrproduto.Close;
        qrproduto.SQL.Clear;
        qrproduto.SQL.Add('Select * from c000025 where codigo = '+QuotedStr(cdsTempProduto.AsString));
        qrproduto.Open;
        for i := 0 to cdsTempQuantidade.AsInteger - 1 do begin
          cdsImprimir.Append;
          for j := 0 to cdsImprimir.FieldCount-1 do
            cdsImprimir.Fields[j].Value := qrproduto.FieldByName(cdsImprimir.Fields[j].FieldName).Value;
          cdsImprimir.Post;
        end;
      end;
      qrEtiqueta.First;
      qrEtiqueta.Locate('DESCRICAO',edEtiqueta.Text,[loCaseInsensitive]);
      fxproduto.LoadFromFile(qrEtiquetaCAMINHO.AsString);
      fxproduto.ShowReport;
    finally
      cdsTemp.First;
      cdsTemp.EnableControls;
    end;
  end else begin
    Application.MessageBox('Não existe produto para realizar a impressão das etiquetas','Atenção!',MB_ICONINFORMATION);
  end;
end;

procedure TfrmImpressaoEtiquetas.btnAddClick(Sender: TObject);
begin
  if lbCodigo.Caption = '' then begin
    Application.MessageBox('Informe o Produto!','Atenção!',MB_ICONINFORMATION);
    ed_produto.SetFocus;
    Exit;
  end;
  if edEtiquetas.IntValue <= 0 then begin
    Application.MessageBox('Quantidade de etiquetas a serem impressas inválida!','Atenção!',MB_ICONINFORMATION);
    edEtiquetas.SetFocus;
    Exit;
  end;
  cdsTemp.Insert;
  cdsTempProduto.AsString := lbCodigo.Caption;
  cdsTempDescricao.AsString := ed_produto.Text;
  cdsTempQuantidade.AsInteger := edEtiquetas.IntValue;
  cdsTemp.Post;
  edEtiquetas.IntValue := 0;
  ed_produto.Clear;
  lbCodigo.Caption := '';
  ed_produto.SetFocus;
end;

procedure TfrmImpressaoEtiquetas.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  cdsTemp.Delete;
end;

procedure TfrmImpressaoEtiquetas.edEtiquetaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    ed_produto.SetFocus;

end;

procedure TfrmImpressaoEtiquetas.edEtiquetasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnAdd.SetFocus;
end;

procedure TfrmImpressaoEtiquetas.ed_produtoKeyPress(Sender: TObject;
  var Key: Char);
var
  Campo:string;
begin
  if Key = #13 then begin
    Campo := ed_produto.Text;
    if ApenasNumero(Campo) then
      Campo := frmprincipal.zerarcodigo(Campo,6);
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and codigo = ''' + campo + '''');
    qrproduto.open;
    if qrproduto.RecordCount = 0 then begin
      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  codbarra = ''' + ed_produto.Text + '''');
      qrproduto.open;
      if qrproduto.recordcount = 0 then begin
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and  upper(produto) like ''' + ansiuppercase(ed_produto.Text) + '%''');
        qrproduto.open;
      end;
    end;
    if qrproduto.RecordCount > 0 then begin
      if qrproduto.recordcount = 1 then begin
        ed_produto.text := qrproduto.fieldbyname('produto').asstring;
        lbCodigo.Caption := qrproduto.fieldbyname('codigo').asstring;
        edEtiquetas.SetFocus;
      end else begin
        frmxloc_produto := tfrmxloc_produto.create(self);
        frmxloc_produto.loc.text := ed_produto.text;
        frmxloc_produto.showmodal;
        if resultado_pesquisa1 <> '' then begin
          ed_produto.text := qrproduto.fieldbyname('produto').asstring;
          lbCodigo.Caption := qrproduto.fieldbyname('codigo').asstring;
          edEtiquetas.SetFocus;
        end else begin
          ed_produto.SelectAll;
        end;
      end;
    end else begin
      application.messagebox('Produto não localizado!', 'Erro', mb_ok + mb_iconerror);
      ed_produto.SelectAll;
    end;
  end;
end;

procedure TfrmImpressaoEtiquetas.FormShow(Sender: TObject);
begin
  qrEtiqueta.Close;
  qrEtiqueta.Open;
  qrEtiqueta.First;
  edEtiqueta.Items.Clear;
  while not qrEtiqueta.Eof do begin
    edEtiqueta.Items.Add(qrEtiquetaDESCRICAO.AsString);
    qrEtiqueta.Next;
  end;
  edEtiqueta.ItemIndex := 0;
  cdsTemp.Close;
  cdsTemp.CreateDataSet;
end;

end.

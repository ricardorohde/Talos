unit MontaPizza;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxImageComboBox,
  cxMemo, AdvGlowButton, AdvSmoothPanel, AdvSmoothExpanderPanel, Vcl.StdCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, AdvMetroButton, cxLabel, Vcl.ExtCtrls,
  MemDS, DBAccess, Uni, Datasnap.DBClient, Extra, cxButtonEdit;

type
  tProdutoPrincipal = record
    Codigo:string;
    Valor:Double;
  end;
  tRetPizza = record
    Pizza:string;
    Sabores:WideString;
    Valor:double;
    Produtos: array of string;
    ProdutoPrincipal:tProdutoPrincipal;
  end;

  TfrmMontaPizza = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    lbNome: TcxLabel;
    lbTotal: TcxLabel;
    Label1: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel5: TPanel;
    edSabor: TComboBox;
    Label2: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    bt_transf: TAdvGlowButton;
    qrProdutos: TUniQuery;
    dsSabores: TDataSource;
    cdsSabores: TClientDataSet;
    cdsSaboresCodigo: TStringField;
    cdsSaboresDescricao: TStringField;
    cdsSaboresvalor: TFloatField;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsSaboresextra: TBlobField;
    colExtra: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    colBTN: TcxGridDBColumn;
    cxStyle2: TcxStyle;
    qrProdutosCODIGO: TIntegerField;
    qrProdutosCOD_BARRA: TStringField;
    qrProdutosNOME: TStringField;
    qrProdutosUNIDADE: TStringField;
    qrProdutosPRECO_VENDA: TFloatField;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure bt_transfClick(Sender: TObject);
    procedure colBTNPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
    strExtra:tRetExtra;
    RetPizza:tRetPizza;
    continua:Boolean;
    Produtos:array of string;
    Principal:tProdutoPrincipal;
  public
    { Public declarations }
  end;
  function Pizza(Sabor:string;Valor:Double):tRetPizza;

var
  frmMontaPizza: TfrmMontaPizza;

implementation

uses modulo, principal, funcoes;

{$R *.dfm}

function Pizza(Sabor:string;Valor:Double):tRetPizza;
var
 i:Integer;
begin
  Application.CreateForm(TfrmMontaPizza, frmMontaPizza);
  with frmMontaPizza do Begin
    lbNome.Caption := Sabor;
    lbTotal.Caption := 'R$ ' + FormatFloat('#,##0.00',Valor);
    qrProdutos.Close;
    qrProdutos.Open;
    qrProdutos.First;
    edSabor.Items.Clear;
    cdsSabores.Close;
    cdsSabores.CreateDataSet;
    while not qrProdutos.eof do begin
      edSabor.Items.Add(qrProdutosNOME.AsString);
      qrProdutos.Next;
    end;
    edSabor.ItemIndex := edSabor.Items.IndexOf(Sabor);
    RetPizza.Sabores := '';
    RetPizza.Valor := 0;
    continua := False;
    Principal.Codigo := '';
    Principal.Valor := 0;
    ShowModal;
    if continua then begin
      RetPizza.Pizza := lbNome.Caption;
      RetPizza.ProdutoPrincipal := Principal;
      SetLength(RetPizza.Produtos,Length(Produtos));
      for I := 0 to Length(Produtos)-1 do
        RetPizza.Produtos[i] := Produtos[i];
      Result := RetPizza;
    end;
  end;
  FreeAndNil(frmMontaPizza);
end;

procedure TfrmMontaPizza.AdvGlowButton1Click(Sender: TObject);
begin
  if qrProdutos.Locate('nome',edSabor.Text,[loCaseInsensitive]) then begin
    strExtra := RetornaAdcional(Zerar(qrProdutosCODIGO.AsString,6));
  end;
end;

procedure TfrmMontaPizza.AdvGlowButton2Click(Sender: TObject);
var
  Maior:Double;
begin
  if edSabor.Text = '' then begin
    Application.MessageBox('Selecione o sabor da Pizza!','Atenção!',MB_ICONINFORMATION);
    edSabor.SetFocus;
    Exit;
  end;
  if cdsSabores.Locate('Descricao',edSabor.Text,[loCaseInsensitive]) then begin
    Application.MessageBox('Sabor já adcionado na Pizza!','Atenção!',MB_ICONINFORMATION);
    edSabor.SetFocus;
    Exit;
  end;
  qrProdutos.First;
  try
    cdsSabores.DisableControls;
    if qrProdutos.Locate('nome',edSabor.Text,[loCaseInsensitive]) then begin
      cdsSabores.Append;
      cdsSaboresCodigo.AsString := qrProdutosCODIGO.AsString;
      cdsSaboresDescricao.AsString := qrProdutosNOME.AsString;
      cdsSaboresvalor.AsFloat := qrProdutosPRECO_VENDA.AsFloat + strExtra.valor;
      if strExtra.Texto <> '' then
        cdsSaboresextra.AsString := strExtra.Texto;
      cdsSabores.Post;
    end;
    cdsSabores.First;
    Maior := 0;
    while not cdsSabores.Eof do begin
      if cdsSaboresvalor.AsFloat > Maior then begin
        Maior := cdsSaboresvalor.AsFloat;
        Principal.Codigo := cdsSaboresCodigo.AsString;;
        Principal.Valor := Maior;
      end;
      cdsSabores.Next;
    end;
    lbTotal.Caption := 'R$ ' + FormatFloat('#,##0.00',Maior);
    if cdsSabores.RecordCount > 1 then
      lbNome.Caption := 'PIZZA ' + IntToStr(cdsSabores.RecordCount) + ' SABORES';
  finally
    cdsSabores.Last;
    cdsSabores.EnableControls;
    strExtra.Texto := '';
    strExtra.valor := 0;
  end;
end;

procedure TfrmMontaPizza.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMontaPizza.bt_transfClick(Sender: TObject);
var
  Maior:Double;
  partes:Integer;
begin
  if cdsSabores.RecordCount > 0 then begin
    cdsSabores.First;
    Maior := 0;
    partes := cdsSabores.RecordCount;
    SetLength(Produtos,partes);
    while not cdsSabores.Eof do begin
      if RetPizza.Sabores <> '' then
        RetPizza.Sabores := RetPizza.Sabores + #13;
      RetPizza.Sabores := RetPizza.Sabores + '1/'+IntToStr(partes) +' DE ' + cdsSaboresDescricao.AsString;
      if cdsSaboresextra.AsString <> '' then
        RetPizza.Sabores := RetPizza.Sabores + #13 + '*** ' + cdsSaboresextra.AsString;
      if cdsSaboresvalor.AsFloat > Maior then
        Maior := cdsSaboresvalor.AsFloat;
      Produtos[cdsSabores.RecNo-1] := cdsSaboresCodigo.AsString;
      cdsSabores.Next;
    end;
    RetPizza.Valor := Maior;
    continua := True;
    Close;
  end else begin
    Application.MessageBox('Não existem dados para salvar!','Atenção!',MB_ICONINFORMATION);
  end;
end;

procedure TfrmMontaPizza.colBTNPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  cdsSabores.Delete;
end;

end.

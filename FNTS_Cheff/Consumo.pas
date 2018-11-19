unit Consumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.ExtCtrls, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, MemDS, DBAccess, Uni, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  AdvGlowButton, cxCheckBox, cxMemo, Extra, frxClass, frxDBSet, frxDesgn, Printers,
  cxImageComboBox, System.ImageList, Vcl.ImgList, MontaPizza;

type
  TfrmConsumo = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label17: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    Panel19: TPanel;
    GroupBox3: TGroupBox;
    ed_total_comanda: TRzNumericEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    lb_mesa: TLabel;
    GroupBox2: TGroupBox;
    lb_data: TLabel;
    lb_hora: TLabel;
    ed_produto_codigo: TEdit;
    ed_produto_nome: TEdit;
    AdvSmoothExpanderPanel6: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel7: TAdvSmoothExpanderPanel;
    ed_qtde: TRzNumericEdit;
    AdvSmoothExpanderPanel8: TAdvSmoothExpanderPanel;
    ed_unidade: TEdit;
    AdvSmoothExpanderPanel9: TAdvSmoothExpanderPanel;
    ed_unitario: TRzNumericEdit;
    AdvSmoothExpanderPanel10: TAdvSmoothExpanderPanel;
    ed_total: TRzNumericEdit;
    qrConsumo: TUniQuery;
    dsConsumo: TDataSource;
    query: TUniQuery;
    bt_transf: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    cxGrid1DBTableView1COD_PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1QTDE: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1IMPRESSO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    frComanda: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxProdutos: TfrxDBDataset;
    qrImpressoras: TUniQuery;
    qrImpressorasID: TIntegerField;
    qrImpressorasDESCRICAO: TStringField;
    qrImpressorasPORTA: TStringField;
    qrProdutos: TUniQuery;
    frxFilial: TfrxDBDataset;
    qrConsumoCODIGO: TIntegerField;
    qrConsumoDATA: TDateField;
    qrConsumoHORA: TStringField;
    qrConsumoCOD_FUNCIONARIO: TStringField;
    qrConsumoNOME: TStringField;
    qrConsumoCOD_PRODUTO: TStringField;
    qrConsumoPRODUTO: TStringField;
    qrConsumoQTDE: TFloatField;
    qrConsumoUNITARIO: TFloatField;
    qrConsumoTOTAL: TFloatField;
    qrConsumoIMPRESSO: TStringField;
    qrConsumoTRANSF_MESA: TIntegerField;
    qrConsumoCOMPLEMENTO: TStringField;
    qrConsumoEXTRA: TBlobField;
    qrProdutosCODIGO: TStringField;
    qrProdutosDATA: TDateField;
    qrProdutosHORA: TStringField;
    qrProdutosPERGUNTOU_COMISSAO: TStringField;
    qrProdutosCLIENTE_AUTORIZOU: TStringField;
    qrProdutosCOD_FUNCIONARIO: TStringField;
    qrProdutosNOME: TStringField;
    qrProdutosCOD_PRODUTO: TStringField;
    qrProdutosPRODUTO: TStringField;
    qrProdutosQTDE: TFloatField;
    qrProdutosUNITARIO: TFloatField;
    qrProdutosTOTAL: TFloatField;
    qrProdutosIMPRESSO: TStringField;
    qrProdutosTRANSF_MESA: TIntegerField;
    qrProdutosCOMPLEMENTO: TStringField;
    qrProdutosEXTRA: TBlobField;
    qrLanca: TUniQuery;
    qrLancaCODIGO: TIntegerField;
    qrLancaCOD_MESA: TIntegerField;
    qrLancaCOD_PRODUTO: TStringField;
    qrLancaQTDE: TFloatField;
    qrLancaUNITARIO: TFloatField;
    qrLancaTOTAL: TFloatField;
    qrLancaCOMPLEMENTO: TStringField;
    qrLancaTRANSF_MESA: TIntegerField;
    qrLancaCANCELADO: TIntegerField;
    qrLancaATIVA: TStringField;
    qrLancaIMPRESSO: TStringField;
    qrLancaEXTRA: TBlobField;
    qrCodLanca: TUniQuery;
    qrCodLancaCODIGO: TLargeintField;
    ImageList1: TImageList;
    ed_Acrescimo: TRzNumericEdit;
    AdvSmoothExpanderPanel2: TAdvSmoothExpanderPanel;
    qrConsumoACRESCIMO: TFloatField;
    qrLancaACRESCIMO: TFloatField;
    qrLancaProdutos: TUniQuery;
    qrLancaProdutosCODIGO: TIntegerField;
    qrLancaProdutosCODPRO: TStringField;
    qrLancaProdutosQTDE: TFloatField;
    procedure ed_produto_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeExit(Sender: TObject);
    procedure ed_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure bt_transfClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Movimentacao:Boolean;
    strExtra:tRetExtra;
    strPizza:tretPizza;
    procedure GravaConsumo;
  public
    { Public declarations }
  end;

var
  frmConsumo: TfrmConsumo;
  resultado_pesquisa: string;

implementation

uses
  Modulo, loc_produto, balanca, principal,
  Winapi.WinSpool, System.Math;

{$R *.dfm}

procedure TfrmConsumo.AdvGlowButton1Click(Sender: TObject);
begin
  frmBalanca := tfrmBalanca.create(self);
  frmBalanca.showmodal;
  ed_qtdeExit(frmPrincipal);
  GravaConsumo;
end;

procedure TfrmConsumo.AdvGlowButton2Click(Sender: TObject);
begin
  ed_unitario.Value := ed_unitario.Value - strExtra.valor;
  strExtra := RetornaAdcional(ed_produto_codigo.Text);
  if strExtra.valor > 0 then begin
    ed_Acrescimo.Value := strExtra.valor;
    ed_unitario.Value := ed_unitario.Value + strExtra.valor;
    ed_total.value := ed_qtde.value * ed_unitario.value;
  end;
  ed_qtde.SetFocus;
end;

procedure TfrmConsumo.AdvMetroButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsumo.bt_transfClick(Sender: TObject);
var
  imp:string;
  procedure SetDefaultPrinter(PrinterName: string);
  var
    I: Integer;
    Device: PChar;
    Driver: Pchar;
    Port: Pchar;
    HdeviceMode: Thandle;
    aPrinter: TPrinter;
  begin
    Printer.PrinterIndex := -1;
    getmem(Device, 255);
    getmem(Driver, 255);
    getmem(Port, 255);
    aPrinter := TPrinter.create;
    for I := 0 to Printer.printers.Count - 1 do
    begin
      if Printer.printers[i] = PrinterName then
      begin
        aprinter.printerindex := i;
        aPrinter.getprinter
          (device, driver, port, HdeviceMode);
        StrCat(Device, ',');
        StrCat(Device, Driver);
        StrCat(Device, Port);
        WriteProfileString('windows', 'device', Device);
        StrCopy(Device, 'windows');
        SendMessage(HWND_BROADCAST, WM_WININICHANGE,
          0, Longint(@Device));
      end;
    end;
    Freemem(Device, 255);
    Freemem(Driver, 255);
    Freemem(Port, 255);
    aPrinter.Free;
  end;
  Function GetDefaultPrinterName : string;
  begin
    if(Printer.PrinterIndex > 0)then begin
      Result := Printer.Printers[Printer.PrinterIndex];
    end else begin
      Result := '';
    end;
  end;

begin
{  qrImpressoras.Close;
  qrImpressoras.Params.Items[0].Value := StrToInt(lb_mesa.Caption);
  qrImpressoras.Open;
  while not qrImpressoras.Eof do begin
    qrProdutos.Close;
    qrProdutos.ParamByName('mesa').Value := StrToInt(lb_mesa.Caption);
    qrProdutos.ParamByName('idimp').Value := qrImpressorasID.AsInteger;
    qrProdutos.Open;
    SetDefaultPrinter(qrImpressorasPORTA.AsString);

    frComanda.PrintOptions.ShowDialog := False;
    frComanda.PrintOptions.Printer := GetDefaultPrinterName;
    frComanda.PrepareReport;
    frComanda.Print;
    qrImpressoras.Next;
  end;}
  if Movimentacao then begin
    qrLanca.ApplyUpdates;
    qrLancaProdutos.ApplyUpdates;
  end;
  Movimentacao := False;
  Close;
end;

procedure TfrmConsumo.ed_produto_codigoKeyPress(Sender: TObject; var Key: Char);
var
  iloc: Integer;
  i: Integer;
  s: string;
begin
  if Key = #13 then begin
    if ed_produto_codigo.Text <> '' then begin
      iloc := 1;
      // localizar por codigo
      s := ed_produto_codigo.Text;
      while Length(s) < 6 do
        s := '0' + s;
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000025 where codigo = ''' + s + '''');
      query.open;
      if query.RecordCount = 0 then begin
        // codigo de barras
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000025 where codbarra = ''' +
          ed_produto_codigo.Text + '''');
        query.open;
        if query.RecordCount = 0 then begin
          query.close;
          query.sql.clear;
          query.sql.add('select * from c000025 where upper(produto) like ''' + ansiuppercase(ed_produto_codigo.Text) + '%''');
          query.open;
          if query.RecordCount > 1 then
            iloc := 0;
        end else
          iloc := 2;
      end;
      if query.RecordCount = 0 then begin
        application.messagebox('Produto não encontrado!', 'Erro', mb_ok + mb_iconerror);
        ed_produto_codigo.Text := '';
        ed_produto_nome.Text := '';
        ed_qtde.value := 0.00;
        ed_unitario.value := 0.00;
        ed_total.value := 0.00;
        ed_Acrescimo.value := 0.00;
        ed_unidade.Text := 'UN';
        ed_produto_codigo.setfocus;
        exit;
      end else begin
        if query.RecordCount = 1 then begin
          ed_produto_codigo.Text := query.fieldbyname('codigo').asstring;
          ed_produto_nome.Text := query.fieldbyname('produto').asstring;
          ed_qtde.value := 1;
          ed_unitario.value := query.fieldbyname('precovenda').asfloat;
          ed_total.value := query.fieldbyname('precovenda').asfloat;
          ed_unidade.Text := query.fieldbyname('unidade').asstring;
          if query.fieldbyname('pizza').asstring = 'S' then begin
            strPizza := Pizza(query.fieldbyname('produto').asstring,query.fieldbyname('precovenda').asfloat);
            if strPizza.Sabores <> '' then begin
              ed_unitario.Value := strPizza.Valor;
              ed_total.value := strPizza.Valor;
              ed_qtdeExit(ed_qtde);
              GravaConsumo;
            end;
          end else
          ed_qtde.setfocus;
        end else begin
          // localizar
          resultado_pesquisa := '';
          frmLoc_produto := tfrmLoc_produto.create(self);
          frmLoc_produto.cb_loc.ItemIndex := iloc;
          frmLoc_produto.grid.ClearRows;
          query.first;
          while not query.eof do begin
            i := frmLoc_produto.grid.AddRow(1);
            frmLoc_produto.grid.Cell[0, i].asstring := query.fieldbyname('codigo').asstring;
            frmLoc_produto.grid.Cell[1, i].asstring := query.fieldbyname('codbarra').asstring;
            frmLoc_produto.grid.Cell[2, i].asstring := query.fieldbyname('produto').asstring;
            frmLoc_produto.grid.Cell[3, i].asstring := query.fieldbyname('unidade').asstring;
            frmLoc_produto.grid.Cell[4, i].asfloat :=  query.fieldbyname('precovenda').asfloat;
            query.next;
          end;
          frmLoc_produto.showmodal;
          if resultado_pesquisa <> '' then begin
            ed_produto_codigo.Text := resultado_pesquisa;
            query.close;
            query.sql.clear;
            query.sql.add('select * from c000025 where codigo = ''' + ed_produto_codigo.Text + '''');
            query.open;
            ed_produto_nome.Text := query.fieldbyname('produto').asstring;
            ed_qtde.value := 1;
            ed_unitario.value := query.fieldbyname('precovenda').asfloat;
            ed_total.value := query.fieldbyname('precovenda').asfloat;
            ed_unidade.Text := query.fieldbyname('unidade').asstring;
            ed_qtde.setfocus;
          end else begin
            ed_produto_codigo.Text := '';
            ed_produto_nome.Text := '';
            ed_qtde.value := 0.00;
            ed_unitario.value := 0.00;
            ed_total.value := 0.00;
            ed_Acrescimo.Value := 0.00;
            ed_unidade.Text := 'UN';
            ed_produto_codigo.setfocus;
          end;
        end;
      end;
    end else begin
      // localizar
      resultado_pesquisa := '';
      frmLoc_produto := tfrmLoc_produto.create(self);
      frmLoc_produto.grid.ClearRows;
      frmLoc_produto.showmodal;
      if resultado_pesquisa <> '' then begin
        ed_produto_codigo.Text := resultado_pesquisa;
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000025 where codigo = ''' + ed_produto_codigo.Text + '''');
        query.open;
        ed_produto_nome.Text := query.fieldbyname('produto').asstring;
        ed_qtde.value := 1;
        ed_unitario.value := query.fieldbyname('precovenda').asfloat;
        ed_total.value := query.fieldbyname('precovenda').asfloat;
        ed_unidade.Text := query.fieldbyname('unidade').asstring;
        //gp_qtde.Enabled := true;
        ed_qtde.setfocus;
      end else begin
        ed_produto_codigo.Text := '';
        ed_produto_nome.Text := '';
        ed_qtde.value := 0.00;
        ed_unitario.value := 0.00;
        ed_total.value := 0.00;
        ed_Acrescimo.Value := 0.00;
        ed_unidade.Text := 'UN';
        ed_produto_codigo.setfocus;
      end;
    end;
  end;
end;

procedure TfrmConsumo.ed_qtdeExit(Sender: TObject);
begin
  ed_total.value := ed_qtde.value * (ed_unitario.value + ed_Acrescimo.Value);
end;

procedure TfrmConsumo.ed_qtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    ed_qtdeExit(ed_qtde);
    GravaConsumo;
  end;
end;

procedure TfrmConsumo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Movimentacao then begin
    if Application.MessageBox('Existe lançamento de consumação não finalizados se contiar eles serão descartados!, deseja continuar?','Atenção!',MB_ICONQUESTION+MB_YESNO) <> mrYes then begin
      CanClose := False;
    end;
  end;
end;

procedure TfrmConsumo.FormShow(Sender: TObject);
begin
  qrLancaProdutos.Close;
  qrLancaProdutos.Open;
  Movimentacao := False;
  qrLanca.Close;
  qrLanca.Open;
  qrConsumo.Close;
  qrConsumo.ParamByName('mesa').AsInteger := strtoint(lb_mesa.Caption);
  qrConsumo.Open;
  qrConsumo.First;
  ed_produto_codigo.SetFocus;
end;

procedure TfrmConsumo.GravaConsumo;
var
  i:Integer;
  Resto, Qtde:Double;
begin
  if ed_produto_codigo.Text = '' then begin
    ed_produto_codigo.SetFocus;
    exit;
  end;
  if ed_qtde.value <= 0 then begin
    ed_qtde.SetFocus;
    exit;
  end;
  if Application.MessageBox('Lançar esta consumação na mesa?','Atenção!',MB_ICONQUESTION+MB_YESNO) <> mrYes then
    Exit;
  qrCodLanca.Close;
  qrCodLanca.Open;

  // lancar no banco de dados
  qrLanca.Insert;
  qrLancaCODIGO.AsInteger := qrCodLancaCODIGO.AsInteger;
  qrLancaCOD_MESA.AsInteger := strtoint(lb_mesa.Caption);
  qrLancaQTDE.AsFloat := ed_qtde.value;
  if strPizza.ProdutoPrincipal.Valor > 0 then begin
    qrLancaCOD_PRODUTO.AsString := strPizza.ProdutoPrincipal.Codigo;
    qrLancaUNITARIO.AsFloat := strPizza.ProdutoPrincipal.Valor;
    qrLancaTOTAL.AsFloat := strPizza.ProdutoPrincipal.Valor;
  end else begin
    qrLancaCOD_PRODUTO.AsString := ed_produto_codigo.Text;
    qrLancaUNITARIO.AsFloat := ed_unitario.value;
    qrLancaTOTAL.AsFloat := ed_total.value;
  end;
  qrLancaCANCELADO.AsInteger := 0;
  qrLancaIMPRESSO.AsString := 'N';
  if strPizza.Valor > 0 then begin
    qrLancaEXTRA.AsString := strPizza.Sabores;
    qrLancaCOMPLEMENTO.AsString := strPizza.Pizza;
  end else begin
    qrLancaEXTRA.AsString := strExtra.Texto;
  end;
  qrLancaACRESCIMO.AsFloat := ed_Acrescimo.Value;
  qrLanca.Post;
  Movimentacao := True;
  ed_total_comanda.value := ed_total_comanda.value + ed_total.value;
  qrConsumo.Insert;
  qrConsumoCODIGO.AsInteger := qrCodLancaCODIGO.AsInteger;
  qrConsumoCOD_PRODUTO.AsString := ed_produto_codigo.Text;
  if strPizza.Pizza <> '' then begin
    qrConsumoPRODUTO.AsString := strPizza.Pizza;
    qrConsumoEXTRA.AsString := strPizza.Sabores;
  end else begin
    qrConsumoPRODUTO.AsString := ed_produto_nome.Text;
    qrConsumoEXTRA.AsString := strExtra.Texto;
  end;
  qrConsumoQTDE.AsFloat := ed_qtde.Value;
  qrConsumoUNITARIO.AsFloat := ed_unitario.Value;
  qrConsumoTOTAL.AsFloat := ed_total.Value;
  qrConsumoIMPRESSO.AsString := 'N';
  qrConsumoACRESCIMO.AsFloat := ed_Acrescimo.Value;
  qrConsumo.Post;
  if Length(strPizza.Produtos) > 0 then begin
    Qtde := RoundTo(1/Length(strPizza.Produtos),-2);
    Resto := RoundTo(1-(Qtde*Length(strPizza.Produtos)),-2);
    for I := 0 to Length(strPizza.Produtos) -1 do begin
      qrLancaProdutos.Append;
      qrLancaProdutosCODIGO.AsInteger := qrCodLancaCODIGO.AsInteger;
      qrLancaProdutosCODPRO.AsString := strPizza.Produtos[i];
      if (i = Length(strPizza.Produtos) -1) and (Resto > 0) then
        qrLancaProdutosQTDE.AsFloat := Qtde + Resto
      else
        qrLancaProdutosQTDE.AsFloat := Qtde;
      qrLancaProdutos.Post;
    end;
  end;
  ed_produto_codigo.Text := '';
  ed_produto_nome.Text := '';
  ed_qtde.value := 0;
  ed_unitario.value := 0;
  ed_total.value := 0;
  ed_Acrescimo.Value := 0;

  strPizza.Pizza := '';
  strPizza.Sabores := '';
  strPizza.Valor := 0;
  SetLength(strPizza.Produtos,0);
  strPizza.ProdutoPrincipal.Codigo := '';
  strPizza.ProdutoPrincipal.Valor := 0;

  ed_produto_codigo.setfocus;
end;

end.

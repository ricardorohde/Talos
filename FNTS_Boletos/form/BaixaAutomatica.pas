unit BaixaAutomatica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  Datasnap.DBClient, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, AdvMetroButton,
  Vcl.StdCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel, AdvGlowButton,
  Vcl.Buttons, Vcl.ExtCtrls, cxGridBandedTableView, cxGridDBBandedTableView,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmBaixaAutomatica = class(TForm)
    Panel1: TPanel;
    bimprimir1: TBitBtn;
    bremessa1: TBitBtn;
    bretorno1: TBitBtn;
    bgerar1: TBitBtn;
    BitBtn11: TBitBtn;
    bretorno: TAdvGlowButton;
    bemail: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label31: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    dsBaixa: TDataSource;
    cdsBaixa: TClientDataSet;
    cdsBaixaNOME: TWideStringField;
    cdsBaixaCODIGO: TWideStringField;
    cdsBaixaDATA_VENCIMENTO: TDateField;
    cdsBaixaNOSSONUMERO: TWideStringField;
    cdsBaixaVALOR_ORIGINAL: TFloatField;
    cdsBaixaDOCUMENTO: TWideStringField;
    cdsBaixaDATA_BAIXA: TDateField;
    cdsBaixaJUROS: TFloatField;
    cdsBaixaDESCOTO: TFloatField;
    cdsBaixaVALOR_PAGO: TFloatField;
    cdsBaixaSTATUS: TStringField;
    cdsBaixabaData: TDateField;
    cdsBaixabaJuros: TFloatField;
    cdsBaixabaDesconto: TFloatField;
    cdsBaixabaValor: TFloatField;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1NOME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATA_VENCIMENTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NOSSONUMERO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VALOR_ORIGINAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATA_BAIXA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1JUROS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DESCOTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VALOR_PAGO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STATUS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1baData: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1baJuros: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1baDesconto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1baValor: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cdsBaixabaixa_automatica: TStringField;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    SqlAux: TZQuery;
    cdsBaixaCODCLI: TStringField;
    cdsBaixaCODCONTACORRENTE: TStringField;
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure bemailClick(Sender: TObject);
    procedure bretornoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaixaAutomatica: TfrmBaixaAutomatica;

implementation

uses
  Uprincipal;

{$R *.dfm}

procedure TfrmBaixaAutomatica.AdvMetroButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBaixaAutomatica.bemailClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBaixaAutomatica.bretornoClick(Sender: TObject);
begin
  try
    try
      principal.conexao.StartTransaction;
      cdsBaixa.First;
      while not cdsBaixa.Eof do begin
        if (cdsBaixaSTATUS.AsString = 'BAIXAR') then begin
          //Baixa do contas a receber
          SqlAux.SQL.Clear;
          SqlAux.SQL.Add('update c000049 set');
          SqlAux.SQL.Add('data_pagamento = :pdata_pagamento,');
          SqlAux.SQL.Add('valor_pago = :pvalor_pago,');
          SqlAux.SQL.Add('valor_juros = :pvalor_juros,');
          SqlAux.SQL.Add('valor_desconto = :pvalor_desconto,');
          SqlAux.SQL.Add('situacao = 2,');
          SqlAux.SQL.Add('baixa_automatica = ''S''');
          SqlAux.SQL.Add('where codigo = :pcodigo');
          SqlAux.ParamByName('pdata_pagamento').AsDateTime := cdsBaixabaData.AsDateTime;
          SqlAux.ParamByName('pvalor_pago').AsFloat := cdsBaixabaValor.AsFloat;
          SqlAux.ParamByName('pvalor_juros').AsFloat := cdsBaixabaJuros.AsFloat;
          SqlAux.ParamByName('pvalor_desconto').AsFloat := cdsBaixabaDesconto.AsFloat;
          SqlAux.ParamByName('pcodigo').AsString := cdsBaixaCODIGO.AsString;


          //Movimento da conta bancarias
          SqlAux.ExecSQL;
          SqlAux.SQL.Clear;
          SqlAux.SQL.Add('insert into C000042 (CODIGO, CODCONTACORRENTE, DATA, HISTORICO, CODCONTA, VALOR, TIPO, DOCUMENTO)');
          SqlAux.SQL.Add('values (:CODIGO, :CODCONTACORRENTE, :DATA, :HISTORICO, :CODCONTA, :VALOR, :TIPO, :DOCUMENTO)');
          SqlAux.ParamByName('CODIGO').AsString := principal.codifica('000042');
          SqlAux.ParamByName('CODCONTACORRENTE').AsString := cdsBaixaCODCONTACORRENTE.AsString;
          SqlAux.ParamByName('DATA').AsDateTime := cdsBaixabaData.AsDateTime;
          SqlAux.ParamByName('HISTORICO').AsString := 'BX Aut Doc' + cdsBaixaDOCUMENTO.AsString + 'N.Num' + cdsBaixaNOSSONUMERO.AsString;
          principal.qrconfig.Open;
          SqlAux.ParamByName('CODCONTA').AsString := principal.qrconfig.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;
          SqlAux.ParamByName('VALOR').AsFloat := cdsBaixabaValor.AsFloat;
          SqlAux.ParamByName('TIPO').AsString := 'C';
          SqlAux.ParamByName('DOCUMENTO').AsString := cdsBaixaNOSSONUMERO.AsString;
          SqlAux.ExecSQL;

          SqlAux.SQL.Clear;
          SqlAux.SQL.Add('insert into c000050');
          SqlAux.SQL.Add('(codconta,data,valor_parcela,valor_juros,valor_desconto,valor_pago,boleto,codcliente,caixa_banco)');
          SqlAux.SQL.Add('values');
          SqlAux.SQL.Add('(:codconta,:data,:valor_parcela,:valor_juros,:valor_desconto,:valor_pago,:boleto,:codcliente,:caixa_banco)');
          SqlAux.params.parambyname('codconta').asstring := cdsBaixaCODCONTACORRENTE.AsString;
          SqlAux.params.parambyname('data').asdatetime := cdsBaixabaData.AsDateTime;
          SqlAux.params.parambyname('valor_parcela').ASfloat := cdsBaixaVALOR_ORIGINAL.AsFloat;
          SqlAux.params.parambyname('valor_juros').ASfloat := cdsBaixabaJuros.AsFloat;
          SqlAux.params.parambyname('valor_desconto').ASfloat := cdsBaixaDESCOTO.AsFloat;
          SqlAux.params.parambyname('valor_pago').ASfloat := cdsBaixabaValor.AsFloat;
          SqlAux.params.parambyname('boleto').ASfloat := cdsBaixabaValor.AsFloat;
          SqlAux.params.parambyname('CODCLIENTE').asstring := cdsBaixaCODCLI.AsString;;
          SqlAux.params.parambyname('CAIXA_BANCO').ASINTEGER := 2;
          SqlAux.execsql;
        end;
        cdsBaixa.Next;
      end;
      principal.conexao.Commit;
      Application.MessageBox('Processo Concluído!','Atenção!',MB_ICONINFORMATION);
      Close;
    except
      on E : Exception do begin
        principal.conexao.Rollback;
        Application.MessageBox(PWideChar('Erro ao executar a baixa automática!'+#13+e.Message),'Atenção!',MB_ICONERROR);
      end;
    end;
  finally

  end;
end;

end.

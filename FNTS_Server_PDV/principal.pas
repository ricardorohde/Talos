unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ImgList, RzTray, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  inifiles, DB, MemDS, DBAccess, Menus, pngimage, XPMan, sSkinManager, acPNG,
  PageView, AdvGlowButton, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, UniProvider, InterBaseUniProvider, Uni, System.ImageList,
  JPEG, Consts;

const
  OffsetMemoryStream: Int64 = 0;

type
  TfrmPrincipal = class(TForm)
    icone: TRzTrayIcon;
    ImageList1: TImageList;
    Panel2: TPanel;
    ImageList2: TImageList;
    Timer1: TTimer;
    Timer3: TTimer;
    PopupMenu1: TPopupMenu;
    Abrir1: TMenuItem;
    Fechar1: TMenuItem;
    s8servidor101: TMenuItem;
    N2: TMenuItem;
    Atualizaragora1: TMenuItem;
    pnTitulo: TPanel;
    xpmnfst1: TXPManifest;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    ed_server: TEdit;
    ed_server_database: TEdit;
    Label1: TLabel;
    barra: TProgressBar;
    Memo1: TMemo;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label17: TLabel;
    AdvMetroButton2: TAdvMetroButton;
    Panel1: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    N1: TMenuItem;
    conexao_servidor: TUniConnection;
    conexao_pdv: TUniConnection;
    qrpdv2: TUniQuery;
    qrCrediario: TUniQuery;
    qrMestre: TUniQuery;
    qrconfig: TUniQuery;
    qrcaixa_mov: TUniQuery;
    qrpdv3: TUniQuery;
    qrForma: TUniQuery;
    qrPDV_Tabela: TUniQuery;
    qrPDV: TUniQuery;
    qrServidor: TUniQuery;
    qrServidor_Tabela: TUniQuery;
    InterBaseUniProvider1: TInterBaseUniProvider;
    qrIBPT: TUniQuery;
    qrIBPTCODIGO: TStringField;
    qrIBPTEX: TStringField;
    qrIBPTTABELA: TIntegerField;
    qrIBPTALIQNAC: TFloatField;
    qrIBPTALIQIMP: TFloatField;
    qrIBPTNCM: TStringField;
    Image1: TImage;
    qrConfServer: TUniQuery;
    qrConfServerACRESCIMO_PRODUTO: TFloatField;
    qrConfServerDESCONTO_PRODUTO: TFloatField;
    qrbanco: TUniQuery;
    qrMovCartao: TUniQuery;
    pnlAviso: TPanel;
    grid: TNextGrid;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxImageColumn1: TNxImageColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    edInicia: TCheckBox;
    qrFormaCartao: TUniQuery;
    qrFormaCartaoCODIGO: TStringField;
    qrFormaCartaoCODIGO_CUPOM: TStringField;
    qrFormaCartaoBANCO: TStringField;
    qrFormaCartaoTIPO_CARTAO: TStringField;
    qrFormaCartaoPRESTACAO: TIntegerField;
    qrFormaCartaoVALOR: TFloatField;
    qrFormaCartaoVENCIMENTO: TDateField;
    qrFormaCartaoEX: TStringField;
    qrLimiteConvenio: TUniQuery;
    qrLimiteConvenioTOTAL_GERAL: TFloatField;
    qrItemSub: TUniQuery;
    qrItemSubCOD_PRODUTO: TStringField;
    qrItemSubQTDE: TFloatField;
    qrItemSubALIQUOTA: TFloatField;
    qrItemSubUNIDADE: TStringField;
    qrItemSubITEM: TIntegerField;
    qrItemSubCSOSN: TStringField;
    qrItemSubCLASSIFICACAO_FISCAL: TStringField;
    qrItemSubBASE_SUB: TFloatField;
    qrItemSubICMS_SUB: TFloatField;
    qrItemSubISENTAS_ICMS: TFloatField;
    qrItemSubOUTRAS_ICMS: TFloatField;
    qrItemSubCFOP: TStringField;
    qrItemSubVALOR_DESCONTO: TFloatField;
    qrItemSubVALOR_ACRESCIMO: TFloatField;
    qrItemSubVALOR_UNITARIO: TFloatField;
    qrItemSubVALOR_TOTAL: TFloatField;
    qrItemSubCST: TStringField;
    NxCheckBoxColumn3: TNxCheckBoxColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer3Timer(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure iconeLButtonDblClick(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edIniciaClick(Sender: TObject);
    procedure conexao_servidorError(Sender: TObject; E: EDAError; var Fail: Boolean);
    procedure conexao_pdvError(Sender: TObject; E: EDAError; var Fail: Boolean);
  private
    { Private declarations }
    function Cript(Action, Src: string): string;
    function codifica(tabela: string; qtde_digitos: integer): string;
    function Zerar(texto: string; qtde: integer): string; // Acrescentar Zeros a esquerda em uma String
    function verifica_conexao(tipo: string; server: string; base: string): boolean;
    function verifica_crediario(cod_cliente: string): Real;
    procedure AdicionarCaixas;
    procedure AdicionarUsuarios;
    procedure AdicionarVendedores;

    // atualizacao das estacoes para o servidor
  public
    { Public declarations }
    caixa: string;
    function Arredondar(Value: Extended; Decimals: integer): Extended;
  end;

var
  frmPrincipal: TfrmPrincipal;
  sDir_sistema: string;
  H: THandle;
  fechar: boolean;

const
  StRecDinheiro = 'DINHEIRO';
  StRecConvenio = 'CONVENIO';
  StRecCrediario = 'CARTEIRA';
  StRecCartaoCR = 'CARTAO CREDITO';
  StRecCartaoDE = 'CARTAO DEBITO';
  StRecCheque = 'CHEQUE';
  StRecTEF = 'TEF';

implementation

uses
  Math, md52, System.Win.Registry;

{$R *.dfm}

// -------------------------------------------------------------------------- //

function tfrmprincipal.Cript(Action, Src: string): string;
label
  Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: string;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Src = '') then begin
    Result := '';
    goto Fim;
  end;

  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
//  Key := 'YUQL%%$#%3DF#0WI5E$JA$46#NM@XXL6JAOAUW%$#@0AOMM4$4VZYW&&HJUI23@7E%#@!DF34#4SKL K3LA@DJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;

  if (Action = UpperCase('C')) then begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      SrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  else if (Action = UpperCase('D')) then begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      if (KeyPos < KeyLen) then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:

end;


// -------------------------------------------------------------------------- //

function TfrmPrincipal.codifica(tabela: string; qtde_digitos: integer): string;
begin
  qrmestre.close;
  qrmestre.sql.Clear;
  qrmestre.sql.add('select * from c000000 where codigo = ''' + tabela + '''');
  qrMestre.Open;
  if qrmestre.RecNo = 1 then begin
    if qrmestre.FieldByName('sequencia').asinteger < 1 then begin
      result := '0000000001';
      qrMestre.Edit;
      qrMestre.fieldbyname('sequencia').asinteger := 2;
      qrMestre.Post;

    end
    else begin
      result := zerar(inttostr(qrMestre.fieldbyname('sequencia').asinteger), qtde_digitos);
      qrMestre.Edit;
      qrMestre.fieldbyname('sequencia').asinteger := qrMestre.fieldbyname('sequencia').asinteger + 1;
      qrMestre.Post;
    end;
  end
  else begin
    Memo1.Lines.Add('Erro - Tabela Mestre - Mensagem: N�o foi encontrado a entrada ' + tabela + ' na tabela de sequencia!');
  end;
end;

procedure TfrmPrincipal.conexao_pdvError(Sender: TObject; E: EDAError; var Fail: Boolean);
begin
  E.Message := '';
  Fail := False;
end;

procedure TfrmPrincipal.conexao_servidorError(Sender: TObject; E: EDAError; var Fail: Boolean);
begin
end;

// -------------------------------------------------------------------------- //

function Tfrmprincipal.verifica_crediario(cod_cliente: string): Real;
begin
  try
    qrCrediario.close;
    qrCrediario.SQL.clear;
    qrcrediario.sql.Add('select sum(valor_atual) as debito');
    qrCrediario.sql.Add('from c000049 where codcliente = ''' + cod_cliente + '''');
    qrcrediario.sql.Add('and situacao = 1');
    qrcrediario.open;

    Result := qrCrediario.fieldbyname('debito').asfloat;
  except
    on E: Exception do begin
      Result := 0;
      memo1.lines.add('ERRO CREDIARIO - Mensagem: ' + E.message);
    end;
  end;
end;

// -------------------------------------------------------------------------- //

function Tfrmprincipal.Zerar(texto: string; qtde: integer): string;
begin
  while length(texto) < qtde do
    texto := '0' + texto;
  result := texto;
end;

// -------------------------------------------------------------------------- //

function Tfrmprincipal.verifica_conexao(tipo: string; server: string; base: string): boolean;
begin
  if tipo = 'SERVIDOR' then begin
    try
      conexao_servidor.Disconnect;
      conexao_servidor.Server := server;
      conexao_servidor.Database := base;
      conexao_servidor.Connect;
      Result := true;
    except
      Result := false;
    end;
  end
  else begin
    try
      conexao_PDV.Disconnect;
      conexao_PDV.Server := server;
      conexao_PDV.Database := base;
      conexao_PDV.Connect;
      Result := true;
    except
      Result := false;
    end;
  end;
end;

//Testes 104 e 105 do PAF-ECF- Estoque e Produtos

procedure Monta_LinhaMD5_Mercadorias;
var
  sLinhaMD5: string;
  sMD5: string;
begin
  sLinhaMD5 := '';
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
var
  I, x, y, iprest: INTEGER;
  scst: string;
  bflag: boolean;
  scod_cupom: string;
  scod_venda: string;
  bachou: boolean;
  sVendaCancelar: string;
  //situacao caixa

  rpercentual: Real;
  SCOD_REDUCAO: string;
  MemoryStream: TMemoryStream;
  Jpg: TJpegImage;
  Bitmap: TBitmap;
  itotal_parcela: Integer;
  valorparcela, restante: Double;
  Prestacao, Resto: Double;

  //considera estoque
  bConsideraEstoque: Boolean;
begin
  try
    Timer1.Enabled := false;
    if conexao_servidor.Connected then begin
      try

        Screen.Cursor := crAppStart;
        pnlAviso.Left := 2;
        pnlAviso.Width := 450;
        pnlAviso.Visible := True;
        pnlAviso.Repaint;

        memo1.lines.add('Iniciando processo de atualiza��o em ' + DateToStr(date) + ' as ' + timetostr(time));

        for I := 0 to grid.RowCount - 1 do begin
          if grid.Cell[4, I].AsBoolean then begin
            if verifica_conexao('PDV', grid.CELL[1, I].ASSTRING, GRID.CELL[2, I].ASSTRING) then begin
              grid.CELL[3, I].AsInteger := 0;
               // E S T A C A O   PARA   S E R V I D O R

               // ------------- V E N D A S -------------------//

              qrconfig.close;
              qrconfig.sql.clear;
              qrconfig.sql.add('select * from config');
              qrconfig.open;
              qrpdv.close;
              qrpdv.sql.clear;
              qrpdv.sql.add('select FECHAMENTO_CEGO from ADM where codigo = '+qrconfig.FieldByName('numcaixa').AsString);
              qrpdv.open;


              //informar situacao caixa no retaguarda
              if qrpdv.FieldByName('FECHAMENTO_CEGO').AsString <> 'S' then begin
                qrServidor.Close;
                qrServidor.SQL.Clear;
                qrServidor.SQL.Add('update C000045 set situacao = :situacao, data = :data where codigo = :codigo'); //
                qrServidor.ParamByName('codigo').AsString := zerar(qrconfig.FieldByName('numcaixa').AsString, 6);
                if qrconfig.FieldByName('CAIXA_SITUACAO').AsString = 'FECHADO' then
                  qrServidor.ParamByName('situacao').AsInteger := 2;
                if qrconfig.FieldByName('CAIXA_SITUACAO').AsString = 'ABERTO' then
                  qrServidor.ParamByName('situacao').AsInteger := 1;
                qrServidor.ParamByName('data').AsDate := qrconfig.FieldByName('CAIXA_DATA_MOVTO').AsDateTime;
                qrServidor.ExecSQL;
              end else begin
                if qrconfig.FieldByName('CAIXA_SITUACAO').AsString = 'ABERTO' then begin
                  qrServidor.Close;
                  qrServidor.SQL.Clear;
                  qrServidor.SQL.Add('update C000045 set situacao = :situacao, data = :data where codigo = :codigo'); //
                  qrServidor.ParamByName('codigo').AsString := zerar(qrconfig.FieldByName('numcaixa').AsString, 6);
                  qrServidor.ParamByName('situacao').AsInteger := 1;
                  qrServidor.ParamByName('data').AsDate := qrconfig.FieldByName('CAIXA_DATA_MOVTO').AsDateTime;
                  qrServidor.ExecSQL;
                end;
              end;

              //final caixa

              //---------------subir os cancelamentos--------------


              qrPDV.Close;
              qrPDV.SQL.Clear;
              qrPDV.SQL.Add('select * from cupom_aberto_cancelado where exportado = 0');     //cupons que foram abertos e cancelados
              try
                 qrPDV.Open;
              except
              on E: Exception do
              ShowMessage(('Erro  ' + E.Message));

              end;

              qrPDV.First;
              while not qrPDV.Eof do begin
                    qrServidor.Close;
                    qrServidor.SQL.Clear;
                    qrServidor.SQL.Add('insert into C000048_CANCELADOS (CODIGO, COD_CUPOM, OPERADOR, DATA, HORA, PDV, ITEM, COD_PRODUTO, UNIDADE, QTDE, VALOR_UNITARIO, VALOR_SUBTOTAL, VALOR_DESCONTO, VALOR_ACRESCIMO, VALOR_TOTAL, CANCELADO,COMPLEMENTO');
                    qrServidor.SQL.Add(') values (');
                    qrServidor.SQL.Add(':CODIGO, :COD_CUPOM, :OPERADOR, :DATA, :HORA, :PDV, :ITEM, :COD_PRODUTO, :UNIDADE, :QTDE, :VALOR_UNITARIO, :VALOR_SUBTOTAL, :VALOR_DESCONTO, :VALOR_ACRESCIMO, :VALOR_TOTAL, :CANCELADO, :COMPLEMENTO');
                    qrServidor.SQL.Add(')');
                    qrServidor.Params.ParamByName('CODIGO').AsString := qrpdv.FieldByName('ECF').AsString + qrpdv.FieldByName('NUMERO').AsString;
                    qrServidor.Params.ParamByName('COD_CUPOM').AsString := qrpdv.FieldByName('CCF').AsString;
                    qrServidor.Params.ParamByName('OPERADOR').AsFloat := qrpdv.FieldByName('ECF').AsFloat;
                    qrServidor.Params.ParamByName('DATA').AsDateTime := qrpdv.FieldByName('DATA').AsDateTime;
                    qrServidor.Params.ParamByName('HORA').AsDateTime := qrpdv.FieldByName('HORA').AsDateTime;
                    qrServidor.Params.ParamByName('PDV').AsString := qrpdv.FieldByName('ECF').AsString;
                    qrServidor.Params.ParamByName('ITEM').AsString := '0';
                    qrServidor.Params.ParamByName('COD_PRODUTO').AsInteger := 0;
                    qrServidor.Params.ParamByName('UNIDADE').AsFloat := 0;
                    qrServidor.Params.ParamByName('QTDE').AsString := '0';
                    qrServidor.Params.ParamByName('VALOR_UNITARIO').AsString := '0';
                    qrServidor.Params.ParamByName('VALOR_SUBTOTAL').AsString := '0';
                    qrServidor.Params.ParamByName('VALOR_DESCONTO').AsString := '0';
                    qrServidor.Params.ParamByName('VALOR_ACRESCIMO').AsString := '0';
                    qrServidor.Params.ParamByName('VALOR_TOTAL').AsString := qrpdv.FieldByName('TOTALIZADO').AsString;
                    qrServidor.Params.ParamByName('CANCELADO').AsString := qrpdv.FieldByName('EXPORTADO').AsString;
                    qrServidor.Params.ParamByName('COMPLEMENTO').AsString := 'CUPOM ABERTO E CANCELADO';
                    qrServidor.ExecSQL;
                    qrPDV_Tabela.close;
                    qrPDV_Tabela.SQL.clear;
                    qrPDV_Tabela.sql.Add('update CUPOM_ABERTO_CANCELADO set EXPORTADO = 1 where NUMERO = ' + qrpdv.fieldbyname('NUMERO').asstring + ' AND ECF = ' +qrPDV.FieldByName('ECF').AsString);
                    qrPDV_Tabela.ExecSQL;
                    qrpdv.Next;
              end;
              //--------cancelamento de itens-------------------
              qrPDV.Close;
              qrPDV.SQL.Clear;
              qrPDV.SQL.Add('select * from cupom_item_cancelado where exportado = 0');     //Itens dos cupons
              try
                 qrPDV.Open;
              except
              on E: Exception do
              ShowMessage(('Erro  ' + E.Message));

              end;

              qrPDV.First;
              while not qrPDV.Eof do begin
                    qrServidor.Close;
                    qrServidor.SQL.Clear;
                    qrServidor.SQL.Add('insert into C000048_CANCELADOS (CODIGO, COD_CUPOM, OPERADOR, DATA, HORA, PDV, ITEM, COD_PRODUTO, UNIDADE, QTDE, VALOR_UNITARIO, VALOR_SUBTOTAL, VALOR_DESCONTO, VALOR_ACRESCIMO, VALOR_TOTAL, CANCELADO,COMPLEMENTO');
                    qrServidor.SQL.Add(') values (');
                    qrServidor.SQL.Add(':CODIGO, :COD_CUPOM, :OPERADOR, :DATA, :HORA, :PDV, :ITEM, :COD_PRODUTO, :UNIDADE, :QTDE, :VALOR_UNITARIO, :VALOR_SUBTOTAL, :VALOR_DESCONTO, :VALOR_ACRESCIMO, :VALOR_TOTAL, :CANCELADO, :COMPLEMENTO');
                    qrServidor.SQL.Add(')');
                    qrServidor.Params.ParamByName('CODIGO').AsString := qrpdv.FieldByName('CODIGO').AsString;
                    qrServidor.Params.ParamByName('COD_CUPOM').AsString := qrpdv.FieldByName('COD_CUPOM').AsString;
                    qrServidor.Params.ParamByName('OPERADOR').AsFloat := qrpdv.FieldByName('OPERADOR').AsFloat;
                    qrServidor.Params.ParamByName('DATA').AsDateTime := qrpdv.FieldByName('DATA').AsDateTime;
                    qrServidor.Params.ParamByName('HORA').AsDateTime := qrpdv.FieldByName('HORA').AsDateTime;
                    qrServidor.Params.ParamByName('PDV').AsString := qrpdv.FieldByName('PDV').AsString;
                    qrServidor.Params.ParamByName('ITEM').AsInteger := qrpdv.FieldByName('ITEM').AsInteger;
                    qrServidor.Params.ParamByName('COD_PRODUTO').AsInteger := qrpdv.FieldByName('COD_PRODUTO').AsInteger;
                    qrServidor.Params.ParamByName('UNIDADE').AsString := qrpdv.FieldByName('UNIDADE').AsString;
                    qrServidor.Params.ParamByName('QTDE').AsFloat := qrpdv.FieldByName('QTDE').AsFloat;
                    qrServidor.Params.ParamByName('VALOR_UNITARIO').AsFloat := qrpdv.FieldByName('VALOR_UNITARIO').AsFloat;
                    qrServidor.Params.ParamByName('VALOR_SUBTOTAL').AsFloat := qrpdv.FieldByName('VALOR_SUBTOTAL').AsFloat;
                    qrServidor.Params.ParamByName('VALOR_DESCONTO').AsFloat := qrpdv.FieldByName('VALOR_DESCONTO').AsFloat;
                    qrServidor.Params.ParamByName('VALOR_ACRESCIMO').AsFloat := qrpdv.FieldByName('VALOR_ACRESCIMO').AsFloat;
                    qrServidor.Params.ParamByName('VALOR_TOTAL').AsFloat := qrpdv.FieldByName('VALOR_TOTAL').AsFloat;
                    qrServidor.Params.ParamByName('CANCELADO').AsInteger := qrpdv.FieldByName('CANCELADO').AsInteger;
                    qrServidor.Params.ParamByName('COMPLEMENTO').AsString := 'ITEM CANCELADO';

                    qrServidor.ExecSQL;
                    qrPDV_Tabela.close;
                    qrPDV_Tabela.SQL.clear;
                    qrPDV_Tabela.sql.Add('update CUPOM_ITEM_CANCELADO set EXPORTADO = 1 where CODIGO = ' + qrpdv.fieldbyname('codigo').AsString);
                    qrPDV_Tabela.ExecSQL;
                    qrpdv.Next;
              end;

              qrpdv.close;
              qrpdv.sql.clear;
              qrpdv.sql.add('select * from nfce where ex = 0');
              qrpdv.open;
              qrpdv.first;
              while not qrpdv.eof do begin
                if qrpdv.FieldByName('alterado').AsString = 'S' then begin
                  qrServidor.Close;
                  qrServidor.SQL.Clear;
                  qrServidor.SQL.Add('select count(*) qtd from nfce where chave = ' + QuotedStr(qrpdv.FieldByName('CHAVE').AsString));
                  qrServidor.Open;
                  if qrServidor.FieldByName('qtd').AsInteger = 0 then begin
                    qrServidor.SQL.Clear;
                    qrServidor.SQL.Add('insert into NFCE (NUMERO, DATA, TOTAL, CLIENTE, CHAVE, SITUACAO, TROCO, HORA, CONTINGENCIA, ENVIADOCONTINGENCIA, MOTIVOCONTIGENCIA, XMLENVIO, XMLCACNELAMENTO, cupom');
                    qrServidor.SQL.Add(') values (');
                    qrServidor.SQL.Add(':NUMERO, :DATA, :TOTAL, :CLIENTE, :CHAVE, :SITUACAO, :TROCO, :HORA, :CONTINGENCIA, :ENVIADOCONTINGENCIA, :MOTIVOCONTIGENCIA, :XMLENVIO, :XMLCACNELAMENTO, :cupom');
                    qrServidor.SQL.Add(')');
                    qrServidor.Params.ParamByName('NUMERO').AsInteger := qrpdv.FieldByName('NUMERO').AsInteger;
                    qrServidor.Params.ParamByName('DATA').AsDateTime := qrpdv.FieldByName('DATA').AsDateTime;
                    qrServidor.Params.ParamByName('TOTAL').AsFloat := qrpdv.FieldByName('TOTAL').AsFloat;
                    qrServidor.Params.ParamByName('CLIENTE').AsString := qrpdv.FieldByName('CLIENTE').AsString;
                    qrServidor.Params.ParamByName('CHAVE').AsString := qrpdv.FieldByName('CHAVE').AsString;
                    qrServidor.Params.ParamByName('SITUACAO').AsInteger := qrpdv.FieldByName('SITUACAO').AsInteger;
                    qrServidor.Params.ParamByName('TROCO').AsFloat := qrpdv.FieldByName('TROCO').AsFloat;
                    qrServidor.Params.ParamByName('HORA').AsString := qrpdv.FieldByName('HORA').AsString;
                    qrServidor.Params.ParamByName('CONTINGENCIA').AsString := qrpdv.FieldByName('CONTINGENCIA').AsString;
                    qrServidor.Params.ParamByName('ENVIADOCONTINGENCIA').AsString := qrpdv.FieldByName('ENVIADOCONTINGENCIA').AsString;
                    qrServidor.Params.ParamByName('MOTIVOCONTIGENCIA').AsString := qrpdv.FieldByName('MOTIVOCONTIGENCIA').AsString;
                    qrServidor.Params.ParamByName('XMLENVIO').AsMemo := qrpdv.FieldByName('XMLENVIO').AsString;
                    qrServidor.Params.ParamByName('XMLCACNELAMENTO').AsMemo := qrpdv.FieldByName('XMLCACNELAMENTO').AsString;
                    qrServidor.Params.ParamByName('cupom').AsString := qrpdv.FieldByName('cupom').AsString;
                    qrServidor.ExecSQL;
                  end
                  else begin
                    qrServidor.SQL.Clear;
                    qrServidor.SQL.Add('update NFCE');
                    qrServidor.SQL.Add('set SITUACAO = :SITUACAO,');
                    qrServidor.SQL.Add('    CONTINGENCIA = :CONTINGENCIA,');
                    qrServidor.SQL.Add('    ENVIADOCONTINGENCIA = :ENVIADOCONTINGENCIA,');
                    qrServidor.SQL.Add('    MOTIVOCONTIGENCIA = :MOTIVOCONTIGENCIA,');
                    qrServidor.SQL.Add('    XMLCACNELAMENTO = :XMLCACNELAMENTO');
                    qrServidor.SQL.Add('where (CHAVE = :CHAVE)');
                    qrServidor.Params.ParamByName('SITUACAO').AsInteger := qrpdv.FieldByName('SITUACAO').AsInteger;
                    qrServidor.Params.ParamByName('CONTINGENCIA').AsString := qrpdv.FieldByName('CONTINGENCIA').AsString;
                    qrServidor.Params.ParamByName('ENVIADOCONTINGENCIA').AsString := qrpdv.FieldByName('ENVIADOCONTINGENCIA').AsString;
                    qrServidor.Params.ParamByName('MOTIVOCONTIGENCIA').AsString := qrpdv.FieldByName('MOTIVOCONTIGENCIA').AsString;
                    qrServidor.Params.ParamByName('XMLCACNELAMENTO').AsMemo := qrpdv.FieldByName('XMLCACNELAMENTO').AsString;
                    qrServidor.Params.ParamByName('CHAVE').AsString := qrpdv.FieldByName('CHAVE').AsString;
                    qrServidor.ExecSQL;
                  end;
                end
                else begin
                  qrServidor.SQL.Clear;
                  qrServidor.SQL.Add('insert into NFCE (NUMERO, DATA, TOTAL, CLIENTE, CHAVE, SITUACAO, TROCO, HORA, CONTINGENCIA, ENVIADOCONTINGENCIA, MOTIVOCONTIGENCIA, XMLENVIO, XMLCACNELAMENTO, cupom');
                  qrServidor.SQL.Add(') values (');
                  qrServidor.SQL.Add(':NUMERO, :DATA, :TOTAL, :CLIENTE, :CHAVE, :SITUACAO, :TROCO, :HORA, :CONTINGENCIA, :ENVIADOCONTINGENCIA, :MOTIVOCONTIGENCIA, :XMLENVIO, :XMLCACNELAMENTO, :cupom');
                  qrServidor.SQL.Add(')');
                  qrServidor.Params.ParamByName('NUMERO').AsInteger := qrpdv.FieldByName('NUMERO').AsInteger;
                  qrServidor.Params.ParamByName('DATA').AsDateTime := qrpdv.FieldByName('DATA').AsDateTime;
                  qrServidor.Params.ParamByName('TOTAL').AsFloat := qrpdv.FieldByName('TOTAL').AsFloat;
                  qrServidor.Params.ParamByName('CLIENTE').AsString := qrpdv.FieldByName('CLIENTE').AsString;
                  qrServidor.Params.ParamByName('CHAVE').AsString := qrpdv.FieldByName('CHAVE').AsString;
                  qrServidor.Params.ParamByName('SITUACAO').AsInteger := qrpdv.FieldByName('SITUACAO').AsInteger;
                  qrServidor.Params.ParamByName('TROCO').AsFloat := qrpdv.FieldByName('TROCO').AsFloat;
                  qrServidor.Params.ParamByName('HORA').AsString := qrpdv.FieldByName('HORA').AsString;
                  qrServidor.Params.ParamByName('CONTINGENCIA').AsString := qrpdv.FieldByName('CONTINGENCIA').AsString;
                  qrServidor.Params.ParamByName('ENVIADOCONTINGENCIA').AsString := qrpdv.FieldByName('ENVIADOCONTINGENCIA').AsString;
                  qrServidor.Params.ParamByName('MOTIVOCONTIGENCIA').AsString := qrpdv.FieldByName('MOTIVOCONTIGENCIA').AsString;
                  qrServidor.Params.ParamByName('XMLENVIO').AsMemo := qrpdv.FieldByName('XMLENVIO').AsString;
                  qrServidor.Params.ParamByName('XMLCACNELAMENTO').AsMemo := qrpdv.FieldByName('XMLCACNELAMENTO').AsString;
                  qrServidor.Params.ParamByName('cupom').AsString := qrpdv.FieldByName('cupom').AsString;
                  qrServidor.ExecSQL;
                end;
                qrPDV_Tabela.close;
                qrPDV_Tabela.SQL.clear;
                qrPDV_Tabela.sql.Add('update nfce set ex = 1 where NUMERO = ' + qrpdv.fieldbyname('NUMERO').asstring);
                qrPDV_Tabela.ExecSQL;
                qrpdv.Next;
              end;

              qrpdv.close;
              qrpdv.sql.clear;
              qrpdv.sql.add('select * from sat where ex = 0');
              qrpdv.open;
              qrpdv.first;
              while not qrpdv.eof do begin
                if qrpdv.FieldByName('alterado').AsString = 'S' then begin
                  qrServidor.Close;
                  qrServidor.SQL.Clear;
                  qrServidor.SQL.Add('select count(*) qtd from sat where chave = ' + QuotedStr(qrpdv.FieldByName('CHAVE').AsString));
                  qrServidor.Open;
                  if qrServidor.FieldByName('qtd').AsInteger = 0 then begin
                    qrServidor.SQL.Clear;
                    qrServidor.SQL.Add('insert into sat (DATA, HORA, NUMERO, CODCLIENTE, CANCELADO, CHAVE, XML_ENVIO,xml_cancelamento, CUPOM, TOTAL');
                    qrServidor.SQL.Add(') values (');
                    qrServidor.SQL.Add(':DATA, :HORA, :NUMERO, :CODCLIENTE, :CANCELADO, :CHAVE, :XML_ENVIO,:xml_cancelamento, :CUPOM, :TOTAL');
                    qrServidor.SQL.Add(')');
                    qrServidor.Params.ParamByName('DATA').AsDateTime := qrpdv.FieldByName('DATA').AsDateTime;
                    qrServidor.Params.ParamByName('HORA').AsString := qrpdv.FieldByName('HORA').AsString;
                    qrServidor.Params.ParamByName('NUMERO').AsInteger := qrpdv.FieldByName('NUMERO').AsInteger;
                    qrServidor.Params.ParamByName('TOTAL').AsFloat := qrpdv.FieldByName('TOTAL').AsFloat;
                    qrServidor.Params.ParamByName('CODCLIENTE').AsString := zerar(qrpdv.FieldByName('CODCLIENTE').AsString, 6);
                    qrServidor.Params.ParamByName('CHAVE').AsString := qrpdv.FieldByName('CHAVE').AsString;
                    qrServidor.Params.ParamByName('CANCELADO').AsString := qrpdv.FieldByName('CANCELADO').AsString;
                    qrServidor.Params.ParamByName('XML_ENVIO').AsMemo := qrpdv.FieldByName('XML_ENVIO').AsString;
                    qrServidor.Params.ParamByName('xml_cancelamento').AsMemo := qrpdv.FieldByName('xml_cancelamento').AsString;
                    qrServidor.Params.ParamByName('CUPOM').AsString := qrpdv.FieldByName('CUPOM').AsString;
                    qrServidor.ExecSQL;
                  end
                  else begin
                    qrServidor.SQL.Clear;
                    qrServidor.SQL.Add('update sat');
                    qrServidor.SQL.Add(' set CANCELADO = :CANCELADO,');
                    qrServidor.SQL.Add('     XML_CANCELAMENTO = :XML_CANCELAMENTO');
                    qrServidor.SQL.Add('where (CHAVE = :CHAVE)');
                    qrServidor.Params.ParamByName('CANCELADO').AsString := qrpdv.FieldByName('CANCELADO').AsString;
                    qrServidor.Params.ParamByName('XML_CANCELAMENTO').AsMemo := qrpdv.FieldByName('xml_cancelamento').AsString;
                    qrServidor.Params.ParamByName('CHAVE').AsString := qrpdv.FieldByName('CHAVE').AsString;
                    qrServidor.ExecSQL;
                  end;
                end
                else begin
                  qrServidor.SQL.Clear;
                  qrServidor.SQL.Add('insert into sat (DATA, HORA, NUMERO, CODCLIENTE, CANCELADO, CHAVE, XML_ENVIO,xml_cancelamento, CUPOM, TOTAL');
                  qrServidor.SQL.Add(') values (');
                  qrServidor.SQL.Add(':DATA, :HORA, :NUMERO, :CODCLIENTE, :CANCELADO, :CHAVE, :XML_ENVIO,:xml_cancelamento, :CUPOM, :TOTAL');
                  qrServidor.SQL.Add(')');
                  qrServidor.Params.ParamByName('DATA').AsDateTime := qrpdv.FieldByName('DATA').AsDateTime;
                  qrServidor.Params.ParamByName('HORA').AsString := qrpdv.FieldByName('HORA').AsString;
                  qrServidor.Params.ParamByName('NUMERO').AsInteger := qrpdv.FieldByName('NUMERO').AsInteger;
                  qrServidor.Params.ParamByName('TOTAL').AsFloat := qrpdv.FieldByName('TOTAL').AsFloat;
                  qrServidor.Params.ParamByName('CODCLIENTE').AsString := zerar(qrpdv.FieldByName('CODCLIENTE').AsString, 6);
                  qrServidor.Params.ParamByName('CHAVE').AsString := qrpdv.FieldByName('CHAVE').AsString;
                  qrServidor.Params.ParamByName('CANCELADO').AsString := qrpdv.FieldByName('CANCELADO').AsString;
                  qrServidor.Params.ParamByName('XML_ENVIO').AsMemo := qrpdv.FieldByName('XML_ENVIO').AsString;
                  qrServidor.Params.ParamByName('xml_cancelamento').AsMemo := qrpdv.FieldByName('xml_cancelamento').AsString;
                  qrServidor.Params.ParamByName('CUPOM').AsString := qrpdv.FieldByName('CUPOM').AsString;
                  qrServidor.ExecSQL;
                end;
                qrPDV_Tabela.close;
                qrPDV_Tabela.SQL.clear;
                qrPDV_Tabela.sql.Add('update sat set ex = 1 where NUMERO = ' + qrpdv.fieldbyname('NUMERO').asstring);
                qrPDV_Tabela.ExecSQL;
                qrpdv.Next;
              end;

              qrpdv.close;
              qrpdv.sql.clear;
              qrpdv.sql.add('select * from cupom where ex = 0');
              qrpdv.open;
              qrpdv.first;
              while not qrpdv.eof do begin
                Application.ProcessMessages;

                scod_cupom := qrpdv.fieldbyname('codigo').asstring;
                scod_venda := codifica('000048', 7);

                qrServidor.close;
                qrServidor.sql.clear;
                qrServidor.sql.add('insert into c000048');
                qrServidor.sql.add('(codigo,data,codcliente,codvendedor,');
                qrServidor.sql.add('codcaixa,total,subtotal,meio_dinheiro,');
                qrServidor.sql.add('meio_chequeav, meio_chequeap,meio_cartaocred,');
                qrServidor.SQL.add('meio_cartaodeb,meio_crediario,meio_convenio, desconto,acrescimo,');
                qrServidor.sql.add('cupom_fiscal,numero_cupom_fiscal, ECF_SERIAL, situacao, contingencia, gerado_nfce, gerou_sat, numero_sat)');
                qrServidor.sql.add('values');
                qrServidor.sql.add('(:codigo,:datax,:codcliente,:codvendedor,');
                qrServidor.sql.add(':codcaixa,:TOTAL,:SUBTOTAL,:DINHEIRO,');
                qrServidor.sql.add(':CHEQUEAV,:CHEQUEAP,:CARTAOCRED,');
                qrServidor.SQL.add(':CARTAODEB,:CREDIARIO,:CONVENIO,:DESCONTO,:ACRESCIMO,');
                qrServidor.sql.add(':cupom_fiscal,:numero_cupom_fiscal, :ECF_SERIAL, :situacao, :contingencia, :gerado_nfce, :gerou_sat, :numero_sat)');

                qrServidor.Params.ParamByName('codigo').asstring := scod_venda;
                qrServidor.Params.ParamByName('codcliente').asstring := Zerar(qrpdv.fieldbyname('cod_cliente').asstring, 6);
                qrServidor.Params.ParamByName('codCAIXA').asstring := zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6);
                qrServidor.Params.ParamByName('numero_cupom_fiscal').asstring := qrpdv.fieldbyname('numero').asstring;
                qrServidor.Params.ParamByName('codvendedor').asstring := zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6);
                qrServidor.Params.ParamByName('cupom_fiscal').asINTEGER := 1;
                qrServidor.params.parambyname('ecf_serial').asstring := qrPDV.fieldbyname('ecf').asstring;

                qrServidor.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                qrServidor.Params.ParamByName('TOTAL').asFLOAT := qrpdv.fieldbyname('valor_total').asfloat;
                qrServidor.Params.ParamByName('SUBTOTAL').asFLOAT := qrpdv.fieldbyname('valor_produto').asfloat - qrpdv.fieldbyname('valor_acrescimo').asfloat + qrpdv.fieldbyname('valor_desconto').asfloat;
                qrServidor.Params.ParamByName('DESCONTO').asFLOAT := qrpdv.fieldbyname('valor_desconto').asfloat;
                qrServidor.Params.ParamByName('ACRESCIMO').asFLOAT := qrpdv.fieldbyname('valor_acrescimo').asfloat;

                qrServidor.Params.ParamByName('DINHEIRO').asFLOAT := 0;
                qrServidor.Params.ParamByName('CHEQUEAV').asFLOAT := 0;
                qrServidor.Params.ParamByName('CHEQUEAP').asFLOAT := 0;
                qrServidor.Params.ParamByName('CARTAODEB').asFLOAT := 0;
                qrServidor.Params.ParamByName('CARTAOCRED').asFLOAT := 0;
                qrServidor.Params.ParamByName('CREDIARIO').asFLOAT := 0;
                qrServidor.Params.ParamByName('CONVENIO').asFLOAT := 0;
                qrServidor.params.parambyname('situacao').asinteger := qrpdv.fieldbyname('cancelado').asinteger + 1;

                qrServidor.params.parambyname('contingencia').asstring := qrPDV.fieldbyname('contingencia').asstring;
                qrServidor.params.parambyname('gerado_nfce').asstring := qrPDV.fieldbyname('gerado_nfce').asstring;

                qrServidor.params.parambyname('gerou_sat').asstring := qrPDV.fieldbyname('gerou_sat').asstring;
                qrServidor.params.parambyname('numero_sat').AsInteger := qrPDV.fieldbyname('numero_sat').AsInteger;

                qrForma.close;
                qrForma.sql.clear;
                qrForma.sql.add('select * from cupom_forma');
                qrforma.sql.add('where cod_cupom = ''' + scod_cupom + '''');
                qrforma.Open;

                qrforma.first;
                while not qrforma.eof do begin
                  Application.ProcessMessages;

                  bachou := false;
                  if not bachou then begin
                    if qrforma.fieldbyname('forma').asstring = StRecDinheiro then begin
                      qrServidor.Params.ParamByName('DINHEIRO').asFLOAT := qrServidor.Params.ParamByName('DINHEIRO').asFLOAT + qrforma.fieldbyname('valor').asfloat;
                      // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add(':VALOR,:VALOR,''100001'',3,''Venda DINHEIRO - No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat - qrforma.fieldbyname('troco').asfloat;
                      qrcaixa_mov.ExecSQL;
                      bachou := true;
                    end;
                  end;
                  if not bachou then begin
                    if (qrforma.fieldbyname('forma').asstring = StRecCheque) then begin
                      qrServidor.Params.ParamByName('chequeav').asFLOAT := qrServidor.Params.ParamByName('chequeav').asFLOAT + qrforma.fieldbyname('valor').asfloat;
                      // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add('0,:VALOR,''100002'',5,''Venda CHEQUE AVISTA - No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat - qrforma.fieldbyname('troco').asfloat;
                      qrcaixa_mov.ExecSQL;
                      bachou := true;
                    end;
                  end;
                  if not bachou then begin
                    if (qrforma.fieldbyname('forma').asstring = StRecCartaoCR) or (qrforma.fieldbyname('forma').asstring = StRecCartaoDE) then begin
                      qrServidor.Params.ParamByName('cartaocred').asFLOAT := qrServidor.Params.ParamByName('cartaocred').asFLOAT + qrforma.fieldbyname('valor').asfloat;

                    // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      if (qrforma.fieldbyname('forma').asstring = StRecCartaoCR) then
                        qrcaixa_mov.sql.add('0,:VALOR,''100003'',7,''Venda CARTAO CREDITO - No. ' + qrpdv.fieldbyname('numero').asstring + ''')')
                      else
                        qrcaixa_mov.sql.add('0,:VALOR,''100003'',8,''Venda CARTAO DEBITO - No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat - qrforma.fieldbyname('troco').asfloat;
                      qrcaixa_mov.ExecSQL;

                      qrFormaCartao.Close;
                      qrFormaCartao.Params.Items[0].Value := scod_cupom;
                      qrFormaCartao.Open;
                      while not qrFormaCartao.Eof do begin
                        if qrFormaCartaoTIPO_CARTAO.asstring = 'C' then begin
                          qrbanco.close;
                          qrbanco.sql.clear;
                          qrbanco.sql.add('select * from c000013');
                          qrbanco.sql.add('where numero = ' + QuotedStr(qrFormaCartaoBANCO.asstring));
                          qrbanco.Open;
                          qrMovCartao.close;
                          qrMovCartao.sql.clear;
                          qrMovCartao.sql.add('insert into c000124');
                          qrMovCartao.sql.add('(codigo, cod_venda, banco, cod_cliente, data_venda, valor, comissao,');
                          qrMovCartao.sql.add('liquido, data_recebimento, situacao, tipo, parcela, valor_total)');
                          qrMovCartao.sql.add('values');
                          qrMovCartao.sql.add('(:codigo, :cod_venda, :banco, :cod_cliente, :data_venda, :valor, :comissao,');
                          qrMovCartao.sql.add(':liquido, :data_recebimento, :situacao, :tipo, :parcela, :valor_total)');
                          qrMovCartao.parambyname('codigo').asstring := frmprincipal.codifica('000124', 6);
                          qrMovCartao.parambyname('cod_venda').asstring := qrpdv.FieldByName('numero').AsString;
                          qrMovCartao.parambyname('banco').asstring := qrFormaCartaoBANCO.AsString;
                          qrMovCartao.parambyname('cod_cliente').asstring := Zerar(qrpdv.FieldByName('cod_cliente').AsString, 6);
                          qrMovCartao.parambyname('data_venda').asdatetime := qrpdv.FieldByName('data').AsDateTime;
                          qrMovCartao.parambyname('valor').AsFloat := qrFormaCartaoVALOR.AsFloat;

                          if qrbanco.FieldByName('comissao_CREDITO').AsFloat > 0 then begin
                            qrMovCartao.parambyname('comissao').AsFloat := qrFormaCartaoVALOR.AsFloat * (qrbanco.FieldByName('comissao_CREDITO').AsFloat / 100);
                            qrMovCartao.parambyname('liquido').AsFloat := qrFormaCartaoVALOR.AsFloat - (qrFormaCartaoVALOR.AsFloat * (qrbanco.FieldByName('comissao_CREDITO').AsFloat / 100));
                          end
                          else begin
                            qrMovCartao.parambyname('comissao').AsFloat := 0;
                            qrMovCartao.parambyname('liquido').AsFloat := qrFormaCartaoVALOR.AsFloat;
                          end;
                          qrMovCartao.parambyname('data_recebimento').asdatetime := qrpdv.FieldByName('data').AsDateTime + (qrbanco.FieldByName('rec_CREDITO').AsInteger * qrFormaCartaoPRESTACAO.AsInteger);
                          // cair todas no mesmo dia quem fica devendo � o cliente
                          qrMovCartao.parambyname('situacao').asstring := 'ABERTO';
                          qrMovCartao.parambyname('tipo').asstring := 'CREDITO';
                          qrMovCartao.parambyname('parcela').AsInteger := qrFormaCartaoPRESTACAO.AsInteger;
                          qrMovCartao.parambyname('valor_total').AsFloat := qrFormaCartaoVALOR.AsFloat;
                          qrMovCartao.ExecSQL;
                        end;

                        if qrFormaCartaoTIPO_CARTAO.asstring = 'D' then begin
                          qrbanco.close;
                          qrbanco.sql.clear;
                          qrbanco.sql.add('select * from c000013');
                          qrbanco.sql.add('where numero = ' + QuotedStr(qrFormaCartaoBANCO.asstring));
                          qrbanco.Open;
                          qrMovCartao.close;
                          qrMovCartao.sql.clear;
                          qrMovCartao.sql.add('insert into c000124');
                          qrMovCartao.sql.add('(codigo, cod_venda, banco, cod_cliente, data_venda, valor, comissao,');
                          qrMovCartao.sql.add('liquido, data_recebimento, situacao, tipo, parcela, valor_total)');
                          qrMovCartao.sql.add('values');
                          qrMovCartao.sql.add('(:codigo, :cod_venda, :banco, :cod_cliente, :data_venda, :valor, :comissao,');
                          qrMovCartao.sql.add(':liquido, :data_recebimento, :situacao, :tipo, :parcela, :valor_total)');
                          qrMovCartao.parambyname('codigo').asstring := frmprincipal.codifica('000124', 6);
                          qrMovCartao.parambyname('cod_venda').asstring := qrpdv.FieldByName('numero').AsString;
                          qrMovCartao.parambyname('banco').asstring := qrFormaCartaoBANCO.AsString;
                          qrMovCartao.parambyname('cod_cliente').asstring := Zerar(qrpdv.FieldByName('cod_cliente').AsString, 6);
                          qrMovCartao.parambyname('data_venda').asdatetime := qrpdv.FieldByName('data').AsDateTime;
                          qrMovCartao.parambyname('valor').AsFloat := qrFormaCartaoVALOR.AsFloat;

                          if qrbanco.FieldByName('comissao_DEBITO').AsFloat > 0 then begin
                            qrMovCartao.parambyname('comissao').AsFloat := qrFormaCartaoVALOR.AsFloat * (qrbanco.FieldByName('comissao_DEBITO').AsFloat / 100);
                            qrMovCartao.parambyname('liquido').AsFloat := qrFormaCartaoVALOR.AsFloat - (qrFormaCartaoVALOR.AsFloat * (qrbanco.FieldByName('comissao_DEBITO').AsFloat / 100));
                          end
                          else begin
                            qrMovCartao.parambyname('comissao').AsFloat := 0;
                            qrMovCartao.parambyname('liquido').AsFloat := qrFormaCartaoVALOR.AsFloat;
                          end;
                          //
                          qrMovCartao.parambyname('data_recebimento').asdatetime := qrpdv.FieldByName('data').AsDateTime + (qrbanco.FieldByName('rec_DEBITO').AsInteger);
                          qrMovCartao.parambyname('situacao').asstring := 'ABERTO';
                          qrMovCartao.parambyname('tipo').asstring := 'DEBITO';
                          qrMovCartao.parambyname('parcela').AsInteger := 1;
                          qrMovCartao.parambyname('valor_total').AsFloat := qrFormaCartaoVALOR.AsFloat;
                          qrMovCartao.ExecSQL;
                        end;
                        qrFormaCartao.Next;
                      end;

                      bachou := true;
                    end;
                  end;
                  if not bachou then begin
                    if (qrforma.fieldbyname('forma').asstring = StRecCrediario) then begin
                      qrServidor.Params.ParamByName('crediario').asFLOAT := qrServidor.Params.ParamByName('crediario').asFLOAT + qrforma.fieldbyname('valor').asfloat;
                      // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add('0,:VALOR,''100004'',4,''Venda CREDIARIO - No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat - qrforma.fieldbyname('troco').asfloat;
                      qrcaixa_mov.ExecSQL;
                      bachou := true;
                    end;
                  end;
                  if not bachou then begin
                    if (qrforma.fieldbyname('forma').asstring = StRecConvenio) then begin
                      qrServidor.Params.ParamByName('convenio').asFLOAT := qrServidor.Params.ParamByName('convenio').asFLOAT + qrforma.fieldbyname('valor').asfloat;
                      // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add('0,:VALOR,''100005'',40,''Venda CONVENIO - No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat - qrforma.fieldbyname('troco').asfloat;
                      qrcaixa_mov.ExecSQL;
                      bachou := true;
                    end;
                  end;
                  qrforma.next;
                end;
                qrServidor.ExecSQL;
                if qrpdv.fieldbyname('cancelado').asinteger = 0 then begin
                  // contas a receber Crediario
                  qrPDV2.close;
                  qrPDV2.sql.clear;
                  qrPDV2.sql.add('select cpc.*, cp.pego_porquem from cupom_crediario cpc');
                  qrPDV2.sql.add('inner join cupom cp on cp.codigo = cpc.cod_cupom');
                  qrPDV2.sql.add('where cpc.cod_cupom = ''' + scod_cupom + '''');
                  qrPDV2.open;
                  qrPDV2.first;
                  iprest := 1;
                  while not qrPDV2.eof do begin
                    Application.ProcessMessages;
                    qrServidor.Close;
                    qrServidor.SQL.clear;
                    qrServidor.SQL.add('insert into c000049');
                    qrServidor.SQL.add('(codigo,codvenda,codcliente,codvendedor,codcaixa,data_emissao,data_vencimento,valor_original,');
                    qrServidor.SQL.add('valor_atual,documento,tipo,situacao,filtro, RETIRADO_POR)');
                    qrServidor.SQL.add('values');
                    qrServidor.SQL.add('(:codigo,:codvenda,:codcliente,:codvendedor,:codcaixa,:data_emissao,:data_vencimento,:valor_original,');
                    qrServidor.SQL.add(':valor_atual,:documento,:tipo,:situacao,:filtro,:RETIRADO_POR)');

                    qrServidor.Params.ParamByName('codigo').asstring := scod_venda + '/' + zerar(inttostr(iprest), 2);
                    qrServidor.Params.ParamByName('codvenda').asstring := scod_venda;
                    qrServidor.Params.ParamByName('codcliente').asstring := zerar(qrPDV2.fieldbyname('cod_cliente').asstring, 6);
                    qrServidor.Params.ParamByName('codvendedor').asstring := zerar(qrpdv.FIELDBYNAME('cod_vendedor').ASstring, 6);
                    qrServidor.Params.ParamByName('codcaixa').asstring := zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6);
                    qrServidor.Params.ParamByName('documento').asstring := scod_venda + '/' + zerar(inttostr(iprest), 2);
                    qrServidor.Params.ParamByName('tipo').asstring := COPY(qrPDV2.fieldbyname('descricao').asstring, 1, 20);
                    qrServidor.Params.ParamByName('filtro').asinteger := 0;
                    qrServidor.Params.ParamByName('situacao').asinteger := 1;
                    qrServidor.Params.ParamByName('data_vencimento').asdatetime := qrPDV2.FIELDBYNAME('vencimento').ASDATETIME;
                    qrServidor.Params.ParamByName('data_emissao').asdatetime := qrpdv.fieldbyname('data').asfloat;
                    qrServidor.PARAMS.ParamByName('valor_atual').ASFLOAT := qrPDV2.fieldbyname('valor').asfloat;
                    qrServidor.PARAMS.ParamByName('valor_original').ASFLOAT := qrPDV2.fieldbyname('valor').asfloat;
                    qrServidor.PARAMS.ParamByName('RETIRADO_POR').AsString := qrPDV2.fieldbyname('PEGO_PORQUEM').AsString;
                    qrServidor.ExecSQL;
                    inc(iprest);
                    qrPDV2.next;
                  end;



                  // contas a receber Convenio
                  qrPDV2.close;
                  qrPDV2.sql.clear;
                  qrPDV2.sql.add('select cpc.*, cp.pego_porquem from CUPOM_CONVENIO cpc');
                  qrPDV2.sql.add('inner join cupom cp on cp.codigo = cpc.cod_cupom');
                  qrPDV2.sql.add('where cpc.cod_cupom = ''' + scod_cupom + '''');
                  qrPDV2.open;
                  qrPDV2.first;
                  iprest := 1;
                  while not qrPDV2.eof do begin
                    Application.ProcessMessages;
                    qrServidor.Close;
                    qrServidor.SQL.clear;
                    qrServidor.SQL.add('insert into c000049');
                    qrServidor.SQL.add('(codigo,codvenda,codcliente,codvendedor,codcaixa,data_emissao,data_vencimento,valor_original,');
                    qrServidor.SQL.add('valor_atual,documento,tipo,situacao,filtro, RETIRADO_POR)');
                    qrServidor.SQL.add('values');
                    qrServidor.SQL.add('(:codigo,:codvenda,:codcliente,:codvendedor,:codcaixa,:data_emissao,:data_vencimento,:valor_original,');
                    qrServidor.SQL.add(':valor_atual,:documento,:tipo,:situacao,:filtro,:RETIRADO_POR)');

                    qrServidor.Params.ParamByName('codigo').asstring := scod_venda + '/' + zerar(inttostr(iprest), 2);
                    qrServidor.Params.ParamByName('codvenda').asstring := scod_venda;
                    qrServidor.Params.ParamByName('codcliente').asstring := zerar(qrPDV2.fieldbyname('cod_cliente').asstring, 6);
                    qrServidor.Params.ParamByName('codvendedor').asstring := zerar(qrpdv.FIELDBYNAME('cod_vendedor').ASstring, 6);
                    qrServidor.Params.ParamByName('codcaixa').asstring := zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6);
                    qrServidor.Params.ParamByName('documento').asstring := scod_venda + '/' + zerar(inttostr(iprest), 2);
                    qrServidor.Params.ParamByName('tipo').asstring := 'CONVENIO';
                    qrServidor.Params.ParamByName('filtro').asinteger := 0;
                    qrServidor.Params.ParamByName('situacao').asinteger := 1;
                    qrServidor.Params.ParamByName('data_vencimento').asdatetime := qrPDV2.FIELDBYNAME('vencimento').ASDATETIME;
                    qrServidor.Params.ParamByName('data_emissao').asdatetime := qrpdv.fieldbyname('data').asfloat;
                    qrServidor.PARAMS.ParamByName('valor_atual').ASFLOAT := qrPDV2.fieldbyname('valor').asfloat;
                    qrServidor.PARAMS.ParamByName('valor_original').ASFLOAT := qrPDV2.fieldbyname('valor').asfloat;
                    qrServidor.PARAMS.ParamByName('RETIRADO_POR').AsString := qrPDV2.fieldbyname('PEGO_PORQUEM').AsString;
                    qrServidor.ExecSQL;
                    inc(iprest);
                    qrPDV2.next;
                  end;

                end;

                // produtos
                qrPDV3.close;
                qrPDV3.sql.clear;
                qrPDV3.sql.add('select * from CUPOM_ITEM');
                qrPDV3.sql.add('where cod_cupom = ''' + scod_cupom + '''');
                qrPDV3.sql.add('and cancelado = 0');
                qrPDV3.open;
                qrPDV3.first;
                while not qrPDV3.eof do begin
                  Application.ProcessMessages;
                  //Baixar os Sabores de produtos pizza
                  qrItemSub.Close;
                  qrItemSub.Params.Items[0].Value := qrpdv3.FieldByName('codigo').AsString;
                  qrItemSub.Open;
                  if not qrItemSub.IsEmpty then begin
                    qrItemSub.First;
                    while not qrItemSub.eof do begin
                      qrServidor.CLOSE;
                      qrServidor.SQL.CLEAR;
                      qrServidor.SQL.Add('insert into c000032');
                      qrServidor.SQL.add('(codigo,codnota,serial,numeronota,');
                      qrServidor.SQL.add('codproduto,qtde,movimento_estoque,unitario,desconto,acrescimo,');
                      qrServidor.SQL.add('total,unidade,aliquota,');
                      qrServidor.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
                      qrServidor.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
                      qrServidor.sql.add('base_calculo, valor_icms,CSOSN,NFCE,CLASSIFICACAO_FISCAL,BASE_SUB,ICMS_SUB,ISENTAS_ICMS,OUTRAS_ICMS,CFOP, gerou_sat, numero_sat)');
                      qrServidor.SQL.add('values');

                      qrServidor.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
                      qrServidor.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,:desconto,:acrescimo,');
                      qrServidor.SQL.add(':total,:unidade,:aliquota,');
                      qrServidor.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
                      qrServidor.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
                      qrServidor.sql.add(':base_calculo,:valor_icms,:CSOSN,:NFCE,:CLASSIFICACAO_FISCAL,:BASE_SUB,:ICMS_SUB,:ISENTAS_ICMS,:OUTRAS_ICMS,:CFOP, :gerou_sat, :numero_sat)');

                      qrServidor.Params.ParamByName('CODIGO').ASSTRING := frmPrincipal.codifica('000032', 10);
                      qrServidor.Params.ParamByName('CODNOTA').ASSTRING := scod_venda;
                      qrServidor.Params.ParamByName('SERIAL').ASSTRING := '';
                      qrServidor.Params.ParamByName('NUMERONOTA').ASSTRING := qrpdv.fieldbyname('numero').asstring;
                      qrServidor.Params.ParamByName('CODPRODUTO').ASSTRING := zerar(qrItemSubcod_produto.asstring, 6);
                      qrServidor.Params.ParamByName('CODCLIENTE').ASSTRING := zerar(qrpdv.FIELDBYNAME('COD_CLIENTE').ASSTRING, 6);
                      qrServidor.Params.ParamByName('CODVENDEDOR').ASSTRING := zerar(qrpdv.FIELDBYNAME('COD_VENDEDOR').ASSTRING, 6);

                      qrServidor.Params.ParamByName('QTDE').ASFLOAT := qrItemSubQTDE.ASFLOAT;

                      //se est� marcado para n�o considerar estoque, zera a movimenta��o
                      if not grid.Cell[5, I].AsBoolean then
                      qrItemSubQTDE.AsFloat := 0;

                      qrServidor.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := -qrItemSubQTDE.ASFLOAT;
                      qrServidor.Params.ParamByName('ALIQUOTA').ASFLOAT := qrItemSubALIQUOTA.ASFLOAT;

                      qrServidor.Params.ParamByName('UNIDADE').ASSTRING := qrItemSubUNIDADE.ASSTRING;
                      qrServidor.Params.ParamByName('CST').ASSTRING := qrItemSubCST.ASSTRING;
                      qrServidor.Params.ParamByName('MOVIMENTO').ASINTEGER := 2;
                      qrServidor.Params.ParamByName('DATA').ASDATETIME := qrpdv.FIELDBYNAME('DATA').ASDATETIME;
                      qrServidor.Params.ParamByName('ECF_CAIXA').ASSTRING := qrPDV.fieldbyname('ECF_CAIXA').ASSTRING;
                      qrServidor.Params.ParamByName('ECF_SERIE').ASSTRING := qrpdv.FIELDBYNAME('ECF').ASSTRING;
                      qrServidor.Params.ParamByName('CUPOM_NUMERO').ASSTRING := qrpdv.FIELDBYNAME('NUMERO').ASSTRING;
                      qrServidor.Params.ParamByName('CUPOM_ITEM').ASSTRING := zerar(qrItemSubITEM.ASSTRING, 3);
                      qrServidor.Params.ParamByName('CUPOM_MODELO').ASSTRING := '2D';

                      qrServidor.Params.ParamByName('CSOSN').ASSTRING := qrItemSubCSOSN.ASSTRING;
                      qrServidor.Params.ParamByName('NFCE').ASSTRING := qrPDV.FIELDBYNAME('GERADO_NFCE').ASSTRING;
                      qrServidor.Params.ParamByName('CLASSIFICACAO_FISCAL').ASSTRING := qrItemSubCLASSIFICACAO_FISCAL.ASSTRING;
                      qrServidor.Params.ParamByName('BASE_SUB').asfloat := qrItemSubBASE_SUB.asfloat;
                      qrServidor.Params.ParamByName('ICMS_SUB').asfloat := qrItemSubICMS_SUB.asfloat;
                      qrServidor.Params.ParamByName('ISENTAS_ICMS').asfloat := qrItemSubISENTAS_ICMS.asfloat;
                      qrServidor.Params.ParamByName('OUTRAS_ICMS').asfloat := qrItemSubOUTRAS_ICMS.asfloat;
                      qrServidor.Params.ParamByName('CFOP').AsString := qrItemSubCFOP.AsString;

                      qrServidor.params.parambyname('desconto').asfloat := qrItemSubvalor_desconto.asfloat;
                      qrServidor.params.parambyname('acrescimo').asfloat := qrItemSubvalor_acrescimo.asfloat;
                      qrServidor.Params.ParamByName('UNITARIO').ASFLOAT := qrItemSubVALOR_UNITARIO.ASFLOAT;
                      qrServidor.Params.ParamByName('TOTAL').ASFLOAT := qrItemSubVALOR_TOTAL.ASFLOAT;
                      if (qrPDV3.fieldbyname('aliquota').asfloat > 0) and (qrItemSubcst.asstring = '000') then begin
                        qrServidor.Params.ParamByName('base_calculo').ASFLOAT := qrItemSubVALOR_TOTAL.ASFLOAT;
                        qrServidor.Params.ParamByName('valor_icms').ASFLOAT := qrItemSubVALOR_TOTAL.ASFLOAT * qrItemSubaliquota.ASFLOAT / 100;
                      end
                      else begin
                        qrServidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
                        qrServidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
                      end;
                      if qrPDV.FIELDBYNAME('gerou_sat').AsString = '' then begin
                        qrServidor.Params.ParamByName('gerou_sat').AsString := 'N';
                        qrServidor.Params.ParamByName('numero_sat').AsInteger := 0;
                      end
                      else begin
                        qrServidor.Params.ParamByName('gerou_sat').AsString := qrPDV.FIELDBYNAME('gerou_sat').AsString;
                        qrServidor.Params.ParamByName('numero_sat').AsString := qrPDV.FIELDBYNAME('numero_sat').AsString;
                      end;

                      qrServidor.ExecSQL;
                      qrItemSub.Next;
                    end;
                  end else begin
                    qrServidor.CLOSE;
                    qrServidor.SQL.CLEAR;
                    qrServidor.SQL.Add('insert into c000032');
                    qrServidor.SQL.add('(codigo,codnota,serial,numeronota,');
                    qrServidor.SQL.add('codproduto,qtde,movimento_estoque,unitario,desconto,acrescimo,');
                    qrServidor.SQL.add('total,unidade,aliquota,');
                    qrServidor.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
                    qrServidor.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
                    qrServidor.sql.add('base_calculo, valor_icms,CSOSN,NFCE,CLASSIFICACAO_FISCAL,BASE_SUB,ICMS_SUB,ISENTAS_ICMS,OUTRAS_ICMS,CFOP, gerou_sat, numero_sat)');
                    qrServidor.SQL.add('values');

                    qrServidor.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
                    qrServidor.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,:desconto,:acrescimo,');
                    qrServidor.SQL.add(':total,:unidade,:aliquota,');
                    qrServidor.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
                    qrServidor.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
                    qrServidor.sql.add(':base_calculo,:valor_icms,:CSOSN,:NFCE,:CLASSIFICACAO_FISCAL,:BASE_SUB,:ICMS_SUB,:ISENTAS_ICMS,:OUTRAS_ICMS,:CFOP, :gerou_sat, :numero_sat)');

                    qrServidor.Params.ParamByName('CODIGO').ASSTRING := frmPrincipal.codifica('000032', 10);
                    qrServidor.Params.ParamByName('CODNOTA').ASSTRING := scod_venda;
                    qrServidor.Params.ParamByName('SERIAL').ASSTRING := '';
                    qrServidor.Params.ParamByName('NUMERONOTA').ASSTRING := qrpdv.fieldbyname('numero').asstring;
                    qrServidor.Params.ParamByName('CODPRODUTO').ASSTRING := zerar(qrPDV3.fieldbyname('cod_produto').asstring, 6);
                    qrServidor.Params.ParamByName('CODCLIENTE').ASSTRING := zerar(qrpdv.FIELDBYNAME('COD_CLIENTE').ASSTRING, 6);
                    qrServidor.Params.ParamByName('CODVENDEDOR').ASSTRING := zerar(qrpdv.FIELDBYNAME('COD_VENDEDOR').ASSTRING, 6);

                    qrServidor.Params.ParamByName('QTDE').ASFLOAT := qrPDV3.FIELDBYNAME('QTDE').ASFLOAT;

                     //se est� marcado para n�o considerar estoque, zera a movimenta��o
                     if not grid.Cell[5, I].AsBoolean then
                     qrServidor.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := 0
                     else
                     qrServidor.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := -qrPDV3.FIELDBYNAME('QTDE').ASFLOAT;

                    qrServidor.Params.ParamByName('ALIQUOTA').ASFLOAT := qrPDV3.FIELDBYNAME('ALIQUOTA').ASFLOAT;

                    qrServidor.Params.ParamByName('UNIDADE').ASSTRING := qrPDV3.FIELDBYNAME('UNIDADE').ASSTRING;
                    qrServidor.Params.ParamByName('CST').ASSTRING := qrPDV3.FIELDBYNAME('CST').ASSTRING;
                    qrServidor.Params.ParamByName('MOVIMENTO').ASINTEGER := 2;
                    qrServidor.Params.ParamByName('DATA').ASDATETIME := qrpdv.FIELDBYNAME('DATA').ASDATETIME;
                    qrServidor.Params.ParamByName('ECF_CAIXA').ASSTRING := qrPDV.fieldbyname('ECF_CAIXA').ASSTRING;
                    qrServidor.Params.ParamByName('ECF_SERIE').ASSTRING := qrpdv.FIELDBYNAME('ECF').ASSTRING;
                    qrServidor.Params.ParamByName('CUPOM_NUMERO').ASSTRING := qrpdv.FIELDBYNAME('NUMERO').ASSTRING;
                    qrServidor.Params.ParamByName('CUPOM_ITEM').ASSTRING := zerar(qrPDV3.FIELDBYNAME('ITEM').ASSTRING, 3);
                    qrServidor.Params.ParamByName('CUPOM_MODELO').ASSTRING := '2D';

                    qrServidor.Params.ParamByName('CSOSN').ASSTRING := qrPDV3.FIELDBYNAME('CSOSN').ASSTRING;
                    qrServidor.Params.ParamByName('NFCE').ASSTRING := qrPDV.FIELDBYNAME('GERADO_NFCE').ASSTRING;
                    qrServidor.Params.ParamByName('CLASSIFICACAO_FISCAL').ASSTRING := qrPDV3.FIELDBYNAME('CLASSIFICACAO_FISCAL').ASSTRING;
                    qrServidor.Params.ParamByName('BASE_SUB').asfloat := qrPDV3.FIELDBYNAME('BASE_SUB').asfloat;
                    qrServidor.Params.ParamByName('ICMS_SUB').asfloat := qrPDV3.FIELDBYNAME('ICMS_SUB').asfloat;
                    qrServidor.Params.ParamByName('ISENTAS_ICMS').asfloat := qrPDV3.FIELDBYNAME('ISENTAS_ICMS').asfloat;
                    qrServidor.Params.ParamByName('OUTRAS_ICMS').asfloat := qrPDV3.FIELDBYNAME('OUTRAS_ICMS').asfloat;
                    qrServidor.Params.ParamByName('CFOP').AsString := qrPDV3.FIELDBYNAME('CFOP').AsString;

                    qrServidor.params.parambyname('desconto').asfloat := qrPDV3.fieldbyname('valor_desconto').asfloat;
                    qrServidor.params.parambyname('acrescimo').asfloat := qrPDV3.fieldbyname('valor_acrescimo').asfloat;
                    qrServidor.Params.ParamByName('UNITARIO').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;
                    qrServidor.Params.ParamByName('TOTAL').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
                    if (qrPDV3.fieldbyname('aliquota').asfloat > 0) and (qrPDV3.fieldbyname('cst').asstring = '000') then begin
                      qrServidor.Params.ParamByName('base_calculo').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
                      qrServidor.Params.ParamByName('valor_icms').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * qrPDV3.FIELDBYNAME('aliquota').ASFLOAT / 100;
                    end
                    else begin
                      qrServidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
                      qrServidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
                    end;
                    if qrPDV.FIELDBYNAME('gerou_sat').AsString = '' then begin
                      qrServidor.Params.ParamByName('gerou_sat').AsString := 'N';
                      qrServidor.Params.ParamByName('numero_sat').AsInteger := 0;
                    end
                    else begin
                      qrServidor.Params.ParamByName('gerou_sat').AsString := qrPDV.FIELDBYNAME('gerou_sat').AsString;
                      qrServidor.Params.ParamByName('numero_sat').AsString := qrPDV.FIELDBYNAME('numero_sat').AsString;
                    end;

                    qrServidor.ExecSQL;
                  end;
                  qrPDV3.next;
                end;

                try
                  qrPDV_Tabela.close;
                  qrPDV_Tabela.SQL.clear;
                  qrPDV_Tabela.sql.Add('update cupom set ex = 1 where codigo = ''' + qrpdv.fieldbyname('codigo').asstring + '''');
                  qrPDV_Tabela.ExecSQL;
                except
                  on E: Exception do begin
                    Memo1.Lines.Add('Erro na gravacao do Cupom - Mensagem: ' + E.Message);
                  end;
                end;
                qrpdv.Next;
              end;

              qrpdv.close;
              qrpdv.sql.clear;
              qrpdv.sql.add('select * from cupom_cancelar where ex = ' + QuotedStr('N'));
              qrpdv.open;
              qrpdv.first;
              while not qrpdv.eof do begin
                qrpdv2.Close;
                qrpdv2.SQL.Clear;
                qrpdv2.SQL.Add('select * from cupom where numero = ' + QuotedStr(qrpdv.FieldByName('numero').AsString));
                qrpdv2.Open;

                qrServidor.SQL.Clear;
                qrServidor.SQL.Add('select codigo from c000048 where numero_cupom_fiscal = ' + QuotedStr(qrpdv.fieldbyname('NUMERO').asstring));
                qrServidor.Open;
                if not qrServidor.IsEmpty then
                  sVendaCancelar := qrServidor.FieldByName('codigo').AsAnsiString
                else
                  sVendaCancelar := '-1';
                qrServidor.Close;

                qrServidor.SQL.Clear;
                qrServidor.SQL.Add('update c000048 set situacao = ' + QuotedStr('2') + ' where numero_cupom_fiscal = ' + QuotedStr(qrpdv.fieldbyname('NUMERO').asstring));
                qrServidor.ExecSQL;

                qrServidor.SQL.Clear;
                qrServidor.SQL.Add('delete from c000124 where cod_venda = ' + QuotedStr(qrpdv.fieldbyname('NUMERO').asstring));
                qrServidor.ExecSQL;

                qrServidor.SQL.Clear;
                qrServidor.SQL.Add('delete from c000049 where codvenda = ' + QuotedStr(sVendaCancelar));
                qrServidor.ExecSQL;

                qrServidor.SQL.Clear;
                qrServidor.SQL.Add('update c000032 set situacao = 2 where CODNOTA = ' + QuotedStr(sVendaCancelar));
//                qrServidor.SQL.Add('delete from c000032 where CODNOTA = ' + QuotedStr(sVendaCancelar));
                qrServidor.ExecSQL;

                qrForma.close;
                qrForma.sql.clear;
                qrForma.sql.add('select * from cupom_forma f inner join cupom c on c.codigo = f.cod_cupom');
                qrforma.sql.add('where c.numero = ' + QuotedStr(qrpdv.fieldbyname('NUMERO').asstring));
                qrforma.Open;
                qrforma.first;
                while not qrforma.eof do begin
                  Application.ProcessMessages;
                  bachou := false;
                  if not bachou then begin
                    if qrforma.fieldbyname('forma').asstring = StRecDinheiro then begin
                      // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrForma.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrForma.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add(':VALOR,:VALOR,''100001'',3,''Cancelamento do Cupom No. ' + qrForma.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrPDV.fieldbyname('data').asdatetime;

                      // Se a FORMA DINHEIRO for > que o valor total
                      if qrforma.fieldbyname('valor').asfloat > qrForma.fieldbyname('valor_total').asfloat then
                        QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := -qrForma.fieldbyname('valor_total').asfloat
                      else // Se a FORMA dinheiro for o mesmo valor total
if qrforma.fieldbyname('valor').asfloat = qrForma.fieldbyname('valor_total').asfloat then
                        QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := -qrforma.fieldbyname('valor').asfloat
                      else
                        QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := -(qrforma.fieldbyname('valor').asfloat - qrForma.fieldbyname('valor_troco').asfloat);
                      qrcaixa_mov.ExecSQL;
                      bachou := true;
                    end;
                  end;
                  if not bachou then begin
                    if qrforma.fieldbyname('forma').asstring = StRecCheque then begin
                      // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrForma.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrForma.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add('0,:VALOR,''100002'',5,''Cancelamento do Cupom No. ' + qrForma.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrPDV.fieldbyname('data').asdatetime;
                      // Se a FORMA cheque for > que o valor total
                      if qrforma.fieldbyname('valor').asfloat > qrForma.fieldbyname('valor_total').asfloat then
                        QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := -qrForma.fieldbyname('valor_total').asfloat
                      else // Se a FORMA dinheiro for o mesmo valor total
if qrforma.fieldbyname('valor').asfloat = qrForma.fieldbyname('valor_total').asfloat then
                        QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := -qrforma.fieldbyname('valor').asfloat
                      else
                        QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := -(qrforma.fieldbyname('valor').asfloat - qrForma.fieldbyname('valor_troco').asfloat);
                      qrcaixa_mov.ExecSQL;
                      bachou := true;
                    end;
                  end;
                  if not bachou then begin
                    if (qrforma.fieldbyname('forma').asstring = StRecCartaoCR) or (qrforma.fieldbyname('forma').asstring = StRecCartaoDE) then begin
                      // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrForma.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrForma.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      if qrforma.fieldbyname('forma').asstring = StRecCartaoCR then
                        qrcaixa_mov.sql.add('0,:VALOR,''100003'',7,''Cancelamento do Cupom No. ' + qrForma.fieldbyname('numero').asstring + ''')')
                      else
                        qrcaixa_mov.sql.add('0,:VALOR,''100003'',8,''Cancelamento do Cupom No. ' + qrForma.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrPDV.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := -qrforma.fieldbyname('valor').asfloat;
                      qrcaixa_mov.ExecSQL;
                      bachou := true;
                    end;
                  end;
                  if not bachou then begin
                    if qrforma.fieldbyname('forma').asstring = StRecCrediario then begin
                      // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrForma.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrForma.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add('0,:VALOR,''100004'',4,''Cancelamento do Cupom No. ' + qrForma.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrPDV.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := -qrforma.fieldbyname('valor').asfloat;
                      qrcaixa_mov.ExecSQL;
                      bachou := true;
                    end;
                  end;
                  if not bachou then begin
                    if qrforma.fieldbyname('forma').asstring = StRecConvenio then begin
                      // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrForma.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrForma.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add('0,:VALOR,''100005'',40,''Cancelamento do Cupom No. ' + qrForma.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrPDV.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := -qrforma.fieldbyname('valor').asfloat;
                      qrcaixa_mov.ExecSQL;
                      bachou := true;
                    end;
                  end;
                  qrforma.next;
                end;
                qrPDV_Tabela.close;
                qrPDV_Tabela.SQL.clear;
                qrPDV_Tabela.sql.Add('update cupom_cancelar set ex = ' + QuotedStr('S') + 'where NUMERO = ' + QuotedStr(qrpdv.fieldbyname('NUMERO').asstring));
                qrPDV_Tabela.ExecSQL;
                qrpdv.Next;
              end;







              //Fechamento Cego do PDV
              qrpdv.close;
              qrpdv.sql.clear;
              qrpdv.sql.add('select * from fechamento_cego where ex = ' + QuotedStr('N'));
              qrpdv.open;
              qrpdv.first;
              while not qrpdv.eof do begin
                qrcaixa_mov.close;
                qrcaixa_mov.sql.clear;
                qrcaixa_mov.sql.add('insert into fechamento_cego');
                qrcaixa_mov.sql.add('(Data,hora,operador,dinheiro,cheque,conciliado)');
                qrcaixa_mov.sql.add('values');
                qrcaixa_mov.sql.add('(:Data,:hora,:operador,:dinheiro,:cheque,:conciliado)');
                qrcaixa_mov.Params.ParamByName('Data').asdatetime := qrPDV.fieldbyname('data').asdatetime;
                qrcaixa_mov.Params.ParamByName('hora').AsString := qrPDV.fieldbyname('hora').AsString;
                qrcaixa_mov.Params.ParamByName('operador').AsInteger := qrPDV.fieldbyname('operador').AsInteger;
                qrcaixa_mov.Params.ParamByName('dinheiro').AsFloat := qrPDV.fieldbyname('dinheiro').AsFloat;
                qrcaixa_mov.Params.ParamByName('cheque').AsFloat := qrPDV.fieldbyname('cheque').AsFloat;
                qrcaixa_mov.Params.ParamByName('conciliado').AsString := 'N';
                qrcaixa_mov.ExecSQL;

                qrPDV_Tabela.close;
                qrPDV_Tabela.SQL.clear;
                qrPDV_Tabela.sql.Add('update fechamento_cego set ex = ' + QuotedStr('S') + ' where Data = :Data and hora = :hora and operador = :operador');
                qrPDV_Tabela.Params.ParamByName('Data').AsDateTime := qrPDV.fieldbyname('data').asdatetime;
                qrPDV_Tabela.Params.ParamByName('hora').AsString := qrPDV.fieldbyname('hora').AsString;
                qrPDV_Tabela.Params.ParamByName('operador').AsInteger := qrPDV.fieldbyname('operador').AsInteger;
                qrPDV_Tabela.ExecSQL;

                qrpdv.Next;
              end;









              // S E R V I D O R   PARA  E S T A C A O

              try
                // 1 - PRODUTO
                qrServidor.close;
                qrServidor.sql.Clear;
                qrServidor.sql.add('select * from c000058');
                qrServidor.sql.add('where tiporegistro = 1');
                qrservidor.sql.add('and C' + zerar(grid.cell[0, I].asstring, 2) + ' = 0');
                qrServidor.sql.add('order by codigo');
                qrservidor.open;
                qrServidor.first;

                qrConfServer.Close;
                qrConfServer.Open;

                while not qrservidor.eof do begin
                  Application.ProcessMessages;

                  bflag := true;
                  case qrservidor.fieldbyname('movimento').asinteger of
                    1: {inclusao}
                      begin
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - PRODUTO - ' + qrservidor.fieldbyname('codregistro').asstring);

                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select c000025.*, c000100.Estoque_atual');
                        qrServidor_Tabela.sql.add('from c000025, c000100');
                        qrServidor_Tabela.sql.add('where c000025.codigo = c000100.codproduto');
                        qrservidor_tabela.sql.add('and c000025.codigo = ''' + qrservidor.fieldbyname('codregistro').asstring + '''');
                        qrservidor_tabela.open;

                        if qrservidor_tabela.RecordCount > 0 then begin
                          try
                            qrpdv.close;
                            qrpdv.sql.clear;
                            qrpdv.sql.add('insert into ESTOQUE (');
                            qrpdv.sql.add('CODIGO,');
                            qrpdv.sql.add('COD_BARRA,');
                            qrpdv.sql.add('NOME,');
                            qrpdv.sql.add('UNIDADE,');
                            qrpdv.sql.add('PRECO_VENDA,');
                            qrpdv.sql.add('PRECO_PROMOCAO,');
                            qrpdv.sql.add('INICIO_PROMOCAO,');
                            qrpdv.sql.add('FINAL_PROMOCAO,');
                            qrpdv.sql.add('CST,');
                            qrpdv.sql.add('ALIQUOTA,');
                            qrpdv.sql.add('DESCONTO_MAXIMO,');
                            qrpdv.sql.add('ACRECIMO_MAXIMO,');
                            qrpdv.sql.add('ST,');
                            qrpdv.sql.add('ESTOQUE,');
                            qrpdv.sql.add('IAT,');
                            qrpdv.sql.add('IPPT,');
                            qrpdv.sql.add('SITUACAO,');
                            qrpdv.sql.add('CFOP,');
                            qrpdv.sql.add('NCM,');
                            qrpdv.sql.add('ALIQNACIONAL,');
                            qrpdv.sql.add('fotobd,');
                            qrpdv.sql.add('csosn,');
                            qrpdv.sql.add('grupo,');
                            qrpdv.sql.add('usa_balanca,');
                            qrpdv.sql.add('usa_tb_pc,');
                            qrpdv.sql.add('CODIGO_ANP,');
                            qrpdv.sql.add('combo,');
                            qrpdv.sql.add('informa_codigo_barra_xml,');
                            qrpdv.sql.add('pizza');

                            qrpdv.sql.add(') values (');

                            qrpdv.sql.add(':CODIGO,');
                            qrpdv.sql.add(':COD_BARRA,');
                            qrpdv.sql.add(':NOME,');
                            qrpdv.sql.add(':UNIDADE,');
                            qrpdv.sql.add(':PRECO_VENDA,');
                            qrpdv.sql.add(':PRECO_PROMOCAO,');
                            qrpdv.sql.add(':INICIO_PROMOCAO,');
                            qrpdv.sql.add(':FINAL_PROMOCAO,');
                            qrpdv.sql.add(':CST,');
                            qrpdv.sql.add(':ALIQUOTA,');
                            qrpdv.sql.add(':DESCONTO_MAXIMO,');
                            qrpdv.sql.add(':ACRECIMO_MAXIMO,');
                            qrpdv.sql.add(':ST,');
                            qrpdv.sql.add(':ESTOQUE,');
                            qrpdv.sql.add(':IAT,');
                            qrpdv.sql.add(':IPPT,');
                            qrpdv.sql.add(':SITUACAO,');
                            qrpdv.sql.add(':CFOP,');
                            qrpdv.sql.add(':NCM,');
                            qrpdv.sql.add(':ALIQNACIONAL,');
                            qrpdv.sql.add(':fotobd,');
                            qrpdv.sql.add(':csosn,');
                            qrpdv.sql.add(':grupo,');
                            qrpdv.sql.add(':usa_balanca,');
                            qrpdv.sql.add(':usa_tb_pc,');
                            qrpdv.sql.add(':CODIGO_ANP,');
                            qrpdv.sql.add(':combo,');
                            qrpdv.sql.add(':informa_codigo_barra_xml,');
                            qrpdv.sql.add(':pizza');


                            qrpdv.sql.add(')');

                            qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                            qrpdv.parambyname('COD_BARRA').asstring := copy(qrservidor_tabela.fieldbyname('codbarra').asstring, 1, 15);
                            qrpdv.parambyname('NOME').asstring := copy(qrservidor_tabela.fieldbyname('produto').asstring, 1, 80);
                            qrpdv.parambyname('UNIDADE').AsString := qrservidor_tabela.fieldbyname('unidade').asstring;
                            qrpdv.parambyname('PRECO_VENDA').asfloat := Arredondar(qrservidor_tabela.fieldbyname('precovenda').asfloat, 2);
                            qrpdv.parambyname('PRECO_PROMOCAO').asfloat := Arredondar(qrservidor_tabela.fieldbyname('preco_promocao').asfloat, 2);
                            qrpdv.parambyname('INICIO_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('data_promocao').asdatetime;
                            qrpdv.parambyname('FINAL_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('fim_promocao').asdatetime;
                            qrpdv.parambyname('CST').asstring := qrservidor_tabela.fieldbyname('cst').asstring;
                            qrpdv.parambyname('ALIQUOTA').asfloat := qrservidor_tabela.fieldbyname('aliquota').asfloat;
                            qrpdv.parambyname('DESCONTO_MAXIMO').asfloat := qrConfServerDESCONTO_PRODUTO.AsFloat;
                            qrpdv.parambyname('ACRECIMO_MAXIMO').asfloat := qrConfServerACRESCIMO_PRODUTO.AsFloat;
                            qrpdv.parambyname('SITUACAO').AsInteger := 0;
                            qrpdv.parambyname('CFOP').AsString := qrservidor_tabela.fieldbyname('IND_CFOP_NFCE').asstring;
                            ;
                            qrpdv.parambyname('csosn').AsString := qrservidor_tabela.fieldbyname('csosn').asstring;
                            qrpdv.parambyname('grupo').AsString := qrservidor_tabela.fieldbyname('codgrupo').asstring;
                            if qrservidor_tabela.fieldbyname('PESAGEM_AUOTMATICA').AsString = 'S' then
                              qrpdv.parambyname('usa_balanca').AsInteger := 1
                            else
                              qrpdv.parambyname('usa_balanca').AsInteger := 2;
                            qrpdv.parambyname('usa_tb_pc').AsString := qrservidor_tabela.fieldbyname('usa_tb_pc').asstring;

                            scst := qrservidor_tabela.fieldbyname('cst').asstring;

                            if (scst = '060') or (scst = '010') or (scst = '070') then
                              qrpdv.Params.ParamByName('st').asSTRING := 'F'
                            else if (scst = '040') or (scst = '030') then
                              qrpdv.Params.ParamByName('st').asSTRING := 'I'
                            else if (scst = '041') or (scst = '050') or (scst = '051') or (scst = '090') then
                              qrpdv.Params.ParamByName('st').asSTRING := 'N'
                            else
                              qrpdv.ParamByName('st').asSTRING := 'T';

                            qrpdv.parambyname('ESTOQUE').asfloat := qrservidor_tabela.fieldbyname('estoque_atual').asfloat;
                            qrpdv.parambyname('IAT').asstring := qrservidor_tabela.fieldbyname('IAT').AsString;
                            qrpdv.parambyname('IPPT').asstring := qrservidor_tabela.fieldbyname('IPPT').AsString;
                            qrpdv.parambyname('NCM').asstring := qrservidor_tabela.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                            if not qrservidor_tabela.fieldbyname('fotobd').IsNull then begin
                              MemoryStream := TMemoryStream.Create;
                              Jpg := TJpegImage.Create;
                              (qrservidor_tabela.fieldbyname('fotobd') as tblobfield).SaveToStream(MemoryStream);
                              MemoryStream.Position := OffsetMemoryStream;
                              qrpdv.parambyname('fotobd').LoadFromStream(MemoryStream, ftGraphic);
                              freeandnil(MemoryStream);
                            end
                            else
                              qrpdv.parambyname('fotobd').Clear;
                            qrIBPT.Close;
                            qrIBPT.ParamByName('NCM').Value := qrservidor_tabela.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                            qrIBPT.Open;
                            if not qrIBPT.IsEmpty then
                              qrpdv.parambyname('ALIQNACIONAL').AsFloat := qrIBPTALIQNAC.AsFloat
                            else
                              qrpdv.parambyname('ALIQNACIONAL').AsFloat := 0;
                            qrpdv.parambyname('CODIGO_ANP').AsString := qrservidor_tabela.fieldbyname('CODIGO_ANP').AsString;
                            qrpdv.parambyname('combo').AsString := qrservidor_tabela.fieldbyname('combo').AsString;
                            qrpdv.parambyname('informa_codigo_barra_xml').AsString := qrservidor_tabela.fieldbyname('informa_codigo_barra_xml').AsString;
                            qrpdv.parambyname('pizza').AsString := qrservidor_tabela.fieldbyname('pizza').AsString;
                            qrpdv.ExecSQL;
                          except
                            on E: Exception do begin
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - PRODUTO - ' + qrservidor.fieldbyname('codregistro').asstring);

                              qrPDV.close;
                              qrPDV.sql.clear;
                              qrpdv.sql.Add('select codigo from estoque');
                              qrPDV.sql.Add('where codigo = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                              qrpdv.open;
                              if qrPDV.RecordCount = 0 then
                                bflag := false;
                            end;
                          end;
                        end;

                      end;
                    2: {alteracao}
                      begin
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select c000025.*, c000100.Estoque_atual');
                        qrServidor_Tabela.sql.add('from c000025, c000100');
                        qrServidor_Tabela.sql.add('where c000025.codigo = c000100.codproduto');
                        qrservidor_tabela.sql.add('and c000025.codigo = ''' + qrservidor.fieldbyname('codregistro').asstring + '''');
                        qrservidor_tabela.open;

                        if qrservidor_tabela.RecordCount > 0 then begin
                          qrpdv_tabela.close;
                          qrpdv_tabela.sql.clear;
                          qrpdv_tabela.sql.add('select * from ESTOQUE where codigo = ' + inttostr(strtoint(qrservidor_tabela.fieldbyname('codigo').asstring)));
                          qrpdv_tabela.Open;

                          if qrpdv_tabela.RecordCount > 0 then begin
                            // achou o registro e processar com a atualizacao
                            memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - PRODUTO - ' + qrservidor.fieldbyname('codregistro').asstring);
                            try
                              qrpdv.close;
                              qrpdv.sql.clear;
                              qrpdv.sql.add('update ESTOQUE set');
                              qrpdv.sql.add('COD_BARRA = :COD_BARRA,');
                              qrpdv.sql.add('NOME = :NOME,');
                              qrpdv.sql.add('UNIDADE = :UNIDADE,');
                              qrpdv.sql.add('PRECO_VENDA = :PRECO_VENDA,');
                              qrpdv.sql.add('PRECO_PROMOCAO = :PRECO_PROMOCAO,');
                              qrpdv.sql.add('INICIO_PROMOCAO = :INICIO_PROMOCAO,');
                              qrpdv.sql.add('FINAL_PROMOCAO = :FINAL_PROMOCAO,');
                              qrpdv.sql.add('CST = :CST,');
                              qrpdv.sql.add('ALIQUOTA = :ALIQUOTA,');
                              qrpdv.sql.add('DESCONTO_MAXIMO = :DESCONTO_MAXIMO,');
                              qrpdv.sql.add('ACRECIMO_MAXIMO = :ACRECIMO_MAXIMO,');
                              qrpdv.sql.add('ST = :ST,');
                              qrpdv.sql.add('ESTOQUE = :ESTOQUE,');
                              qrpdv.sql.add('IAT = :IAT,');
                              qrpdv.sql.add('IPPT = :IPPT,');
                              qrpdv.sql.add('SITUACAO = :SITUACAO,');
                              qrpdv.sql.add('CFOP = :CFOP,');
                              qrpdv.sql.add('NCM = :NCM,');
                              qrpdv.sql.add('ALIQNACIONAL = :ALIQNACIONAL,');
                              qrpdv.sql.add('fotobd = :fotobd,');
                              qrpdv.sql.add('csosn = :csosn,');
                              qrpdv.sql.add('grupo = :grupo,');
                              qrpdv.sql.add('usa_balanca = :usa_balanca,');
                              qrpdv.sql.add('usa_tb_pc = :usa_tb_pc,');
                              qrpdv.sql.add('CODIGO_ANP = :CODIGO_ANP,');
                              qrpdv.sql.add('combo = :combo,');
                              qrpdv.sql.add('informa_codigo_barra_xml = :informa_codigo_barra_xml,');
                              qrpdv.sql.add('pizza = :pizza');


                              qrpdv.sql.add('where codigo = :codigo');

                              qrpdv.parambyname('CODIGO').asinteger := strtoint(qrservidor_tabela.fieldbyname('codigo').asstring);
                              qrpdv.parambyname('COD_BARRA').asstring := copy(qrservidor_tabela.fieldbyname('codbarra').asstring, 1, 15);
                              qrpdv.parambyname('NOME').asstring := copy(qrservidor_tabela.fieldbyname('produto').asstring, 1, 80);
                              qrpdv.parambyname('UNIDADE').AsString := qrservidor_tabela.fieldbyname('unidade').asstring;
                              qrpdv.parambyname('PRECO_VENDA').asfloat := Arredondar(qrservidor_tabela.fieldbyname('precovenda').asfloat, 2);
                              qrpdv.parambyname('PRECO_PROMOCAO').asfloat := Arredondar(qrservidor_tabela.fieldbyname('preco_promocao').asfloat, 2);
                              qrpdv.parambyname('INICIO_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('data_promocao').asdatetime;
                              qrpdv.parambyname('FINAL_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('fim_promocao').asdatetime;
                              qrpdv.parambyname('CST').asstring := qrservidor_tabela.fieldbyname('cst').asstring;
                              qrpdv.parambyname('ALIQUOTA').asfloat := qrservidor_tabela.fieldbyname('aliquota').asfloat;
                              qrpdv.parambyname('DESCONTO_MAXIMO').asfloat := qrConfServerDESCONTO_PRODUTO.AsFloat;
                              qrpdv.parambyname('ACRECIMO_MAXIMO').asfloat := qrConfServerACRESCIMO_PRODUTO.AsFloat;
                              qrpdv.parambyname('SITUACAO').AsInteger := qrservidor_tabela.fieldbyname('SITUACAO').AsInteger;
                              qrpdv.parambyname('CFOP').AsString := qrservidor_tabela.fieldbyname('IND_CFOP_NFCE').asstring;
                              qrpdv.parambyname('csosn').AsString := qrservidor_tabela.fieldbyname('csosn').asstring;
                              qrpdv.parambyname('grupo').AsString := qrservidor_tabela.fieldbyname('codgrupo').asstring;
                              if qrservidor_tabela.fieldbyname('PESAGEM_AUOTMATICA').AsString = 'S' then
                                qrpdv.parambyname('usa_balanca').AsInteger := 1
                              else
                                qrpdv.parambyname('usa_balanca').AsInteger := 2;
                              qrpdv.parambyname('usa_tb_pc').AsString := qrservidor_tabela.fieldbyname('usa_tb_pc').asstring;

                              scst := qrservidor_tabela.fieldbyname('cst').asstring;

                              if (scst = '060') or (scst = '010') or (scst = '070') then
                                qrpdv.Params.ParamByName('st').asSTRING := 'F'
                              else if (scst = '040') or (scst = '030') then
                                qrpdv.Params.ParamByName('st').asSTRING := 'I'
                              else if (scst = '041') or (scst = '050') or (scst = '051') or (scst = '090') then
                                qrpdv.Params.ParamByName('st').asSTRING := 'N'
                              else
                                qrpdv.ParamByName('st').asSTRING := 'T';

                              qrpdv.parambyname('ESTOQUE').asfloat := qrservidor_tabela.fieldbyname('estoque_atual').asfloat;
                              qrpdv.parambyname('IAT').asstring := qrservidor_tabela.fieldbyname('IAT').AsString;
                              qrpdv.parambyname('IPPT').asstring := qrservidor_tabela.fieldbyname('IPPT').AsString;
                              qrpdv.parambyname('NCM').asstring := qrservidor_tabela.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                              if not qrservidor_tabela.fieldbyname('fotobd').IsNull then begin
                                MemoryStream := TMemoryStream.Create;
                                Jpg := TJpegImage.Create;
                                (qrservidor_tabela.fieldbyname('fotobd') as tblobfield).SaveToStream(MemoryStream);
                                MemoryStream.Position := OffsetMemoryStream;
                                qrpdv.parambyname('fotobd').LoadFromStream(MemoryStream, ftGraphic);
                                freeandnil(MemoryStream);
                              end
                              else
                                qrpdv.parambyname('fotobd').Clear;
                              qrIBPT.Close;
                              qrIBPT.ParamByName('NCM').Value := qrservidor_tabela.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                              qrIBPT.Open;
                              if not qrIBPT.IsEmpty then
                                qrpdv.parambyname('ALIQNACIONAL').AsFloat := qrIBPTALIQNAC.AsFloat
                              else
                                qrpdv.parambyname('ALIQNACIONAL').AsFloat := 0;
                              qrpdv.parambyname('CODIGO_ANP').AsString := qrservidor_tabela.fieldbyname('CODIGO_ANP').AsString;
                              qrpdv.parambyname('combo').AsString := qrservidor_tabela.fieldbyname('combo').AsString;
                              qrpdv.parambyname('informa_codigo_barra_xml').AsString := qrservidor_tabela.fieldbyname('informa_codigo_barra_xml').AsString;
                              qrpdv.parambyname('pizza').AsString := qrservidor_tabela.fieldbyname('pizza').AsString;
                              qrpdv.ExecSQL;
                            except
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - PRODUTO - ' + qrservidor.fieldbyname('codregistro').asstring);
                              bflag := false;
                            end;
                          end
                          else begin
                            // nao existe este registro no pdv... fazer a inclusao
                            try
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - PRODUTO - ' + qrservidor.fieldbyname('codregistro').asstring);
                              qrpdv.close;
                              qrpdv.sql.clear;
                              qrpdv.sql.add('insert into ESTOQUE (');
                              qrpdv.sql.add('CODIGO,');
                              qrpdv.sql.add('COD_BARRA,');
                              qrpdv.sql.add('NOME,');
                              qrpdv.sql.add('UNIDADE,');
                              qrpdv.sql.add('PRECO_VENDA,');
                              qrpdv.sql.add('PRECO_PROMOCAO,');
                              qrpdv.sql.add('INICIO_PROMOCAO,');
                              qrpdv.sql.add('FINAL_PROMOCAO,');
                              qrpdv.sql.add('CST,');
                              qrpdv.sql.add('ALIQUOTA,');
                              qrpdv.sql.add('DESCONTO_MAXIMO,');
                              qrpdv.sql.add('ACRECIMO_MAXIMO,');
                              qrpdv.sql.add('ST,');
                              qrpdv.sql.add('ESTOQUE,');
                              qrpdv.sql.add('IAT,');
                              qrpdv.sql.add('IPPT,');
                              qrpdv.sql.add('CFOP,');
                              qrpdv.sql.add('NCM');
                              qrpdv.sql.add('SITUACAO,');
                              qrpdv.sql.add('fotobd,');
                              qrpdv.sql.add('csosn,');
                              qrpdv.sql.add('grupo,');
                              qrpdv.sql.add('usa_balanca,');
                              qrpdv.sql.add('usa_tb_pc,');
                              qrpdv.sql.add('CODIGO_ANP,');
                              qrpdv.sql.add('combo,');
                              qrpdv.sql.add('informa_codigo_barra_xml,');
                              qrpdv.sql.add('pizza');

                              qrpdv.sql.add(') values (');

                              qrpdv.sql.add(':CODIGO,');
                              qrpdv.sql.add(':COD_BARRA,');
                              qrpdv.sql.add(':NOME,');
                              qrpdv.sql.add(':UNIDADE,');
                              qrpdv.sql.add(':PRECO_VENDA,');
                              qrpdv.sql.add(':PRECO_PROMOCAO,');
                              qrpdv.sql.add(':INICIO_PROMOCAO,');
                              qrpdv.sql.add(':FINAL_PROMOCAO,');
                              qrpdv.sql.add(':CST,');
                              qrpdv.sql.add(':ALIQUOTA,');
                              qrpdv.sql.add(':DESCONTO_MAXIMO,');
                              qrpdv.sql.add(':ACRECIMO_MAXIMO,');
                              qrpdv.sql.add(':ST,');
                              qrpdv.sql.add(':ESTOQUE,');
                              qrpdv.sql.add(':IAT,');
                              qrpdv.sql.add(':IPPT,');
                              qrpdv.sql.add(':CFOP,');
                              qrpdv.sql.add(':NCM');
                              qrpdv.sql.add(':SITUACAO,');
                              qrpdv.sql.add(':fotobd,');
                              qrpdv.sql.add(':csosn,');
                              qrpdv.sql.add(':grupo,');
                              qrpdv.sql.add(':usa_balanca,');
                              qrpdv.sql.add(':usa_tb_pc,');
                              qrpdv.sql.add(':CODIGO_ANP,');
                              qrpdv.sql.add(':combo,');
                              qrpdv.sql.add(':informa_codigo_barra_xml,');
                              qrpdv.sql.add(':pizza');

                              qrpdv.sql.add(')');

                              qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                              qrpdv.parambyname('COD_BARRA').asstring := copy(qrservidor_tabela.fieldbyname('codbarra').asstring, 1, 15);
                              qrpdv.parambyname('NOME').asstring := copy(qrservidor_tabela.fieldbyname('produto').asstring, 1, 80);
                              qrpdv.parambyname('UNIDADE').AsString := qrservidor_tabela.fieldbyname('unidade').asstring;
                              qrpdv.parambyname('PRECO_VENDA').asfloat := Arredondar(qrservidor_tabela.fieldbyname('precovenda').asfloat, 2);
                              qrpdv.parambyname('PRECO_PROMOCAO').asfloat := Arredondar(qrservidor_tabela.fieldbyname('preco_promocao').asfloat, 2);
                              qrpdv.parambyname('INICIO_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('data_promocao').asdatetime;
                              qrpdv.parambyname('FINAL_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('fim_promocao').asdatetime;
                              qrpdv.parambyname('CST').asstring := qrservidor_tabela.fieldbyname('cst').asstring;
                              qrpdv.parambyname('ALIQUOTA').asfloat := qrservidor_tabela.fieldbyname('aliquota').asfloat;
                              qrpdv.parambyname('DESCONTO_MAXIMO').asfloat := qrConfServerDESCONTO_PRODUTO.AsFloat;
                              qrpdv.parambyname('ACRECIMO_MAXIMO').asfloat := qrConfServerACRESCIMO_PRODUTO.AsFloat;
                              qrpdv.parambyname('SITUACAO').AsInteger := qrservidor_tabela.fieldbyname('SITUACAO').AsInteger;
                              qrpdv.parambyname('CFOP').AsString := qrservidor_tabela.fieldbyname('IND_CFOP_NFCE').asstring;
                              qrpdv.parambyname('NCM').asstring := qrservidor_tabela.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                              qrpdv.parambyname('csosn').asstring := qrservidor_tabela.fieldbyname('csosn').AsString;
                              qrpdv.parambyname('grupo').asstring := qrservidor_tabela.fieldbyname('codgrupo').AsString;
                              if qrservidor_tabela.fieldbyname('PESAGEM_AUOTMATICA').AsString = 'S' then
                                qrpdv.parambyname('usa_balanca').AsInteger := 1
                              else
                                qrpdv.parambyname('usa_balanca').AsInteger := 2;
                              qrpdv.parambyname('usa_tb_pc').asstring := qrservidor_tabela.fieldbyname('usa_tb_pc').AsString;

                              if not qrservidor_tabela.fieldbyname('fotobd').IsNull then begin
                                MemoryStream := TMemoryStream.Create;
                                Jpg := TJpegImage.Create;
                                (qrservidor_tabela.fieldbyname('fotobd') as tblobfield).SaveToStream(MemoryStream);
                                MemoryStream.Position := OffsetMemoryStream;
                                qrpdv.parambyname('fotobd').LoadFromStream(MemoryStream, ftGraphic);
                                freeandnil(MemoryStream);
                              end
                              else
                                qrpdv.parambyname('fotobd').Clear;

                              scst := qrservidor_tabela.fieldbyname('cst').asstring;

                              if (scst = '060') or (scst = '010') or (scst = '070') then
                                qrpdv.Params.ParamByName('st').asSTRING := 'F'
                              else if (scst = '040') or (scst = '030') then
                                qrpdv.Params.ParamByName('st').asSTRING := 'I'
                              else if (scst = '041') or (scst = '050') or (scst = '051') or (scst = '090') then
                                qrpdv.Params.ParamByName('st').asSTRING := 'N'
                              else
                                qrpdv.ParamByName('st').asSTRING := 'T';

                              qrpdv.parambyname('ESTOQUE').asfloat := qrservidor_tabela.fieldbyname('estoque_atual').asfloat;
                              qrpdv.parambyname('IAT').asstring := qrservidor_tabela.fieldbyname('IAT').AsString;
                              qrpdv.parambyname('IPPT').asstring := qrservidor_tabela.fieldbyname('IPPT').AsString;
                              qrpdv.parambyname('CODIGO_ANP').AsString := qrservidor_tabela.fieldbyname('CODIGO_ANP').AsString;
                              qrpdv.parambyname('combo').AsString := qrservidor_tabela.fieldbyname('combo').AsString;
                              qrpdv.parambyname('informa_codigo_barra_xml').AsString := qrservidor_tabela.fieldbyname('informa_codigo_barra_xml').AsString;
                              qrpdv.parambyname('pizza').AsString := qrservidor_tabela.fieldbyname('pizza').AsString;
                              qrpdv.ExecSQL;
                            except
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - PRODUTO - ' + qrservidor.fieldbyname('codregistro').asstring);
                              qrPDV.close;
                              qrPDV.sql.clear;
                              qrpdv.sql.Add('select codigo from estoque');
                              qrPDV.sql.Add('where codigo = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                              qrpdv.open;
                              if qrPDV.RecordCount = 0 then
                                bflag := false;
                            end;
                          end;
                        end;
                      end;
                    3: {exclusao}
                      begin
                        try
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - EXC - PRODUTO - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.close;
                          qrpdv.sql.clear;
                          qrpdv.sql.add('delete from estoque where codigo = :codigo');
                          qrpdv.parambyname('CODIGO').asinteger := strtoint(qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.ExecSQL;
                        except
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - EXC - PRODUTO - ' + qrservidor.fieldbyname('codregistro').asstring);
                          bflag := FALSE;
                        end;
                      end;
                  end;

                  if bflag then begin
                    try

                      // atualizar a flag no servidor
                      qrservidor_tabela.close;
                      qrservidor_tabela.sql.clear;
                      qrservidor_tabela.sql.add('update c000058 set');
                      qrservidor_tabela.sql.add('C' + Zerar(grid.cell[0, I].asstring, 2) + ' = 1');
                      qrservidor_tabela.sql.add('where codigo = ' + qrServidor.fieldbyname('codigo').asstring);
                      qrservidor_tabela.ExecSQL;
                      memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ATUALIZOU PRODUTO - ' + qrServidor.fieldbyname('codREGISTRO').asstring);
                    except
                      on E: EXCEPTION do
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ERRO: ' + E.MESSAGE);
                    end;
                  end;
                  qrservidor.Next
                end;


                // 2 - CLIENTE
                qrServidor.close;
                qrServidor.sql.Clear;
                qrServidor.sql.add('select * from c000058');
                qrServidor.sql.add('where tiporegistro = 4');
                qrservidor.sql.add('and C' + zerar(grid.cell[0, I].asstring, 2) + ' = 0');
                qrServidor.sql.add('order by codigo');
                qrservidor.open;
                qrservidor.First;

                while not qrservidor.eof do begin
                  Application.ProcessMessages;

                  bflag := TRUE;
                  case qrservidor.fieldbyname('movimento').asinteger of
                    1: {inclusao}
                      begin
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - CLIENTE - ' + qrservidor.fieldbyname('codregistro').asstring);
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000007');
                        qrServidor_Tabela.sql.add('where codigo =  ''' + qrservidor.fieldbyname('codregistro').asstring + '''');
                        qrservidor_tabela.open;

                        try
                          if qrservidor_tabela.RecordCount > 0 then begin
                            qrpdv.close;
                            qrpdv.sql.clear;
                            qrpdv.sql.add('insert into CLIENTE (');

                            qrpdv.sql.add('CODIGO,');
                            qrpdv.sql.add('NOME,');
                            qrpdv.sql.add('CPF,');
                            qrpdv.sql.add('ENDERECO,');
                            qrpdv.sql.add('COMPLEMENTO,');
                            qrpdv.sql.add('BAIRRO,');
                            qrpdv.sql.add('CIDADE,');
                            qrpdv.sql.add('UF,');
                            qrpdv.sql.add('CEP,');
                            qrpdv.sql.add('SITUACAO,');
                            qrpdv.sql.add('OBS,');
                            qrpdv.sql.add('LIMITE,');
                            qrpdv.sql.add('UTILIZADO,');
                            qrpdv.sql.add('DISPONIVEL,');
                            qrpdv.sql.add('ATUALIZADO');
                            qrpdv.sql.add(') values (');

                            qrpdv.sql.add(':CODIGO,');
                            qrpdv.sql.add(':NOME,');
                            qrpdv.sql.add(':CPF,');
                            qrpdv.sql.add(':ENDERECO,');
                            qrpdv.sql.add(':COMPLEMENTO,');
                            qrpdv.sql.add(':BAIRRO,');
                            qrpdv.sql.add(':CIDADE,');
                            qrpdv.sql.add(':UF,');
                            qrpdv.sql.add(':CEP,');
                            qrpdv.sql.add(':SITUACAO,');
                            qrpdv.sql.add(':OBS,');
                            qrpdv.sql.add(':LIMITE,');
                            qrpdv.sql.add(':UTILIZADO,');
                            qrpdv.sql.add(':DISPONIVEL,');
                            qrpdv.sql.add(':ATUALIZADO');

                            qrpdv.sql.add(')');

                            qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                            qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                            qrpdv.parambyname('CPF').asstring := qrservidor_tabela.fieldbyname('cpf').asstring;
                            qrpdv.parambyname('ENDERECO').asstring := qrservidor_tabela.fieldbyname('endereco').asstring;
                            qrpdv.parambyname('COMPLEMENTO').asstring := qrservidor_tabela.fieldbyname('complemento').asstring;
                            qrpdv.parambyname('BAIRRO').asstring := qrservidor_tabela.fieldbyname('bairro').asstring;
                            qrpdv.parambyname('CIDADE').asstring := qrservidor_tabela.fieldbyname('cidade').asstring;
                            qrpdv.parambyname('UF').asstring := qrservidor_tabela.fieldbyname('uf').asstring;
                            qrpdv.parambyname('CEP').asstring := qrservidor_tabela.fieldbyname('cep').asstring;
                            if trim(qrservidor_tabela.fieldbyname('situacao').asstring) = '' then
                              qrpdv.parambyname('SITUACAO').asstring := '1'
                            else
                              qrpdv.parambyname('SITUACAO').asstring := qrservidor_tabela.fieldbyname('situacao').asstring;
                            qrpdv.parambyname('OBS').Asstring := qrservidor_tabela.fieldbyname('obs1').asstring + #13 + qrservidor_tabela.fieldbyname('obs2').asstring + #13 + qrservidor_tabela.fieldbyname('obs3').asstring + #13 + qrservidor_tabela.fieldbyname('obs4').asstring + #13 + qrservidor_tabela.fieldbyname('obs5').asstring + #13 + qrservidor_tabela.fieldbyname('obs6').asstring;
                            qrpdv.parambyname('LIMITE').asFLOAT := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                            qrpdv.parambyname('UTILIZADO').asfloat := verifica_crediario(qrservidor_tabela.fieldbyname('codigo').asstring);
                            qrpdv.parambyname('DISPONIVEL').asfloat := qrpdv.parambyname('LIMITE').asFLOAT - qrpdv.parambyname('UTILIZADO').asfloat;
                            qrpdv.parambyname('ATUALIZADO').asstring := datetostr(date) + ' AS ' + TimeToStr(TIME);
                            qrpdv.ExecSQL;
                          end;
                        except
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CLIENTE - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrPDV.close;
                          qrpdv.sql.clear;
                          qrPDV.sql.Add('select codigo from CLIENTE');
                          qrpdv.sql.Add('where codigo = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                          qrPDV.Open;
                          if qrpdv.RecordCount = 0 then
                            bflag := false;
                        end;
                      end;
                    2: {alteracao}
                      begin
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000007');
                        qrServidor_Tabela.sql.add('where codigo =  ''' + qrservidor.fieldbyname('codregistro').asstring + '''');
                        qrservidor_tabela.open;

                        if qrservidor_tabela.RecordCount > 0 then begin
                          qrpdv_tabela.close;
                          qrpdv_tabela.sql.clear;
                          qrpdv_tabela.sql.add('select codigo from cliente where codigo = ' + inttostr(strtoint(qrservidor_tabela.fieldbyname('codigo').asstring)));
                          qrpdv_tabela.Open;

                          if qrPDV_Tabela.RecordCount > 0 then begin
                            try
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - CLIENTE - ' + qrservidor.fieldbyname('codregistro').asstring);
                              qrpdv.close;
                              qrpdv.sql.clear;
                              qrpdv.sql.add('update CLIENTE set');

                              qrpdv.sql.add('CODIGO = :CODIGO,');
                              qrpdv.sql.add('NOME = :NOME,');
                              qrpdv.sql.add('CPF = :CPF,');
                              qrpdv.sql.add('ENDERECO = :ENDERECO,');
                              qrpdv.sql.add('COMPLEMENTO = :COMPLEMENTO,');
                              qrpdv.sql.add('BAIRRO = :BAIRRO,');
                              qrpdv.sql.add('CIDADE = :CIDADE,');
                              qrpdv.sql.add('UF = :UF,');
                              qrpdv.sql.add('CEP = :CEP,');
                              qrpdv.sql.add('SITUACAO = :SITUACAO,');
                              qrpdv.sql.add('OBS = :OBS,');
                              qrpdv.sql.add('LIMITE = :LIMITE,');
                              qrpdv.sql.add('UTILIZADO = :UTILIZADO,');
                              qrpdv.sql.add('DISPONIVEL = :DISPONIVEL,');
                              qrpdv.sql.add('ATUALIZADO = :ATUALIZADO');
                              qrpdv.sql.add('where codigo = :codigo');

                              qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                              qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                              qrpdv.parambyname('CPF').asstring := qrservidor_tabela.fieldbyname('cpf').asstring;
                              qrpdv.parambyname('ENDERECO').asstring := qrservidor_tabela.fieldbyname('endereco').asstring;
                              qrpdv.parambyname('COMPLEMENTO').asstring := qrservidor_tabela.fieldbyname('complemento').asstring;
                              qrpdv.parambyname('BAIRRO').asstring := qrservidor_tabela.fieldbyname('bairro').asstring;
                              qrpdv.parambyname('CIDADE').asstring := qrservidor_tabela.fieldbyname('cidade').asstring;
                              qrpdv.parambyname('UF').asstring := qrservidor_tabela.fieldbyname('uf').asstring;
                              qrpdv.parambyname('CEP').asstring := qrservidor_tabela.fieldbyname('cep').asstring;
                              if trim(qrservidor_tabela.fieldbyname('situacao').asstring) = '' then
                                qrpdv.parambyname('SITUACAO').asstring := '1'
                              else
                                qrpdv.parambyname('SITUACAO').asstring := qrservidor_tabela.fieldbyname('situacao').asstring;
                              qrpdv.parambyname('OBS').asstring := qrservidor_tabela.fieldbyname('obs1').asstring + #13 + qrservidor_tabela.fieldbyname('obs2').asstring + #13 + qrservidor_tabela.fieldbyname('obs3').asstring + #13 + qrservidor_tabela.fieldbyname('obs4').asstring + #13 + qrservidor_tabela.fieldbyname('obs5').asstring + #13 + qrservidor_tabela.fieldbyname('obs6').asstring;
                              qrpdv.parambyname('LIMITE').asFLOAT := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                              qrpdv.parambyname('UTILIZADO').asfloat := verifica_crediario(qrservidor_tabela.fieldbyname('codigo').asstring);
                              qrpdv.parambyname('DISPONIVEL').asfloat := qrpdv.parambyname('LIMITE').asFLOAT - qrpdv.parambyname('UTILIZADO').asfloat;
                              qrpdv.parambyname('ATUALIZADO').asstring := datetostr(date) + ' AS ' + TimeToStr(TIME);
                              qrpdv.ExecSQL;
                            except
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - CLIENTE - ' + qrservidor.fieldbyname('codregistro').asstring);
                              bflag := FALSE;
                            end;
                          end
                          else begin
                            try
                              if qrservidor_tabela.RecordCount > 0 then begin
                                qrpdv.close;
                                qrpdv.sql.clear;
                                qrpdv.sql.add('insert into CLIENTE (');
                                qrpdv.sql.add('CODIGO,');
                                qrpdv.sql.add('NOME,');
                                qrpdv.sql.add('CPF,');
                                qrpdv.sql.add('ENDERECO,');
                                qrpdv.sql.add('COMPLEMENTO,');
                                qrpdv.sql.add('BAIRRO,');
                                qrpdv.sql.add('CIDADE,');
                                qrpdv.sql.add('UF,');
                                qrpdv.sql.add('CEP,');
                                qrpdv.sql.add('SITUACAO,');
                                qrpdv.sql.add('OBS,');
                                qrpdv.sql.add('LIMITE,');
                                qrpdv.sql.add('UTILIZADO,');
                                qrpdv.sql.add('DISPONIVEL,');
                                qrpdv.sql.add('ATUALIZADO');
                                qrpdv.sql.add(') values (');
                                qrpdv.sql.add(':CODIGO,');
                                qrpdv.sql.add(':NOME,');
                                qrpdv.sql.add(':CPF,');
                                qrpdv.sql.add(':ENDERECO,');
                                qrpdv.sql.add(':COMPLEMENTO,');
                                qrpdv.sql.add(':BAIRRO,');
                                qrpdv.sql.add(':CIDADE,');
                                qrpdv.sql.add(':UF,');
                                qrpdv.sql.add(':CEP,');
                                qrpdv.sql.add(':SITUACAO,');
                                qrpdv.sql.add(':OBS,');
                                qrpdv.sql.add(':LIMITE,');
                                qrpdv.sql.add(':UTILIZADO,');
                                qrpdv.sql.add(':DISPONIVEL,');
                                qrpdv.sql.add(':ATUALIZADO');
                                qrpdv.sql.add(')');
                                qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                                qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                                qrpdv.parambyname('CPF').asstring := qrservidor_tabela.fieldbyname('cpf').asstring;
                                qrpdv.parambyname('ENDERECO').asstring := qrservidor_tabela.fieldbyname('endereco').asstring;
                                qrpdv.parambyname('COMPLEMENTO').asstring := qrservidor_tabela.fieldbyname('complemento').asstring;
                                qrpdv.parambyname('BAIRRO').asstring := qrservidor_tabela.fieldbyname('bairro').asstring;
                                qrpdv.parambyname('CIDADE').asstring := qrservidor_tabela.fieldbyname('cidade').asstring;
                                qrpdv.parambyname('UF').asstring := qrservidor_tabela.fieldbyname('uf').asstring;
                                qrpdv.parambyname('CEP').asstring := qrservidor_tabela.fieldbyname('cep').asstring;
                                qrpdv.parambyname('SITUACAO').asstring := qrservidor_tabela.fieldbyname('situacao').asstring;
                                qrpdv.parambyname('OBS').asstring := qrservidor_tabela.fieldbyname('obs1').asstring + #13 + qrservidor_tabela.fieldbyname('obs2').asstring + #13 + qrservidor_tabela.fieldbyname('obs3').asstring + #13 + qrservidor_tabela.fieldbyname('obs4').asstring + #13 + qrservidor_tabela.fieldbyname('obs5').asstring + #13 + qrservidor_tabela.fieldbyname('obs6').asstring;
                                qrpdv.parambyname('LIMITE').asFLOAT := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                                qrpdv.parambyname('UTILIZADO').asfloat := verifica_crediario(qrservidor_tabela.fieldbyname('codigo').asstring);
                                qrpdv.parambyname('DISPONIVEL').asfloat := qrpdv.parambyname('LIMITE').asFLOAT - qrpdv.parambyname('UTILIZADO').asfloat;
                                qrpdv.parambyname('ATUALIZADO').asstring := datetostr(date) + ' AS ' + TimeToStr(TIME);
                                qrpdv.ExecSQL;
                              end;
                            except
                              on E: exception do begin
                                memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CLIENTE - ' + qrservidor.fieldbyname('codregistro').asstring);
                                memo1.lines.add('* ' + E.message);
                                qrPDV.close;
                                qrpdv.sql.clear;
                                qrPDV.sql.Add('select codigo from CLIENTE');
                                qrpdv.sql.Add('where codigo = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                                qrPDV.Open;
                                if qrpdv.RecordCount = 0 then
                                  bflag := false;
                              end;
                            end;
                          end;
                        end;

                      end;
                    3: {exclusao}
                      begin
                        try
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - EXC - CLIENTE - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.close;
                          qrpdv.sql.clear;
                          qrpdv.sql.add('delete from cliente where codigo = :codigo');
                          qrpdv.parambyname('CODIGO').asinteger := strtoint(qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.ExecSQL;
                        except
                          on E: Exception do begin
                            memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - EXC - CLIENTE - ' + qrservidor.fieldbyname('codregistro').asstring);
                            bflag := FALSE;

                            if POS('FOREIGN', AnsiUpperCase(E.Message)) > 0 then
                              memo1.lines.add('*** Cliente acima n�o pode ser apagado, pois existe cupom em seu nome!');

                          end;
                        end;
                      end;
                  end;

                  if bflag then begin
                    try
                   // atualizar a flag no servidor
                      qrservidor_tabela.close;
                      qrservidor_tabela.sql.clear;
                      qrservidor_tabela.sql.add('update c000058 set');
                      qrservidor_tabela.sql.add('C' + Zerar(grid.cell[0, I].asstring, 2) + ' = 1');
                      qrservidor_tabela.sql.add('where codigo = ' + qrServidor.fieldbyname('codigo').asstring);
                      qrservidor_tabela.ExecSQL;
                      memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ATUALIZOU CLIENTE - ' + qrServidor.fieldbyname('codREGISTRO').asstring);
                    except
                      on E: EXCEPTION do
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ERRO: ' + E.MESSAGE);
                    end;
                  end;
                  qrservidor.Next

                end;


                // 2 - CLIENTE - Pego por quem
                qrServidor.close;
                qrServidor.sql.Clear;
                qrServidor.sql.add('select * from c000058');
                qrServidor.sql.add('where tiporegistro = 70');
                qrservidor.sql.add('and C' + zerar(grid.cell[0, I].asstring, 2) + ' = 0');
                qrServidor.sql.add('order by codigo');
                qrservidor.open;
                qrservidor.First;

                while not qrservidor.eof do begin
                  Application.ProcessMessages;
                  bflag := TRUE;
                  case qrservidor.fieldbyname('movimento').asinteger of
                    1: {inclusao}
                      begin
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - CLIENTE PEGO POR - ' + qrservidor.fieldbyname('codregistro').asstring);
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000070');
                        qrServidor_Tabela.sql.add('where codigo =  ' + qrservidor.fieldbyname('codregistro').asstring);
                        qrservidor_tabela.open;

                        try
                          if qrservidor_tabela.RecordCount > 0 then begin
                            qrpdv.close;
                            qrpdv.sql.clear;
                            qrpdv.sql.add('insert into CLIENTE_AUT (');
                            qrpdv.sql.add('CODIGO,');
                            qrpdv.sql.add('CODCLIENTE,');
                            qrpdv.sql.add('NOME');
                            qrpdv.sql.add(') values (');
                            qrpdv.sql.add(':CODIGO,');
                            qrpdv.sql.add(':CODCLIENTE,');
                            qrpdv.sql.add(':NOME');
                            qrpdv.sql.add(')');
                            qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('CODIGO').asstring;
                            qrpdv.parambyname('CODCLIENTE').asstring := qrservidor_tabela.fieldbyname('CODCLIENTE').asstring;
                            qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring + ' - ' + qrservidor_tabela.fieldbyname('PARENTESCO').asstring;
                            qrpdv.ExecSQL;
                          end;
                        except
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CLIENTE PEGO POR - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrPDV.close;
                          qrpdv.sql.clear;
                          qrPDV.sql.Add('select codigo from CLIENTE_AUT');
                          qrpdv.sql.Add('where codigo = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                          qrPDV.Open;
                          if qrpdv.RecordCount = 0 then
                            bflag := false;
                        end;
                      end;
                    2: {alteracao}
                      begin
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000070');
                        qrServidor_Tabela.sql.add('where codigo =  ''' + qrservidor.fieldbyname('codregistro').asstring + '''');
                        qrservidor_tabela.open;
                        if qrservidor_tabela.RecordCount > 0 then begin
                          qrpdv_tabela.close;
                          qrpdv_tabela.sql.clear;
                          qrpdv_tabela.sql.add('select codigo from CLIENTE_AUT where codigo = ' + inttostr(strtoint(qrservidor_tabela.fieldbyname('codigo').asstring)));
                          qrpdv_tabela.Open;
                          if qrPDV_Tabela.RecordCount > 0 then begin
                            try
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - CLIENTE PEGO POR - ' + qrservidor.fieldbyname('codregistro').asstring);
                              qrpdv.close;
                              qrpdv.sql.clear;
                              qrpdv.sql.add('update CLIENTE_AUT set');

                              qrpdv.sql.add('CODIGO = :CODIGO,');
                              qrpdv.sql.add('CODCLIENTE = :CODCLIENTE,');
                              qrpdv.sql.add('NOME = :NOME');
                              qrpdv.sql.add('where codigo = :codigo');

                              qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                              qrpdv.parambyname('CODCLIENTE').asstring := qrservidor_tabela.fieldbyname('CODCLIENTE').asstring;
                              qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring + ' - ' + qrservidor_tabela.fieldbyname('PARENTESCO').asstring;
                              qrpdv.ExecSQL;
                            except
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - CLIENTE PEGO POR - ' + qrservidor.fieldbyname('codregistro').asstring);
                              bflag := FALSE;
                            end;
                          end
                          else begin
                            try
                              if qrservidor_tabela.RecordCount > 0 then begin
                                qrpdv.close;
                                qrpdv.sql.clear;
                                qrpdv.sql.add('insert into CLIENTE_AUT (');
                                qrpdv.sql.add('CODIGO,');
                                qrpdv.sql.add('CODCLIENTE,');
                                qrpdv.sql.add('NOME,');
                                qrpdv.sql.add(') values (');
                                qrpdv.sql.add(':CODIGO,');
                                qrpdv.sql.add(':CODCLIENTE,');
                                qrpdv.sql.add(':NOME,');
                                qrpdv.sql.add(')');
                                qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                                qrpdv.parambyname('CODCLIENTE').asstring := qrservidor_tabela.fieldbyname('CODCLIENTE').asstring;
                                qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring + ' - ' + qrservidor_tabela.fieldbyname('PARENTESCO').asstring;
                                qrpdv.ExecSQL;
                              end;
                            except
                              on E: exception do begin
                                memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CLIENTE PEGO POR - ' + qrservidor.fieldbyname('codregistro').asstring);
                                memo1.lines.add('* ' + E.message);
                                qrPDV.close;
                                qrpdv.sql.clear;
                                qrPDV.sql.Add('select codigo from CLIENTE_AUT');
                                qrpdv.sql.Add('where codigo = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                                qrPDV.Open;
                                if qrpdv.RecordCount = 0 then
                                  bflag := false;
                              end;
                            end;
                          end;
                        end;

                      end;
                    3: {exclusao}
                      begin
                        try
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - EXC - CLIENTE PEGO POR - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.close;
                          qrpdv.sql.clear;
                          qrpdv.sql.add('delete from CLIENTE_AUT where codigo = :codigo');
                          qrpdv.parambyname('CODIGO').asinteger := strtoint(qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.ExecSQL;
                        except
                          on E: Exception do begin
                            memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - EXC - CLIENTE PEGO POR - ' + qrservidor.fieldbyname('codregistro').asstring);
                            bflag := FALSE;
                          end;
                        end;
                      end;
                  end;

                  if bflag then begin
                    try
                   // atualizar a flag no servidor
                      qrservidor_tabela.close;
                      qrservidor_tabela.sql.clear;
                      qrservidor_tabela.sql.add('update c000058 set');
                      qrservidor_tabela.sql.add('C' + Zerar(grid.cell[0, I].asstring, 2) + ' = 1');
                      qrservidor_tabela.sql.add('where codigo = ' + qrServidor.fieldbyname('codigo').asstring);
                      qrservidor_tabela.ExecSQL;
                      memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ATUALIZOU CLIENTE PEGO POR - ' + qrServidor.fieldbyname('codREGISTRO').asstring);
                    except
                      on E: EXCEPTION do
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ERRO: ' + E.MESSAGE);
                    end;
                  end;
                  qrservidor.Next

                end;




                // CONV�NIO
                qrServidor.close;
                qrServidor.sql.Clear;
                qrServidor.sql.add('select * from c000058');
                qrServidor.sql.add('where tiporegistro = 71');
                qrservidor.sql.add('and C' + zerar(grid.cell[0, I].asstring, 2) + ' = 0');
                qrServidor.sql.add('order by codigo');
                qrservidor.open;
                qrservidor.First;

                while not qrservidor.eof do begin
                  Application.ProcessMessages;
                  bflag := TRUE;
                  case qrservidor.fieldbyname('movimento').asinteger of
                    1: {inclusao}
                      begin
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - CONV�NIO - ' + qrservidor.fieldbyname('codregistro').asstring);
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000071');
                        qrServidor_Tabela.sql.add('where codigo =  ' + qrservidor.fieldbyname('codregistro').asstring);
                        qrservidor_tabela.open;

                        try
                          if qrservidor_tabela.RecordCount > 0 then begin
                            qrLimiteConvenio.Close;
                            qrLimiteConvenio.Params.Items[0].Value := qrservidor_tabela.fieldbyname('codigo').asstring;
                            qrLimiteConvenio.Open;
                            qrpdv.close;
                            qrpdv.sql.clear;
                            qrpdv.sql.add('insert into CONVENIO (');

                            qrpdv.sql.add('CODIGO,');
                            qrpdv.sql.add('NOME,');
                            qrpdv.sql.add('LIMITE,');
                            qrpdv.sql.add('UTILIZADO,');
                            qrpdv.sql.add('SALDO,');
                            qrpdv.sql.add('ATU_DATA,');
                            qrpdv.sql.add('ATU_HORA,');
                            qrpdv.sql.add('desconto');
                            qrpdv.sql.add(') values (');

                            qrpdv.sql.add(':CODIGO,');
                            qrpdv.sql.add(':NOME,');
                            qrpdv.sql.add(':LIMITE,');
                            qrpdv.sql.add(':UTILIZADO,');
                            qrpdv.sql.add(':SALDO,');
                            qrpdv.sql.add(':ATU_DATA,');
                            qrpdv.sql.add(':ATU_HORA,');
                            qrpdv.sql.add(':desconto');

                            qrpdv.sql.add(')');

                            qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                            qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                            qrpdv.parambyname('LIMITE').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                            qrpdv.parambyname('UTILIZADO').AsFloat := qrLimiteConvenioTOTAL_GERAL.AsFloat;
                            ;
                            qrpdv.parambyname('SALDO').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat - qrLimiteConvenioTOTAL_GERAL.AsFloat;
                            qrpdv.parambyname('ATU_DATA').AsDate := Date;
                            qrpdv.parambyname('ATU_HORA').AsString := FormatDateTime('HH:MM:SS', Time);
                            qrpdv.parambyname('desconto').AsFloat := qrservidor_tabela.fieldbyname('desconto').AsFloat;
                            qrpdv.ExecSQL;
                          end;
                        except
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CONV�NIO - ' + qrservidor.fieldbyname('codregistro').asstring);
                          bflag := false;
                        end;
                      end;
                    2: {alteracao}
                      begin
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000071');
                        qrServidor_Tabela.sql.add('where codigo =  ''' + qrservidor.fieldbyname('codregistro').asstring + '''');
                        qrservidor_tabela.open;
                        if qrservidor_tabela.RecordCount > 0 then begin
                          qrpdv_tabela.close;
                          qrpdv_tabela.sql.clear;
                          qrpdv_tabela.sql.add('select codigo from CONVENIO where codigo = ' + inttostr(strtoint(qrservidor_tabela.fieldbyname('codigo').asstring)));
                          qrpdv_tabela.Open;
                          if qrPDV_Tabela.RecordCount > 0 then begin
                            try
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - CONVENIO - ' + qrservidor.fieldbyname('codregistro').asstring);
                              qrLimiteConvenio.Close;
                              qrLimiteConvenio.Params.Items[0].Value := qrservidor_tabela.fieldbyname('codigo').asstring;
                              qrLimiteConvenio.Open;

                              qrpdv.close;
                              qrpdv.sql.clear;
                              qrpdv.sql.add('update CONVENIO set');

                              qrpdv.sql.add('CODIGO = :CODIGO,');
                              qrpdv.sql.add('NOME = :NOME,');
                              qrpdv.sql.add('LIMITE = :LIMITE,');
                              qrpdv.sql.add('UTILIZADO = :UTILIZADO,');
                              qrpdv.sql.add('SALDO = :SALDO,');
                              qrpdv.sql.add('ATU_DATA = :ATU_DATA,');
                              qrpdv.sql.add('ATU_HORA = :ATU_HORA,');
                              qrpdv.sql.add('desconto = :desconto');
                              qrpdv.sql.add('where codigo = :codigo');

                              qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                              qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                              qrpdv.parambyname('LIMITE').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                              qrpdv.parambyname('UTILIZADO').AsFloat := qrLimiteConvenioTOTAL_GERAL.AsFloat;
                              qrpdv.parambyname('SALDO').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat - qrLimiteConvenioTOTAL_GERAL.AsFloat;
                              qrpdv.parambyname('ATU_DATA').AsDate := Date;
                              qrpdv.parambyname('ATU_HORA').AsString := FormatDateTime('HH:MM:SS', Time);
                              qrpdv.parambyname('desconto').AsFloat := qrservidor_tabela.fieldbyname('desconto').AsFloat;
                              qrpdv.ExecSQL;
                            except
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - CONV�NIO - ' + qrservidor.fieldbyname('codregistro').asstring);
                              bflag := FALSE;
                            end;
                          end
                          else begin
                            try
                              if qrservidor_tabela.RecordCount > 0 then begin
                                qrLimiteConvenio.Close;
                                qrLimiteConvenio.Params.Items[0].Value := qrservidor_tabela.fieldbyname('codigo').asstring;
                                qrLimiteConvenio.Open;
                                qrpdv.close;
                                qrpdv.sql.clear;
                                qrpdv.sql.add('insert into CONVENIO (');

                                qrpdv.sql.add('CODIGO,');
                                qrpdv.sql.add('NOME,');
                                qrpdv.sql.add('LIMITE,');
                                qrpdv.sql.add('UTILIZADO,');
                                qrpdv.sql.add('SALDO,');
                                qrpdv.sql.add('ATU_DATA,');
                                qrpdv.sql.add('ATU_HORA,');
                                qrpdv.sql.add('desconto');
                                qrpdv.sql.add(') values (');

                                qrpdv.sql.add(':CODIGO,');
                                qrpdv.sql.add(':NOME,');
                                qrpdv.sql.add(':LIMITE,');
                                qrpdv.sql.add(':UTILIZADO,');
                                qrpdv.sql.add(':SALDO,');
                                qrpdv.sql.add(':ATU_DATA,');
                                qrpdv.sql.add(':ATU_HORA,');
                                qrpdv.sql.add(':desconto');

                                qrpdv.sql.add(')');

                                qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                                qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                                qrpdv.parambyname('LIMITE').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                                qrpdv.parambyname('UTILIZADO').AsFloat := qrLimiteConvenioTOTAL_GERAL.AsFloat;
                                qrpdv.parambyname('SALDO').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat - qrLimiteConvenioTOTAL_GERAL.AsFloat;
                                qrpdv.parambyname('ATU_DATA').AsDate := Date;
                                qrpdv.parambyname('ATU_HORA').AsString := FormatDateTime('HH:MM:SS', Time);
                                qrpdv.parambyname('desconto').AsFloat := qrservidor_tabela.fieldbyname('desconto').AsFloat;
                                qrpdv.ExecSQL;
                              end;
                            except
                              on E: exception do begin
                                memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CONV�NIO - ' + qrservidor.fieldbyname('codregistro').asstring);
                                memo1.lines.add('* ' + E.message);
                                bflag := false;
                              end;
                            end;
                          end;
                        end;

                      end;
                    3: {exclusao}
                      begin
                        try
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - EXC - CONV�NIO - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.close;
                          qrpdv.sql.clear;
                          qrpdv.sql.add('delete from CONVENIO where codigo = :codigo');
                          qrpdv.parambyname('CODIGO').asinteger := strtoint(qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.ExecSQL;
                        except
                          on E: Exception do begin
                            memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - EXC - CONVENIO - ' + qrservidor.fieldbyname('codregistro').asstring);
                            bflag := FALSE;
                          end;
                        end;
                      end;
                  end;

                  if bflag then begin
                    try
                   // atualizar a flag no servidor
                      qrservidor_tabela.close;
                      qrservidor_tabela.sql.clear;
                      qrservidor_tabela.sql.add('update c000058 set');
                      qrservidor_tabela.sql.add('C' + Zerar(grid.cell[0, I].asstring, 2) + ' = 1');
                      qrservidor_tabela.sql.add('where codigo = ' + qrServidor.fieldbyname('codigo').asstring);
                      qrservidor_tabela.ExecSQL;
                      memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ATUALIZOU CONV�NIO - ' + qrServidor.fieldbyname('codREGISTRO').asstring);
                    except
                      on E: EXCEPTION do
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ERRO: ' + E.MESSAGE);
                    end;
                  end;
                  qrservidor.Next

                end;
                //atualizar os saldo do convenio
                qrServidor_Tabela.Close;
                qrServidor_Tabela.sql.clear;
                qrServidor_Tabela.sql.add('select *');
                qrServidor_Tabela.sql.add('from C000071');
                qrServidor_Tabela.sql.add('order by codigo');
                qrservidor_tabela.open;
                qrServidor_Tabela.First;

                while not qrservidor_tabela.eof do begin
                  qrLimiteConvenio.Close;
                  qrLimiteConvenio.Params.Items[0].Value := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrLimiteConvenio.Open;
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('update CONVENIO set');
                  qrpdv.sql.add('UTILIZADO = :UTILIZADO,');
                  qrpdv.sql.add('SALDO = :SALDO,');
                  qrpdv.sql.add('ATU_DATA = :ATU_DATA,');
                  qrpdv.sql.add('ATU_HORA = :ATU_HORA');
                  qrpdv.sql.add('where codigo = :codigo');

                  qrpdv.parambyname('UTILIZADO').AsFloat := qrLimiteConvenioTOTAL_GERAL.AsFloat;
                  qrpdv.parambyname('SALDO').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat - qrLimiteConvenioTOTAL_GERAL.AsFloat;
                  qrpdv.parambyname('ATU_DATA').AsDate := Date;
                  qrpdv.parambyname('ATU_HORA').AsString := FormatDateTime('HH:MM:SS', Time);
                  qrpdv.ExecSQL;
                  qrservidor_tabela.Next;
                end;



                // 17 - GRUPO
                qrServidor.close;
                qrServidor.sql.Clear;
                qrServidor.sql.add('select * from c000058');
                qrServidor.sql.add('where tiporegistro = 17');
                qrservidor.sql.add('and C' + zerar(grid.cell[0, I].asstring, 2) + ' = 0');
                qrServidor.sql.add('order by codigo');
                qrservidor.open;
                qrservidor.First;

                while not qrservidor.eof do begin
                  Application.ProcessMessages;
                  bflag := TRUE;
                  case qrservidor.fieldbyname('movimento').asinteger of
                    1: {inclusao}
                      begin
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - GRUPO - ' + qrservidor.fieldbyname('codregistro').asstring);
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000017');
                        qrServidor_Tabela.sql.add('where codigo =  ' + qrservidor.fieldbyname('codregistro').asstring);
                        qrservidor_tabela.open;

                        try
                          if qrservidor_tabela.RecordCount > 0 then begin
                            qrpdv.close;
                            qrpdv.sql.clear;
                            qrpdv.sql.add('insert into GRUPO (');
                            qrpdv.sql.add('CODIGO,');
                            qrpdv.sql.add('GRUPO,');
                            qrpdv.sql.add('FOTO');
                            qrpdv.sql.add(') values (');
                            qrpdv.sql.add(':CODIGO,');
                            qrpdv.sql.add(':GRUPO,');
                            qrpdv.sql.add(':FOTO');
                            qrpdv.sql.add(')');
                            qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('CODIGO').asstring;
                            qrpdv.parambyname('GRUPO').asstring := qrservidor_tabela.fieldbyname('GRUPO').asstring;
                            if not qrservidor_tabela.fieldbyname('foto').IsNull then begin
                              MemoryStream := TMemoryStream.Create;
                              Jpg := TJpegImage.Create;
                              (qrservidor_tabela.fieldbyname('foto') as tblobfield).SaveToStream(MemoryStream);
                              MemoryStream.Position := OffsetMemoryStream;
                              qrpdv.parambyname('foto').LoadFromStream(MemoryStream, ftGraphic);
                              freeandnil(MemoryStream);
                            end
                            else
                              qrpdv.parambyname('foto').Clear;
                            qrpdv.ExecSQL;
                          end;
                        except
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - GRUPO - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrPDV.close;
                          qrpdv.sql.clear;
                          qrPDV.sql.Add('select codigo from GRUPO');
                          qrpdv.sql.Add('where codigo = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                          qrPDV.Open;
                          if qrpdv.RecordCount = 0 then
                            bflag := false;
                        end;
                      end;
                    2: {alteracao}
                      begin
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000017');
                        qrServidor_Tabela.sql.add('where codigo =  ''' + qrservidor.fieldbyname('codregistro').asstring + '''');
                        qrservidor_tabela.open;
                        if qrservidor_tabela.RecordCount > 0 then begin
                          qrpdv_tabela.close;
                          qrpdv_tabela.sql.clear;
                          qrpdv_tabela.sql.add('select codigo from GRUPO where codigo = ' + inttostr(strtoint(qrservidor_tabela.fieldbyname('codigo').asstring)));
                          qrpdv_tabela.Open;
                          if qrPDV_Tabela.RecordCount > 0 then begin
                            try
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - GRUPO - ' + qrservidor.fieldbyname('codregistro').asstring);
                              qrpdv.close;
                              qrpdv.sql.clear;
                              qrpdv.sql.add('update GRUPO set');

                              qrpdv.sql.add('CODIGO = :CODIGO,');
                              qrpdv.sql.add('GRUPO = :GRUPO,');
                              qrpdv.sql.add('FOTO = :FOTO');
                              qrpdv.sql.add('where codigo = :codigo');

                              qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                              qrpdv.parambyname('GRUPO').asstring := qrservidor_tabela.fieldbyname('GRUPO').asstring;
                              if not qrservidor_tabela.fieldbyname('foto').IsNull then begin
                                MemoryStream := TMemoryStream.Create;
                                Jpg := TJpegImage.Create;
                                (qrservidor_tabela.fieldbyname('foto') as tblobfield).SaveToStream(MemoryStream);
                                MemoryStream.Position := OffsetMemoryStream;
                                qrpdv.parambyname('foto').LoadFromStream(MemoryStream, ftGraphic);
                                freeandnil(MemoryStream);
                              end
                              else
                                qrpdv.parambyname('foto').Clear;
                              qrpdv.ExecSQL;
                            except
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - FOTO - ' + qrservidor.fieldbyname('codregistro').asstring);
                              bflag := FALSE;
                            end;
                          end
                          else begin
                            try
                              if qrservidor_tabela.RecordCount > 0 then begin
                                qrpdv.close;
                                qrpdv.sql.clear;
                                qrpdv.sql.add('insert into GRUPO (');
                                qrpdv.sql.add('CODIGO,');
                                qrpdv.sql.add('GRUPO,');
                                qrpdv.sql.add('FOTO');
                                qrpdv.sql.add(') values (');
                                qrpdv.sql.add(':CODIGO,');
                                qrpdv.sql.add(':GRUPO,');
                                qrpdv.sql.add(':FOTO');
                                qrpdv.sql.add(')');
                                qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('CODIGO').asstring;
                                qrpdv.parambyname('GRUPO').asstring := qrservidor_tabela.fieldbyname('GRUPO').asstring;
                                if not qrservidor_tabela.fieldbyname('foto').IsNull then begin
                                  MemoryStream := TMemoryStream.Create;
                                  Jpg := TJpegImage.Create;
                                  (qrservidor_tabela.fieldbyname('foto') as tblobfield).SaveToStream(MemoryStream);
                                  MemoryStream.Position := OffsetMemoryStream;
                                  qrpdv.parambyname('foto').LoadFromStream(MemoryStream, ftGraphic);
                                  freeandnil(MemoryStream);
                                end
                                else
                                  qrpdv.parambyname('foto').Clear;
                                qrpdv.ExecSQL;
                              end;
                            except
                              on E: exception do begin
                                memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - GRUPO - ' + qrservidor.fieldbyname('codregistro').asstring);
                                memo1.lines.add('* ' + E.message);
                                qrPDV.close;
                                qrpdv.sql.clear;
                                qrPDV.sql.Add('select codigo from GRUPO');
                                qrpdv.sql.Add('where codigo = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                                qrPDV.Open;
                                if qrpdv.RecordCount = 0 then
                                  bflag := false;
                              end;
                            end;
                          end;
                        end;

                      end;
                    3: {exclusao}
                      begin
                        try
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - EXC - GRUPO - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.close;
                          qrpdv.sql.clear;
                          qrpdv.sql.add('delete from GRUPO where codigo = :codigo');
                          qrpdv.parambyname('CODIGO').asinteger := strtoint(qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.ExecSQL;
                        except
                          on E: Exception do begin
                            memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - EXC - GRUPO - ' + qrservidor.fieldbyname('codregistro').asstring);
                            bflag := FALSE;
                          end;
                        end;
                      end;
                  end;

                  if bflag then begin
                    try
                   // atualizar a flag no servidor
                      qrservidor_tabela.close;
                      qrservidor_tabela.sql.clear;
                      qrservidor_tabela.sql.add('update c000058 set');
                      qrservidor_tabela.sql.add('C' + Zerar(grid.cell[0, I].asstring, 2) + ' = 1');
                      qrservidor_tabela.sql.add('where codigo = ' + qrServidor.fieldbyname('codigo').asstring);
                      qrservidor_tabela.ExecSQL;
                      memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ATUALIZOU GRUPO - ' + qrServidor.fieldbyname('codREGISTRO').asstring);
                    except
                      on E: EXCEPTION do
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ERRO: ' + E.MESSAGE);
                    end;
                  end;
                  qrservidor.Next

                end;







                // 18 - TABELA DE PRE�O
                qrServidor.close;
                qrServidor.sql.Clear;
                qrServidor.sql.add('select * from c000058');
                qrServidor.sql.add('where tiporegistro = 18');
                qrservidor.sql.add('and C' + zerar(grid.cell[0, I].asstring, 2) + ' = 0');
                qrServidor.sql.add('order by codigo');
                qrservidor.open;
                qrservidor.First;

                while not qrservidor.eof do begin
                  Application.ProcessMessages;
                  bflag := TRUE;
                  case qrservidor.fieldbyname('movimento').asinteger of
                    1: {inclusao}
                      begin
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - TABELA DE PRE�O - ' + qrservidor.fieldbyname('codregistro').asstring);
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from tabela_preco');
                        qrServidor_Tabela.sql.add('where id =  ' + qrservidor.fieldbyname('codregistro').asstring);
                        qrservidor_tabela.open;

                        try
                          if qrservidor_tabela.RecordCount > 0 then begin
                            qrpdv.close;
                            qrpdv.sql.clear;
                            qrpdv.sql.add('insert into tabela_preco (');
                            qrpdv.sql.add('id,');
                            qrpdv.sql.add('cod_produto,');
                            qrpdv.sql.add('tipo_tabela,');
                            qrpdv.sql.add('quantidade_inicial,');
                            qrpdv.sql.add('quantidade_final,');
                            qrpdv.sql.add('valor_venda,');
                            qrpdv.sql.add('validade_inicio,');
                            qrpdv.sql.add('validade_fim');
                            qrpdv.sql.add(') values (');
                            qrpdv.sql.add(':id,');
                            qrpdv.sql.add(':cod_produto,');
                            qrpdv.sql.add(':tipo_tabela,');
                            qrpdv.sql.add(':quantidade_inicial,');
                            qrpdv.sql.add(':quantidade_final,');
                            qrpdv.sql.add(':valor_venda,');
                            qrpdv.sql.add(':validade_inicio,');
                            qrpdv.sql.add(':validade_fim');
                            qrpdv.sql.add(')');
                            qrpdv.parambyname('id').AsInteger := qrservidor_tabela.fieldbyname('id').AsInteger;
                            qrpdv.parambyname('cod_produto').AsInteger := qrservidor_tabela.fieldbyname('cod_produto').AsInteger;
                            qrpdv.parambyname('tipo_tabela').asstring := qrservidor_tabela.fieldbyname('tipo_tabela').asstring;
                            qrpdv.parambyname('quantidade_inicial').AsFloat := qrservidor_tabela.fieldbyname('quantidade_inicial').AsFloat;
                            qrpdv.parambyname('quantidade_final').AsFloat := qrservidor_tabela.fieldbyname('quantidade_final').AsFloat;
                            qrpdv.parambyname('valor_venda').AsFloat := qrservidor_tabela.fieldbyname('valor_venda').AsFloat;
                            if qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime > 0 then
                              qrpdv.parambyname('validade_inicio').AsDateTime := qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime
                            else
                              qrpdv.parambyname('validade_inicio').Clear;
                            if qrservidor_tabela.fieldbyname('validade_fim').AsDateTime > 0 then
                              qrpdv.parambyname('validade_fim').AsDateTime := qrservidor_tabela.fieldbyname('validade_fim').AsDateTime
                            else
                              qrpdv.parambyname('validade_fim').Clear;
                            qrpdv.ExecSQL;
                          end;
                        except
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - TABELA DE PRE�O - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrPDV.close;
                          qrpdv.sql.clear;
                          qrPDV.sql.Add('select id from tabela_preco');
                          qrpdv.sql.Add('where id = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                          qrPDV.Open;
                          if qrpdv.RecordCount = 0 then
                            bflag := false;
                        end;
                      end;
                    2: {alteracao}
                      begin
                        qrServidor_Tabela.Close;
                        qrServidor_Tabela.sql.clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from tabela_preco');
                        qrServidor_Tabela.sql.add('where id =  ''' + qrservidor.fieldbyname('codregistro').asstring + '''');
                        qrservidor_tabela.open;
                        if qrservidor_tabela.RecordCount > 0 then begin
                          qrpdv_tabela.close;
                          qrpdv_tabela.sql.clear;
                          qrpdv_tabela.sql.add('select id from tabela_preco where id = ' + inttostr(strtoint(qrservidor_tabela.fieldbyname('id').asstring)));
                          qrpdv_tabela.Open;
                          if qrPDV_Tabela.RecordCount > 0 then begin
                            try
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - TABELA DE PRE�O - ' + qrservidor.fieldbyname('codregistro').asstring);
                              qrpdv.close;
                              qrpdv.sql.clear;
                              qrpdv.sql.add('update tabela_preco set');
                              qrpdv.sql.add('id = :id,');
                              qrpdv.sql.add('cod_produto = :cod_produto,');
                              qrpdv.sql.add('tipo_tabela = :tipo_tabela,');
                              qrpdv.sql.add('quantidade_inicial = :quantidade_inicial,');
                              qrpdv.sql.add('quantidade_final = :quantidade_final,');
                              qrpdv.sql.add('valor_venda = :valor_venda,');
                              qrpdv.sql.add('validade_inicio = :validade_inicio,');
                              qrpdv.sql.add('validade_fim = :validade_fim');
                              qrpdv.sql.add('where id = :id');
                              qrpdv.parambyname('id').AsInteger := qrservidor_tabela.fieldbyname('id').AsInteger;
                              qrpdv.parambyname('cod_produto').AsInteger := qrservidor_tabela.fieldbyname('cod_produto').AsInteger;
                              qrpdv.parambyname('tipo_tabela').asstring := qrservidor_tabela.fieldbyname('tipo_tabela').asstring;
                              qrpdv.parambyname('quantidade_inicial').AsFloat := qrservidor_tabela.fieldbyname('quantidade_inicial').AsFloat;
                              qrpdv.parambyname('quantidade_final').AsFloat := qrservidor_tabela.fieldbyname('quantidade_final').AsFloat;
                              qrpdv.parambyname('valor_venda').AsFloat := qrservidor_tabela.fieldbyname('valor_venda').AsFloat;
                              if qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime > 0 then
                                qrpdv.parambyname('validade_inicio').AsDateTime := qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime
                              else
                                qrpdv.parambyname('validade_inicio').Clear;
                              if qrservidor_tabela.fieldbyname('validade_fim').AsDateTime > 0 then
                                qrpdv.parambyname('validade_fim').AsDateTime := qrservidor_tabela.fieldbyname('validade_fim').AsDateTime
                              else
                                qrpdv.parambyname('validade_fim').Clear;
                              qrpdv.ExecSQL;
                            except
                              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - TABELA DE PRE�O - ' + qrservidor.fieldbyname('codregistro').asstring);
                              bflag := FALSE;
                            end;
                          end
                          else begin
                            try
                              if qrservidor_tabela.RecordCount > 0 then begin
                                qrpdv.close;
                                qrpdv.sql.clear;
                                qrpdv.sql.add('insert into tabela_preco (');
                                qrpdv.sql.add('id,');
                                qrpdv.sql.add('cod_produto,');
                                qrpdv.sql.add('tipo_tabela,');
                                qrpdv.sql.add('quantidade_inicial,');
                                qrpdv.sql.add('quantidade_final,');
                                qrpdv.sql.add('valor_venda,');
                                qrpdv.sql.add('validade_inicio,');
                                qrpdv.sql.add('validade_fim');
                                qrpdv.sql.add(') values (');
                                qrpdv.sql.add(':id,');
                                qrpdv.sql.add(':cod_produto,');
                                qrpdv.sql.add(':tipo_tabela,');
                                qrpdv.sql.add(':quantidade_inicial,');
                                qrpdv.sql.add(':quantidade_final,');
                                qrpdv.sql.add(':valor_venda,');
                                qrpdv.sql.add(':validade_inicio,');
                                qrpdv.sql.add(':validade_fim');
                                qrpdv.sql.add(')');
                                qrpdv.parambyname('id').AsInteger := qrservidor_tabela.fieldbyname('id').AsInteger;
                                qrpdv.parambyname('cod_produto').AsInteger := qrservidor_tabela.fieldbyname('cod_produto').AsInteger;
                                qrpdv.parambyname('tipo_tabela').asstring := qrservidor_tabela.fieldbyname('tipo_tabela').asstring;
                                qrpdv.parambyname('quantidade_inicial').AsFloat := qrservidor_tabela.fieldbyname('quantidade_inicial').AsFloat;
                                qrpdv.parambyname('quantidade_final').AsFloat := qrservidor_tabela.fieldbyname('quantidade_final').AsFloat;
                                qrpdv.parambyname('valor_venda').AsFloat := qrservidor_tabela.fieldbyname('valor_venda').AsFloat;
                                if qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime > 0 then
                                  qrpdv.parambyname('validade_inicio').AsDateTime := qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime
                                else
                                  qrpdv.parambyname('validade_inicio').Clear;
                                if qrservidor_tabela.fieldbyname('validade_fim').AsDateTime > 0 then
                                  qrpdv.parambyname('validade_fim').AsDateTime := qrservidor_tabela.fieldbyname('validade_fim').AsDateTime
                                else
                                  qrpdv.parambyname('validade_fim').Clear;
                                qrpdv.ExecSQL;
                              end;
                            except
                              on E: exception do begin
                                memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - TABELA DE PRE�O - ' + qrservidor.fieldbyname('codregistro').asstring);
                                memo1.lines.add('* ' + E.message);
                                qrPDV.close;
                                qrpdv.sql.clear;
                                qrPDV.sql.Add('select id from GRUPO');
                                qrpdv.sql.Add('where id = ' + inttostr(StrToInt(qrservidor.fieldbyname('codregistro').asstring)));
                                qrPDV.Open;
                                if qrpdv.RecordCount = 0 then
                                  bflag := false;
                              end;
                            end;
                          end;
                        end;

                      end;
                    3: {exclusao}
                      begin
                        try
                          memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - EXC - TABELA DE PRE�O - ' + qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.close;
                          qrpdv.sql.clear;
                          qrpdv.sql.add('delete from tabela_preco where id = :id');
                          qrpdv.parambyname('id').asinteger := strtoint(qrservidor.fieldbyname('codregistro').asstring);
                          qrpdv.ExecSQL;
                        except
                          on E: Exception do begin
                            memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - EXC - TABELA DE PRE�O - ' + qrservidor.fieldbyname('codregistro').asstring);
                            bflag := FALSE;
                          end;
                        end;
                      end;
                  end;

                  if bflag then begin
                    try
                   // atualizar a flag no servidor
                      qrservidor_tabela.close;
                      qrservidor_tabela.sql.clear;
                      qrservidor_tabela.sql.add('update c000058 set');
                      qrservidor_tabela.sql.add('C' + Zerar(grid.cell[0, I].asstring, 2) + ' = 1');
                      qrservidor_tabela.sql.add('where codigo = ' + qrServidor.fieldbyname('codigo').asstring);
                      qrservidor_tabela.ExecSQL;
                      memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ATUALIZOU TABELA DE PRE�O - ' + qrServidor.fieldbyname('codREGISTRO').asstring);
                    except
                      on E: EXCEPTION do
                        memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ERRO: ' + E.MESSAGE);
                    end;
                  end;
                  qrservidor.Next

                end;

              except
                on E: EXCEPTION do
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ERRO: ' + E.MESSAGE);
              end;

              qrservidor.close;

              try
                qrservidor_tabela.Close;
                qrservidor_tabela.SQL.Clear;
                qrservidor_tabela.SQL.Add('select c.desconto_totalnota, c.nao_utiliza_extra from c000001 c');
                qrservidor_tabela.Open;
                qrpdv.close;
                qrpdv.sql.clear;
                qrpdv.sql.add('update config set carga_data = ' + QuotedStr(datetostr(date)) + ',');
                qrpdv.sql.Add('carga_hora = ' + QuotedStr(timetostr(time)) + ',');
                qrpdv.sql.Add('DESCONTO_MAXIMO_VENDA = :DESCONTO,');
                qrpdv.sql.Add('nao_utiliza_extra = :nao_utiliza_extra');
                qrpdv.ParamByName('DESCONTO').AsFloat := qrservidor_tabela.FieldByName('desconto_totalnota').AsFloat;
                qrpdv.ParamByName('nao_utiliza_extra').AsString := qrservidor_tabela.FieldByName('nao_utiliza_extra').AsString;
                qrpdv.ExecSQL;
              except

              end;
            end
            else begin
              grid.CELL[3, I].AsInteger := 1;
            //  grid.CELL[4, I].AsBoolean := False;
            end;
            AdicionarCaixas;
            AdicionarUsuarios;
            AdicionarVendedores;
          end;

        end; //

      finally
        Screen.Cursor := crArrow;
        pnlAviso.Visible := False;
      end;
    end
    else begin
      verifica_conexao('SERVIDOR', ed_server.TEXT, ed_server_database.TEXT);
    end;

  finally
    Timer1.Enabled := true;
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if CanClose then
    CanClose := false;

  h := FindWindow(nil, '..:: brServidor::..');
  ShowWindow(h, SW_HIDE);
  hide;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  arquivo_ini: TIniFile;
  i, x: integer;
  spdv: string;
  Reg: TRegistry;
begin
  if not pnlAviso.Visible then begin
    timer3.enabled := true;
    sDir_Sistema := ExtractFileDir(Application.ExeName);
    arquivo_ini := TIniFile.Create(sDir_Sistema + '\cfg\servidor.ini');
    ed_server.Text := arquivo_ini.ReadString('SERVIDOR', 'SERVER', '');
    ed_server_database.text := arquivo_ini.ReadString('SERVIDOR', 'DATABASE', '');

    Timer1.Interval := StrToInt(arquivo_ini.ReadString('TEMPO', 'MINUTOS', '3')) * 60000;

    grid.ClearRows;

    for i := 1 to 20 do begin
      spdv := 'PDV' + IntToStr(i);
      if (arquivo_ini.ReadString('PDV', spdv, '') = 'TRUE') then begin
        x := grid.AddRow(1);
        grid.cell[0, x].asinteger := i;
        grid.cell[1, x].asstring := arquivo_ini.ReadString('PDV', spdv + '_COMPUTADOR', '');
        grid.cell[2, x].asstring := arquivo_ini.ReadString('PDV', spdv + '_DATABASE', '');
        if verifica_conexao('PDV', grid.cell[1, x].asstring, grid.cell[2, x].asstring) then
          grid.cell[3, x].asinteger := 0
        else
          grid.cell[3, x].asinteger := 1;
        grid.Cell[4, x].AsBoolean := true;
        if (arquivo_ini.ReadString('PDV', spdv + '_ESTOQUE', '') = 'TRUE') then begin
           grid.Cell[5, x].AsBoolean := true;
        end else begin
            grid.Cell[5, x].AsBoolean := False;
        end;



      end;
    end;
    arquivo_ini.Free;

    arquivo_ini := TIniFile.Create(sDir_Sistema + '\cfg\cfg.ini');
    caixa := arquivo_ini.ReadString('CAIXA', 'NUMERO', '');
    arquivo_ini.Free;

    if verifica_conexao('SERVIDOR', ed_server.TEXT, ed_server_database.Text) then begin
      ed_server.Color := $00F2DD9D;
      ed_server_database.Color := $00F2DD9D;

    end
    else begin
      ed_server.Color := clRED;
      ed_server_database.Color := CLRED;
    end;

    Timer1.Enabled := TRUE;
  end;
  try
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run', False);
    edInicia.Checked := Reg.KeyExists('pdv_server');
    Reg.CloseKey;
  finally
    Reg.Free;
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Timer3Timer(Sender: TObject);
begin
  if not fechar then begin
    close;
    fechar := true;
    timer3.Enabled := false;
  end
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
  application.Terminate;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Abrir1Click(Sender: TObject);
begin
  Show;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Button2Click(Sender: TObject);
var
  I: INTEGER;
  scst: string;
  bflag: boolean;
  LimpaDados: Boolean;
  MemoryStream: TMemoryStream;
  Jpg: TJpegImage;
  Bitmap: TBitmap;
begin
  PageView1.ActivePageIndex := 1;
  if pnlAviso.Visible then
    Exit;

  try
    if Application.MessageBox('Deseja Limpar os dados existentes nas tabelas antes da Carga Geral?', 'Aten��o!', MB_ICONQUESTION + MB_YESNO) = mrYes then
      LimpaDados := True
    else
      LimpaDados := False;
    Screen.Cursor := crAppStart;
    pnlAviso.Left := 2;
    pnlAviso.Width := 450;
    pnlAviso.Visible := True;
    pnlAviso.Repaint;

    Timer1.Enabled := false;

    if conexao_servidor.Connected then begin
      memo1.lines.add('Iniciando processo de atualiza��o GERAL em ' + DateToStr(date) + ' as ' + timetostr(time));

      for I := 0 to grid.RowCount - 1 do begin
        if grid.cell[4, I].AsBoolean then begin
          if verifica_conexao('PDV', grid.CELL[1, I].ASSTRING, GRID.CELL[2, I].ASSTRING) then begin
            grid.CELL[3, I].AsInteger := 0;

            qrServidor_Tabela.Close;
            qrServidor_Tabela.sql.clear;
            qrServidor_Tabela.sql.add('select c000025.*, c000100.Estoque_atual');
            qrServidor_Tabela.sql.add('from c000025, c000100');
            qrServidor_Tabela.sql.add('where c000025.codigo = c000100.codproduto');
            qrServidor_Tabela.sql.add('and c000025.tipo = ' + QuotedStr('00 - Mercadoria para Revenda'));
            qrServidor_Tabela.SQL.Add('order by c000025.codigo');
            qrservidor_tabela.open;
            qrServidor_Tabela.First;

            if LimpaDados then begin
              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - LIMPANDO - PRODUTOS');
              try
                qrpdv.close;
                qrpdv.sql.clear;
                qrpdv.sql.add('delete from ESTOQUE');
                qrpdv.ExecSQL;
              except
                on E: Exception do begin
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - LIMPANDO - PRODUTOS');
                  Memo1.LINES.Add('Mensagem: ' + E.message);
                end;
              end;
            end;

            while not qrservidor_tabela.eof do begin
              Application.ProcessMessages;

              qrPDV.close;
              qrPDV.sql.clear;
              qrpdv.sql.Add('select codigo from estoque');
              qrPDV.SQL.Add('where codigo = ' + inttostr(StrToInt(qrServidor_Tabela.fieldbyname('codigo').asstring)));
              qrPDV.open;
              if qrPDV.RecordCount = 0 then begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - PRODUTO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('insert into ESTOQUE (');
                  qrpdv.sql.add('CODIGO,');
                  qrpdv.sql.add('COD_BARRA,');
                  qrpdv.sql.add('NOME,');
                  qrpdv.sql.add('UNIDADE,');
                  qrpdv.sql.add('PRECO_VENDA,');
                  qrpdv.sql.add('PRECO_PROMOCAO,');
                  qrpdv.sql.add('INICIO_PROMOCAO,');
                  qrpdv.sql.add('FINAL_PROMOCAO,');
                  qrpdv.sql.add('CST,');
                  qrpdv.sql.add('ALIQUOTA,');
                  qrpdv.sql.add('DESCONTO_MAXIMO,');
                  qrpdv.sql.add('ACRECIMO_MAXIMO,');
                  qrpdv.sql.add('ST,');
                  qrpdv.sql.add('ESTOQUE,');
                  qrpdv.sql.add('IAT,');
                  qrpdv.sql.add('IPPT,');
                  qrpdv.sql.add('SITUACAO,');
                  qrpdv.sql.add('CFOP,');
                  qrpdv.sql.add('NCM,');
                  qrpdv.sql.add('ALIQNACIONAL,');
                  qrpdv.sql.add('fotobd,');
                  qrpdv.sql.add('csosn,');
                  qrpdv.sql.add('grupo,');
                  qrpdv.sql.add('usa_balanca,');
                  qrpdv.sql.add('usa_tb_pc,');
                  qrpdv.sql.add('CODIGO_ANP,');
                  qrpdv.sql.add('combo,');
                  qrpdv.sql.add('informa_codigo_barra_xml,');
                  qrpdv.sql.add('pizza');


                  qrpdv.sql.add(') values (');

                  qrpdv.sql.add(':CODIGO,');
                  qrpdv.sql.add(':COD_BARRA,');
                  qrpdv.sql.add(':NOME,');
                  qrpdv.sql.add(':UNIDADE,');
                  qrpdv.sql.add(':PRECO_VENDA,');
                  qrpdv.sql.add(':PRECO_PROMOCAO,');
                  qrpdv.sql.add(':INICIO_PROMOCAO,');
                  qrpdv.sql.add(':FINAL_PROMOCAO,');
                  qrpdv.sql.add(':CST,');
                  qrpdv.sql.add(':ALIQUOTA,');
                  qrpdv.sql.add(':DESCONTO_MAXIMO,');
                  qrpdv.sql.add(':ACRECIMO_MAXIMO,');
                  qrpdv.sql.add(':ST,');
                  qrpdv.sql.add(':ESTOQUE,');
                  qrpdv.sql.add(':IAT,');
                  qrpdv.sql.add(':IPPT,');
                  qrpdv.sql.add(':SITUACAO,');
                  qrpdv.sql.add(':CFOP,');
                  qrpdv.sql.add(':NCM,');
                  qrpdv.sql.add(':ALIQNACIONAL,');
                  qrpdv.sql.add(':fotobd,');
                  qrpdv.sql.add(':csosn,');
                  qrpdv.sql.add(':grupo,');
                  qrpdv.sql.add(':usa_balanca,');
                  qrpdv.sql.add(':usa_tb_pc,');
                  qrpdv.sql.add(':CODIGO_ANP,');
                  qrpdv.sql.add(':combo,');
                  qrpdv.sql.add(':informa_codigo_barra_xml,');
                  qrpdv.sql.add(':pizza');

                  qrpdv.sql.add(')');

                  qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrpdv.parambyname('COD_BARRA').asstring := copy(qrservidor_tabela.fieldbyname('codbarra').asstring, 1, 15);
                  qrpdv.parambyname('NOME').asstring := copy(qrservidor_tabela.fieldbyname('produto').asstring, 1, 80);
                  qrpdv.parambyname('UNIDADE').AsString := qrservidor_tabela.fieldbyname('unidade').asstring;
                  qrpdv.parambyname('PRECO_VENDA').asfloat := Arredondar(qrservidor_tabela.fieldbyname('precovenda').asfloat, 2);
                  qrpdv.parambyname('PRECO_PROMOCAO').asfloat := Arredondar(qrservidor_tabela.fieldbyname('preco_promocao').asfloat, 2);
                  qrpdv.parambyname('INICIO_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('data_promocao').asdatetime;
                  qrpdv.parambyname('FINAL_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('fim_promocao').asdatetime;
                  qrpdv.parambyname('CST').asstring := qrservidor_tabela.fieldbyname('cst').asstring;
                  qrpdv.parambyname('ALIQUOTA').asfloat := qrservidor_tabela.fieldbyname('aliquota').asfloat;
                  qrpdv.parambyname('DESCONTO_MAXIMO').asfloat := qrConfServerDESCONTO_PRODUTO.AsFloat;
                  qrpdv.parambyname('ACRECIMO_MAXIMO').asfloat := qrConfServerACRESCIMO_PRODUTO.AsFloat;
                  qrpdv.parambyname('SITUACAO').AsInteger := qrservidor_tabela.fieldbyname('SITUACAO').AsInteger;
                  qrpdv.parambyname('CFOP').AsString := qrservidor_tabela.fieldbyname('IND_CFOP_NFCE').AsString;
                  qrpdv.parambyname('csosn').AsString := qrservidor_tabela.fieldbyname('csosn').AsString;
                  qrpdv.parambyname('grupo').AsString := qrservidor_tabela.fieldbyname('codgrupo').AsString;
                  if qrservidor_tabela.fieldbyname('PESAGEM_AUOTMATICA').AsString = 'S' then
                    qrpdv.parambyname('usa_balanca').AsInteger := 1
                  else
                    qrpdv.parambyname('usa_balanca').AsInteger := 2;
                  qrpdv.parambyname('usa_tb_pc').AsString := qrservidor_tabela.fieldbyname('usa_tb_pc').AsString;

                  scst := qrservidor_tabela.fieldbyname('cst').asstring;

                  if (scst = '060') or (scst = '010') or (scst = '070') then
                    qrpdv.Params.ParamByName('st').asSTRING := 'F'
                  else if (scst = '040') or (scst = '030') then
                    qrpdv.Params.ParamByName('st').asSTRING := 'I'
                  else if (scst = '041') or (scst = '050') or (scst = '051') or (scst = '090') then
                    qrpdv.Params.ParamByName('st').asSTRING := 'N'
                  else
                    qrpdv.ParamByName('st').asSTRING := 'T';

                  qrpdv.parambyname('ESTOQUE').asfloat := qrservidor_tabela.fieldbyname('estoque_atual').asfloat;
                  qrpdv.parambyname('IAT').asstring := qrservidor_tabela.fieldbyname('IAT').AsString;
                  qrpdv.parambyname('IPPT').asstring := qrservidor_tabela.fieldbyname('IPPT').AsString;
                  qrpdv.parambyname('NCM').asstring := qrservidor_tabela.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                  if not qrservidor_tabela.fieldbyname('fotobd').IsNull then begin
                    MemoryStream := TMemoryStream.Create;
                    Jpg := TJpegImage.Create;
                    (qrservidor_tabela.fieldbyname('fotobd') as tblobfield).SaveToStream(MemoryStream);
                    MemoryStream.Position := OffsetMemoryStream;
                    qrpdv.parambyname('fotobd').LoadFromStream(MemoryStream, ftGraphic);
                    freeandnil(MemoryStream);
                  end
                  else
                    qrpdv.parambyname('fotobd').Clear;

                  qrIBPT.Close;
                  qrIBPT.ParamByName('NCM').Value := qrservidor_tabela.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                  qrIBPT.Open;
                  if not qrIBPT.IsEmpty then
                    qrpdv.parambyname('ALIQNACIONAL').AsFloat := qrIBPTALIQNAC.AsFloat
                  else
                    qrpdv.parambyname('ALIQNACIONAL').AsFloat := 0;
                  qrpdv.parambyname('CODIGO_ANP').AsString := qrservidor_tabela.fieldbyname('CODIGO_ANP').AsString;
                  qrpdv.parambyname('combo').AsString := qrservidor_tabela.fieldbyname('combo').AsString;
                  qrpdv.parambyname('informa_codigo_barra_xml').AsString := qrservidor_tabela.fieldbyname('informa_codigo_barra_xml').AsString;
                  qrpdv.parambyname('pizza').AsString := qrservidor_tabela.fieldbyname('pizza').AsString;
                  qrpdv.ExecSQL;
                except
                  on E: Exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - PRODUTO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end
              else begin
                memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - PRODUTO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                try
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('update ESTOQUE set');
                  qrpdv.sql.add('COD_BARRA = :COD_BARRA,');
                  qrpdv.sql.add('NOME = :NOME,');
                  qrpdv.sql.add('UNIDADE = :UNIDADE,');
                  qrpdv.sql.add('PRECO_VENDA = :PRECO_VENDA,');
                  qrpdv.sql.add('PRECO_PROMOCAO = :PRECO_PROMOCAO,');
                  qrpdv.sql.add('INICIO_PROMOCAO = :INICIO_PROMOCAO,');
                  qrpdv.sql.add('FINAL_PROMOCAO = :FINAL_PROMOCAO,');
                  qrpdv.sql.add('CST = :CST,');
                  qrpdv.sql.add('ALIQUOTA = :ALIQUOTA,');
                  qrpdv.sql.add('DESCONTO_MAXIMO = :DESCONTO_MAXIMO,');
                  qrpdv.sql.add('ACRECIMO_MAXIMO = :ACRECIMO_MAXIMO,');
                  qrpdv.sql.add('ST = :ST,');
                  qrpdv.sql.add('ESTOQUE = :ESTOQUE,');
                  qrpdv.sql.add('IAT = :IAT,');
                  qrpdv.sql.add('IPPT = :IPPT, ');
                  qrpdv.sql.add('SITUACAO = :SITUACAO,');
                  qrpdv.sql.add('CFOP = :CFOP,');
                  qrpdv.sql.add('NCM = :NCM,');
                  qrpdv.sql.add('ALIQNACIONAL = :ALIQNACIONAL,');
                  qrpdv.sql.add('fotobd = :fotobd,');
                  qrpdv.sql.add('csosn = :csosn,');
                  qrpdv.sql.add('grupo = :grupo,');
                  qrpdv.sql.add('usa_balanca = :usa_balanca,');
                  qrpdv.sql.add('usa_tb_pc = :usa_tb_pc,');
                  qrpdv.sql.add('CODIGO_ANP = :CODIGO_ANP,');
                  qrpdv.sql.add('combo = :combo,');
                  qrpdv.sql.add('informa_codigo_barra_xml = :informa_codigo_barra_xml,');
                  qrpdv.sql.add('pizza = :pizza');

                  qrpdv.sql.add('where codigo = :codigo');

                  qrpdv.parambyname('CODIGO').asinteger := strtoint(qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.parambyname('COD_BARRA').asstring := copy(qrservidor_tabela.fieldbyname('codbarra').asstring, 1, 15);
                  qrpdv.parambyname('NOME').asstring := copy(qrservidor_tabela.fieldbyname('produto').asstring, 1, 80);
                  qrpdv.parambyname('UNIDADE').AsString := qrservidor_tabela.fieldbyname('unidade').asstring;
                  qrpdv.parambyname('PRECO_VENDA').asfloat := Arredondar(qrservidor_tabela.fieldbyname('precovenda').asfloat, 2);
                  qrpdv.parambyname('PRECO_PROMOCAO').asfloat := Arredondar(qrservidor_tabela.fieldbyname('preco_promocao').asfloat, 2);
                  qrpdv.parambyname('INICIO_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('data_promocao').asdatetime;
                  qrpdv.parambyname('FINAL_PROMOCAO').asdatetime := qrservidor_tabela.fieldbyname('fim_promocao').asdatetime;
                  qrpdv.parambyname('CST').asstring := qrservidor_tabela.fieldbyname('cst').asstring;
                  qrpdv.parambyname('ALIQUOTA').asfloat := qrservidor_tabela.fieldbyname('aliquota').asfloat;
                  qrpdv.parambyname('DESCONTO_MAXIMO').asfloat := qrConfServerDESCONTO_PRODUTO.AsFloat;
                  qrpdv.parambyname('ACRECIMO_MAXIMO').asfloat := qrConfServerACRESCIMO_PRODUTO.AsFloat;
                  qrpdv.parambyname('SITUACAO').AsInteger := qrservidor_tabela.fieldbyname('SITUACAO').AsInteger;
                  qrpdv.parambyname('CFOP').AsString := qrservidor_tabela.fieldbyname('IND_CFOP_NFCE').AsString;
                  qrpdv.parambyname('csosn').AsString := qrservidor_tabela.fieldbyname('csosn').AsString;
                  qrpdv.parambyname('grupo').AsString := qrservidor_tabela.fieldbyname('codgrupo').AsString;
                  if qrservidor_tabela.fieldbyname('PESAGEM_AUOTMATICA').AsString = 'S' then
                    qrpdv.parambyname('usa_balanca').AsInteger := 1
                  else
                    qrpdv.parambyname('usa_balanca').AsInteger := 2;
                  qrpdv.parambyname('usa_tb_pc').AsString := qrservidor_tabela.fieldbyname('usa_tb_pc').AsString;

                  if not qrservidor_tabela.fieldbyname('fotobd').IsNull then begin
                    MemoryStream := TMemoryStream.Create;
                    Jpg := TJpegImage.Create;
                    (qrservidor_tabela.fieldbyname('fotobd') as tblobfield).SaveToStream(MemoryStream);
                    MemoryStream.Position := OffsetMemoryStream;
                    qrpdv.parambyname('fotobd').LoadFromStream(MemoryStream, ftGraphic);
                    freeandnil(MemoryStream);
                  end
                  else
                    qrpdv.parambyname('fotobd').Clear;
                  scst := qrservidor_tabela.fieldbyname('cst').asstring;

                  if (scst = '060') or (scst = '010') or (scst = '070') then
                    qrpdv.Params.ParamByName('st').asSTRING := 'F'
                  else if (scst = '040') or (scst = '030') then
                    qrpdv.Params.ParamByName('st').asSTRING := 'I'
                  else if (scst = '041') or (scst = '050') or (scst = '051') or (scst = '090') then
                    qrpdv.Params.ParamByName('st').asSTRING := 'N'
                  else
                    qrpdv.ParamByName('st').asSTRING := 'T';

                  qrpdv.parambyname('ESTOQUE').asfloat := qrservidor_tabela.fieldbyname('estoque_atual').asfloat;
                  qrpdv.parambyname('IAT').asstring := qrservidor_tabela.fieldbyname('IAT').AsString;
                  qrpdv.parambyname('IPPT').asstring := qrservidor_tabela.fieldbyname('IPPT').AsString;
                  qrpdv.parambyname('NCM').asstring := qrservidor_tabela.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                  qrIBPT.Close;
                  qrIBPT.ParamByName('NCM').Value := qrservidor_tabela.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
                  qrIBPT.Open;
                  if not qrIBPT.IsEmpty then
                    qrpdv.parambyname('ALIQNACIONAL').AsFloat := qrIBPTALIQNAC.AsFloat
                  else
                    qrpdv.parambyname('ALIQNACIONAL').AsFloat := 0;
                  qrpdv.parambyname('CODIGO_ANP').asstring := qrservidor_tabela.fieldbyname('CODIGO_ANP').AsString;
                  qrpdv.parambyname('combo').asstring := qrservidor_tabela.fieldbyname('combo').AsString;
                  qrpdv.parambyname('informa_codigo_barra_xml').asstring := qrservidor_tabela.fieldbyname('informa_codigo_barra_xml').AsString;
                  qrpdv.parambyname('pizza').asstring := qrservidor_tabela.fieldbyname('pizza').AsString;
                  qrpdv.ExecSQL;
                except
                  on E: Exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - PRODUTO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end;
              qrServidor_Tabela.Next;
            end;

            qrServidor_Tabela.Close;
            qrServidor_Tabela.sql.clear;
            qrServidor_Tabela.sql.add('select *');
            qrServidor_Tabela.sql.add('from C000007');
            qrServidor_Tabela.sql.add('order by codigo');
            qrservidor_tabela.open;
            qrServidor_Tabela.First;

            while not qrservidor_tabela.eof do begin
              Application.ProcessMessages;

              qrPDV.close;
              qrPDV.sql.clear;
              qrPDV.sql.Add('select codigo from cliente where codigo = ' + inttostr(StrToInt(qrServidor_Tabela.fieldbyname('codigo').AsString)));
              qrpdv.Open;
              if qrPDV.RecordCount = 0 then begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - CLIENTE - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('insert into CLIENTE (');

                  qrpdv.sql.add('CODIGO,');
                  qrpdv.sql.add('NOME,');
                  qrpdv.sql.add('CPF,');
                  qrpdv.sql.add('ENDERECO,');
                  qrpdv.sql.add('COMPLEMENTO,');
                  qrpdv.sql.add('BAIRRO,');
                  qrpdv.sql.add('CIDADE,');
                  qrpdv.sql.add('UF,');
                  qrpdv.sql.add('CEP,');
                  qrpdv.sql.add('SITUACAO,');
                  qrpdv.sql.add('OBS,');
                  qrpdv.sql.add('LIMITE,');
                  qrpdv.sql.add('UTILIZADO,');
                  qrpdv.sql.add('DISPONIVEL,');
                  qrpdv.sql.add('ATUALIZADO,');
                  qrpdv.sql.add('cod_convenio');
                  qrpdv.sql.add(') values (');

                  qrpdv.sql.add(':CODIGO,');
                  qrpdv.sql.add(':NOME,');
                  qrpdv.sql.add(':CPF,');
                  qrpdv.sql.add(':ENDERECO,');
                  qrpdv.sql.add(':COMPLEMENTO,');
                  qrpdv.sql.add(':BAIRRO,');
                  qrpdv.sql.add(':CIDADE,');
                  qrpdv.sql.add(':UF,');
                  qrpdv.sql.add(':CEP,');
                  qrpdv.sql.add(':SITUACAO,');
                  qrpdv.sql.add(':OBS,');
                  qrpdv.sql.add(':LIMITE,');
                  qrpdv.sql.add(':UTILIZADO,');
                  qrpdv.sql.add(':DISPONIVEL,');
                  qrpdv.sql.add(':ATUALIZADO,');
                  qrpdv.sql.add(':cod_convenio');

                  qrpdv.sql.add(')');

                  qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                  qrpdv.parambyname('CPF').asstring := qrservidor_tabela.fieldbyname('cpf').asstring;
                  qrpdv.parambyname('ENDERECO').asstring := qrservidor_tabela.fieldbyname('endereco').asstring;
                  qrpdv.parambyname('COMPLEMENTO').asstring := qrservidor_tabela.fieldbyname('complemento').asstring;
                  qrpdv.parambyname('BAIRRO').asstring := qrservidor_tabela.fieldbyname('bairro').asstring;
                  qrpdv.parambyname('CIDADE').asstring := qrservidor_tabela.fieldbyname('cidade').asstring;
                  qrpdv.parambyname('UF').asstring := qrservidor_tabela.fieldbyname('uf').asstring;
                  qrpdv.parambyname('CEP').asstring := qrservidor_tabela.fieldbyname('cep').asstring;
                  if trim(qrservidor_tabela.fieldbyname('situacao').asstring) = '' then
                    qrpdv.parambyname('SITUACAO').asstring := '1'
                  else
                    qrpdv.parambyname('SITUACAO').asstring := qrservidor_tabela.fieldbyname('situacao').asstring;
                  qrpdv.parambyname('OBS').asstring := qrservidor_tabela.fieldbyname('obs1').asstring + #13 + qrservidor_tabela.fieldbyname('obs2').asstring + #13 + qrservidor_tabela.fieldbyname('obs3').asstring + #13 + qrservidor_tabela.fieldbyname('obs4').asstring + #13 + qrservidor_tabela.fieldbyname('obs5').asstring + #13 + qrservidor_tabela.fieldbyname('obs6').asstring;
                  qrpdv.parambyname('LIMITE').asFLOAT := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                  qrpdv.parambyname('UTILIZADO').asfloat := verifica_crediario(qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.parambyname('DISPONIVEL').asfloat := qrpdv.parambyname('LIMITE').asFLOAT - qrpdv.parambyname('UTILIZADO').asfloat;
                  qrpdv.parambyname('ATUALIZADO').AsString := datetostr(date) + ' AS ' + TimeToStr(TIME);
                  qrpdv.parambyname('cod_convenio').AsString := qrServidor_Tabela.FieldByName('CODCONVENIO').AsString;
                  qrpdv.ExecSQL;
                except
                  on E: exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CLIENTE - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end
              else begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - CLIENTE - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('update CLIENTE set');

                  qrpdv.sql.add('CODIGO = :CODIGO,');
                  qrpdv.sql.add('NOME = :NOME,');
                  qrpdv.sql.add('CPF = :CPF,');
                  qrpdv.sql.add('ENDERECO = :ENDERECO,');
                  qrpdv.sql.add('COMPLEMENTO = :COMPLEMENTO,');
                  qrpdv.sql.add('BAIRRO = :BAIRRO,');
                  qrpdv.sql.add('CIDADE = :CIDADE,');
                  qrpdv.sql.add('UF = :UF,');
                  qrpdv.sql.add('CEP = :CEP,');
                  qrpdv.sql.add('SITUACAO = :SITUACAO,');
                  qrpdv.sql.add('OBS = :OBS,');
                  qrpdv.sql.add('LIMITE = :LIMITE,');
                  qrpdv.sql.add('UTILIZADO = :UTILIZADO,');
                  qrpdv.sql.add('DISPONIVEL = :DISPONIVEL,');
                  qrpdv.sql.add('ATUALIZADO = :ATUALIZADO,');
                  qrpdv.sql.add('cod_convenio = :cod_convenio');
                  qrpdv.sql.add('where codigo = :codigo');

                  qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                  qrpdv.parambyname('CPF').asstring := qrservidor_tabela.fieldbyname('cpf').asstring;
                  qrpdv.parambyname('ENDERECO').asstring := qrservidor_tabela.fieldbyname('endereco').asstring;
                  qrpdv.parambyname('COMPLEMENTO').asstring := qrservidor_tabela.fieldbyname('complemento').asstring;
                  qrpdv.parambyname('BAIRRO').asstring := qrservidor_tabela.fieldbyname('bairro').asstring;
                  qrpdv.parambyname('CIDADE').asstring := qrservidor_tabela.fieldbyname('cidade').asstring;
                  qrpdv.parambyname('UF').asstring := qrservidor_tabela.fieldbyname('uf').asstring;
                  qrpdv.parambyname('CEP').asstring := qrservidor_tabela.fieldbyname('cep').asstring;
                  qrpdv.parambyname('SITUACAO').asstring := qrservidor_tabela.fieldbyname('situacao').asstring;
                  qrpdv.parambyname('OBS').asstring := qrservidor_tabela.fieldbyname('obs1').asstring + #13 + qrservidor_tabela.fieldbyname('obs2').asstring + #13 + qrservidor_tabela.fieldbyname('obs3').asstring + #13 + qrservidor_tabela.fieldbyname('obs4').asstring + #13 + qrservidor_tabela.fieldbyname('obs5').asstring + #13 + qrservidor_tabela.fieldbyname('obs6').asstring;
                  qrpdv.parambyname('LIMITE').asFLOAT := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                  qrpdv.parambyname('UTILIZADO').asfloat := verifica_crediario(qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.parambyname('DISPONIVEL').asfloat := qrpdv.parambyname('LIMITE').asFLOAT - qrpdv.parambyname('UTILIZADO').asfloat;
                  qrpdv.parambyname('ATUALIZADO').asstring := datetostr(date) + ' AS ' + TimeToStr(TIME);
                  qrpdv.parambyname('cod_convenio').AsString := qrServidor_Tabela.FieldByName('CODCONVENIO').AsString;
                  qrpdv.ExecSQL;
                except
                  on E: Exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - CLIENTE - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end;

              qrServidor_tabela.Next;
            end;

            qrServidor_Tabela.Close;
            qrServidor_Tabela.sql.clear;
            qrServidor_Tabela.sql.add('select *');
            qrServidor_Tabela.sql.add('from C000071');
            qrServidor_Tabela.sql.add('order by codigo');
            qrservidor_tabela.open;
            qrServidor_Tabela.First;

            while not qrservidor_tabela.eof do begin
              Application.ProcessMessages;

              qrPDV.close;
              qrPDV.sql.clear;
              qrPDV.sql.Add('select codigo from convenio where codigo = ' + inttostr(StrToInt(qrServidor_Tabela.fieldbyname('codigo').AsString)));
              qrpdv.Open;
              if qrPDV.RecordCount = 0 then begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - CONV�NIO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrLimiteConvenio.Close;
                  qrLimiteConvenio.Params.Items[0].Value := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrLimiteConvenio.Open;
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('insert into CONVENIO (');

                  qrpdv.sql.add('CODIGO,');
                  qrpdv.sql.add('NOME,');
                  qrpdv.sql.add('LIMITE,');
                  qrpdv.sql.add('UTILIZADO,');
                  qrpdv.sql.add('SALDO,');
                  qrpdv.sql.add('ATU_DATA,');
                  qrpdv.sql.add('ATU_HORA,');
                  qrpdv.sql.add('desconto');

                  qrpdv.sql.add(') values (');

                  qrpdv.sql.add(':CODIGO,');
                  qrpdv.sql.add(':NOME,');
                  qrpdv.sql.add(':LIMITE,');
                  qrpdv.sql.add(':UTILIZADO,');
                  qrpdv.sql.add(':SALDO,');
                  qrpdv.sql.add(':ATU_DATA,');
                  qrpdv.sql.add(':ATU_HORA,');
                  qrpdv.sql.add(':desconto');

                  qrpdv.sql.add(')');

                  qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                  qrpdv.parambyname('LIMITE').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                  qrpdv.parambyname('UTILIZADO').AsFloat := qrLimiteConvenioTOTAL_GERAL.AsFloat;
                  qrpdv.parambyname('SALDO').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat - qrLimiteConvenioTOTAL_GERAL.AsFloat;
                  qrpdv.parambyname('ATU_DATA').AsDate := Date;
                  qrpdv.parambyname('ATU_HORA').AsString := FormatDateTime('HH:MM:SS', Time);
                  qrpdv.parambyname('desconto').AsFloat := qrservidor_tabela.fieldbyname('desconto').AsFloat;
                  qrpdv.ExecSQL;
                except
                  on E: exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CONV�NIO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end
              else begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - CONV�NIO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrLimiteConvenio.Close;
                  qrLimiteConvenio.Params.Items[0].Value := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrLimiteConvenio.Open;
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('update CONVENIO set');

                  qrpdv.sql.add('CODIGO = :CODIGO,');
                  qrpdv.sql.add('NOME = :NOME,');
                  qrpdv.sql.add('LIMITE = :LIMITE,');
                  qrpdv.sql.add('UTILIZADO = :UTILIZADO,');
                  qrpdv.sql.add('SALDO = :SALDO,');
                  qrpdv.sql.add('ATU_DATA = :ATU_DATA,');
                  qrpdv.sql.add('ATU_HORA = :ATU_HORA,');
                  qrpdv.sql.add('desconto = :desconto');
                  qrpdv.sql.add('where codigo = :codigo');

                  qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring;
                  qrpdv.parambyname('LIMITE').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat;
                  qrpdv.parambyname('UTILIZADO').AsFloat := qrLimiteConvenioTOTAL_GERAL.AsFloat;
                  qrpdv.parambyname('SALDO').AsFloat := qrservidor_tabela.fieldbyname('LIMITE').AsFloat - qrLimiteConvenioTOTAL_GERAL.AsFloat;
                  qrpdv.parambyname('ATU_DATA').AsDate := Date;
                  qrpdv.parambyname('ATU_HORA').AsString := FormatDateTime('HH:MM:SS', Time);
                  qrpdv.parambyname('desconto').AsFloat := qrservidor_tabela.fieldbyname('desconto').AsFloat;
                  qrpdv.ExecSQL;
                except
                  on E: Exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - CONV�NIO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end;
              qrServidor_tabela.Next;
            end;

            qrServidor_Tabela.Close;
            qrServidor_Tabela.sql.clear;
            qrServidor_Tabela.sql.add('select *');
            qrServidor_Tabela.sql.add('from C000070');
            qrServidor_Tabela.sql.add('order by codigo');
            qrservidor_tabela.open;
            qrServidor_Tabela.First;

            while not qrservidor_tabela.eof do begin
              Application.ProcessMessages;

              qrPDV.close;
              qrPDV.sql.clear;
              qrPDV.sql.Add('select codigo from CLIENTE_AUT where codigo = ' + qrServidor_Tabela.fieldbyname('codigo').AsString);
              qrpdv.Open;
              if qrPDV.RecordCount = 0 then begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - CLIENTE PEGO POR - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('insert into CLIENTE_AUT (');

                  qrpdv.sql.add('CODIGO,');
                  qrpdv.sql.add('CODCLIENTE,');
                  qrpdv.sql.add('NOME');
                  qrpdv.sql.add(') values (');

                  qrpdv.sql.add(':CODIGO,');
                  qrpdv.sql.add(':CODCLIENTE,');
                  qrpdv.sql.add(':NOME');

                  qrpdv.sql.add(')');

                  qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrpdv.parambyname('CODCLIENTE').asstring := qrservidor_tabela.fieldbyname('CODCLIENTE').asstring;
                  qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring + ' - ' + qrservidor_tabela.fieldbyname('PARENTESCO').asstring;
                  qrpdv.ExecSQL;
                except
                  on E: exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CLIENTE PEGO POR - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end
              else begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - CLIENTE PEGO POR - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('update CLIENTE_AUT set');

                  qrpdv.sql.add('CODIGO = :CODIGO,');
                  qrpdv.sql.add('CODCLIENTE = :CODCLIENTE,');
                  qrpdv.sql.add('NOME = :NOME');
                  qrpdv.sql.add('where codigo = :codigo');

                  qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('codigo').asstring;
                  qrpdv.parambyname('CODCLIENTE').asstring := qrservidor_tabela.fieldbyname('CODCLIENTE').asstring;
                  qrpdv.parambyname('NOME').asstring := qrservidor_tabela.fieldbyname('nome').asstring + ' - ' + qrservidor_tabela.fieldbyname('PARENTESCO').asstring;
                  qrpdv.ExecSQL;
                except
                  on E: Exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - CLIENTE PEGO POR - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end;
              qrServidor_tabela.Next;
            end;

            qrServidor_Tabela.Close;
            qrServidor_Tabela.sql.clear;
            qrServidor_Tabela.sql.add('select *');
            qrServidor_Tabela.sql.add('from C000013');
            qrServidor_Tabela.sql.add('order by numero');
            qrservidor_tabela.open;
            qrServidor_Tabela.First;

            if LimpaDados then begin
              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - LIMPANDO - CART�O/FINANCEIRA');
              try
                qrpdv.close;
                qrpdv.sql.clear;
                qrpdv.sql.add('delete from bancos');
                qrpdv.ExecSQL;
              except
                on E: Exception do begin
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - LIMPANDO - CART�O/FINANCEIRA');
                  Memo1.LINES.Add('Mensagem: ' + E.message);
                end;
              end;
            end;

            while not qrservidor_tabela.eof do begin
              Application.ProcessMessages;

              qrPDV.close;
              qrPDV.sql.clear;
              qrPDV.sql.Add('select numero from bancos where numero = ' + inttostr(StrToInt(qrServidor_Tabela.fieldbyname('numero').AsString)));
              qrpdv.Open;
              if qrPDV.RecordCount = 0 then begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - CART�O/FINANCEIRA - ' + qrservidor_tabela.fieldbyname('numero').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('insert into bancos (');

                  qrpdv.sql.add('NUMERO,');
                  qrpdv.sql.add('BANCO,');
                  qrpdv.sql.add('LOGO,');
                  qrpdv.sql.add('CARTAO_CREDITO,');
                  qrpdv.sql.add('FINANCEIRA,');
                  qrpdv.sql.add('administradora');
                  qrpdv.sql.add(') values (');

                  qrpdv.sql.add(':NUMERO,');
                  qrpdv.sql.add(':BANCO,');
                  qrpdv.sql.add(':LOGO,');
                  qrpdv.sql.add(':CARTAO_CREDITO,');
                  qrpdv.sql.add(':FINANCEIRA,');
                  qrpdv.sql.add(':administradora');

                  qrpdv.sql.add(')');

                  qrpdv.parambyname('NUMERO').asstring := qrservidor_tabela.fieldbyname('NUMERO').asstring;
                  qrpdv.parambyname('BANCO').asstring := qrservidor_tabela.fieldbyname('BANCO').asstring;
                  qrpdv.parambyname('LOGO').asstring := qrservidor_tabela.fieldbyname('LOGO').asstring;
                  qrpdv.parambyname('CARTAO_CREDITO').asstring := qrservidor_tabela.fieldbyname('CARTAO_CREDITO').asstring;
                  qrpdv.parambyname('FINANCEIRA').asstring := qrservidor_tabela.fieldbyname('FINANCEIRA').asstring;
                  qrpdv.parambyname('administradora').asstring := qrservidor_tabela.fieldbyname('administradora').asstring;
                  qrpdv.ExecSQL;
                except
                  on E: exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - CART�O/FINANCEIRA - ' + qrservidor_tabela.fieldbyname('numero').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end
              else begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - CART�O/FINANCEIRA - ' + qrservidor_tabela.fieldbyname('numero').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('update bancos set');

                  qrpdv.sql.add('NUMERO = :NUMERO,');
                  qrpdv.sql.add('BANCO = :BANCO,');
                  qrpdv.sql.add('LOGO = :LOGO,');
                  qrpdv.sql.add('CARTAO_CREDITO = :CARTAO_CREDITO,');
                  qrpdv.sql.add('FINANCEIRA = :FINANCEIRA,');
                  qrpdv.sql.add('administradora = :administradora');
                  qrpdv.sql.add('where NUMERO = :NUMERO');

                  qrpdv.parambyname('NUMERO').asstring := qrservidor_tabela.fieldbyname('NUMERO').asstring;
                  qrpdv.parambyname('BANCO').asstring := qrservidor_tabela.fieldbyname('BANCO').asstring;
                  qrpdv.parambyname('LOGO').asstring := qrservidor_tabela.fieldbyname('LOGO').asstring;
                  qrpdv.parambyname('CARTAO_CREDITO').asstring := qrservidor_tabela.fieldbyname('CARTAO_CREDITO').asstring;
                  qrpdv.parambyname('FINANCEIRA').asstring := qrservidor_tabela.fieldbyname('FINANCEIRA').asstring;
                  qrpdv.parambyname('administradora').asstring := qrservidor_tabela.fieldbyname('administradora').asstring;
                  qrpdv.ExecSQL;
                except
                  on E: Exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - CART�O/FINANCEIRA - ' + qrservidor_tabela.fieldbyname('numero').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end;

              qrServidor_tabela.Next;
            end;

            qrServidor_Tabela.Close;
            qrServidor_Tabela.sql.clear;
            qrServidor_Tabela.sql.add('select *');
            qrServidor_Tabela.sql.add('from C000017');
            qrServidor_Tabela.sql.add('order by codigo');
            qrservidor_tabela.open;
            qrServidor_Tabela.First;

            if LimpaDados then begin
              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - LIMPANDO - GRUPO');
              try
                qrpdv.close;
                qrpdv.sql.clear;
                qrpdv.sql.add('delete from grupo');
                qrpdv.ExecSQL;
              except
                on E: Exception do begin
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - LIMPANDO - GRUPO');
                  Memo1.LINES.Add('Mensagem: ' + E.message);
                end;
              end;
            end;

            while not qrservidor_tabela.eof do begin
              Application.ProcessMessages;

              qrPDV.close;
              qrPDV.sql.clear;
              qrPDV.sql.Add('select codigo from GRUPO where codigo = ' + qrServidor_Tabela.fieldbyname('codigo').AsString);
              qrpdv.Open;
              if qrPDV.RecordCount = 0 then begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - GRUPO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('insert into GRUPO (');

                  qrpdv.sql.add('CODIGO,');
                  qrpdv.sql.add('GRUPO,');
                  qrpdv.sql.add('FOTO');
                  qrpdv.sql.add(') values (');

                  qrpdv.sql.add(':CODIGO,');
                  qrpdv.sql.add(':GRUPO,');
                  qrpdv.sql.add(':FOTO');

                  qrpdv.sql.add(')');

                  qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('CODIGO').asstring;
                  qrpdv.parambyname('GRUPO').asstring := qrservidor_tabela.fieldbyname('GRUPO').asstring;
                  if not qrservidor_tabela.fieldbyname('foto').IsNull then begin
                    MemoryStream := TMemoryStream.Create;
                    Jpg := TJpegImage.Create;
                    (qrservidor_tabela.fieldbyname('foto') as tblobfield).SaveToStream(MemoryStream);
                    MemoryStream.Position := OffsetMemoryStream;
                    qrpdv.parambyname('foto').LoadFromStream(MemoryStream, ftGraphic);
                    freeandnil(MemoryStream);
                  end
                  else
                    qrpdv.parambyname('foto').Clear;
                  qrpdv.ExecSQL;
                except
                  on E: exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - GRUPO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end
              else begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - GRUPO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('update GRUPO set');

                  qrpdv.sql.add('CODIGO = :CODIGO,');
                  qrpdv.sql.add('GRUPO = :GRUPO,');
                  qrpdv.sql.add('FOTO = :FOTO');
                  qrpdv.sql.add('where CODIGO = :CODIGO');

                  qrpdv.parambyname('CODIGO').asstring := qrservidor_tabela.fieldbyname('CODIGO').asstring;
                  qrpdv.parambyname('GRUPO').asstring := qrservidor_tabela.fieldbyname('GRUPO').asstring;
                  if not qrservidor_tabela.fieldbyname('foto').IsNull then begin
                    MemoryStream := TMemoryStream.Create;
                    Jpg := TJpegImage.Create;
                    (qrservidor_tabela.fieldbyname('foto') as tblobfield).SaveToStream(MemoryStream);
                    MemoryStream.Position := OffsetMemoryStream;
                    qrpdv.parambyname('foto').LoadFromStream(MemoryStream, ftGraphic);
                    freeandnil(MemoryStream);
                  end
                  else
                    qrpdv.parambyname('foto').Clear;
                  qrpdv.ExecSQL;
                except
                  on E: Exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - GRUPO - ' + qrservidor_tabela.fieldbyname('codigo').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end;
              qrServidor_tabela.Next;
            end;

            qrServidor_Tabela.Close;
            qrServidor_Tabela.sql.clear;
            qrServidor_Tabela.sql.add('select *');
            qrServidor_Tabela.sql.add('from tabela_preco');
            qrServidor_Tabela.sql.add('order by id');
            qrservidor_tabela.open;
            qrServidor_Tabela.First;

            if LimpaDados then begin
              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - LIMPANDO - TABELA DE PRE�O');
              try
                qrpdv.close;
                qrpdv.sql.clear;
                qrpdv.sql.add('delete from tabela_preco');
                qrpdv.ExecSQL;
              except
                on E: Exception do begin
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - LIMPANDO - TABELA DE PRE�O');
                  Memo1.LINES.Add('Mensagem: ' + E.message);
                end;
              end;
            end;

            while not qrservidor_tabela.eof do begin
              Application.ProcessMessages;

              qrPDV.close;
              qrPDV.sql.clear;
              qrPDV.sql.Add('select id from tabela_preco where id = ' + qrServidor_Tabela.fieldbyname('id').AsString);
              qrpdv.Open;
              if qrPDV.RecordCount = 0 then begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - INC - TABELA DE PRE�O - ' + qrservidor_tabela.fieldbyname('id').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('insert into tabela_preco (');
                  qrpdv.sql.add('id,');
                  qrpdv.sql.add('cod_produto,');
                  qrpdv.sql.add('tipo_tabela,');
                  qrpdv.sql.add('quantidade_inicial,');
                  qrpdv.sql.add('quantidade_final,');
                  qrpdv.sql.add('valor_venda,');
                  qrpdv.sql.add('validade_inicio,');
                  qrpdv.sql.add('validade_fim');
                  qrpdv.sql.add(') values (');
                  qrpdv.sql.add(':id,');
                  qrpdv.sql.add(':cod_produto,');
                  qrpdv.sql.add(':tipo_tabela,');
                  qrpdv.sql.add(':quantidade_inicial,');
                  qrpdv.sql.add(':quantidade_final,');
                  qrpdv.sql.add(':valor_venda,');
                  qrpdv.sql.add(':validade_inicio,');
                  qrpdv.sql.add(':validade_fim');
                  qrpdv.sql.add(')');
                  qrpdv.parambyname('id').AsInteger := qrservidor_tabela.fieldbyname('id').AsInteger;
                  qrpdv.parambyname('cod_produto').AsInteger := qrservidor_tabela.fieldbyname('cod_produto').AsInteger;
                  qrpdv.parambyname('tipo_tabela').asstring := qrservidor_tabela.fieldbyname('tipo_tabela').asstring;
                  qrpdv.parambyname('quantidade_inicial').AsFloat := qrservidor_tabela.fieldbyname('quantidade_inicial').AsFloat;
                  qrpdv.parambyname('quantidade_final').AsFloat := qrservidor_tabela.fieldbyname('quantidade_final').AsFloat;
                  qrpdv.parambyname('valor_venda').AsFloat := qrservidor_tabela.fieldbyname('valor_venda').AsFloat;
                  if qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime > 0 then
                    qrpdv.parambyname('validade_inicio').AsDateTime := qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime
                  else
                    qrpdv.parambyname('validade_inicio').Clear;
                  if qrservidor_tabela.fieldbyname('validade_fim').AsDateTime > 0 then
                    qrpdv.parambyname('validade_fim').AsDateTime := qrservidor_tabela.fieldbyname('validade_fim').AsDateTime
                  else
                    qrpdv.parambyname('validade_fim').Clear;
                  qrpdv.ExecSQL;
                except
                  on E: exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - INC - TABELA DE PRE�O - ' + qrservidor_tabela.fieldbyname('id').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end
              else begin
                try
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - ALT - TABELA DE PRE�O - ' + qrservidor_tabela.fieldbyname('ID').asstring);
                  qrpdv.close;
                  qrpdv.sql.clear;
                  qrpdv.sql.add('update tabela_preco set');
                  qrpdv.sql.add('id = :id,');
                  qrpdv.sql.add('cod_produto = :cod_produto,');
                  qrpdv.sql.add('tipo_tabela = :tipo_tabela,');
                  qrpdv.sql.add('quantidade_inicial = :quantidade_inicial,');
                  qrpdv.sql.add('quantidade_final = :quantidade_final,');
                  qrpdv.sql.add('valor_venda = :valor_venda,');
                  qrpdv.sql.add('validade_inicio = :validade_inicio,');
                  qrpdv.sql.add('validade_fim = :validade_fim');
                  qrpdv.sql.add('where id = :id');
                  qrpdv.parambyname('id').AsInteger := qrservidor_tabela.fieldbyname('id').AsInteger;
                  qrpdv.parambyname('cod_produto').AsInteger := qrservidor_tabela.fieldbyname('cod_produto').AsInteger;
                  qrpdv.parambyname('tipo_tabela').asstring := qrservidor_tabela.fieldbyname('tipo_tabela').asstring;
                  qrpdv.parambyname('quantidade_inicial').AsFloat := qrservidor_tabela.fieldbyname('quantidade_inicial').AsFloat;
                  qrpdv.parambyname('quantidade_final').AsFloat := qrservidor_tabela.fieldbyname('quantidade_final').AsFloat;
                  qrpdv.parambyname('valor_venda').AsFloat := qrservidor_tabela.fieldbyname('valor_venda').AsFloat;
                  if qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime > 0 then
                    qrpdv.parambyname('validade_inicio').AsDateTime := qrservidor_tabela.fieldbyname('validade_inicio').AsDateTime
                  else
                    qrpdv.parambyname('validade_inicio').Clear;
                  if qrservidor_tabela.fieldbyname('validade_fim').AsDateTime > 0 then
                    qrpdv.parambyname('validade_fim').AsDateTime := qrservidor_tabela.fieldbyname('validade_fim').AsDateTime
                  else
                    qrpdv.parambyname('validade_fim').Clear;
                  qrpdv.ExecSQL;
                except
                  on E: Exception do begin
                    memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - ALT - TABELA DE PRE�O - ' + qrservidor_tabela.fieldbyname('id').asstring);
                    Memo1.LINES.Add('Mensagem: ' + E.message);
                  end;
                end;
              end;

              qrServidor_tabela.Next;
            end;

            qrservidor_tabela.Close;
            qrservidor_tabela.SQL.Clear;
            qrservidor_tabela.SQL.Add('select c.desconto_totalnota, c.nao_utiliza_extra from c000001 c');
            qrservidor_tabela.Open;
            qrpdv.close;
            qrpdv.sql.clear;
            qrpdv.sql.add('update config set carga_data = ' + QuotedStr(datetostr(date)) + ',');
            qrpdv.sql.Add('carga_hora = ' + QuotedStr(timetostr(time)) + ',');
            qrpdv.sql.Add('DESCONTO_MAXIMO_VENDA = :DESCONTO,');
            qrpdv.sql.Add('nao_utiliza_extra = :nao_utiliza_extra');
            qrpdv.ParamByName('DESCONTO').AsFloat := qrservidor_tabela.FieldByName('desconto_totalnota').AsFloat;
            qrpdv.ParamByName('nao_utiliza_extra').AsString := qrservidor_tabela.FieldByName('nao_utiliza_extra').AsString;
            qrpdv.ExecSQL;



            AdicionarCaixas;
            AdicionarUsuarios;
            AdicionarVendedores;

          end
          else begin
            grid.CELL[3, I].AsInteger := 1;
          end;
        end;
      end;
    end
    else begin
      verifica_conexao('SERVIDOR', ed_server.TEXT, ed_server_database.TEXT);
    end;

  finally
    Screen.Cursor := crArrow;
    pnlAviso.Visible := False;

    Timer1.Enabled := true;
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.iconeLButtonDblClick(Sender: TObject);
begin
  Show;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdicionarUsuarios;
var
  Y: Integer;
begin
  qrservidor.close;
  qrservidor.sql.clear;
  qrservidor.sql.add('select * from c000003 where nivel = 4');
  qrservidor.open;
  qrservidor.first;

  Y := 1;

  while not qrservidor.eof do begin
    qrpdv.close;
    qrpdv.sql.clear;
    qrpdv.sql.add('insert into adm (');
    qrpdv.sql.add('codigo, info1, info2, info3) values (');
    qrpdv.sql.add(':codigo, :info1, :info2, :info3)');
    qrpdv.ParamByName('codigo').asinteger := strtoint('991' + zerar(inttostr(Y), 3));
    qrpdv.parambyname('info1').asstring := 'DELPHOS_' + inttostr(Y);
    qrpdv.parambyname('info2').asstring := cript('D', qrservidor.fieldbyname('senha').asstring);
    qrpdv.parambyname('info3').asstring := '4';
    qrpdv.ExecSQL;
    inc(Y);
    qrservidor.next;
  end;

  qrservidor.close;
  qrservidor.sql.clear;
  qrservidor.sql.add('select nome, senha, aprova_desconto, abrir_caixa, fecha_caixa, configuracoes, cancelar_venda, cancelar_item from c000008 where situacao = 1 and (funcao = ' + QuotedStr('SUPERVISOR') + ' or funcao = ' + QuotedStr('DIRETOR') + ' or funcao = ' + QuotedStr('GERENTE')+')');
  qrservidor.open;
  qrservidor.first;
  qrpdv2.close;
  qrpdv2.sql.clear;
  qrpdv2.sql.add('delete from supervisor');
  qrpdv2.ExecSQL;
  while not qrservidor.eof do begin
    qrpdv.close;
    qrpdv.sql.clear;
    qrpdv.sql.add('insert into supervisor (');
    qrpdv.sql.add('nome, senha, aprova_desconto, abrir_caixa, fecha_caixa, configuracoes, cancelar_venda, cancelar_item) values (');
    qrpdv.sql.add(':nome, :senha, :aprova_desconto, :abrir_caixa, :fecha_caixa, :configuracoes, :cancelar_venda, :cancelar_item)');
    qrpdv.ParamByName('nome').AsString := qrServidor.FieldByName('nome').AsString;
    qrpdv.parambyname('senha').asstring := qrServidor.FieldByName('senha').AsString;
    qrpdv.parambyname('aprova_desconto').asstring := qrServidor.FieldByName('aprova_desconto').AsString;
    qrpdv.parambyname('abrir_caixa').asstring := qrServidor.FieldByName('abrir_caixa').AsString;
    qrpdv.parambyname('fecha_caixa').asstring := qrServidor.FieldByName('fecha_caixa').AsString;
    qrpdv.parambyname('configuracoes').asstring := qrServidor.FieldByName('configuracoes').AsString;
    qrpdv.parambyname('cancelar_venda').asstring := qrServidor.FieldByName('cancelar_venda').AsString;
    qrpdv.parambyname('cancelar_item').asstring := qrServidor.FieldByName('cancelar_item').AsString;
    qrpdv.ExecSQL;
    qrservidor.next;
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdicionarVendedores;
begin
  // CGT: Nome dos Vendedores/Caixas cadastrados no retaguarda
  qrservidor.close;
  qrservidor.sql.clear;
  qrservidor.sql.add('select c000008.CODIGO, c000008.NOME from c000008 ' + ' where (c000008.F_VENDEDOR = 1) order by c000008.codigo');
  qrservidor.open;
  qrservidor.first;

  qrpdv.close;
  qrpdv.sql.clear;
  qrpdv.SQL.add('delete from VENDEDORES');
  qrpdv.ExecSQL;

  while not qrservidor.eof do begin
    Application.ProcessMessages;

    qrpdv.close;
    qrpdv.sql.clear;
    qrpdv.sql.add('insert into VENDEDORES (');
    qrpdv.sql.add('CODIGO, NOME) values (');
    qrpdv.sql.add(':CODIGO, :NOME)');
    qrpdv.ParamByName('CODIGO').AsString := qrservidor.fieldbyname('CODIGO').AsString;
    qrpdv.parambyname('NOME').AsString := qrservidor.fieldbyname('nome').AsString;

    qrpdv.ExecSQL;

    qrservidor.next;
  end;
end;

procedure TfrmPrincipal.AdvGlowButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
  if not pnlAviso.Visible then
    Timer1Timer(frmPrincipal);
end;

procedure TfrmPrincipal.AdvGlowButton3Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure TfrmPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure TfrmPrincipal.AdvMetroButton2Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdicionarCaixas;
begin
  qrservidor.close;
  qrservidor.sql.clear;
  qrservidor.sql.add('select c000045.*, c000008.nome from c000045, c000008 where c000045.codfuncionario = c000008.codigo order by c000045.codigo');
  qrservidor.open;
  qrservidor.first;

  Memo1.Lines.Add('Encontrado ' + inttostr(qrservidor.RecordCount) + ' caixa(s)');

  qrpdv.close;
  qrpdv.sql.clear;
  qrpdv.SQL.add('delete from adm');
  qrpdv.ExecSQL;

  while not qrservidor.eof do begin
    Application.ProcessMessages;

    qrpdv.close;
    qrpdv.sql.clear;
    qrpdv.sql.add('insert into adm (');
    qrpdv.sql.add('codigo, info1, info2, info3, fechamento_cego) values (');
    qrpdv.sql.add(':codigo, :info1, :info2, :info3, :fechamento_cego)');
    qrpdv.ParamByName('codigo').asinteger := qrservidor.fieldbyname('codigo').asinteger;
    qrpdv.parambyname('info1').asstring := qrservidor.fieldbyname('nome').asstring;
    qrpdv.parambyname('info2').asstring := cript('D', qrservidor.fieldbyname('senha').asstring);
    qrpdv.parambyname('info3').asstring := '3';
    qrpdv.parambyname('fechamento_cego').asstring := qrservidor.fieldbyname('fechamento_cego').asstring;

    qrpdv.ExecSQL;

    qrservidor.next;
  end;
end;

function TfrmPrincipal.Arredondar(Value: Extended; Decimals: integer): Extended;
var
  Factor, Fraction: Extended;
begin
  Factor := IntPower(10, Decimals);
  { A convers�o para string e depois para float evita
    erros de arredondamentos indesej�veis. }
  Value := StrToFloat(FloatToStr(Value * Factor));
  Result := Int(Value);
  Fraction := Frac(Value);
  if Fraction >= 0.5 then
    Result := Result + 1
  else if Fraction <= -0.5 then
    Result := Result - 1;
  Result := Result / Factor;
end;

procedure TfrmPrincipal.edIniciaClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  try
    try
      Reg := TRegistry.Create;
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run', False);
      if edInicia.Checked then begin
        if not Reg.KeyExists('pdv_server') then
          Reg.CreateKey('pdv_server');
        Reg.WriteString('pdv_server', Application.ExeName)
      end
      else
        Reg.DeleteKey('pdv_server');
      Reg.CloseKey;
    except
      Application.MessageBox('N�o foi possivel concluir a opera��o, tente executar este software como adminitrador!', 'Aten��o!', MB_ICONASTERISK);
      edInicia.Checked := False;
    end;
  finally
    Reg.Free;
  end;
end;

end.


unit CuponsSAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.ImageList, Vcl.ImgList, MemDS, DBAccess, Uni, Vcl.StdCtrls,
  Vcl.ExtCtrls, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit, cxImageComboBox;

type
  TfrmCuponsSAT = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    lbCancelamento: TLabel;
    Panel3: TPanel;
    lbEnvio: TLabel;
    qryTmp: TUniQuery;
    qrSAT: TUniQuery;
    qrTemp: TUniQuery;
    ImageList1: TImageList;
    dsSAT: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrSATID: TIntegerField;
    qrSATDATA: TDateField;
    qrSATHORA: TStringField;
    qrSATNUMERO: TIntegerField;
    qrSATCODCLIENTE: TStringField;
    qrSATAMBIENTE: TIntegerField;
    qrSATCANCELADO: TStringField;
    qrSATCHAVE: TStringField;
    qrSATXML_ENVIO: TBlobField;
    qrSATXML_CANCELAMENTO: TBlobField;
    qrSATALTERADO: TStringField;
    qrSATEX: TIntegerField;
    qrSATCUPOM: TStringField;
    qrSATTOTAL: TFloatField;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1AMBIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1CANCELADO: TcxGridDBColumn;
    cxGrid1DBTableView1CUPOM: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1CHAVE: TcxGridDBColumn;
    Panel4: TPanel;
    AdvMetroButton1: TAdvMetroButton;
    Label1: TLabel;
    Bevel1: TBevel;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button3: TButton;
    edt_Numero: TEdit;
    dataini: TsDateEdit;
    datafin: TsDateEdit;
    Memo1: TMemo;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCuponsSAT: TfrmCuponsSAT;

implementation

{$R *.dfm}

uses venda, modulo, principal;

procedure TfrmCuponsSAT.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCuponsSAT.Button1Click(Sender: TObject);
var
  sCodigo:string;
begin
  if not(qrSAT.Active) or (qrSAT.IsEmpty) then
    Exit;
  if qrSATCANCELADO.AsString = 'S' then begin
    Application.MessageBox('Este cupom ja foi cancelado!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  if (qrSATDATA.AsDateTime <> Date) or ((qrSATDATA.AsDateTime =  Date) and (Time - StrToTime(qrSATHORA.AsString)>30)) then begin
    Application.MessageBox('Esta venda ja ultrapassou oprazo legal de 30min para cancelamento de cupons SAT, impossivel realizar o cacnelamento!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  with frmVenda do begin
    ConfiguraSAT;
    qrSATXML_ENVIO.SaveToFile(ExtractFilePath(Application.ExeName)+'\cancela_sat.xml');
    ACBrSAT1.CFe.LoadFromFile(ExtractFilePath(Application.ExeName)+'\cancela_sat.xml');
    ACBrSAT1.CFe2CFeCanc;
    Memo1.Lines.Clear;
    Memo1.Lines.Text := ACBrSAT1.CFeCanc.GerarXML(True);
    ACBrSAT1.CancelarUltimaVenda;
    ACBrSAT1.ImprimirExtratoCancelamento;
    if ACBrSAT1.Resposta.codigoDeRetorno = 7000 then begin
      with frmModulo do begin
        qrCupomCancelar.Open;
        qrCupomCancelar.Insert;
        qrCupomCancelarNUMERO.AsString := qrSATCUPOM.AsString;
        qrCupomCancelarDATA.AsDateTime := Date;
        qrCupomCancelarHORA.AsString := FormatDateTime('HH:MM:SS',Time);
        qrCupomCancelarUSU_CODIGO.AsInteger := icodigo_Usuario;
        qrCupomCancelarUSU_NOME.AsString := sNome_Operador;
        qrCupomCancelarEX.AsString := 'N';
        qrCupomCancelar.Post;
        qrCupomCancelar.ApplyUpdates;
      end;
      qrTemp.Close;
      qrTemp.SQL.Clear;
      qrTemp.SQL.Add('Select codigo from cupom where numero = ' + QuotedStr(qrSATCUPOM.AsString));
      qrTemp.Open;
      sCodigo := qrTemp.FieldByName('codigo').AsString;

      qrTemp.Close;
      qrTemp.SQL.Clear;
      qrTemp.SQL.Add('update cupom set cancelado = 1 where numero = ' + QuotedStr(qrSATCUPOM.AsString));
      qrTemp.ExecSQL;

      qrTemp.Close;
      qrTemp.SQL.Clear;
      qrTemp.SQL.Add('update CUPOM_ITEM set cancelado = 1 where cod_cupom = ' + QuotedStr(sCodigo));
      qrTemp.ExecSQL;

      qrSAT.Edit;
      qrSATCANCELADO.AsString := 'S';
      qrSATXML_CANCELAMENTO.AsString :=ACBrSAT1.CFeCanc.AsXMLString;
      qrSATALTERADO.AsString := 'S';
      qrSATEX.AsInteger := 0;
      qrSAT.Post;
      qrSAT.ApplyUpdates;

      frmModulo.conexao.Commit;
    end else begin
      Application.MessageBox(PWideChar('Não foi possivel cancelar este cupom:'+#13#13+IntToStr(ACBrSAT1.Resposta.codigoDeRetorno)+' - '+ACBrSAT1.Resposta.mensagemRetorno),'Atenção!',MB_ICONINFORMATION);
    end;
  end;
end;

procedure TfrmCuponsSAT.Button2Click(Sender: TObject);
begin
  with frmVenda do begin
    ConfiguraSAT;
    if qrSATCANCELADO.AsString = 'S' then
      qrSATXML_CANCELAMENTO.SaveToFile(ExtractFilePath(Application.ExeName)+'\imp_sat.xml')
    else
      qrSATXML_ENVIO.SaveToFile(ExtractFilePath(Application.ExeName)+'\imp_sat.xml');
    ACBrSAT1.CFe.LoadFromFile(ExtractFilePath(Application.ExeName)+'\imp_sat.xml');
    if qrSATCANCELADO.AsString = 'S' then
      ACBrSAT1.ImprimirExtratoCancelamento
    else
      ACBrSAT1.ImprimirExtrato;
  end;
end;

procedure TfrmCuponsSAT.Button3Click(Sender: TObject);
begin
  qrSAT.Close;
  qrSAT.SQL.Clear;
  qrSAT.SQL.Add('select nf.* from sat nf where 1=1 ');
  if dataini.Date > 0 then begin
    qrSAT.SQL.Add('and nf.data >= :pdataini');
    qrSAT.ParamByName('pdataini').AsDateTime := dataini.Date;
  end;
  if datafin.Date > 0 then begin
    qrSAT.SQL.Add('and nf.data <= :pdatafim');
    qrSAT.ParamByName('pdatafim').AsDateTime := datafin.Date;
  end;
  if trim(edt_Numero.Text) <> '' then begin
    qrSAT.SQL.Add('and nf.numero = :numero');
    qrSAT.ParamByName('numero').AsString := edt_Numero.Text;
  end;
  qrSAT.Open;
end;

end.

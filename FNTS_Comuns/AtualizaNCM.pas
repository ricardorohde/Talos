unit AtualizaNCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, ACBrBase,
  ACBrSocket, ACBrNCMs, cxProgressBar, Vcl.StdCtrls, cxButtons, AdvMetroButton,
  Vcl.ExtCtrls, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, QImport3, QImport3XLS,
  Vcl.ComCtrls, Vcl.Grids, ZSqlProcessor;

type
  TfrmAtualizaNCM = class(TForm)
    Panel1: TPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    Label1: TLabel;
    cxButton1: TcxButton;
    Barra: TcxProgressBar;
    ACBrNCMs1: TACBrNCMs;
    qrTmp: TZQuery;
    cdsProdutos: TFDMemTable;
    cdsProdutoscodigo: TStringField;
    cdsProdutosdescricao: TStringField;
    cdsProdutosNCM_A: TStringField;
    cdsProdutosNCM_N: TStringField;
    qi: TQImport3XLS;
    Lista: TStringGrid;
    proc: TZSQLProcessor;
    procedure cxButton1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtualizaNCM: TfrmAtualizaNCM;

implementation

uses
 modulo, DivergenciaAtualizacaoNCM;

{$R *.dfm}

procedure TfrmAtualizaNCM.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAtualizaNCM.cxButton1Click(Sender: TObject);
var
  I, C: Integer;
  NCMGravar:string;
begin
  try
    cxButton1.Caption := 'Aguarde!';
    cxButton1.Enabled := False;
    Barra.Properties.ShowTextStyle := cxtsText;
    Barra.Properties.Text := 'Aguarde Baixando Nova Tabela...';
    Update;

    ACBrNcms1.NCMS.Clear;
    ACBrNcms1.ListarNcms();
    if ACBrNcms1.NCMS.Count > 0  then begin
      Barra.Properties.Text := 'Limpando NCMs Antigos...';
      Update;

      qrTmp.Close;
      qrTmp.SQL.Clear;
      qrTmp.SQL.Add('delete from ncm');
      qrTmp.ExecSQL;

      Update;

      with frmmodulo do begin
        qrNCM.Close;
        qrNCM.Open;
      end;

      Barra.Properties.Text := 'Atualizando Tabela de NCMs...';
      Update;
      Barra.Properties.Max := ACBrNcms1.NCMS.Count;
      C:=0;
      for I := 0 to ACBrNcms1.NCMS.Count -1 do begin
        with frmmodulo do begin
          Barra.Position := I;
          Inc(C);
          NCMGravar := ACBrNcms1.NCMS.Objects[I].DescricaoNcm;
          NCMGravar := StringReplace(NCMGravar,'- ','',[rfReplaceAll]);
          NCMGravar := StringReplace(NCMGravar,'-','',[rfReplaceAll]);
          qrNCM.Insert;
          qrNCMNCM.AsString := ACBrNcms1.NCMS.Objects[I].CodigoNcm;
          qrNCMDESCRICAO.AsString := NCMGravar;
          qrNCM.Post;
          if C >= 500 then begin
            qrNCM.ApplyUpdates;
            C:=0;
          end;
          Update;
        end;
      end;

      if C > 0 then
        frmmodulo.qrNCM.ApplyUpdates;

      frmmodulo.Conexao.Commit;

      Barra.Properties.Text := 'Verificando Cadastro de Produtos...';
      Update;
      with frmmodulo do begin
        qrproduto.Close;
        qrproduto.Open;
        Barra.Properties.Max := qrproduto.RecordCount;
        qrproduto.First;
        cdsProdutos.Close;
        cdsProdutos.CreateDataSet;
        Barra.Position := 0;
        while not qrproduto.eof do begin
          Barra.Position := Barra.Position + 1;
          qrTmp.Close;
          qrTmp.SQL.Clear;
          qrTmp.SQL.Add('select count(*) qtd from ncm where ncm = ' + QuotedStr(qrprodutoCLASSIFICACAO_FISCAL.AsString));
          qrTmp.Open;
          if qrTmp.FieldByName('qtd').AsInteger <= 0 then begin
            cdsProdutos.Insert;
            cdsProdutoscodigo.AsString := qrprodutoCODIGO.AsString;
            cdsProdutosdescricao.AsString := qrprodutoPRODUTO.AsString;
            cdsProdutosNCM_A.AsString := qrprodutoCLASSIFICACAO_FISCAL.AsString;
            cdsProdutos.Post;
          end;
          Update;
          qrproduto.Next;
        end;
      end;

      if cdsProdutos.RecordCount > 0 then begin
        cdsProdutos.First;
        Application.CreateForm(TFrmDivergenciaAtualizacaoNCM, FrmDivergenciaAtualizacaoNCM);
        FrmDivergenciaAtualizacaoNCM.ShowModal;
        Barra.Properties.Text := 'Agtualizando Cadastro de Produtos...';
        Update;
        Barra.Properties.Max := cdsProdutos.RecordCount;
        cdsProdutos.First;
        Barra.Position := 0;
        while not cdsProdutos.eof do begin
          Barra.Position := Barra.Position + 1;
          if cdsProdutosNCM_N.AsString <> '' then begin
            qrTmp.SQL.Clear;
            qrTmp.SQL.Add('update c000025 set CLASSIFICACAO_FISCAL = ' + QuotedStr(cdsProdutosNCM_N.AsString)+ ' where codigo = ' + QuotedStr(cdsProdutosCodigo.AsString));
            qrTmp.ExecSQL;
          end;
          Update;
          cdsProdutos.Next;
        end;
        FreeAndNil(FrmDivergenciaAtualizacaoNCM);
      end;
      Barra.Properties.Text := 'Atualização Concluída';
      Update;
    end else begin
      Barra.Properties.Text := '';
      Application.MessageBox('Não foi possivel baixar a lista de NCM do webService da SEFAZ!','Atenção!',MB_ICONINFORMATION);
    end;
  finally
    cxButton1.Caption := 'Atualizar';
    cxButton1.Enabled := True;
  end;

end;

end.

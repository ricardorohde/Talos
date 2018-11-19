unit AtualizaIBPT;

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
  Vcl.ComCtrls, Vcl.Grids, ZSqlProcessor, ACBrIBPTax, Vcl.Buttons;

type
  TfrmAtualizaIBPT = class(TForm)
    Panel1: TPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    cxButton1: TcxButton;
    Barra: TcxProgressBar;
    qrTmp: TZQuery;
    cdsProdutos: TFDMemTable;
    cdsProdutoscodigo: TStringField;
    cdsProdutosdescricao: TStringField;
    cdsProdutosNCM_A: TStringField;
    cdsProdutosNCM_N: TStringField;
    ACBrIBPTax1: TACBrIBPTax;
    sbtnCaminhoCert: TSpeedButton;
    edtCaminho: TEdit;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtualizaIBPT: TfrmAtualizaIBPT;

implementation

uses
  modulo, DivergenciaAtualizacaoNCM;

{$R *.dfm}

procedure TfrmAtualizaIBPT.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAtualizaIBPT.cxButton1Click(Sender: TObject);
var
  I, C: Integer;
begin
  try
    if edtCaminho.Text = '' then begin
      Application.MessageBox('Informe a tebale para a atualização!','Atenção',MB_ICONINFORMATION);
      edtCaminho.SetFocus;
      Exit;
    end;
    if not FileExists(edtCaminho.Text) then begin
      Application.MessageBox('A tabela informada não existe!','Atenção',MB_ICONINFORMATION);
      edtCaminho.SetFocus;
      Exit;
    end;
    cxButton1.Caption := 'Aguarde!';
    cxButton1.Enabled := False;
    Barra.Properties.ShowTextStyle := cxtsText;
    Barra.Properties.Text := 'Aguarde Abrindo Tabela...';
    Update;
    ACBrIBPTax1.AbrirTabela(edtCaminho.Text);

    Barra.Properties.Text := 'Limpando IbptTax Antigos...';
    Update;

    qrTmp.Close;
    qrTmp.SQL.Clear;
    qrTmp.SQL.Add('delete from IBPT_ALIQUOTAS');
    qrTmp.ExecSQL;

    Update;

    with frmmodulo do begin
      qrIBPT.Close;
      qrIBPT.Open;
    end;

    Barra.Properties.Text := 'Atualizando Tabela de IbptTax...';
    Update;
    Barra.Properties.Max := ACBrIBPTax1.Itens.Count;
    C:=0;
    for I := 0 to ACBrIBPTax1.Itens.Count -1 do begin
      with frmmodulo do begin
        Barra.Position := I;
        Inc(C);
        qrIBPT.Insert;
        qrIBPTCODIGO.AsInteger := I;
        qrIBPTEX.AsString := ACBrIBPTax1.Itens[I].Excecao;
        qrIBPTTABELA.AsInteger := Integer(ACBrIBPTax1.Itens[I].Tabela);
        qrIBPTALIQNAC.AsFloat := ACBrIBPTax1.Itens[I].FederalNacional;
        qrIBPTALIQIMP.AsFloat := ACBrIBPTax1.Itens[I].FederalImportado;
        qrIBPTNCM.AsString := ACBrIBPTax1.Itens[I].NCM;
        qrIBPT.Post;
        if C >= 500 then begin
          qrIBPT.ApplyUpdates;
          C:=0;
        end;
        Update;
      end;
    end;

    if C > 0 then
      frmmodulo.qrIBPT.ApplyUpdates;

    frmmodulo.Conexao.Commit;

    Barra.Properties.Text := 'Atualização Concluída';
    Update;
  finally
    cxButton1.Caption := 'Atualizar';
    cxButton1.Enabled := True;
  end;

end;

procedure TfrmAtualizaIBPT.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a tabela IBPTax';
  OpenDialog1.DefaultExt := '*.csv';
  OpenDialog1.Filter :=
    'Tabelas IBPTax (*.csv)|*.csv';
  OpenDialog1.InitialDir := ExtractFileDir(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

end.

unit RetornaEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, AdvGlowButton,
  Vcl.StdCtrls, Vcl.Mask, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, ACBrBase, ACBrSocket, ACBrCEP, Datasnap.DBClient;

Type
  TEndereco = record
    Cep, Logradouro, Complemento, Bairro, Municipio, UF, ibge_mun, ibge_uf, Numero:string;
  end;

type
  TfrmRetornaEndereco = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    btnCep: TAdvGlowButton;
    ACBrCEP1: TACBrCEP;
    cdsRest: TClientDataSet;
    dsRest: TDataSource;
    cdsRestCep: TStringField;
    cdsRestLogradouro: TStringField;
    cdsRestComplemento: TStringField;
    cdsRestBairro: TStringField;
    cdsRestMunicipio: TStringField;
    cdsRestIBGE: TStringField;
    cdsRestUF: TStringField;
    cdsRestibge_uf: TStringField;
    cxGrid1DBTableView1Cep: TcxGridDBColumn;
    cxGrid1DBTableView1Logradouro: TcxGridDBColumn;
    cxGrid1DBTableView1Complemento: TcxGridDBColumn;
    cxGrid1DBTableView1Bairro: TcxGridDBColumn;
    cxGrid1DBTableView1Municipio: TcxGridDBColumn;
    cxGrid1DBTableView1UF: TcxGridDBColumn;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    cdsRestNumero: TStringField;
    cxGrid1DBTableView1Numero: TcxGridDBColumn;
    procedure btnCepClick(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
    Sel:Boolean;
  public
    { Public declarations }
  end;

  function RetornaEnderecoCep(Cep:string = ''):TEndereco;

var
  frmRetornaEndereco: TfrmRetornaEndereco;

implementation

{$R *.dfm}

uses modulo;

function RetornaEnderecoCep(Cep:string = ''):TEndereco;
begin
  Application.CreateForm(TfrmRetornaEndereco, frmRetornaEndereco);
  with frmRetornaEndereco do begin
    Sel:=False;
    ACBrCEP1.WebService := TACBrCEPWebService(frmmodulo.qrconfigCEP_SERVIDOR.AsInteger) ;
    ACBrCEP1.ChaveAcesso := frmmodulo.qrconfigCEP_CHAVE.AsString;
    if Cep <> '' then begin
      MaskEdit1.Text := Cep;
      btnCepClick(btnCep);
      ShowModal;
    end;
    if Sel then begin
      Result.Cep := cdsRestCep.AsString;
      Result.Logradouro := cdsRestLogradouro.AsString;
      Result.Complemento := cdsRestComplemento.AsString;
      Result.Bairro := cdsRestBairro.AsString;
      Result.Municipio := cdsRestMunicipio.AsString;
      Result.UF := cdsRestUF.AsString;
      Result.ibge_mun := cdsRestIBGE.AsString;
      Result.ibge_uf := cdsRestibge_uf.AsString;
      Result.Numero := cdsRestNumero.AsString;
    end else begin
      Result.Cep := '';
      Result.Logradouro := '';
      Result.Complemento := '';
      Result.Bairro := '';
      Result.Municipio := '';
      Result.UF := '';
      Result.ibge_mun := '';
      Result.ibge_uf := '';
      Result.Numero := '';
    end;
  end;
  FreeAndNil(frmRetornaEndereco);
end;


procedure TfrmRetornaEndereco.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
  I : Integer ;
begin
  if ACBrCEP1.Enderecos.Count < 1  then begin
    Application.MessageBox('Nenhum Endereço encontrado para este CEP.','Atenção!',MB_ICONINFORMATION);
    Exit;
  end else begin
    cdsRest.Close;
    cdsRest.CreateDataSet;
    For I := 0 to ACBrCEP1.Enderecos.Count-1 do begin
      with ACBrCEP1.Enderecos[I] do begin
        cdsRest.Append;
        cdsRestCep.AsString := CEP;
        cdsRestLogradouro.AsString := Tipo_Logradouro+ ' ' +Logradouro;
        cdsRestComplemento.AsString := Complemento;
        cdsRestMunicipio.AsString := Municipio;
        cdsRestBairro.AsString := Bairro;
        cdsRestIBGE.AsString := IBGE_Municipio;
        cdsRestUF.AsString := UF ;
        cdsRestibge_uf.AsString := IBGE_UF;
        if Pos(',',Logradouro)>0 then begin
          cdsRestNumero.AsString := Trim(Copy(Logradouro,Pos(',',Logradouro)+1,Length(Logradouro)-Pos(',',Logradouro)+1));
          cdsRestLogradouro.AsString := Tipo_Logradouro+ ' ' +Trim(Copy(Logradouro,1,Pos(',',Logradouro)-1));
        end;
        cdsRest.Post;

      end;
    end;
  end;
end;

procedure TfrmRetornaEndereco.AdvGlowButton1Click(Sender: TObject);
begin
  if not(cdsRest.Active) or (cdsRest.IsEmpty) then begin
    Application.MessageBox('Não foi selecionado nenhum endereço.','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Sel := True;
  Close;
end;

procedure TfrmRetornaEndereco.AdvGlowButton2Click(Sender: TObject);
begin
  Sel := False;
  Close;
end;

procedure TfrmRetornaEndereco.btnCepClick(Sender: TObject);
begin
  try
     ACBrCEP1.BuscarPorCEP(MaskEdit1.Text);
  except
     On E : Exception do
     begin
       Application.MessageBox(PWideChar('Ocorre um erro no processo!'+#13#13+e.Message),'Atenção!',MB_ICONINFORMATION);
       Exit;
     end ;
  end ;

end;

procedure TfrmRetornaEndereco.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if cdsRest.RecordCount > 0 then begin
    Sel := True;
    Close;
  end;
end;

procedure TfrmRetornaEndereco.FormCreate(Sender: TObject);
begin
  cdsRest.Close;
  cdsRest.CreateDataSet;
end;

end.

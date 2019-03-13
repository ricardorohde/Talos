unit ConsultaCPF;

interface

uses
  PNGImage,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ACBrBase, ACBrSocket, ACBrConsultaCPF,
  AdvMetroButton, Vcl.Mask;


type
  TRetornoCPFSefaz = record
    Confirma:Boolean;
    Nome:string;
    DataNascimento:TDate;
    Situacao:string;
    DataInscricao:TDate;
    CodigoComprovante:string;
    CPF:string;
  end;
  TfrmConsultaCPF = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label12: TLabel;
    EditRazaoSocial: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    EditCaptcha: TEdit;
    Label14: TLabel;
    Timer1: TTimer;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    EditSituacao: TEdit;
    EdtDigitoVerificador: TEdit;
    RzLabel1: TLabel;
    EdtCodCtrlControle: TEdit;
    RzLabel2: TLabel;
    EdtEmissao: TEdit;
    RzLabel3: TLabel;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    btnConsultar: TButton;
    Label2: TLabel;
    EditDtNasc: TEdit;
    EdtIncricao: TEdit;
    Label4: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Button1: TButton;
    EditCNPJ: TMaskEdit;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    Confirma:Boolean;
  public
  end;
  function ConsultaCPFSefaz(cpf:string = ''; DataNascimento:TDate=0):TRetornoCPFSefaz;

var
  frmConsultaCPF: TfrmConsultaCPF;

implementation

{$R *.dfm}

function ConsultaCPFSefaz(cpf:string = ''; DataNascimento:TDate=0):TRetornoCPFSefaz;
begin
  Application.CreateForm(TfrmConsultaCPF, frmConsultaCPF);
  with frmConsultaCPF do begin
    Confirma := False;
    if cpf <> '' then
      EditCNPJ.Text := cpf;
    if DataNascimento > 0 then
      EditDtNasc.Text := DateToStr(DataNascimento);
    ShowModal;
    Result.Confirma := Confirma;
    if Confirma then begin
      Result.Nome := EditRazaoSocial.Text;
      Result.DataNascimento := StrToDate(EditDtNasc.Text);
      Result.Situacao := EditSituacao.Text;
      Result.DataInscricao := StrToDate(EdtIncricao.Text);
      Result.CodigoComprovante := EdtCodCtrlControle.Text;
      Result.CPF := EditCNPJ.Text;
    end;
  end;
  FreeAndNil(frmConsultaCPF);
end;

procedure TfrmConsultaCPF.AdvMetroButton1Click(Sender: TObject);
begin
  Confirma := False;
  Close;
end;

procedure TfrmConsultaCPF.btnConsultarClick(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditDtNasc.Text, EditCaptcha.Text) then
    begin
      EditRazaoSocial.Text      := ACBrConsultaCPF1.Nome;
      EditSituacao.Text         := ACBrConsultaCPF1.Situacao;
      EdtEmissao.Text           := ACBrConsultaCPF1.Emissao;
      EdtCodCtrlControle.Text   := ACBrConsultaCPF1.CodCtrlControle;
      EdtDigitoVerificador.Text := ACBrConsultaCPF1.DigitoVerificador;
      EdtIncricao.Text          := ACBrConsultaCPF1.DataInscricao;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure TfrmConsultaCPF.Button1Click(Sender: TObject);
begin
  if EditRazaoSocial.Text = '' then begin
    Application.MessageBox('Dados não localizado!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Confirma := True;
  Close;
end;

procedure TfrmConsultaCPF.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  EditCaptcha.SetFocus;
end;

procedure TfrmConsultaCPF.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    Image1.Picture.LoadFromFile( ImgArq );

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure TfrmConsultaCPF.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCaptcha.SetFocus;
end;

end.

unit Texto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvGlowButton,
  Vcl.ExtCtrls, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, acPNG;

type
  TfrmTexto = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    lbTitulo: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    pnInformacoes: TPanel;
    edTexto: TMemo;
    btnCancela: TAdvGlowButton;
    btnConfirma: TAdvGlowButton;
    pnMinimo: TPanel;
    pnMáximo: TPanel;
    pnTotal: TPanel;
    pnSaldo: TPanel;
    Panel5: TPanel;
    lbMinimo: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbMaximo: TLabel;
    lbTotal: TLabel;
    lbRestante: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    imi_sim: TImage;
    imi_nao: TImage;
    ima_nao: TImage;
    ima_sim: TImage;
    procedure edTextoChange(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
    bolObrigatorio, Continua:Boolean;
  public
    { Public declarations }
  end;
  Function RetornaTexto(Titulo:string;var Texto:string; Obrigatorio:Boolean; Altura:Integer = 439; Comprimento:Integer = 661;
       Barra:Boolean = True; Minimo:Integer = 0;Maximo:Integer = 0):Boolean;

var
  frmTexto: TfrmTexto;

implementation

{$R *.dfm}

Function RetornaTexto(Titulo:string;var Texto:string; Obrigatorio:Boolean; Altura:Integer = 439; Comprimento:Integer = 661;
       Barra:Boolean = True; Minimo:Integer = 0;Maximo:Integer = 0):Boolean;
begin
  Application.CreateForm(TfrmTexto,frmTexto);
  with frmTexto do begin
    ClientHeight := Altura;
    ClientWidth := Comprimento;
    lbTitulo.Caption := Titulo;
    pnInformacoes.Visible := Barra;
    bolObrigatorio := Obrigatorio;
    if Barra then begin
      if Minimo > 0 then
        lbMinimo.Caption := IntToStr(Minimo)
      else
        lbMinimo.Caption := '';
      if Maximo > 0 then
        lbMaximo.Caption := IntToStr(Maximo)
      else
        lbMinimo.Caption := '';
      if Maximo > 0 then
        lbRestante.Caption := IntToStr(Maximo)
      else
        lbMinimo.Caption := '';
    end;
    edTexto.Lines.Text := Texto;
    ShowModal;
    Result := Continua;
    if Result then
      Texto := edTexto.Lines.Text;
  end;
end;


procedure TfrmTexto.btnCancelaClick(Sender: TObject);
begin
  Continua := False;
  Close;
end;

procedure TfrmTexto.btnConfirmaClick(Sender: TObject);
begin
  if (bolObrigatorio) and (Length(edTexto.Lines.Text) = 0) then begin
    Application.MessageBox('Impossivel continuar, Preenchimento obrigatório!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;

  if StrToInt(lbMinimo.Caption) > 0 then begin
    if Length(edTexto.Lines.Text) < StrToInt(lbMinimo.Caption) then begin
      Application.MessageBox('Impossivel continuar, Necessário texto superior ao mínimo solicitado!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
  end;
  if StrToInt(lbMaximo.Caption) > 0 then begin
    if Length(edTexto.Lines.Text) > StrToInt(lbMaximo.Caption) then begin
      Application.MessageBox('Impossivel continuar, Texto informado superou o máximo solicitado!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
  end;
  Continua := True;
  Close;
end;

procedure TfrmTexto.edTextoChange(Sender: TObject);
begin
  if pnInformacoes.Visible then begin
    lbTotal.Caption := IntToStr(Length(edTexto.Lines.Text));
    if StrToInt(lbMaximo.Caption) > 0 then
      lbRestante.Caption := IntToStr(StrToInt(lbMaximo.Caption) - StrToInt(lbTotal.Caption));
    if (StrToInt(lbMinimo.Caption) > 0) then begin
      if (StrToInt(lbTotal.Caption)) >= (StrToInt(lbMinimo.Caption)) then begin
        imi_sim.Visible := True;
        imi_nao.Visible := False;
      end else begin
        imi_sim.Visible := False;
        imi_nao.Visible := True;
      end;
    end;
    if (StrToInt(lbMaximo.Caption) > 0) then begin
      if (StrToInt(lbTotal.Caption)) > (StrToInt(lbMaximo.Caption)) then begin
        ima_sim.Visible := False;
        ima_nao.Visible := True;
      end else begin
        ima_sim.Visible := True;
        ima_nao.Visible := False;
      end;
    end;
  end;
end;

end.

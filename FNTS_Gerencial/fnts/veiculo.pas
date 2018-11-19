unit veiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, AdvGlowButton, wwdbedit, Wwdotdot, Wwdbcomb, UCBase, Vcl.Imaging.jpeg,
  dxGDIPlusClasses, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmveiculo = class(TForm)
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsveiculo2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    LRENDA: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    euf: TwwDBComboBox;
    UCControls1: TUCControls;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    cbTpVeiculo: TComboBox;
    Label8: TLabel;
    cbRodado: TComboBox;
    Label9: TLabel;
    cbCarroceria: TComboBox;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    cbPropietario: TComboBox;
    Label16: TLabel;
    GroupBoxTerceiro: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cbPropietariAgregado: TComboBox;
    ECODIGO2: TEdit;
    BLOC2: TBitBtn;
    ENOME2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure ERENDAKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure cbPropietarioChange(Sender: TObject);
    procedure BLOC2Click(Sender: TObject);
    procedure DBAdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmveiculo: Tfrmveiculo;
  comando: string;

implementation

uses
  modulo, principal, xloc_veiculo, xloc_cliente;

{$R *.dfm}

procedure Tfrmveiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmveiculo.FormShow(Sender: TObject);
begin

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrveiculo.close;
  frmmodulo.qrveiculo.SQL.clear;
  frmmodulo.qrveiculo.SQL.add('select * from c000054 order by NOME');
  frmmodulo.qrveiculo.open;
  frmmodulo.qrveiculo.first;
  pficha.Enabled := false;
  with frmmodulo do begin
    if not qrveiculo.IsEmpty then begin
      cbTpVeiculo.ItemIndex := QrVeiculoTPVEIC.AsInteger;
      cbRodado.ItemIndex := QrVeiculoTPROD.AsInteger;
      cbCarroceria.ItemIndex := QrVeiculoTPCAR.AsInteger;
      cbPropietario.ItemIndex := QrVeiculoPROPIETARIO.AsInteger;
      if cbPropietario.ItemIndex = 1 then begin
        cbPropietariAgregado.ItemIndex := QrVeiculoTTPROPIO.AsInteger;
        ECODIGO2.Text := qrveiculoCOD_CLI_PROPRIETARIO.AsString;
        qrcliente.Locate('codigo',ECODIGO2.Text,[loCaseInsensitive]);
        ENOME2.Text := qrclienteNOME.AsString;
      end else begin
        ECODIGO2.Clear;
        ENOME2.Clear;
      end;
    end;
  end;
end;

procedure Tfrmveiculo.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmveiculo.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmveiculo.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrveiculo.insert;
  frmmodulo.qrveiculo.FieldByName('codigo').asstring := frmprincipal.codifica('000054');
  pficha.Enabled := true;
  DBEdit2.setfocus;
  pgravar.visible := true;
  PopupMenu := Pop2;
end;

procedure Tfrmveiculo.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmveiculo.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then begin

    frmmodulo.qrveiculo.Edit;
    pficha.Enabled := true;
    DBEdit1.setfocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmveiculo.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir veiculo', 3) then begin
    frmprincipal.logUC('Excluiu Veiculo - ' + DBEdit2.Text, 3);
    frmmodulo.qrveiculo.Delete;
    frmmodulo.Conexao.commit;

  end
  else begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmveiculo.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmXLOC_VEICULO := tfrmXLOC_VEICULO.create(self);
  frmXLOC_VEICULO.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrveiculo.Locate('codigo', resultado_pesquisa1, [loCaseInsensitive]);
  end;
end;

procedure Tfrmveiculo.cbPropietarioChange(Sender: TObject);
begin
  GroupBoxTerceiro.Enabled := cbPropietario.ItemIndex = 1;
  if not GroupBoxTerceiro.Enabled then begin
    ECODIGO2.Clear;
    ENOME2.Clear;
  end;
end;

procedure Tfrmveiculo.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmveiculo.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin
  if DBEdit2.Text = '' then begin
    Application.messagebox('Favor informar um nome válido para este veículo!', 'Atenção', mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;
  end;
  if cbPropietario.ItemIndex = 1 then begin
    if ECODIGO2.Text = '' then begin
      Application.MessageBox('O Campo Perceiro não pode ser vazio.', 'Atenção!',MB_ICONINFORMATION);
      ECODIGO2.SetFocus;
      exit;
    end;
  end;


  with  frmmodulo do begin
    QrVeiculoTPVEIC.AsInteger                  := cbTpVeiculo.ItemIndex;
    QrVeiculoTPROD.AsInteger                   := cbRodado.ItemIndex;
    QrVeiculoTPCAR.AsInteger                   := cbCarroceria.ItemIndex;
    QrVeiculoPROPIETARIO.AsInteger             := cbPropietario.ItemIndex;
    if cbPropietario.ItemIndex = 1 then begin
      QrVeiculoTTPROPIO.AsInteger             := cbPropietariAgregado.ItemIndex;
      qrveiculoCOD_CLI_PROPRIETARIO.AsString  := ECODIGO2.Text;
    end;
  end;

  if (frmmodulo.qrveiculo.State = dsinsert) then begin
    frmprincipal.logUC('Incluiu Veiculo', 1);
    frmmodulo.qrveiculo.post;
  end;

  if (frmmodulo.qrveiculo.State = dsedit) then begin
    frmprincipal.logUC('Alterou Veiculo', 2);
    frmmodulo.qrveiculo.post;
  end;
  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
end;

procedure Tfrmveiculo.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrveiculo.State = dsinsert) or (frmmodulo.qrveiculo.State = dsedit) then
    frmmodulo.qrveiculo.cancel;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';
end;

procedure Tfrmveiculo.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmveiculo.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrveiculo.first;
end;

procedure Tfrmveiculo.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrveiculo.last;
end;

procedure Tfrmveiculo.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrveiculo.prior;
end;

procedure Tfrmveiculo.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrveiculo.next;
end;

procedure Tfrmveiculo.BLOC2Click(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;

  if resultado_pesquisa1 <> '' then begin
    ECODIGO2.text := resultado_pesquisa1;
    ENOME2.Text := resultado_pesquisa2;
  end else begin
    ECODIGO2.text := '';
    ENOME2.Text := '';
    ECODIGO2.setfocus;
  end;

end;

procedure Tfrmveiculo.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmveiculo.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrveiculo.State = dsinsert then

end;

procedure Tfrmveiculo.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmveiculo.DBAdvGlowButton1Click(Sender: TObject);
begin
  with frmmodulo do begin
    if not qrveiculo.IsEmpty then begin
      cbTpVeiculo.ItemIndex := QrVeiculoTPVEIC.AsInteger;
      cbRodado.ItemIndex := QrVeiculoTPROD.AsInteger;
      cbCarroceria.ItemIndex := QrVeiculoTPCAR.AsInteger;
      cbPropietario.ItemIndex := QrVeiculoPROPIETARIO.AsInteger;
      if cbPropietario.ItemIndex = 1 then begin
        cbPropietariAgregado.ItemIndex := QrVeiculoTTPROPIO.AsInteger;
        ECODIGO2.Text := qrveiculoCOD_CLI_PROPRIETARIO.AsString;
        qrcliente.Locate('codigo',ECODIGO2.Text,[loCaseInsensitive]);
        ENOME2.Text := qrclienteNOME.AsString;
      end else begin
        ECODIGO2.Clear;
        ENOME2.Clear;
      end;
    end;
  end;

end;

procedure Tfrmveiculo.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmveiculo.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

procedure Tfrmveiculo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmveiculo.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmveiculo.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmveiculo.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmveiculo.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmveiculo.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmveiculo.DBEdit3Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

procedure Tfrmveiculo.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  if DBEdit2.Text = '' then begin
    Application.messagebox('Favor informar um nome válido para este registro!', 'Atenção', mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;
  end;

end;

end.


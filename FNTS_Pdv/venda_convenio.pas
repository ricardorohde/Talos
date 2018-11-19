unit venda_convenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, AdvGlowButton, Vcl.ExtCtrls, RzLabel, TFlatPanelUnit;

type
  TfrmVenda_convenio = class(TForm)
    Panel2: TPanel;
    pn_consumidor: TFlatPanel;
    RzLabel2: TRzLabel;
    sh_cred_cliente: TShape;
    sh_consumid_endereco: TShape;
    Shape1: TShape;
    Shape2: TShape;
    FlatPanel2: TFlatPanel;
    bt_gravar_crediario: TAdvGlowButton;
    bt_cancelar_crediario: TAdvGlowButton;
    ed_cred_cliente: TRzEdit;
    FlatPanel1: TFlatPanel;
    lb_cred_nome: TRzLabel;
    lb_cred_endereco: TRzLabel;
    lb_cred_bairro: TRzLabel;
    lb_cred_cidade: TRzLabel;
    lb_cred_cpf: TRzLabel;
    lb_cred_uf: TRzLabel;
    lb_cred_cep: TRzLabel;
    lb_cred_codigo: TRzLabel;
    Panel1: TPanel;
    lb_cod_convenio: TRzLabel;
    lb_nome_Convenio: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel1: TRzLabel;
    lb_cred_limite: TRzLabel;
    RzLabel3: TRzLabel;
    lb_cred_utilizado: TRzLabel;
    RzLabel6: TRzLabel;
    lb_cred_disponivel: TRzLabel;
    lb_cred_atualizado: TRzLabel;
    pn_tampa: TFlatPanel;
    RzLabel7: TRzLabel;
    lb_cred_desconto: TRzLabel;
    procedure ed_cred_clienteEnter(Sender: TObject);
    procedure ed_cred_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bt_cancelar_crediarioClick(Sender: TObject);
    procedure bt_gravar_crediarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vLimite, vSaldo:Double;
    function LocalizarCliente: Integer;
    procedure PreencherDadosCliente(pbVazio: Boolean = False);
  public
    { Public declarations }
    DescontoConvenio:Double;
  end;

var
  frmVenda_convenio: TfrmVenda_convenio;

implementation

{$R *.dfm}

uses
  venda, cliente_consulta, modulo, principal, senha_supervisor, funcoes;

procedure TfrmVenda_convenio.bt_cancelar_crediarioClick(Sender: TObject);
begin
  bContinua := false;
  close;
end;

procedure TfrmVenda_convenio.bt_gravar_crediarioClick(Sender: TObject);
var
  bsenha: boolean;
begin
  bsenha := false;
  if (vLimite > 0) and (vSaldo < rvalor_total_convenio) then begin
    if application.messagebox('A venda excedeu o limte de compra no convênio, necessário autorização!'#13 + 'Verifique o limite do Convênio!' + #13 + 'Deseja prosseguir?', 'Atenção', mb_yesno + MB_ICONWARNING) = idyes then begin
      bsenha := true;
    end else
      exit;
  end;

  if bsenha then begin
    frmsenha_supervisor := tfrmsenha_supervisor.create(self);
    frmsenha_supervisor.showmodal;
    if not bSupervisor_autenticado then begin
      application.MessageBox('Não autorizado!', 'Erro', mb_ok + mb_iconerror);
      exit;
    end;
  end;

  sCli_Nome := lb_cred_nome.caption;
  sCli_Endereco := lb_cred_endereco.caption;
  sCli_Cidade := lb_cred_cidade.caption;
  sCli_uf := lb_cred_uf.caption;
  scli_cep := lb_cred_cep.caption;
  sCli_CPF := lb_cred_cpf.caption;
  sCli_codigo := lb_cred_codigo.caption;

  bContinua := true;
  close;
end;

procedure TfrmVenda_convenio.ed_cred_clienteEnter(Sender: TObject);
begin
  frmvenda.Imprime_display('Informe o CODIGO/CPF ou NOME do cliente', clwhite, tiCliente);
end;

procedure TfrmVenda_convenio.ed_cred_clienteKeyPress(Sender: TObject; var Key: Char);
var
  iRet: Integer;
begin
  if Key = #13 then begin
    try
      if ed_cred_cliente.Text <> '' then begin
        if ed_cred_cliente.Modified then begin
          iRet := LocalizarCliente;
          if (iRet = 0) or (iRet = 2) then begin
            Application.CreateForm(TfrmCliente_consulta, frmCliente_consulta);
            try
              frmCliente_consulta.ed_cliente.Text := AnsiUpperCase(ed_cred_cliente.Text);
              bConsulta_crediario := True;

              if frmCliente_consulta.ShowModal = mrOK then begin
                ed_cred_cliente.Text := frmModulo.Query.FieldByName('CODIGO').AsString;
                LocalizarCliente;
                if frmModulo.Query.FieldByName('cod_convenio').AsString = '' then begin
                  Application.MessageBox('Cliente não possui înfomrações de convênio no cadastro!','Atenção!',MB_ICONINFORMATION);
                  bContinua := False;
                end else
                  bContinua := True;
              end else begin
                PreencherDadosCliente(True);
                ed_cred_cliente.SetFocus;
                bcontinua := false;
              end;
            finally
              FreeAndNil(frmCliente_Consulta);
            end;
          end;
          if iRet = 1 then begin
            if frmModulo.Query.FieldByName('cod_convenio').AsString = '' then begin
              Application.MessageBox('Cliente não possui înfomrações de convênio no cadastro!','Atenção!',MB_ICONINFORMATION);
              bContinua := False;
            end else
              bContinua := True;
          end;
          ed_cred_cliente.Modified := False;
        end;
      end;
    finally
      if bcontinua then begin
        pn_tampa.visible := false;
        bt_gravar_crediario.SetFocus;
      end else begin
        pn_tampa.visible := True;
        ed_cred_cliente.SetFocus;
      end;
      bcontinua := false;
    end;
  end else begin
    if Key = #27 then
      close
  end;
end;

procedure TfrmVenda_convenio.FormCreate(Sender: TObject);
begin
  pn_tampa.Align := alClient;
  pn_tampa.visible := true;
end;

procedure TfrmVenda_convenio.FormShow(Sender: TObject);
begin
  PreencherDadosCliente(True);
end;

function TfrmVenda_convenio.LocalizarCliente: Integer;
begin

  with frmModulo.Query do begin
    // buscar pelo nome
    close;
    sql.clear;
    sql.add('select * from cliente');
    sql.add('where upper(nome) LIKE ' + QuotedStr(ansiuppercase(ed_cred_cliente.text + '%')));
    open;

    if IsEmpty then begin
      // Busca pelo código
      try
        StrToInt(ed_cred_cliente.Text);

        close;
        SQL.clear;
        SQL.add('select * from cliente');
        SQL.add('where codigo = ' + QuotedStr(ed_cred_cliente.Text));
        open;

      except
      end;

      if IsEmpty then begin
        // buscar pelo nome
        close;
        sql.clear;
        SQL.add('select * from cliente');
        SQL.add('where cpf LIKE ' + QuotedStr(ed_cred_cliente.Text + '%'));
        open;
      end;
    end;

    if not IsEmpty and (RecordCount = 1) then begin
      PreencherDadosCliente;

      Result := 1;  // GUIO: Não Precisa Abrir a Pesquisa
    end
    else if IsEmpty then
      Result := 0   // GUIO: Não Precisa Abrir a Pesquisa
    else
      Result := 2;   // GUIO: Abrirá a tela de pesquisa

  end;
end;

procedure TfrmVenda_convenio.PreencherDadosCliente(pbVazio: Boolean);
begin
  vSaldo := 0;
  vLimite := 0;
  if not pbVazio then begin
    ed_cred_cliente.text := '';
    lb_cred_codigo.caption :=  Zerar(frmmodulo.query.fieldbyname('codigo').AsString,6);
    lb_cred_nome.Caption := frmmodulo.query.fieldbyname('nome').asstring;
    lb_cred_endereco.caption := frmModulo.query.fieldbyname('endereco').asstring;
    lb_cred_bairro.Caption := frmModulo.query.fieldbyname('bairro').asstring;
    lb_cred_cidade.caption := frmModulo.query.fieldbyname('cidade').asstring;
    lb_cred_uf.caption := frmModulo.query.fieldbyname('uf').asstring;
    lb_cred_cep.caption := frmModulo.query.fieldbyname('cep').AsString;
    lb_cred_cpf.caption := 'CPF/CNPJ: ' + frmModulo.query.fieldbyname('cpf').asstring;
    with frmModulo do begin
      qrConvenio.Close;
      qrConvenio.ParamByName('codigo').AsString := frmmodulo.query.fieldbyname('cod_convenio').asstring;
      qrConvenio.Open;
      if qrConvenio.IsEmpty then begin
        lb_cod_convenio.Caption := '';
        lb_nome_Convenio.Caption := '';
        lb_cred_limite.Caption := 'R$ 0.00';
        lb_cred_utilizado.Caption := 'R$ 0.00';
        lb_cred_disponivel.Caption := 'R$ 0.00';
        lb_cred_atualizado.Caption := 'Não encontrado dados do Convênio!';
        lb_cred_desconto.Caption := '% 0.00';
      end else begin
        lb_cod_convenio.Caption := qrConvenioCODIGO.AsString;
        lb_nome_Convenio.Caption := qrConvenioNOME.AsString;
        lb_cred_limite.Caption     := 'R$ '+FormatFloat('#,##0.00',qrConvenioLIMITE.AsFloat);
        lb_cred_utilizado.Caption  := 'R$ '+FormatFloat('#,##0.00',qrConvenioUTILIZADO.AsFloat);
        lb_cred_disponivel.Caption := 'R$ '+FormatFloat('#,##0.00',qrConvenioSALDO.AsFloat);
        lb_cred_atualizado.Caption := 'Atualizado em ' + FormatDateTime('DD/MM/YYYY',qrConvenioATU_DATA.AsDateTime) + ' as ' + qrConvenioATU_HORA.AsString;
        lb_cred_desconto.Caption   := '% '+FormatFloat('#,##0.00',qrConvenioDESCONTO.AsFloat);
        vSaldo := qrConvenioSALDO.AsFloat;
        DescontoConvenio := qrConvenioDESCONTO.AsFloat;
        vLimite := qrConvenioLIMITE.AsFloat;
      end;
    end;
  end
  else begin
    lb_cod_convenio.Caption := '';
    lb_nome_Convenio.Caption := '';
    ed_cred_cliente.text := '';
    lb_cred_codigo.caption := '';
    lb_cred_nome.Caption := '';
    lb_cred_endereco.caption := '';
    lb_cred_bairro.Caption := '';
    lb_cred_cidade.caption := '';
    lb_cred_uf.caption := '';
    lb_cred_cep.caption := '';
    lb_cred_cpf.caption := '';
    lb_cred_limite.Caption := 'R$ 0.00';
    lb_cred_utilizado.Caption := 'R$ 0.00';
    lb_cred_disponivel.Caption := 'R$ 0.00';
    lb_cred_atualizado.Caption := 'Não encontrado dados do Convênio!';
    lb_cred_desconto.Caption := '% 0.00';
  end

end;

end.


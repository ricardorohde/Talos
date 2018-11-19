program Atendimento;

uses
  Forms,
  principal in 'principal.pas' {frmprincipal},
  modulo in 'modulo.pas' {frmmodulo: TDataModule},
  venda_pdv in 'venda_pdv.pas' {frmvenda_pdv},
  venda_inicio in 'venda_inicio.pas' {frmvenda_inicio},
  mensagem_senha in '..\FNTS_Comuns PDV\mensagem_senha.pas' {frmmensagem_senha},
  mensagem in 'mensagem.pas' {frmmensagem},
  locproduto in 'locproduto.pas' {frmlocproduto},
  locvendedor in 'locvendedor.pas' {frmlocvendedor},
  loccliente in 'loccliente.pas' {frmloccliente},
  venda_fechamento_aprazo in 'venda_fechamento_aprazo.pas' {frmvenda_fechamento_aprazo},
  venda_impressao in 'venda_impressao.pas' {frmvenda_impressao},
  venda_relrazao in 'venda_relrazao.pas' {frmvenda_relrazao},
  preco in 'preco.pas' {frmpreco},
  orcamento in 'orcamento.pas' {frmorcamento},
  ecf in 'ecf.pas',
  cliente_info in 'cliente_info.pas' {frmcliente_info},
  os_servicosperiodicos in 'os_servicosperiodicos.pas' {frmos_servicosperiodicos},
  os_serial in 'os_serial.pas' {frmos_serial},
  os_menu in 'os_menu.pas' {frmOs_menu},
  os_item_2_auto in 'os_item_2_auto.pas' {frmOS_item_2_auto},
  os_item_2 in 'os_item_2.pas' {frmOS_item_2},
  os_auto in 'os_auto.pas' {frmOS_Auto},
  os in 'os.pas' {frmOS},
  loc_setor in 'loc_setor.pas' {frmloc_setor},
  loc_veiculo in 'loc_veiculo.pas' {frmloc_veiculo},
  xloc_cliente_veiculo in 'xloc_cliente_veiculo.pas' {frmxloc_cliente_veiculo},
  cliente_veiculo in 'cliente_veiculo.pas' {frmcliente_veiculo},
  xloc_produto in 'xloc_produto.pas' {frmxloc_produto},
  loc_produto_venda_auto in 'loc_produto_venda_auto.pas' {frmloc_venda_produto_auto},
  xloc_cliente in 'xloc_cliente.pas' {frmxloc_cliente},
  loc_fornecedor in 'loc_fornecedor.pas' {frmLoc_fornecedor},
  sobre in '..\FNTS_Comuns\sobre.pas' {Form_sobre},
  LockApplicationInterface in '..\FNTS_Comuns\LockApplicationInterface.pas' {Bloqueio},
  LoginWindow_U in '..\FNTS_Comuns\LoginWindow_U.pas' {frmLoginWindow},
  Unit_ativar in '..\FNTS_Comuns\Unit_ativar.pas' {Form_ativar},
  NumeroFicha in 'NumeroFicha.pas' {frmNumeroFicha},
  Impressao in 'Impressao.pas' {frmImpressao},
  contantes in '..\FNTS_Comuns\contantes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TALOS 1.0.0.0 - Atendimento';
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.CreateForm(Tfrmmodulo, frmmodulo);
  Application.CreateForm(Tfrmmensagem_senha, frmmensagem_senha);
  Application.CreateForm(Tfrmmensagem, frmmensagem);
  Application.CreateForm(TForm_sobre, Form_sobre);
  Application.CreateForm(TForm_ativar, Form_ativar);
  Application.CreateForm(TfrmNumeroFicha, frmNumeroFicha);
  Application.CreateForm(TfrmImpressao, frmImpressao);
  Application.Run;
end.

program Cheff;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  comanda in 'comanda.pas' {frmComanda},
  Modulo in 'Modulo.pas' {frmModulo: TDataModule},
  mesa_consumo in 'mesa_consumo.pas' {frmMesa_consumo},
  loc_produto in 'loc_produto.pas' {frmLoc_produto},
  transf_Mesa in 'transf_Mesa.pas' {frmTransf_Mesa},
  balanca in 'balanca.pas' {frmBalanca},
  mesa_abertura in 'mesa_abertura.pas' {frmmesa_abertura},
  LockApplicationInterface in '..\FNTS_Comuns\LockApplicationInterface.pas' {Bloqueio},
  LoginWindow_U in '..\FNTS_Comuns\LoginWindow_U.pas' {frmLoginWindow},
  Unit_ativar in '..\FNTS_Comuns\Unit_ativar.pas' {Form_ativar},
  Consumo in 'Consumo.pas' {frmConsumo},
  Extra in 'Extra.pas' {frmExtra},
  Config in 'Config.pas' {frmConfig},
  MontaPizza in 'MontaPizza.pas' {frmMontaPizza};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TALOS 1.0.0.0 - Comanda';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TForm_ativar, Form_ativar);
  Application.Run;
end.

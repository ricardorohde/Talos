program Config_Pdv;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  funcoes in 'funcoes.pas',
  unECF in 'unECF.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TALOS 1.0.0.0 - Config. PDV';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

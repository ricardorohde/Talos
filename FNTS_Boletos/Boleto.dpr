program Boleto;

uses
  Forms,
  Uprincipal in 'form\Uprincipal.pas' {principal},
  BaixaAutomatica in 'form\BaixaAutomatica.pas' {frmBaixaAutomatica};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gerenciador de Boletos';
  Application.CreateForm(Tprincipal, principal);
  Application.CreateForm(TfrmBaixaAutomatica, frmBaixaAutomatica);
  Application.Run;
end.

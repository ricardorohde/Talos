program Server_PDV;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  Thread.CheckConnection in '..\FNTS_Comuns\Thread.CheckConnection.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TALOS 1.0.0.0 - Server';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

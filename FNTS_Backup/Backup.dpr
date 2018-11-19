program Backup;

uses
  Forms,
  principal in 'principal.pas' {Fprincipal},
  email in '..\FNTS_Gerencial\fnts\email.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TALOS 1.0.0.0 - Backup';
  Application.CreateForm(TFprincipal, Fprincipal);
  Application.Run;
end.

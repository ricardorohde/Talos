program Config;

uses
  Forms,
  Principal in 'Principal.pas' {frmprincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TALOS 1.0.0.0 - Config';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

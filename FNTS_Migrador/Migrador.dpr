program Migrador;

uses
  Vcl.Forms,
  Unit_migrador in 'Unit_migrador.pas' {Form1},
  UThreadGravar in 'UThreadGravar.pas',
  UThreadListar in 'UThreadListar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Migrador TALOS 1.0.0.0';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

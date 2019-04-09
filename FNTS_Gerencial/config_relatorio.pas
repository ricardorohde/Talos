unit config_relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrmconfig_relatorio = class(TForm)
    grprelatorio: TGroupBox;
    lbltitulo: TLabel;
    lblsubtitulo: TLabel;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    chk5: TCheckBox;
    chk6: TCheckBox;
    chk7: TCheckBox;
    chk8: TCheckBox;
    chk9: TCheckBox;
    chk10: TCheckBox;
    chk11: TCheckBox;
    chk12: TCheckBox;
    chk13: TCheckBox;
    chk14: TCheckBox;
    chk15: TCheckBox;
    btngravar: TButton;
    btncancelar: TButton;
    procedure chk15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig_relatorio:Tfrmconfig_relatorio;

implementation

{$R *.dfm}

uses lista_venda2;

procedure Tfrmconfig_relatorio.chk15Click(Sender: TObject);
var
i: Integer;
checado:Boolean;
begin
checado:=false;
if chk15.checked = True then
checado:=True;
for i := 0 to ComponentCount-1 do
if (Components[i] is TCheckBox) then
TCheckBox (Components[i]).checked:=checado;
end;

end.

unit TextoCartaCobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvMetroButton, Vcl.StdCtrls,
  AdvSmoothPanel, AdvSmoothExpanderPanel, AdvGlowButton, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls;

type
  TfrmTextoCartaCobranca = class(TForm)
    Panel1: TPanel;
    Label20: TLabel;
    AdvMetroButton2: TAdvMetroButton;
    DBMemo1: TDBMemo;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTextoCartaCobranca: TfrmTextoCartaCobranca;

implementation

uses
  config, modulo;

{$R *.dfm}

procedure TfrmTextoCartaCobranca.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmTextoCartaCobranca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmmodulo.qrconfig.Post;
  frmmodulo.qrconfig.Edit;
end;

end.

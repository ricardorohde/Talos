unit msg_Operador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMsg_Operador = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lb_msg: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMsg_Operador: TfrmMsg_Operador;

implementation

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmMsg_Operador.FormShow(Sender: TObject);
begin
  application.ProcessMessages;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMsg_Operador.FormHide(Sender: TObject);
begin
  application.ProcessMessages;
end;

end.

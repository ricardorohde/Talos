unit consulta_estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Menus, AdvMenus, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  TfrmConsulta_Estoque = class(TForm)
    StatusBar1: TStatusBar;
    lb_estoque: TPanel;
    MENU_FISCAL: TAdvPopupMenu;
    Fechar1: TMenuItem;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta_Estoque: TfrmConsulta_Estoque;

implementation

{$R *.dfm}

procedure TfrmConsulta_Estoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsulta_Estoque.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmConsulta_Estoque.Fechar1Click(Sender: TObject);
begin
  close;
end;

end.

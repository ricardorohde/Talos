unit OpNatureza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvGlowButton, DB, ExtCtrls;

type
  TfrmOpNatureza = class(TForm)
    pop1: TPopupMenu;
    V1: TMenuItem;
    D1: TMenuItem;
    G1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    S1: TMenuItem;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    AdvGlowButton4: TAdvGlowButton;
    D2: TMenuItem;
    procedure V1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpNatureza: TfrmOpNatureza;

implementation

uses modulo, orcamento_impressao, orcamento, principal;

{$R *.dfm}

procedure TfrmOpNatureza.S1Click(Sender: TObject);
begin
  frmmodulo.bcontinua_venda := False;
  Close;
end;

procedure TfrmOpNatureza.D2Click(Sender: TObject);
begin
  with frmmodulo do begin
    natoperacao := 'devolucao compra';
  end;
  Close;
end;

procedure TfrmOpNatureza.V1Click(Sender: TObject);
begin
  with frmmodulo do
  begin
    natoperacao := 'venda';
  end;
  Close;
end;

procedure TfrmOpNatureza.AdvGlowButton2Click(Sender: TObject);
begin
  with frmmodulo do
  begin
    natoperacao := 'devolucao';
    TipoDevolucao := 'C';
  end;
  Close;
end;

procedure TfrmOpNatureza.D1Click(Sender: TObject);
begin
  with frmmodulo do
  begin
    natoperacao := 'devolucao';
    TipoDevolucao := 'V';
  end;
  Close;
end;

procedure TfrmOpNatureza.G1Click(Sender: TObject);
begin
  with frmmodulo do
  begin
    natoperacao := 'garantia';
  end;
  Close;
end;

end.

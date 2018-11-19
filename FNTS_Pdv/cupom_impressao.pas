unit cupom_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumns, NxColumnClasses, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ExtCtrls, StdCtrls, Buttons,
  Menus, AdvMenus, ComCtrls, AdvGlowButton, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmcupom_impressao = class(TForm)
    Panel2: TPanel;
    BitBtn11: TBitBtn;
    bt_fechar1: TBitBtn;
    grid_impressao: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    MenuFiscal1: TMenuItem;
    Reimprimir1: TMenuItem;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    BitBtn1: TAdvGlowButton;
    procedure bt_fechar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cupom:string;
    NaoFiscal:Boolean;
  end;

var
  frmcupom_impressao: Tfrmcupom_impressao;

implementation

uses funcoes, principal, modulo, UFuncoes, venda;

{$R *.dfm}

procedure Tfrmcupom_impressao.BitBtn1Click(Sender: TObject);
begin
  if NaoFiscal then
    frmVenda.ImprimirCupomNaoFiscal(Cupom)
  else
    Application.MessageBox('Este cupom não pode ser reimpresso por esta rotina utilizar "Gerenciar NFC-e" Teclando "F1" na tela de venda!','Atenção!',MB_ICONINFORMATION);
end;

procedure Tfrmcupom_impressao.bt_fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcupom_impressao.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcupom_impressao.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

end.

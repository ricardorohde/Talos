unit tabela_preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.ExtCtrls, TFlatPanelUnit, Vcl.Menus, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, acPNG, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxImageComboBox, System.ImageList, Vcl.ImgList;

type
  Tfrm_tb_preco = class(TForm)
    DataSource1: TDataSource;
    Label96: TLabel;
    Label103: TLabel;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1VALOR_VENDA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    btgravar: TAdvGlowButton;
    btcancelar: TAdvGlowButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    imgPreco: TImageList;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Selecionou:Boolean;
  public
    { Public declarations }
  end;

  function SelecionaPreco:Double;

var
  frm_tb_preco: Tfrm_tb_preco;

implementation

{$R *.dfm}

uses modulo;


function SelecionaPreco:Double;
begin
  Application.CreateForm(Tfrm_tb_preco,frm_tb_preco);
  with frm_tb_preco do begin
    Selecionou := False;
    ShowModal;
    if Selecionou then
      Result := frmmodulo.qrTabelaPrecoVALOR_VENDA.AsFloat
    else
      Result := 0;
  end;
  FreeAndNil(frm_tb_preco);
end;

procedure Tfrm_tb_preco.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_tb_preco.btcancelarClick(Sender: TObject);
begin
  Selecionou := False;
  Close;
end;

procedure Tfrm_tb_preco.btgravarClick(Sender: TObject);
begin
  Selecionou := True;
  Close;
end;

procedure Tfrm_tb_preco.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btgravar.Click;

end;

end.

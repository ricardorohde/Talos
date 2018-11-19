unit impDelivery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, RzLabel, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, AdvMenus;

type
  TfrmImpDelivery = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label17: TLabel;
    Panel3: TPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pop_principal: TAdvPopupMenu;
    Finalizar1: TMenuItem;
    Retornar1: TMenuItem;
    DataSource1: TDataSource;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1ENTREGADOR_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_ENTREGA: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_ENTREGA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_ENTREGA: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_TAXA_ENTREGA: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_LIQUIDO: TcxGridDBColumn;
    cxGrid1DBTableView1LEVAR_MAQUINA_CARTAO: TcxGridDBColumn;
    procedure Retornar1Click(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
  private
    { Private declarations }
    Retorno:Boolean;
  public
    { Public declarations }
  end;
  function RetIdFecharDelivery:Integer;

var
  frmImpDelivery: TfrmImpDelivery;

implementation

uses
  modulo, principal, funcoes;

{$R *.dfm}

function RetIdFecharDelivery:Integer;
begin
  Application.CreateForm(TfrmImpDelivery, frmImpDelivery);
  with frmImpDelivery do begin
    Retorno := False;
    frmModulo.qrDelivery.Close;
    frmModulo.qrDelivery.Open;
    ShowModal;
    if Retorno then
      Result := frmModulo.qrDeliveryID.AsInteger
    else
      Result := -1;
  end;
  FreeAndNil(frmImpDelivery);
end;

procedure TfrmImpDelivery.Finalizar1Click(Sender: TObject);
begin
  with frmModulo do begin
    if qrDelivery.IsEmpty then begin
      Application.MessageBox('Não existe Delivery para efetuar o fechamento!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
    Retorno := True;
    Close;
  end;
end;

procedure TfrmImpDelivery.Retornar1Click(Sender: TObject);
begin
  Close;
end;

end.

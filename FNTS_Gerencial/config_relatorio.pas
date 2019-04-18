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
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig_relatorio:Tfrmconfig_relatorio;

implementation

{$R *.dfm}

uses lista_venda2, principal,System.IniFiles;

procedure Tfrmconfig_relatorio.btncancelarClick(Sender: TObject);
var
i: Integer;
checado:Boolean;
begin
checado:=false;
for i := 0 to ComponentCount-1 do
if (Components[i] is TCheckBox) then
TCheckBox (Components[i]).checked:=checado;
end;

procedure Tfrmconfig_relatorio.btngravarClick(Sender: TObject);
begin



    if chk1.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('RELA��O SINT�TICA');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RELA��O SINT�TICA', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := TRUE;
    frmlista_venda2.lcaixa.visible := TRUE;
    frmlista_venda2.combo_forma.visible := TRUE;
    frmlista_venda2.lforma.visible := TRUE;

    frmlista_venda2.combo_produto.visible := false;
    frmlista_venda2.LPRODUTO.visible := false;
    frmlista_venda2.lgrupo.visible := false;
    frmlista_venda2.combo_grupo.visible := false;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.lsituacao.visible := true;
    frmlista_venda2.COMBO_SITUACAO.visible := True;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := True;
    frmlista_venda2.combo_tipo.visible := True;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RELA��O SINT�TICA', '0');
   end;

  if chk2.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('RELA��O ANAL�TICA');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RELA��O ANAL�TICA', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := false;
    frmlista_venda2.lcaixa.visible := false;
    frmlista_venda2.combo_forma.visible := false;
    frmlista_venda2.lforma.visible := false;

    frmlista_venda2.combo_produto.visible := TRUE;
    frmlista_venda2.LPRODUTO.visible := TRUE;
    frmlista_venda2.lgrupo.visible := false;
    frmlista_venda2.combo_grupo.visible := false;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := True;
    frmlista_venda2.combo_tipo.visible := True;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RELA��O ANAL�TICA', '0');
   end;

    if chk4.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('VENDAS DE PRODUTOS');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'VENDAS DE PRODUTOS', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := false;
    frmlista_venda2.lcaixa.visible := false;
    frmlista_venda2.combo_forma.visible := false;
    frmlista_venda2.lforma.visible := false;

    frmlista_venda2.combo_produto.visible := TRUE;
    frmlista_venda2.LPRODUTO.visible := TRUE;
    frmlista_venda2.lgrupo.visible := TRUE;
    frmlista_venda2.combo_grupo.visible := TRUE;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.bTodos_Produtos.visible := TRUE;
    frmlista_venda2.Ltipo.visible := False;
    frmlista_venda2.combo_tipo.visible := false;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'VENDAS DE PRODUTOS', '0');
   end;

  if chk5.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('RESUMO DE VENDAS DE PRODUTOS');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RESUMO DE VENDAS DE PRODUTOS', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;

    frmlista_venda2.combo_caixa.visible := false;
    frmlista_venda2.lcaixa.visible := false;
    frmlista_venda2.combo_forma.visible := false;
    frmlista_venda2.lforma.visible := false;

    frmlista_venda2.combo_produto.visible := TRUE;
    frmlista_venda2.LPRODUTO.visible := TRUE;
    frmlista_venda2.lgrupo.visible := false;
    frmlista_venda2.combo_grupo.visible := false;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;

    frmlista_venda2.bTodos_Produtos.visible := TRUE;
    frmlista_venda2.Ltipo.visible := False;
    frmlista_venda2.combo_tipo.visible := false;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RESUMO DE VENDAS DE PRODUTOS', '0');
   end;

  if  chk6.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('RESUMO DE VENDAS POR VENDEDOR');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RESUMO DE VENDAS POR VENDEDOR', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := TRUE;
    frmlista_venda2.lcaixa.visible := TRUE;
    frmlista_venda2.combo_forma.visible := TRUE;
    frmlista_venda2.lforma.visible := TRUE;

    frmlista_venda2.combo_produto.visible := false;
    frmlista_venda2.LPRODUTO.visible := false;
    frmlista_venda2.lgrupo.visible := false;
    frmlista_venda2.combo_grupo.visible := false;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := False;
    frmlista_venda2.combo_tipo.visible := False;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RESUMO DE VENDAS POR VENDEDOR', '0');
   end;


  if chk7.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('VENDAS / COMISS�O');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'VENDAS / COMISS�O', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;

    frmlista_venda2.combo_caixa.visible := false;
    frmlista_venda2.lcaixa.visible := false;
    frmlista_venda2.combo_forma.visible := false;
    frmlista_venda2.lforma.visible := false;

    frmlista_venda2.combo_produto.visible := TRUE;
    frmlista_venda2.LPRODUTO.visible := TRUE;
    frmlista_venda2.lgrupo.visible := TRUE;
    frmlista_venda2.combo_grupo.visible := TRUE;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := False;
    frmlista_venda2.combo_tipo.visible := false;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'VENDAS / COMISS�O', '0');
   end;

  if chk8.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('VENDAS / RECEBIMENTO');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'VENDAS / RECEBIMENTO', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.lcliente.visible := TRUE;

    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.lvendedor.visible := TRUE;

    frmlista_venda2.combo_caixa.visible := false;
    frmlista_venda2.lcaixa.visible := false;

    frmlista_venda2.combo_forma.visible := false;
    frmlista_venda2.lforma.visible := false;

    frmlista_venda2.combo_produto.visible := false;
    frmlista_venda2.LPRODUTO.visible := false;

    frmlista_venda2.lgrupo.visible := false;
    frmlista_venda2.combo_grupo.visible := false;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := False;
    frmlista_venda2.combo_tipo.visible := false;
    frmlista_venda2.COMBO_SITUACAO.visible := false;
    frmlista_venda2.lsituacao.visible := false;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'VENDAS / RECEBIMENTO', '0');
   end;


  if chk9.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('CURVA ABC DE PRODUTOS');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'CURVA ABC DE PRODUTOS', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.lcliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := TRUE;
    frmlista_venda2.lcaixa.visible := TRUE;
    frmlista_venda2.combo_forma.visible := false;
    frmlista_venda2.lforma.visible := false;

    frmlista_venda2.combo_produto.visible := false;
    frmlista_venda2.LPRODUTO.visible := false;
    frmlista_venda2.lgrupo.visible := false;
    frmlista_venda2.combo_grupo.visible := false;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := False;
    frmlista_venda2.combo_tipo.visible := false;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'CURVA ABC DE PRODUTOS', '0');
   end;

  if chk10.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('COMISS�O POR VENDA A VISTA/RECEBIMENTOS');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'COMISS�O POR VENDA A VISTA/RECEBIMENTOS', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := TRUE;
    frmlista_venda2.lcaixa.visible := TRUE;
    frmlista_venda2.combo_forma.visible := TRUE;
    frmlista_venda2.lforma.visible := TRUE;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'COMISS�O POR VENDA A VISTA/RECEBIMENTOS', '0');
   end;

  if chk12.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('RESUMO DE VENDAS / META POR VENDEDOR');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RESUMO DE VENDAS / META POR VENDEDOR', '1');
    frmlista_venda2.combo_cliente.visible := false;
    frmlista_venda2.lcliente.visible := false;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.lvendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := false;
    frmlista_venda2.lcaixa.visible := false;
    frmlista_venda2.combo_forma.visible := false;
    frmlista_venda2.lforma.visible := false;
    frmlista_venda2.combo_produto.visible := false;
    frmlista_venda2.LPRODUTO.visible := false;
    frmlista_venda2.lgrupo.visible := false;
    frmlista_venda2.combo_grupo.visible := false;

    frmlista_venda2.lfornecedor.visible := false;
    frmlista_venda2.combo_fornecedor.visible := false;
    frmlista_venda2.lmarca.visible := false;
    frmlista_venda2.combo_marca.visible := false;

    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := False;
    frmlista_venda2.combo_tipo.visible := false;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'RESUMO DE VENDAS / META POR VENDEDOR', '0');
   end;

  if chk13.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('VENDAS DE PRODUTOS AGRUPADOS POR DIA');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'VENDAS DE PRODUTOS AGRUPADOS POR DIA', '1');
    frmlista_venda2.combo_cliente.visible := TRUE;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.combo_caixa.visible := false;
    frmlista_venda2.lcaixa.visible := false;
    frmlista_venda2.combo_forma.visible := false;
    frmlista_venda2.lforma.visible := false;

    frmlista_venda2.combo_produto.visible := TRUE;
    frmlista_venda2.LPRODUTO.visible := TRUE;
    frmlista_venda2.lgrupo.visible := TRUE;
    frmlista_venda2.combo_grupo.visible := TRUE;

    frmlista_venda2.lfornecedor.visible := TRUE;
    frmlista_venda2.combo_fornecedor.visible := TRUE;
    frmlista_venda2.lmarca.visible := TRUE;
    frmlista_venda2.combo_marca.visible := TRUE;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.Ltipo.visible := False;
    frmlista_venda2.combo_tipo.visible := false;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'VENDAS DE PRODUTOS AGRUPADOS POR DIA', '0');
   end;

  if chk14.Checked = true then begin
    frmlista_venda2.combo_relatorio.Items.Add('FECHAMENTO DA TAXA DE GAR�ON');
    frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'FECHAMENTO DA TAXA DE GAR�ON', '1');
    frmlista_venda2.combo_cliente.visible := False;
    frmlista_venda2.lcliente.Visible := False;
    frmlista_venda2.combo_vendedor.visible := TRUE;
    frmlista_venda2.lvendedor.Visible := True;
    frmlista_venda2.lvendedor.Caption := 'Gar�om:';
    frmlista_venda2.combo_fornecedor.visible := False;
    frmlista_venda2.lfornecedor.visible := False;
    frmlista_venda2.combo_marca.visible := False;
    frmlista_venda2.lmarca.visible := False;
    frmlista_venda2.combo_caixa.visible := false;
    frmlista_venda2.lcaixa.visible := false;
    frmlista_venda2.combo_forma.visible := false;
    frmlista_venda2.lforma.visible := false;
    frmlista_venda2.combo_produto.visible := False;
    frmlista_venda2.LPRODUTO.visible := False;
    frmlista_venda2.combo_grupo.visible := False;
    frmlista_venda2.lgrupo.visible := False;
    frmlista_venda2.bTodos_Produtos.visible := false;
    frmlista_venda2.rserial.Visible := False;
    frmlista_venda2.combo_tipo.visible := false;
    frmlista_venda2.Ltipo.visible := false;
   end
   else
   begin
   frmlista_venda2.GravaIni(ExtractFilePath(Application.ExeName) + 'ini\relatorios.ini', 'RELATORIOS', 'FECHAMENTO DA TAXA DE GAR�ON', '0');
   end;

Application.MessageBox('Feche e Abra o Formul�rio: "Relat�rio de Vendas" para que as altera��es sejam salvas!!','Aten��o', MB_ICONEXCLAMATION);

  end;



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

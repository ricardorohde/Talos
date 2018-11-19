unit UThreadGravar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids, pcnConversao,
  Vcl.DBGrids, AdvGlowButton, Vcl.ExtCtrls, AdvMetroButton, AdvSmoothPanel, System.MaskUtils,
  AdvSmoothExpanderPanel, acPathDialog, ACBrBase, ACBrDFe, ACBrNFe;

type
  ThreadGravar = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    function zerarcodigo(codigo: string; Qtde: Integer): string;
    function GetSeguencia(Chave:string):string;
  end;

implementation


uses Unit_migrador;
{$REGION 'DETALHES'}
{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure ThreadGravar.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ ThreadGravar }
{$ENDREGION}

procedure ThreadGravar.Execute;
var
  Estoque_Inicial, Entradas, Estoque_Atual: Double;
  CodPro, CodNota, CodigoBarraTemp: string;
  i:Integer;
begin
  { Place thread code here }
  //Fazer a Inserção no Banco de Dados
  with Form1 do begin
    //Buscar ID do Fornecedor
    //Fornecedor
    //Zerando posição do progress bar
    pbW7.Position := 0;
    //Atribuindo valor maximo deo progress bar
    pbW7.Max  :=  dsClienteTemp.RecordCount + dsProdutoTemp.RecordCount;

    //Carregar registros da Tabela Temp de Cliente
    if (edImpCli.Checked = True) then
      mmo1.Lines.Add('Inserindo Registro(s) do(s) Cliente(s) no Banco de Dados...')
    else
      mmo1.Lines.Add('Ignorando a Inserção de Registro(s) do(s) Cliente(s) no Banco de Dados...');
    dsClienteTemp.First;
    while not dsClienteTemp.Eof do begin
      //Verificar se é para Gravar no banco de dados os Clientes
      if (edImpCli.Checked = True) then begin
        //Verificar se Existe o Reguistro na Tabela
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add('select * from c000007 where cpf = :cpf');
        qry.ParamByName('cpf').AsString := dsClienteTempCPF.AsString;
        qry.Open;

        //Se existir Registro vai atualizar se não insere
        if qry.FieldByName('cpf').AsString.IsEmpty then begin
          //Inserir Registro
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('insert into c000007');
          qry.SQL.Add('(');
          qry.SQL.Add('CODIGO,');
          qry.SQL.Add('NOME,');
          qry.SQL.Add('APELIDO,');
          qry.SQL.Add('ENDERECO,');
          qry.SQL.Add('BAIRRO,');
          qry.SQL.Add('CIDADE,');
          qry.SQL.Add('CEP,');
          qry.SQL.Add('COMPLEMENTO,');
          qry.SQL.Add('TIPO,');
          qry.SQL.Add('SITUACAO,');
          qry.SQL.Add('TELEFONE1,');
          qry.SQL.Add('CELULAR,');
          qry.SQL.Add('UF,');
          qry.SQL.Add('EMAIL,');
          qry.SQL.Add('RG,');
          qry.SQL.Add('CPF,');
          qry.SQL.Add('DATA_CADASTRO,');
          qry.SQL.Add('CODREGIAO,');
          qry.SQL.Add('NUMERO,');
          qry.SQL.Add('CNAE,');
          qry.SQL.Add('COD_MUNICIPIO_IBGE,');
          qry.SQL.Add('IBGE,');
          qry.SQL.Add('CPAIS,');
          qry.SQL.Add('DPAIS');
          qry.SQL.Add(')');

          qry.SQL.Add('values');
          qry.SQL.Add('(');
          qry.SQL.Add(':CODIGO,');
          qry.SQL.Add(':NOME,');
          qry.SQL.Add(':APELIDO,');
          qry.SQL.Add(':ENDERECO,');
          qry.SQL.Add(':BAIRRO,');
          qry.SQL.Add(':CIDADE,');
          qry.SQL.Add(':CEP,');
          qry.SQL.Add(':COMPLEMENTO,');
          qry.SQL.Add(':TIPO,');
          qry.SQL.Add(':SITUACAO,');
          qry.SQL.Add(':TELEFONE1,');
          qry.SQL.Add(':CELULAR,');
          qry.SQL.Add(':UF,');
          qry.SQL.Add(':EMAIL,');
          qry.SQL.Add(':RG,');
          qry.SQL.Add(':CPF,');
          qry.SQL.Add(':DATA_CADASTRO,');
          qry.SQL.Add(':CODREGIAO,');
          qry.SQL.Add(':NUMERO,');
          qry.SQL.Add(':CNAE,');
          qry.SQL.Add(':COD_MUNICIPIO_IBGE,');
          qry.SQL.Add(':IBGE,');
          qry.SQL.Add(':CPAIS,');
          qry.SQL.Add(':DPAIS');
          qry.SQL.Add(')');

          qry.ParamByName('CODIGO').AsString               :=  GetSeguencia('000007');
          qry.ParamByName('NOME').AsString                 :=  dsClienteTempNOME.AsString;
          qry.ParamByName('APELIDO').AsString              :=  dsClienteTempAPELIDO.AsString;
          qry.ParamByName('ENDERECO').AsString             :=  dsClienteTempENDERECO.AsString;
          qry.ParamByName('BAIRRO').AsString               :=  dsClienteTempBAIRRO.AsString;
          qry.ParamByName('CIDADE').AsString               :=  dsClienteTempCIDADE.AsString;
          qry.ParamByName('CEP').AsString                  :=  dsClienteTempCEP.AsString;
          qry.ParamByName('COMPLEMENTO').AsString          :=  dsClienteTempCOMPLEMENTO.AsString;
          qry.ParamByName('TIPO').AsInteger                :=  dsClienteTempTIPO.AsInteger;
          qry.ParamByName('SITUACAO').AsInteger            :=  dsClienteTempSITUACAO.AsInteger;
          qry.ParamByName('TELEFONE1').AsString            :=  dsClienteTempTELEFONE1.AsString;
          qry.ParamByName('CELULAR').AsString              :=  dsClienteTempCELULAR.AsString;
          qry.ParamByName('UF').AsString                   :=  dsClienteTempUF.AsString;
          qry.ParamByName('EMAIL').AsString                :=  dsClienteTempEMAIL.AsString;
          qry.ParamByName('RG').AsString                   :=  dsClienteTempRG.AsString;
          qry.ParamByName('CPF').AsString                  :=  dsClienteTempCPF.AsString;
          qry.ParamByName('DATA_CADASTRO').AsDate          :=  dsClienteTempDATA_CADASTRO.AsDateTime;
          qry.ParamByName('CODREGIAO').AsString            :=  dsClienteTempCODREGIAO.AsString;
          qry.ParamByName('NUMERO').AsString               :=  dsClienteTempNUMERO.AsString;
          qry.ParamByName('CNAE').AsString                 :=  dsClienteTempCNAE.AsString;
          qry.ParamByName('COD_MUNICIPIO_IBGE').AsString   :=  dsClienteTempCOD_MUNICIPIO_IBGE.AsString;
          qry.ParamByName('IBGE').AsString                 :=  dsClienteTempIBGE.AsString;
          qry.ParamByName('CPAIS').AsString                :=  dsClienteTempCPAIS.AsString;
          qry.ParamByName('DPAIS').AsString                :=  dsClienteTempDPAIS.AsString;
          qry.ExecSQL;
          mmo1.Lines.Add('Cliente: '+dsClienteTempNOME.AsString+' Inserido com Sucesso...');
        end else begin
          //Atualizar Registro
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('update c000007 set');
          qry.SQL.Add('NOME = :NOME,');
          qry.SQL.Add('APELIDO = :APELIDO,');
          qry.SQL.Add('ENDERECO = :ENDERECO,');
          qry.SQL.Add('BAIRRO = :BAIRRO,');
          qry.SQL.Add('CIDADE = :CIDADE,');
          qry.SQL.Add('CEP = :CEP,');
          qry.SQL.Add('COMPLEMENTO = :COMPLEMENTO,');
          qry.SQL.Add('TELEFONE1 = :TELEFONE1,');
          qry.SQL.Add('CELULAR = :CELULAR,');
          qry.SQL.Add('UF = :UF,');
          qry.SQL.Add('EMAIL = :EMAIL,');
          qry.SQL.Add('DATA_CADASTRO = :DATA_CADASTRO,');
          qry.SQL.Add('CODREGIAO = :CODREGIAO,');
          qry.SQL.Add('NUMERO = :NUMERO,');
          qry.SQL.Add('CNAE = :CNAE,');
          qry.SQL.Add('COD_MUNICIPIO_IBGE = :COD_MUNICIPIO_IBGE,');
          qry.SQL.Add('IBGE = :IBGE,');
          qry.SQL.Add('CPAIS = :CPAIS,');
          qry.SQL.Add('DPAIS = :DPAIS');

          qry.SQL.Add('where cpf = :cpf');

          qry.ParamByName('NOME').AsString                 :=  dsClienteTempNOME.AsString;
          qry.ParamByName('APELIDO').AsString              :=  dsClienteTempAPELIDO.AsString;
          qry.ParamByName('ENDERECO').AsString             :=  dsClienteTempENDERECO.AsString;
          qry.ParamByName('BAIRRO').AsString               :=  dsClienteTempBAIRRO.AsString;
          qry.ParamByName('CIDADE').AsString               :=  dsClienteTempCIDADE.AsString;
          qry.ParamByName('CEP').AsString                  :=  dsClienteTempCEP.AsString;
          qry.ParamByName('COMPLEMENTO').AsString          :=  dsClienteTempCOMPLEMENTO.AsString;
          qry.ParamByName('CPF').AsString                  :=  dsClienteTempCPF.AsString;
          qry.ParamByName('TELEFONE1').AsString            :=  dsClienteTempTELEFONE1.AsString;
          qry.ParamByName('CELULAR').AsString              :=  dsClienteTempCELULAR.AsString;
          qry.ParamByName('UF').AsString                   :=  dsClienteTempUF.AsString;
          qry.ParamByName('EMAIL').AsString                :=  dsClienteTempEMAIL.AsString;
          qry.ParamByName('DATA_CADASTRO').AsDate          :=  dsClienteTempDATA_CADASTRO.AsDateTime;
          qry.ParamByName('CODREGIAO').AsString            :=  dsClienteTempCODREGIAO.AsString;
          qry.ParamByName('NUMERO').AsString               :=  dsClienteTempNUMERO.AsString;
          qry.ParamByName('CNAE').AsString                 :=  dsClienteTempCNAE.AsString;
          qry.ParamByName('COD_MUNICIPIO_IBGE').AsString   :=  dsClienteTempCOD_MUNICIPIO_IBGE.AsString;
          qry.ParamByName('IBGE').AsString                 :=  dsClienteTempIBGE.AsString;
          qry.ParamByName('CPAIS').AsString                :=  dsClienteTempCPAIS.AsString;
          qry.ParamByName('DPAIS').AsString                :=  dsClienteTempDPAIS.AsString;
          qry.ExecSQL;
          mmo1.Lines.Add('Cliente: '+dsClienteTempNOME.AsString+' Atualizado com Sucesso...');
        end;
      end;
      //Verificar se é para Gravar Fornecedor no Banco de Dados
      if edImpFor.Checked = True then Begin
        //Cadastrar Fornecedor
        //Verificar se Existe o Reguistro na Tabela
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add('select * from c000009 where cnpj = :cnpj');
        qry.ParamByName('cnpj').AsString := dsClienteTempCPF.AsString;
        qry.Open;
        //Se existir Registro vai atualizar se não insere
        if qry.FieldByName('cnpj').AsString.IsEmpty then begin
          //Inserir Registro
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('insert into c000009');
          qry.SQL.Add('(');
          qry.SQL.Add('CODIGO,');
          qry.SQL.Add('NOME,');
          qry.SQL.Add('FANTASIA,');
          qry.SQL.Add('ENDERECO,');
          qry.SQL.Add('BAIRRO,');
          qry.SQL.Add('CIDADE,');
          qry.SQL.Add('CEP,');
          qry.SQL.Add('COMPLEMENTO,');
          qry.SQL.Add('TIPO,');
          qry.SQL.Add('TELEFONE1,');
          qry.SQL.Add('UF,');
          qry.SQL.Add('EMAIL,');
          qry.SQL.Add('IE,');
          qry.SQL.Add('CNPJ,');
          qry.SQL.Add('DATA,');
          qry.SQL.Add('NUMERO,');
          qry.SQL.Add('CNAE,');
          qry.SQL.Add('COD_MUNICIPIO_IBGE,');
          qry.SQL.Add('IBGE');
          qry.SQL.Add(')');
          qry.SQL.Add('values');
          qry.SQL.Add('(');
          qry.SQL.Add(':CODIGO,');
          qry.SQL.Add(':NOME,');
          qry.SQL.Add(':FANTASIA,');
          qry.SQL.Add(':ENDERECO,');
          qry.SQL.Add(':BAIRRO,');
          qry.SQL.Add(':CIDADE,');
          qry.SQL.Add(':CEP,');
          qry.SQL.Add(':COMPLEMENTO,');
          qry.SQL.Add(':TIPO,');
          qry.SQL.Add(':TELEFONE1,');
          qry.SQL.Add(':UF,');
          qry.SQL.Add(':EMAIL,');
          qry.SQL.Add(':IE,');
          qry.SQL.Add(':CNPJ,');
          qry.SQL.Add(':DATA,');
          qry.SQL.Add(':NUMERO,');
          qry.SQL.Add(':CNAE,');
          qry.SQL.Add(':COD_MUNICIPIO_IBGE,');
          qry.SQL.Add(':IBGE');
          qry.SQL.Add(')');
          qry.ParamByName('CODIGO').AsString               :=  GetSeguencia('000009');
          qry.ParamByName('NOME').AsString                 :=  dsClienteTempNOME.AsString;
          qry.ParamByName('FANTASIA').AsString             :=  dsClienteTempAPELIDO.AsString;
          qry.ParamByName('ENDERECO').AsString             :=  dsClienteTempENDERECO.AsString;
          qry.ParamByName('BAIRRO').AsString               :=  dsClienteTempBAIRRO.AsString;
          qry.ParamByName('CIDADE').AsString               :=  dsClienteTempCIDADE.AsString;
          qry.ParamByName('CEP').AsString                  :=  dsClienteTempCEP.AsString;
          qry.ParamByName('COMPLEMENTO').AsString          :=  Copy(dsClienteTempCOMPLEMENTO.AsString, 1, 40);
          qry.ParamByName('TIPO').AsInteger                :=  dsClienteTempTIPO.AsInteger;
          qry.ParamByName('TELEFONE1').AsString            :=  dsClienteTempTELEFONE1.AsString;
          qry.ParamByName('UF').AsString                   :=  dsClienteTempUF.AsString;
          qry.ParamByName('EMAIL').AsString                :=  dsClienteTempEMAIL.AsString;
          qry.ParamByName('IE').AsString                   :=  dsClienteTempRG.AsString;
          qry.ParamByName('CNPJ').AsString                 :=  dsClienteTempCPF.AsString;
          qry.ParamByName('DATA').AsDate                   :=  dsClienteTempDATA_CADASTRO.AsDateTime;
          qry.ParamByName('NUMERO').AsString               :=  dsClienteTempNUMERO.AsString;
          qry.ParamByName('CNAE').AsString                 :=  dsClienteTempCNAE.AsString;
          qry.ParamByName('COD_MUNICIPIO_IBGE').AsString   :=  dsClienteTempCOD_MUNICIPIO_IBGE.AsString;
          qry.ParamByName('IBGE').AsString                 :=  dsClienteTempIBGE.AsString;
          qry.ExecSQL;
          mmo1.Lines.Add('Fornecedor: '+dsClienteTempNOME.AsString+' Inserido com Sucesso...');
        end else begin
          //Atualizar Registro
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('update c000009 set');
          qry.SQL.Add('NOME = :NOME,');
          qry.SQL.Add('FANTASIA = :FANTASIA,');
          qry.SQL.Add('ENDERECO = :ENDERECO,');
          qry.SQL.Add('BAIRRO = :BAIRRO,');
          qry.SQL.Add('CIDADE = :CIDADE,');
          qry.SQL.Add('CEP = :CEP,');
          qry.SQL.Add('COMPLEMENTO = :COMPLEMENTO,');
          qry.SQL.Add('TELEFONE1 = :TELEFONE1,');
          qry.SQL.Add('UF = :UF,');
          qry.SQL.Add('EMAIL = :EMAIL,');
          qry.SQL.Add('DATA = :DATA,');
          qry.SQL.Add('NUMERO = :NUMERO,');
          qry.SQL.Add('CNAE = :CNAE,');
          qry.SQL.Add('COD_MUNICIPIO_IBGE = :COD_MUNICIPIO_IBGE,');
          qry.SQL.Add('IBGE = :IBGE');
          qry.SQL.Add('where cnpj = :cnpj');
          qry.ParamByName('NOME').AsString                 :=  dsClienteTempNOME.AsString;
          qry.ParamByName('FANTASIA').AsString             :=  dsClienteTempAPELIDO.AsString;
          qry.ParamByName('ENDERECO').AsString             :=  dsClienteTempENDERECO.AsString;
          qry.ParamByName('BAIRRO').AsString               :=  dsClienteTempBAIRRO.AsString;
          qry.ParamByName('CIDADE').AsString               :=  dsClienteTempCIDADE.AsString;
          qry.ParamByName('CEP').AsString                  :=  dsClienteTempCEP.AsString;
          qry.ParamByName('COMPLEMENTO').AsString          :=  Copy(dsClienteTempCOMPLEMENTO.AsString, 1, 40);
          qry.ParamByName('CNPJ').AsString                 :=  dsClienteTempCPF.AsString;
          qry.ParamByName('TELEFONE1').AsString            :=  dsClienteTempTELEFONE1.AsString;
          qry.ParamByName('UF').AsString                   :=  dsClienteTempUF.AsString;
          qry.ParamByName('EMAIL').AsString                :=  dsClienteTempEMAIL.AsString;
          qry.ParamByName('DATA').AsDate                   :=  dsClienteTempDATA_CADASTRO.AsDateTime;
          qry.ParamByName('NUMERO').AsString               :=  dsClienteTempNUMERO.AsString;
          qry.ParamByName('CNAE').AsString                 :=  dsClienteTempCNAE.AsString;
          qry.ParamByName('COD_MUNICIPIO_IBGE').AsString   :=  dsClienteTempCOD_MUNICIPIO_IBGE.AsString;
          qry.ParamByName('IBGE').AsString                 :=  dsClienteTempIBGE.AsString;
          qry.ExecSQL;
          mmo1.Lines.Add('Fornecedor: '+dsClienteTempNOME.AsString+' Atualizado com Sucesso...');
        end;
      End;
      pbW7.Position := pbW7.Position + 1;
      dsClienteTemp.Next;
    end;
    //Carregar registros da Tabela Temp de Produto
    if (edImpPro.Checked = True) then
      mmo1.Lines.Add('Inserindo Registro(s) do(s) Produto(s) no Banco de Dados...')
    else
      mmo1.Lines.Add('Ignorando a Inserção de Registro(s) do(s) Produto(s) no Banco de Dados...');
    dsProdutoTemp.First;
    while not dsProdutoTemp.Eof do begin
      //Verificar se é para Inserir Registro
      if (edImpPro.Checked = True) then begin
        //Verificar se Existe o Reguistro na Tabela
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add('select * from c000025 where (codbarra = :codbarra) or (produto = :produto)');
        qry.ParamByName('codbarra').AsString := dsProdutoTempCODBARRA.AsString;
        qry.ParamByName('produto').AsString  := dsProdutoTempPRODUTO.AsString;
        qry.Open;

        //Se existir Registro vai atualizar se não insere
        if qry.FieldByName('codbarra').AsString.IsEmpty then begin
          //Inserir Registro
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('insert into c000025');
          qry.SQL.Add('(');
          qry.SQL.Add('CODIGO,');
          qry.SQL.Add('CODBARRA,');
          qry.SQL.Add('PRODUTO,');
          qry.SQL.Add('ORIGEM,');
          qry.SQL.Add('PRECOCUSTO,');
          qry.SQL.Add('PRECOVENDA,');
          qry.SQL.Add('CST,');
          qry.SQL.Add('CSOSN,');
          qry.SQL.Add('ALIQUOTA,');
          qry.SQL.Add('SITUACAO_TRIBUTARIA,');
          qry.SQL.Add('NCM,');
          qry.SQL.Add('CLASSIFICACAO_FISCAL,');
          qry.SQL.Add('IND_CFOP_VENDA_DENTRO,');
          qry.SQL.Add('IND_CFOP_VENDA_FORA,');
          qry.SQL.Add('IND_CFOP_NFCE,');
          qry.SQL.Add('DATA_CADASTRO,');
          qry.SQL.Add('UNIDADE,');
          qry.SQL.Add('NOTAFISCAL,');
          qry.SQL.Add('TIPO,');
          qry.SQL.Add('SITUACAO,');
          qry.SQL.Add('PISCOFINS,');
          qry.SQL.Add('IAT,');
          qry.SQL.Add('IPPT,');
          qry.SQL.Add('CEST');
          qry.SQL.Add(')');

          qry.SQL.Add('values');
          qry.SQL.Add('(');
          qry.SQL.Add(':CODIGO,');
          qry.SQL.Add(':CODBARRA,');
          qry.SQL.Add(':PRODUTO,');
          qry.SQL.Add(':ORIGEM,');
          qry.SQL.Add(':PRECOCUSTO,');
          qry.SQL.Add(':PRECOVENDA,');
          qry.SQL.Add(':CST,');
          qry.SQL.Add(':CSOSN,');
          qry.SQL.Add(':ALIQUOTA,');
          qry.SQL.Add(':SITUACAO_TRIBUTARIA,');
          qry.SQL.Add(':NCM,');
          qry.SQL.Add(':CLASSIFICACAO_FISCAL,');
          qry.SQL.Add(':IND_CFOP_VENDA_DENTRO,');
          qry.SQL.Add(':IND_CFOP_VENDA_FORA,');
          qry.SQL.Add(':IND_CFOP_NFCE,');
          qry.SQL.Add(':DATA_CADASTRO,');
          qry.SQL.Add(':UNIDADE,');
          qry.SQL.Add(':NOTAFISCAL,');
          qry.SQL.Add(':TIPO,');
          qry.SQL.Add(':SITUACAO,');
          qry.SQL.Add(':PISCOFINS,');
          qry.SQL.Add(':IAT,');
          qry.SQL.Add(':IPPT,');
          qry.SQL.Add(':CEST');
          qry.SQL.Add(')');
          CodPro := GetSeguencia('000025');
          qry.ParamByName('CODIGO').AsString                    :=  CodPro;
          qry.ParamByName('CODBARRA').AsString                  :=  dsProdutoTempCODBARRA.AsString;
          qry.ParamByName('PRODUTO').AsString                   :=  dsProdutoTempPRODUTO.AsString;
          qry.ParamByName('ORIGEM').AsInteger                   :=  dsProdutoTempORIGEM.AsInteger;
          if (edImpPrecoCusto.Checked = True) then
            qry.ParamByName('PRECOCUSTO').AsFloat               :=  dsProdutoTempPRECOCUSTO.AsFloat
          else
            qry.ParamByName('PRECOCUSTO').AsFloat           :=  0;
          if (edImpPrecoVenda.Checked = True) then
            qry.ParamByName('PRECOVENDA').AsFloat               :=  dsProdutoTempPRECOVENDA.AsFloat
          else
            qry.ParamByName('PRECOVENDA').AsFloat           := 0;
          if (edImpNCM.Checked = True) then
            qry.ParamByName('CST').AsString                     :=  dsProdutoTempCST.AsString
          else
            qry.ParamByName('CST').AsString                 := '';
          if (edImpSCOSN.Checked = True) then
            qry.ParamByName('CSOSN').AsString                   :=  dsProdutoTempCSOSN.AsString
          else
            qry.ParamByName('CSOSN').AsString               := '';
          if (edImpST.Checked = True) then
            qry.ParamByName('SITUACAO_TRIBUTARIA').AsString     :=  dsProdutoTempSITUACAO_TRIBUTARIA.AsString
          else
            qry.ParamByName('SITUACAO_TRIBUTARIA').AsString := '';
          if (edImpNCM.Checked = True) then begin
            qry.ParamByName('NCM').AsString                       :=  dsProdutoTempNCM.AsString;
            qry.ParamByName('CLASSIFICACAO_FISCAL').AsString      :=  dsProdutoTempCLASSIFICACAO_FISCAL.AsString;
            qry.ParamByName('CEST').AsString                      :=  dsProdutoTempCEST.AsString;
          end else begin
            qry.ParamByName('NCM').AsString                     :=  '';
            qry.ParamByName('CLASSIFICACAO_FISCAL').AsString    :=  '';
            qry.ParamByName('CEST').AsString                    :=  '';
          end;
          qry.ParamByName('ALIQUOTA').AsFloat                   :=  dsProdutoTempALIQUOTA.AsFloat;
          qry.ParamByName('IND_CFOP_VENDA_DENTRO').AsString     :=  dsProdutoTempIND_CFOP_VENDA_DENTRO.AsString;
          qry.ParamByName('IND_CFOP_VENDA_FORA').AsString       :=  dsProdutoTempIND_CFOP_VENDA_FORA.AsString;
          qry.ParamByName('IND_CFOP_NFCE').AsString             :=  dsProdutoTempIND_CFOP_NFCE.AsString;
          qry.ParamByName('DATA_CADASTRO').AsDate               :=  dsProdutoTempDATA_CADASTRO.AsDateTime;
          qry.ParamByName('UNIDADE').AsString                   :=  dsProdutoTempUNIDADE.AsString;
          qry.ParamByName('NOTAFISCAL').AsString                :=  dsProdutoTempNOTAFISCAL.AsString;
          qry.ParamByName('TIPO').AsString                      :=  dsProdutoTempTIPO.AsString;
          qry.ParamByName('SITUACAO').AsInteger                 :=  dsProdutoTempSITUACAO.AsInteger;
          qry.ParamByName('PISCOFINS').AsString                 :=  dsProdutoTempPISCOFINS.AsString;
          qry.ParamByName('IAT').AsString                       :=  dsProdutoTempIAT.AsString;
          qry.ParamByName('IPPT').AsString                      :=  dsProdutoTempIPPT.AsString;
          qry.ExecSQL;
          mmo1.Lines.Add('Produto: '+dsProdutoTempPRODUTO.AsString+' Inserido com Sucesso...');
        end else begin
          CodPro := qry.FieldByName('CODIGO').AsString;
          //Passar o valor do codigo de barra para a variavel
          CodigoBarraTemp :=  qry.FieldByName('CODBARRA').AsString;
          //Atualizar Registro
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('update c000025 set');
          qry.SQL.Add('PRODUTO = :PRODUTO,');
          qry.SQL.Add('ORIGEM = :ORIGEM,');
          qry.SQL.Add('PRECOCUSTO = :PRECOCUSTO,');
          qry.SQL.Add('PRECOVENDA = :PRECOVENDA,');
          qry.SQL.Add('CST = :CST,');
          qry.SQL.Add('CSOSN = :CSOSN,');
          qry.SQL.Add('ALIQUOTA = :ALIQUOTA,');
          qry.SQL.Add('SITUACAO_TRIBUTARIA = :SITUACAO_TRIBUTARIA,');
          qry.SQL.Add('NCM = :NCM,');
          qry.SQL.Add('CLASSIFICACAO_FISCAL = :CLASSIFICACAO_FISCAL,');
          qry.SQL.Add('IND_CFOP_VENDA_DENTRO = :IND_CFOP_VENDA_DENTRO,');
          qry.SQL.Add('IND_CFOP_VENDA_FORA = :IND_CFOP_VENDA_FORA,');
          qry.SQL.Add('IND_CFOP_NFCE = :IND_CFOP_NFCE,');
          qry.SQL.Add('DATA_CADASTRO = :DATA_CADASTRO,');
          qry.SQL.Add('UNIDADE = :UNIDADE,');
          qry.SQL.Add('NOTAFISCAL = :NOTAFISCAL,');
          qry.SQL.Add('TIPO = :TIPO,');
          qry.SQL.Add('SITUACAO = :SITUACAO,');
          qry.SQL.Add('PISCOFINS = :PISCOFINS,');
          qry.SQL.Add('IAT = :IAT,');
          qry.SQL.Add('IPPT = :IPPT,');
          qry.SQL.Add('CEST = :CEST');
          qry.SQL.Add('where codbarra = :codbarra');
          qry.ParamByName('CODBARRA').AsString                  :=  CodigoBarraTemp;
          qry.ParamByName('PRODUTO').AsString                   :=  dsProdutoTempPRODUTO.AsString;
          qry.ParamByName('ORIGEM').AsInteger                   :=  dsProdutoTempORIGEM.AsInteger;
          if (edImpPrecoCusto.Checked = True) then
            qry.ParamByName('PRECOCUSTO').AsFloat               :=  dsProdutoTempPRECOCUSTO.AsFloat
          else
            qry.ParamByName('PRECOCUSTO').AsFloat           := 0;
          if (edImpPrecoVenda.Checked = True) then
            qry.ParamByName('PRECOVENDA').AsFloat               :=  dsProdutoTempPRECOVENDA.AsFloat
          else
           qry.ParamByName('PRECOVENDA').AsFloat           := 0;
          if (edImpCST.Checked = True) then
            qry.ParamByName('CST').AsString                     :=  dsProdutoTempCST.AsString
          else
           qry.ParamByName('CST').AsString                 :=  '';
          if (edImpSCOSN.Checked = True) then
            qry.ParamByName('CSOSN').AsString                   :=  dsProdutoTempCSOSN.AsString
          else
           qry.ParamByName('CSOSN').AsString               :=  '';
          if (edImpST.Checked = True) then
            qry.ParamByName('SITUACAO_TRIBUTARIA').AsString     :=  dsProdutoTempSITUACAO_TRIBUTARIA.AsString
          else
            qry.ParamByName('SITUACAO_TRIBUTARIA').AsString := '';
          if (edImpNCM.Checked = True) then begin
            qry.ParamByName('NCM').AsString                     :=  dsProdutoTempNCM.AsString;
            qry.ParamByName('CLASSIFICACAO_FISCAL').AsString    :=  dsProdutoTempCLASSIFICACAO_FISCAL.AsString;
            qry.ParamByName('CEST').AsString                    :=  dsProdutoTempCEST.AsString;
          end else begin
            qry.ParamByName('NCM').AsString                   :=  '';
            qry.ParamByName('CLASSIFICACAO_FISCAL').AsString  :=  '';
            qry.ParamByName('CEST').AsString                  :=  '';
          end;
          qry.ParamByName('IND_CFOP_VENDA_DENTRO').AsString     :=  dsProdutoTempIND_CFOP_VENDA_DENTRO.AsString;
          qry.ParamByName('IND_CFOP_VENDA_FORA').AsString       :=  dsProdutoTempIND_CFOP_VENDA_FORA.AsString;
          qry.ParamByName('IND_CFOP_NFCE').AsString             :=  dsProdutoTempIND_CFOP_NFCE.AsString;
          qry.ParamByName('DATA_CADASTRO').AsDate               :=  dsProdutoTempDATA_CADASTRO.AsDateTime;
          qry.ParamByName('UNIDADE').AsString                   :=  dsProdutoTempUNIDADE.AsString;
          qry.ParamByName('NOTAFISCAL').AsString                :=  dsProdutoTempNOTAFISCAL.AsString;
          qry.ParamByName('TIPO').AsString                      :=  dsProdutoTempTIPO.AsString;
          qry.ParamByName('SITUACAO').AsInteger                 :=  dsProdutoTempSITUACAO.AsInteger;
          qry.ParamByName('PISCOFINS').AsString                 :=  dsProdutoTempPISCOFINS.AsString;
          qry.ParamByName('IAT').AsString                       :=  dsProdutoTempIAT.AsString;
          qry.ParamByName('IPPT').AsString                      :=  dsProdutoTempIPPT.AsString;
          qry.ParamByName('ALIQUOTA').AsFloat                   :=  dsProdutoTempALIQUOTA.AsFloat;
          qry.ExecSQL;
          mmo1.Lines.Add('Produto: '+dsProdutoTempPRODUTO.AsString+' Atualizado com Sucesso...');
        end;
        dsProdutoTemp.Edit;
        dsProdutoTempCODIGO.AsString := CodPro;
        dsProdutoTemp.Post;
      end;
      //Verificar se esta marcado para passar produto e estoque
      if (edImpPro.Checked = True) and (edImpEst.Checked = True) then begin
        //Trazer Estoque do produto
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add('select * from c000100');
        qry.SQL.Add('where codproduto = :codproduto');
        qry.ParamByName('codproduto').AsString  :=  dsProdutoTempCODIGO.AsString;
        qry.Open;

        //Passando os Valores de Estoque para Variaveis
        Estoque_Inicial :=  qry.FieldByName('estoque_inicial').AsFloat;
        Entradas        :=  qry.FieldByName('entradas').AsFloat;
        Estoque_Atual   :=  qry.FieldByName('estoque_atual').AsFloat;

        //Atualizar o Estoque
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add('update c000100 set');
        qry.SQL.Add('estoque_inicial = :estoque_inicial,');
        qry.SQL.Add('entradas = :entradas,');
        qry.SQL.Add('estoque_atual = :estoque_atual,');
        qry.SQL.Add('ultima_entrada = :ultima_entrada');
        qry.SQL.Add('where codproduto = :codproduto');

        qry.ParamByName('codproduto').AsString      :=  dsProdutoTempCODIGO.AsString;
        qry.ParamByName('estoque_inicial').AsFloat  :=  Estoque_Inicial;
        qry.ParamByName('entradas').AsFloat         :=  Entradas + dsProdutoTempESTOQUE.AsFloat;
        qry.ParamByName('estoque_atual').AsFloat    :=  Estoque_Atual + dsProdutoTempESTOQUE.AsFloat;
        qry.ParamByName('ultima_entrada').AsDate    :=  dsProdutoTempDATA_CADASTRO.AsDateTime;
        qry.ExecSQL;
        mmo1.Lines.Add('Estoque: '+FormatFloat('#,##0.00', dsProdutoTempESTOQUE.AsFloat)+' Atualizado com Sucesso...');
      end;
      pbW7.Position := pbW7.Position + 1;
      dsProdutoTemp.Next;
    end;
    if edImpNfeSaida.Checked then begin
      dsNFETemp.First;
      while not dsNFETemp.Eof do begin
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add('select count(*) qtd from c000061 where numero = ' + QuotedStr(dsNFETempNUMERO.AsString));
        qry.Open;
        if qry.FieldByName('qtd').AsInteger = 0 then begin
          CodNota :=  GetSeguencia('000061');
          for I := 0 to dsNFETemp.Fields.Count -1 do begin
            if dsNFETemp.Fields[i].FieldName = 'CODIGO' then
              dbxNFE.ParamByName(dsNFETemp.Fields[i].FieldName).Value := CodNota
            else if dsNFETemp.Fields[i].FieldName = 'NOMECLIENTE' then begin

            end else
              dbxNFE.ParamByName(dsNFETemp.Fields[i].FieldName).Value := dsNFETemp.Fields[i].Value;
          end;
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('select codigo from c000007 where NOME = ' + QuotedStr(dsNFETempNOMECLIENTE.AsString));
          qry.Open;
          if not qry.IsEmpty then
            dbxNFE.ParamByName('CODCLIENTE').Value := qry.FieldByName('codigo').Value;
          dsItens.First;
          while not dsItens.Eof do begin
            for I := 0 to dsItens.Fields.Count -1 do begin
              if dsItens.Fields[i].FieldName = 'CODIGO' then
                dbxItens.ParamByName(dsNFETemp.Fields[i].FieldName).Value := GetSeguencia('000062')
              else if dsItens.Fields[i].FieldName = 'DESPRODUTO' then

              else
                dbxItens.ParamByName(dsItens.Fields[i].FieldName).Value := dsItens.Fields[i].Value;
            end;
            dsProdutoTemp.Filter := 'PRODUTO='+QuotedStr(dsItensDESPRODUTO.AsString);
            dsProdutoTemp.Filtered := True;
            if not dsProdutoTemp.IsEmpty then
              dbxItens.ParamByName('CODPRODUTO').Value := dsProdutoTempCODIGO.Value;
            dbxItens.ParamByName('CODNOTA').AsString := CodNota;
            dbxItens.ExecSQL;
            dsItens.Next;
          end;
          dbxNFE.ExecSQL;
        end;


        dsNFETemp.Next;
      end;

    end;

    mmo1.Lines.Add('Inserção no Banco de Dados feita com Sucesso...');
    mmo1.Lines.Add('');
    mmo1.Lines.Add('');
  end;
end;

function ThreadGravar.GetSeguencia(Chave: string): string;
begin
  with Form1 do begin
    Sequ.Close;
    Sequ.SQL.Clear;
    Sequ.SQL.Add('select sequencia+1 seq from C000000 where codigo = ' + QuotedStr(Chave));
    Sequ.Open;
    if (Sequ.FieldByName('seq').IsNull) then
      Result := zerarcodigo('1',6)
    else
      Result := zerarcodigo(Sequ.FieldByName('seq').AsString,6);
    Sequ.Close;
    Sequ.SQL.Clear;
    Sequ.SQL.Add('update C000000 set sequencia = sequencia + 1 where codigo = ' + QuotedStr(Chave));
    Sequ.ExecSQL;
  end;
end;

function ThreadGravar.zerarcodigo(codigo: string; Qtde: Integer): string;
begin
  while Length(codigo) < Qtde do
    codigo := '0' + codigo;
  result := codigo;
end;

end.

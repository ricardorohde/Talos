unit UFuncoes;

interface

uses Windows, Forms, SysUtils, ShellAPI, dialogs, UImpressao,
  iniFiles;

// Pega o N° da Unidade do sistema
function SystemDrive: String;

// Insere zeros a esquerda
Function StrZero(const I: Integer; const Casas: byte): string; overload;
// Zeros Antes String
Function StrZero(const s: string; const Casas: byte): string; overload;

// Aciona guilhotina - corte do papel
Function AcionaGuilhotinaNaoFiscal(sPorta, sModelo: string): Boolean;

// Ler Arquivo txt de configurações e busca por referencia inicial
Function LerArquivoTxt(sArquivo, sLinhaReferencia, RetPadrao: string): string;

// function Imp_Inicia_Abertura_Nota(sPorta:string; Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;

// Repete String X Vezes
Function Repl(C: string; Tamanho: Integer): string;
Function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;

// Varifica se valor string é inteiro
Function IsInteger(sString: string): Integer;
Function IsFloat(sString: string): Double;
// Funcao max Query
function Max(sCondicao: string): Double;

procedure GravaINI(Arq, Secao, Ident, valor: String);
Function LerIni(Arq, Secao, Ident: String; Def: String): String;

procedure AcionarGuilhotinaNaoFiscal;

function FormatarValor(peValor: Currency; piDecimais: Integer; pbRemovePonto: Boolean = True): AnsiString;


const
  mascara_qtde = '###,##0.000';
  mascara_Valor = '###,##0.00';

var
  Imp: TImpressao;

implementation

uses Classes, principal, modulo, funcoes, venda;

function SystemDrive: String;
var
  DirWin, SystemDriv: String;
begin
  SetLength(DirWin, MAX_PATH);
  GetSystemDirectory(Pchar(DirWin), MAX_PATH);
  SystemDriv := Copy(DirWin, 1, 3);
  Result := SystemDriv
end;


Function LerArquivoTxt(sArquivo, sLinhaReferencia, RetPadrao: string): string;
var
  txt: TStrings;
  I: Integer;
  s: WideString;
begin
  Result := RetPadrao;

  if not FileExists(sArquivo) then
  begin
    Result := RetPadrao;
    Exit;
  end;

  try
    txt := TStringList.Create;

    txt.Clear;
    txt.LoadFromFile(sArquivo);

    for I := 0 to txt.Count - 1 do
    begin
      s := txt[I];

      if System.pos(PWideChar(sLinhaReferencia), Copy(s, 1, 8)) > 0 then
      begin
        Result := Copy(s, 9, length(s));
        Exit;
      end;

    end;

  finally
    txt.Free;
  end;

end;


Function StrZero(const I: Integer; const Casas: byte): string;
// Zeros Antes String
var
  Ch: char;
begin
  Result := IntToStr(I);
  if length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while length(Result) < Casas do
    Result := Ch + Result;
end;

Function StrZero(const s: string; const Casas: byte): string; overload;
var
  Ch: char;
begin
  Result := s;;
  if length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while length(Result) < Casas do
    Result := Ch + Result;
end;

Function IsInteger(sString: string): Integer;
begin
  try
    Result := StrToInt(sString);
  except
    Result := 0;
  end;
end;

Function IsFloat(sString: string): Double;
begin
  try
    Result := StrToFloat(sString);
  except
    Result := 0;
  end;
end;


function Max(sCondicao: string): Double;
begin
  try
    frmModulo.query.Close;
    frmModulo.query.SQL.Clear;
    frmModulo.query.SQL.Add('Select Max(NUMERO) as Maior from SEQUENCIA');

    if length(sCondicao) > 0 then
      frmModulo.query.SQL.Add(sCondicao);

    frmModulo.query.Open;

    Result := IsFloat(frmModulo.query.fieldbyname('Maior').AsString) + 1;

    frmModulo.query.Close;
    frmModulo.query.SQL.Clear;
    frmModulo.query.SQL.Add('Select * from SEQUENCIA');
    frmModulo.query.Open;
    frmModulo.query.Edit;
    frmModulo.query.fieldbyname('NUMERO').Value := FloatToStr(Result);
    frmModulo.query.Post;

  except

    Result := 0;

  end;

end;

Function Repl(C: string; Tamanho: Integer): string;
var
  Conteudo: string;
  Contar: Integer;
begin
  Conteudo := '';
  for Contar := 1 to Tamanho do
  begin
    Conteudo := Conteudo + C;
    Application.ProcessMessages;
  end;
  Repl := Conteudo;
end;

Function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;
begin
  Result := Copy(Conteudo, 1, Tamanho) + Repl(Caractere,
    (Tamanho - length(Conteudo)));
end;

procedure GravaINI(Arq, Secao, Ident, valor: String);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(Arq);
  Ini.WriteString(Secao, Ident, valor);
  Ini.Free;
end;

Function LerIni(Arq, Secao, Ident: String; Def: String): String;
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create(Arq);
  Result := Ini.ReadString(Secao, Ident, Def);
  Ini.Free;
end;

Function AcionaGuilhotinaNaoFiscal(sPorta, sModelo: string): Boolean;
Var
  txt: TextFile;
  sComando: string;
begin
  Exit;
  try
    // Comando para Acionar a Gaveta de Dinheiro
    AssignFile(txt, sPorta);
    Rewrite(txt);

    if UpperCase(sModelo) = 'PADRÃO' then // Padrao Bematech
      sComando := #27 + #109; // Corte Parcial {Total = #27 + #119}

    if UpperCase(sModelo) = 'BEMATECH' then
      sComando := #27 + #109; // Corte Parcial {Total = #27 + #119}

    if UpperCase(sModelo) = 'DARUMA' then
      sComando := #27 + #109; // Corte Parcial {Total = #27 + #119}

    Write(txt, sComando);
    CloseFile(txt);
  except
    Result := False;
  end;
end;

procedure AcionarGuilhotinaNaoFiscal;
begin
  if bHabGuilhotina then
    AcionaGuilhotinaNaoFiscal(sPortaGaveta, sModelo);
end;

function FormatarValor(peValor: Currency; piDecimais: Integer; pbRemovePonto: Boolean = True): AnsiString;
var
  I: Integer;
  sDecimais: AnsiString;

begin
  sDecimais := '';
  for I := 1 to piDecimais do
  begin
    sDecimais := sDecimais + '0';
  end;

  Result := FormatFloat('########0.' + sDecimais, peValor);
end;


end.



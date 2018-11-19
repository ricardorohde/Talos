unit ExportaXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls,
  AdvMetroButton, Vcl.StdCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RzEdit, RzBtnEdt, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, DateUtils, ShellApi,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, System.Zip,
  ACBrUtil, ACBrBase, ACBrMail;

type
  TFRMExportaXML = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    bfechar: TAdvMetroButton;
    Panel5: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    qrcliente: TZQuery;
    qrnota: TZQuery;
    qrnotaSITUACAO: TWideStringField;
    qrnotaNOME: TWideStringField;
    qrnotaCODIGO: TWideStringField;
    qrnotaNUMERO: TWideStringField;
    qrnotaSERIE_NF: TWideStringField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaNFE_XML: TWideStringField;
    qrnotaDATA: TDateField;
    dsnota: TDataSource;
    Panel8: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pnNFE: TPanel;
    Panel1: TPanel;
    Label21: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edInicio: TJvDateEdit;
    edFim: TJvDateEdit;
    ecliente: TRzButtonEdit;
    enomecliente: TRzEdit;
    bfiltrar: TAdvGlowButton;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    IniNFCE: TJvDateEdit;
    FimNFCe: TJvDateEdit;
    AdvGlowButton1: TAdvGlowButton;
    Panel7: TPanel;
    Label3: TLabel;
    bgravar: TAdvGlowButton;
    edestino: TJvDirectoryEdit;
    qrNFCe: TZQuery;
    dsNFCe: TDataSource;
    TabSheet3: TTabSheet;
    Panel9: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    edInicioSat: TJvDateEdit;
    edFimSat: TJvDateEdit;
    AdvGlowButton2: TAdvGlowButton;
    qrSat: TZQuery;
    dsSat: TDataSource;
    qrSatID: TIntegerField;
    qrSatDATA: TDateField;
    qrSatHORA: TWideStringField;
    qrSatNUMERO: TIntegerField;
    qrSatCODCLIENTE: TWideStringField;
    qrSatAMBIENTE: TIntegerField;
    qrSatCANCELADO: TWideStringField;
    qrSatCHAVE: TWideStringField;
    qrSatXML_ENVIO: TBlobField;
    qrSatXML_CANCELAMENTO: TBlobField;
    qrSatALTERADO: TWideStringField;
    qrSatTOTAL: TFloatField;
    qrSatCUPOM: TWideStringField;
    qrSatNOME: TWideStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1CANCELADO: TcxGridDBColumn;
    cxGrid1DBTableView1CHAVE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    cxGridDBTableView1DATA: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1CLIENTE: TcxGridDBColumn;
    cxGridDBTableView1HORA: TcxGridDBColumn;
    cxGridDBTableView1CONTINGENCIA: TcxGridDBColumn;
    cxGridDBTableView1ENVIADOCONTINGENCIA: TcxGridDBColumn;
    qrNFCeNUMERO: TIntegerField;
    qrNFCeDATA: TDateField;
    qrNFCeTOTAL: TFloatField;
    qrNFCeCLIENTE: TWideStringField;
    qrNFCeCHAVE: TWideStringField;
    qrNFCeSITUACAO: TIntegerField;
    qrNFCeTROCO: TFloatField;
    qrNFCeHORA: TWideStringField;
    qrNFCeCONTINGENCIA: TWideStringField;
    qrNFCeENVIADOCONTINGENCIA: TWideStringField;
    qrNFCeMOTIVOCONTIGENCIA: TWideStringField;
    qrNFCeXMLENVIO: TBlobField;
    qrNFCeXMLCACNELAMENTO: TBlobField;
    qrNFCeCUPOM: TWideStringField;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2SITUACAO: TcxGridDBColumn;
    cxGridDBTableView2NOME: TcxGridDBColumn;
    cxGridDBTableView2NUMERO: TcxGridDBColumn;
    cxGridDBTableView2SERIE_NF: TcxGridDBColumn;
    cxGridDBTableView2TOTAL_NOTA: TcxGridDBColumn;
    cxGridDBTableView2DATA: TcxGridDBColumn;
    edEnvia: TCheckBox;
    ACBrMail1: TACBrMail;
    mBody: TMemo;
    pnEnvia: TPanel;
    procedure bfecharClick(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bfiltrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure ACBrMail1MailException(const AMail: TACBrMail; const E: Exception;
      var ThrowIt: Boolean);
    procedure edEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMExportaXML: TFRMExportaXML;

implementation

uses modulo, xloc_cliente, principal, UFuncoes, mimemess, TypInfo;

{$R *.dfm}

procedure TFRMExportaXML.ACBrMail1MailException(const AMail: TACBrMail;
  const E: Exception; var ThrowIt: Boolean);
begin
  ThrowIt := False;
end;

procedure TFRMExportaXML.AdvGlowButton1Click(Sender: TObject);
var
  Filtro:string;
begin
  Filtro := '';
  if IniNFCE.Date > 0 then
    Filtro := Filtro + ' and nf.data >= ' + QuotedStr(FormatDateTime('DD.MM.YYY',IniNFCE.Date));
  if FimNFCe.Date > 0 then
    Filtro := Filtro + ' and nf.data <= ' + QuotedStr(FormatDateTime('DD.MM.YYY',FimNFCe.Date));
  qrNFCe.SQL.Clear;
  qrNFCe.SQL.Add('select * from nfce nf where 1=1 ' + Filtro);
  qrNFCe.Open;
end;

procedure TFRMExportaXML.AdvGlowButton2Click(Sender: TObject);
var
  Filtro:string;
begin
  Filtro := '';
  if edInicioSat.Date > 0 then
    Filtro := Filtro + ' and nf.data >= ' + QuotedStr(FormatDateTime('DD.MM.YYY',edInicioSat.Date));
  if edFimSat.Date > 0 then
    Filtro := Filtro + ' and nf.data <= ' + QuotedStr(FormatDateTime('DD.MM.YYY',edFimSat.Date));
  qrSat.Close;
  qrSat.SQL.Clear;
  qrSat.SQL.Add('select nf.*, cl.nome from sat nf left join c000007 cl on cl.codigo = nf.codcliente where 1=1 ' + Filtro);
  qrSat.Open;
end;

procedure TFRMExportaXML.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFRMExportaXML.bfiltrarClick(Sender: TObject);
var
  Filtro:string;
begin
  Filtro := '';
  if edInicio.Date > 0 then
    Filtro := Filtro + ' and nf.data >= ' + QuotedStr(FormatDateTime('DD.MM.YYY',edInicio.Date));
  if edFim.Date > 0 then
    Filtro := Filtro + ' and nf.data <= ' + QuotedStr(FormatDateTime('DD.MM.YYY',edFim.Date));
  if (ecliente.Text <> '000000') and (ecliente.Text <> '') then
    Filtro := Filtro + ' anc cli.codigo = ' +  QuotedStr(ecliente.Text);
  if Filtro = '' then begin
    Application.MessageBox('Informe pelo menos uma opção de filtro','Atenção!',MB_ICONINFORMATION);
    edInicio.SetFocus;
    exit;
  end;
  qrnota.Close;
  qrnota.SQL.Text := 'select case nf.nfe_situacao when 6 then ' + QuotedStr('Envidada') + ' else ' + QuotedStr('Cancelada') + ' end situacao,  cli.nome,  nf.codigo, nf.numero, nf.serie_nf,  nf.total_nota,nf.nfe_xml, nf.data '
                     + ' from c000061 nf  inner join C000007 cli on cli.codigo = nf.codcliente '
                     + ' where nf.nfe_situacao in (6,8) '
                     + Filtro
                     + ' order by nf.numero';
  qrnota.Open;
end;

procedure TFRMExportaXML.bgravarClick(Sender: TObject);
var
  Texto, Assunto, arquivo,xml:string;
  nao:Boolean;
  sXML, pdf: string;
  F: TSearchRec;
  Ret: Integer;
begin
  if edEnvia.Checked then begin
    with frmmodulo do begin
      if Trim(qrFilialEMAIL.AsString) = '' then begin
        Application.MessageBox('Não foi informado o e-mil no cadastro de empresa','Atenção!',MB_ICONINFORMATION);
        exit;
      end;
      if Trim(qrFilialCONTADOR_EMAIL.AsString) = '' then begin
        Application.MessageBox('Não foi informado o e-mil do contador cadastro de empresa/Contador','Atenção!',MB_ICONINFORMATION);
        exit;
      end;
    end;
  end;
  if not edEnvia.Checked then begin
    if edestino.Text = '' then begin
      Application.MessageBox('Informe o Diretório de destino','Atenção!',MB_ICONINFORMATION);
      edestino.SetFocus;
      exit;
    end;
  end else begin
    Ret := FindFirst(edestino.Text+'\*.*', faAnyFile, F);
    while Ret = 0 do begin
      if (F.Name <> '.') And (F.Name <> '..')  then begin
        DeleteFile(edestino.Text+'\'+F.Name);
      end;
      Ret := FindNext(F);
    end;
  end;
  if PageControl1.ActivePageIndex = 0 then begin
    if not(qrnota.Active) or (qrnota.IsEmpty) then begin
      Application.MessageBox('Não existe nota para exportar o xml','Atenção!',MB_ICONINFORMATION);
      edInicio.SetFocus;
      exit;
    end;
    if not DirectoryExists(edestino.Text) then
      ForceDirectories(edestino.Text);
    qrnota.First;
    nao := False;
    while not qrnota.Eof do begin
      if FileExists(qrnotaNFE_XML.Text) then begin
        xml := ExtractFileName(qrnotaNFE_XML.Text);
        if not CopyFile(pWideChar(qrnotaNFE_XML.Text),pWideChar(edestino.Text+'\'+xml),false) then
          nao:=True;
      end;
      qrnota.Next;
    end;
  end else if PageControl1.ActivePageIndex = 1 then begin
    if not(qrNFCe.Active) or (qrNFCe.IsEmpty) then begin
      Application.MessageBox('Não existe nota para exportar o xml','Atenção!',MB_ICONINFORMATION);
      IniNFCE.SetFocus;
      exit;
    end;
    if not DirectoryExists(edestino.Text) then
      ForceDirectories(edestino.Text);
    qrNFCe.First;
    nao := False;
    while not qrNFCe.Eof do begin
      if FileExists(edestino.Text+'\'+qrNFCeCHAVE.AsString+'-nfe.xml') then begin
        if not DeleteFile(edestino.Text+'\'+qrNFCeCHAVE.AsString+'-nfe.xml') then
          nao:=True
        else
          qrNFCeXMLENVIO.SaveToFile(edestino.Text+'\'+qrNFCeCHAVE.AsString+'-nfe.xml');
      end else
        qrNFCeXMLENVIO.SaveToFile(edestino.Text+'\'+qrNFCeCHAVE.AsString+'-nfe.xml');
      qrNFCe.Next;
    end;
  end else begin
    if not(qrSat.Active) or (qrSat.IsEmpty) then begin
      Application.MessageBox('Não existe nota para exportar o xml','Atenção!',MB_ICONINFORMATION);
      edInicioSat.SetFocus;
      exit;
    end;
    if edestino.Text = '' then begin
      Application.MessageBox('Informe o Diretório de destino','Atenção!',MB_ICONINFORMATION);
      edestino.SetFocus;
      exit;
    end;
    if not DirectoryExists(edestino.Text) then
      ForceDirectories(edestino.Text);
    qrSat.First;
    nao := False;
    while not qrSat.Eof do begin
      qrSatXML_ENVIO.SaveToFile(pWideChar(edestino.Text+'\CFe'+qrSatCHAVE.AsString+'.xml'));
      qrSat.Next;
    end;
  end;
  if nao then
    Application.MessageBox('Um ou Mais XMLs não foram copiados.','Atenção!',MB_ICONINFORMATION)
  else if not edEnvia.Checked then begin
    Application.MessageBox('Arquivos copiados para a pasta de destino com sucesso!','Atenção!',MB_ICONINFORMATION);
    ShellExecute(Application.Handle,'open',Pchar(edestino.Text),nil, nil, SW_SHOWNORMAL);
  end;
  if edEnvia.Checked then begin
    ForceDirectories(PathWithDelim(ExtractFilePath(Application.ExeName))+'tmp');
    if PageControl1.ActivePageIndex = 0 then begin
      arquivo := PathWithDelim(ExtractFilePath(Application.ExeName))+'tmp\xml_nfe_'+FormatDateTime('DDMMYYYY',edInicio.Date)+'_a_'+FormatDateTime('DDMMYYYY',edFim.Date);
      Assunto := 'XML de NFEs ' + frmmodulo.qrFilialFILIAL.AsString;
      mBody.Lines.Add('Segue em anexo Arquivo compactado com os xmls das NFes de acordo com os dados abaixo:');
      mBody.Lines.Add('');
      mBody.Lines.Add('');
      mBody.Lines.Add('Empresa: ' + frmmodulo.qrFilialFILIAL.AsString);
      mBody.Lines.Add('CNPJ: ' + frmmodulo.qrFilialCNPJ.AsString);
      mBody.Lines.Add('Período: ' + FormatDateTime('DD/MM/YYYY',edInicio.Date) + ' a ' + FormatDateTime('DD/MM/YYYY',edFim.Date));
    end else if PageControl1.ActivePageIndex = 1 then begin
      arquivo := PathWithDelim(ExtractFilePath(Application.ExeName))+'tmp\xml_nfce_'+FormatDateTime('DDMMYYYY',IniNFCE.Date)+'_a_'+FormatDateTime('DDMMYYYY',FimNFCe.Date);
      Assunto := 'XML de NFCEs ' + frmmodulo.qrFilialFILIAL.AsString;
      mBody.Lines.Add('Segue em anexo Arquivo compactado com os xmls das NFCes de acordo com os dados abaixo:');
      mBody.Lines.Add('');
      mBody.Lines.Add('');
      mBody.Lines.Add('Empresa: ' + frmmodulo.qrFilialFILIAL.AsString);
      mBody.Lines.Add('CNPJ: ' + frmmodulo.qrFilialCNPJ.AsString);
      mBody.Lines.Add('Período: ' + FormatDateTime('DD/MM/YYYY',IniNFCE.Date) + ' a ' + FormatDateTime('DD/MM/YYYY',FimNFCe.Date));
    end else begin
      arquivo := PathWithDelim(ExtractFilePath(Application.ExeName))+'tmp\xml_sat_'+FormatDateTime('DDMMYYYY',edInicioSat.Date)+'_a_'+FormatDateTime('DDMMYYYY',edFimSat.Date);
      Assunto := 'XML de NFCEs ' + frmmodulo.qrFilialFILIAL.AsString;
      mBody.Lines.Add('Segue em anexo Arquivo compactado com os xmls dos SATs de acordo com os dados abaixo:');
      mBody.Lines.Add('');
      mBody.Lines.Add('');
      mBody.Lines.Add('Empresa: ' + frmmodulo.qrFilialFILIAL.AsString);
      mBody.Lines.Add('CNPJ: ' + frmmodulo.qrFilialCNPJ.AsString);
      mBody.Lines.Add('Período: ' + FormatDateTime('DD/MM/YYYY',edInicioSat.Date) + ' a ' + FormatDateTime('DD/MM/YYYY',edFimSat.Date));
    end;
    arquivo := arquivo + '.zip';
    mBody.Lines.Add('');
    mBody.Lines.Add('');
    mBody.Lines.Add('');
    mBody.Lines.Add(frmmodulo.qrFilialFILIAL.AsString);
    try
      pnEnvia.Visible := True;
      Application.ProcessMessages;
      CompactaPasta(arquivo,edestino.Text);
      ACBrMail1.Clear;
      ACBrMail1.IsHTML := False;
      ACBrMail1.Host := frmmodulo.qrconfigEMAIL_SERVIDOR_SMTP.AsString;
      ACBrMail1.Port := frmmodulo.qrconfigEMAIL_PORTA.AsString;
      ACBrMail1.Username := frmmodulo.qrconfigEMAIL_USUARIO.AsString;
      ACBrMail1.Password := frmmodulo.qrconfigEMAIL_SENHA.AsString;
      ACBrMail1.From := frmmodulo.qrFilialEMAIL.AsString;
      ACBrMail1.SetSSL := frmmodulo.qrconfigEMAIL_SSL.AsString = 'S';
      ACBrMail1.SetTLS := frmmodulo.qrconfigEMAIL_TLS.AsString = 'S';
      ACBrMail1.DefaultCharset := TMailCharset(27);
      ACBrMail1.IDECharset := TMailCharset(15);
      ACBrMail1.ReadingConfirmation := False;
      ACBrMail1.UseThread := False;
      ACBrMail1.FromName := frmmodulo.qrFilialFILIAL.AsString;
      ACBrMail1.AddAddress(frmmodulo.qrFilialCONTADOR_EMAIL.asstring, frmmodulo.qrFilialCONTADOR_NOME.asstring);
      ACBrMail1.Subject := Assunto;
      ACBrMail1.AltBody.Assign(mBody.Lines);
      ACBrMail1.AddAttachment(arquivo);
      ACBrMail1.Send(False);
      Application.messagebox('E-mail enviado com sucesso!', 'Atenção!', MB_ICONINFORMATION);
    finally
      pnEnvia.Visible := False;
    end;
  end;
end;

procedure TFRMExportaXML.eclienteButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(Self);
  frmxloc_cliente.ShowModal;
  if resultado_pesquisa1 <> '' then begin
    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo = ''' + resultado_pesquisa1 + '''');
    qrcliente.open;
    ecliente.text := qrcliente.fieldbyname('codigo').asstring;
    enomecliente.text := qrcliente.fieldbyname('nome').asstring;
  end else
    ecliente.setfocus;
end;

procedure TFRMExportaXML.eclienteExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if trim(ecliente.Text) = '' then
    Exit;
  ecliente.text := frmprincipal.zerarcodigo(ecliente.text, 6);
  if ecliente.text <> '000000' then begin
    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo = ''' +
      ecliente.text + '''');
    qrcliente.open;
    if qrcliente.recordcount = 0 then begin
      application.messagebox('Cliente não encontrado!', 'Atenção!',
        mb_ok + mb_iconwarning);
      eclienteButtonClick(frmExportaXML);
    end else begin
      ecliente.text := qrcliente.fieldbyname('codigo').asstring;
      enomecliente.text := qrcliente.fieldbyname('nome').asstring;
    end;
  end else
    ecliente.Clear;
end;

procedure TFRMExportaXML.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TFRMExportaXML.edEnviaClick(Sender: TObject);
begin
  if edEnvia.Checked then begin
    edestino.Clear;
    edestino.Text := PathWithDelim(ExtractFilePath(Application.ExeName))+'tmp\xml';
    edestino.Enabled := False;
  end else begin
    edestino.Enabled := True;
  end;
end;

procedure TFRMExportaXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFRMExportaXML.FormShow(Sender: TObject);
begin
  edInicio.Date :=  StartOfTheMonth(Date-30);
  edFim.Date := EndOfTheMonth(Date-30);
  IniNFCE.Date :=  StartOfTheMonth(Date-30);
  FimNFCe.Date := EndOfTheMonth(Date-30);
  edInicioSat.Date :=  StartOfTheMonth(Date-30);
  edFimSat.Date := EndOfTheMonth(Date-30);
end;

end.

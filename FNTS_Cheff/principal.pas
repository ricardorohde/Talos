unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ComCtrls, ExtCtrls, StdCtrls, RzPanel, Mask,
  RzEdit, DB, MemDS, DBAccess, NxColumns, NxColumnClasses,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ACBrBase, ACBrBAL,
  Menus, registry, ACBrDevice, WinXP,
  AdvOfficeImage, AdvOfficeStatusBar, sSkinManager, AdvPanel,
  AdvSmoothTouchKeyBoard, AdvTouchKeyboard, AdvReflectionImage,
  Datasnap.DBClient, ResizeKit, AdvSmoothPanel, AdvSmoothExpanderPanel,
  AdvSmoothExpanderButtonPanel,
  AdvFocusHelper, AdvMetroButton, dxGDIPlusClasses, LockApplication,
  TFlatHintUnit, Vcl.Buttons, cyBaseSpeedButton, cySpeedButton, Uni,
  IniFiles, MidasLib;

type
  TfrmPrincipal = class(TForm)
    PopupMenu1: TPopupMenu;
    Comanda1: TMenuItem;
    N1: TMenuItem;
    Consumo1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    timer_mesa_aberta: TTimer;
    wnxp1: TWinXP;
    Panel4: TPanel;
    Panel1: TPanel;
    pnl1: TPanel;
    pnl3: TPanel;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    AdvPanel1: TAdvPanel;
    AdvPanel5: TAdvPanel;
    AdvPanel6: TAdvPanel;
    Panel19: TPanel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    imgVerde: TAdvOfficeImage;
    imgLar: TAdvOfficeImage;
    imgVerm: TAdvOfficeImage;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    S1: TMenuItem;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label17: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    ResizeKit1: TResizeKit;
    Image1: TImage;
    bt_mesa_001: TAdvGlowButton;
    AdvGlowButton239: TAdvGlowButton;
    AdvGlowButton238: TAdvGlowButton;
    AdvGlowButton237: TAdvGlowButton;
    AdvGlowButton236: TAdvGlowButton;
    AdvGlowButton235: TAdvGlowButton;
    AdvGlowButton234: TAdvGlowButton;
    AdvGlowButton233: TAdvGlowButton;
    AdvGlowButton232: TAdvGlowButton;
    AdvGlowButton231: TAdvGlowButton;
    AdvGlowButton230: TAdvGlowButton;
    AdvGlowButton229: TAdvGlowButton;
    AdvGlowButton228: TAdvGlowButton;
    AdvGlowButton227: TAdvGlowButton;
    AdvGlowButton226: TAdvGlowButton;
    AdvGlowButton210: TAdvGlowButton;
    AdvGlowButton209: TAdvGlowButton;
    AdvGlowButton208: TAdvGlowButton;
    AdvGlowButton207: TAdvGlowButton;
    AdvGlowButton206: TAdvGlowButton;
    AdvGlowButton205: TAdvGlowButton;
    AdvGlowButton204: TAdvGlowButton;
    AdvGlowButton203: TAdvGlowButton;
    AdvGlowButton202: TAdvGlowButton;
    AdvGlowButton201: TAdvGlowButton;
    AdvGlowButton200: TAdvGlowButton;
    AdvGlowButton199: TAdvGlowButton;
    AdvGlowButton198: TAdvGlowButton;
    AdvGlowButton197: TAdvGlowButton;
    AdvGlowButton196: TAdvGlowButton;
    AdvGlowButton180: TAdvGlowButton;
    AdvGlowButton179: TAdvGlowButton;
    AdvGlowButton178: TAdvGlowButton;
    AdvGlowButton177: TAdvGlowButton;
    AdvGlowButton176: TAdvGlowButton;
    AdvGlowButton175: TAdvGlowButton;
    AdvGlowButton174: TAdvGlowButton;
    AdvGlowButton173: TAdvGlowButton;
    AdvGlowButton172: TAdvGlowButton;
    AdvGlowButton171: TAdvGlowButton;
    AdvGlowButton170: TAdvGlowButton;
    AdvGlowButton169: TAdvGlowButton;
    AdvGlowButton168: TAdvGlowButton;
    AdvGlowButton167: TAdvGlowButton;
    AdvGlowButton166: TAdvGlowButton;
    AdvGlowButton150: TAdvGlowButton;
    AdvGlowButton149: TAdvGlowButton;
    AdvGlowButton148: TAdvGlowButton;
    AdvGlowButton147: TAdvGlowButton;
    AdvGlowButton146: TAdvGlowButton;
    AdvGlowButton145: TAdvGlowButton;
    AdvGlowButton144: TAdvGlowButton;
    AdvGlowButton143: TAdvGlowButton;
    AdvGlowButton142: TAdvGlowButton;
    AdvGlowButton141: TAdvGlowButton;
    AdvGlowButton140: TAdvGlowButton;
    AdvGlowButton139: TAdvGlowButton;
    AdvGlowButton138: TAdvGlowButton;
    AdvGlowButton137: TAdvGlowButton;
    AdvGlowButton136: TAdvGlowButton;
    AdvGlowButton120: TAdvGlowButton;
    AdvGlowButton119: TAdvGlowButton;
    AdvGlowButton118: TAdvGlowButton;
    AdvGlowButton117: TAdvGlowButton;
    AdvGlowButton116: TAdvGlowButton;
    AdvGlowButton115: TAdvGlowButton;
    AdvGlowButton114: TAdvGlowButton;
    AdvGlowButton113: TAdvGlowButton;
    AdvGlowButton112: TAdvGlowButton;
    AdvGlowButton111: TAdvGlowButton;
    AdvGlowButton110: TAdvGlowButton;
    AdvGlowButton109: TAdvGlowButton;
    AdvGlowButton108: TAdvGlowButton;
    AdvGlowButton107: TAdvGlowButton;
    AdvGlowButton106: TAdvGlowButton;
    AdvGlowButton90: TAdvGlowButton;
    AdvGlowButton89: TAdvGlowButton;
    AdvGlowButton88: TAdvGlowButton;
    AdvGlowButton87: TAdvGlowButton;
    AdvGlowButton86: TAdvGlowButton;
    AdvGlowButton85: TAdvGlowButton;
    AdvGlowButton84: TAdvGlowButton;
    AdvGlowButton83: TAdvGlowButton;
    AdvGlowButton82: TAdvGlowButton;
    AdvGlowButton81: TAdvGlowButton;
    AdvGlowButton80: TAdvGlowButton;
    AdvGlowButton79: TAdvGlowButton;
    AdvGlowButton78: TAdvGlowButton;
    AdvGlowButton77: TAdvGlowButton;
    AdvGlowButton76: TAdvGlowButton;
    AdvGlowButton60: TAdvGlowButton;
    AdvGlowButton59: TAdvGlowButton;
    AdvGlowButton58: TAdvGlowButton;
    AdvGlowButton57: TAdvGlowButton;
    AdvGlowButton56: TAdvGlowButton;
    AdvGlowButton55: TAdvGlowButton;
    AdvGlowButton54: TAdvGlowButton;
    AdvGlowButton53: TAdvGlowButton;
    AdvGlowButton52: TAdvGlowButton;
    AdvGlowButton51: TAdvGlowButton;
    AdvGlowButton50: TAdvGlowButton;
    AdvGlowButton49: TAdvGlowButton;
    AdvGlowButton48: TAdvGlowButton;
    AdvGlowButton47: TAdvGlowButton;
    AdvGlowButton46: TAdvGlowButton;
    AdvGlowButton45: TAdvGlowButton;
    AdvGlowButton44: TAdvGlowButton;
    AdvGlowButton43: TAdvGlowButton;
    AdvGlowButton42: TAdvGlowButton;
    AdvGlowButton41: TAdvGlowButton;
    AdvGlowButton40: TAdvGlowButton;
    AdvGlowButton39: TAdvGlowButton;
    AdvGlowButton38: TAdvGlowButton;
    AdvGlowButton37: TAdvGlowButton;
    AdvGlowButton36: TAdvGlowButton;
    AdvGlowButton35: TAdvGlowButton;
    bt_comanda: TAdvGlowButton;
    AdvSmoothExpanderPanel2: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel3: TAdvSmoothExpanderPanel;
    grid: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    NxTextColumn11: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn13: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    NxTextColumn15: TNxTextColumn;
    NxTextColumn16: TNxTextColumn;
    NxTextColumn17: TNxTextColumn;
    NxTextColumn18: TNxTextColumn;
    NxTextColumn19: TNxTextColumn;
    NxTextColumn20: TNxTextColumn;
    NxTextColumn21: TNxTextColumn;
    NxTextColumn22: TNxTextColumn;
    NxTextColumn23: TNxTextColumn;
    NxTextColumn24: TNxTextColumn;
    NxTextColumn25: TNxTextColumn;
    NxTextColumn26: TNxTextColumn;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    NxTextColumn27: TNxTextColumn;
    NxTextColumn28: TNxTextColumn;
    NxTextColumn29: TNxTextColumn;
    Image2: TImage;
    Label9: TLabel;
    Image3: TImage;
    store_protect: TLockApplication;
    FlatHint1: TFlatHint;
    query: TUniQuery;
    qrmesa_aberta: TUniQuery;
    qrbuffer: TUniQuery;
    qrapoio: TUniQuery;
    qrConsumo: TUniQuery;
    cySpeedButton1: TcySpeedButton;
    AdvSmoothExpanderPanel22: TAdvSmoothExpanderPanel;
    L1: TMenuItem;
    Panel2: TPanel;
    AdvSmoothExpanderPanel4: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel5: TAdvSmoothExpanderPanel;
    pn_consumo: TAdvSmoothExpanderPanel;
    btnLancar: TAdvGlowButton;
    AdvSmoothExpanderPanel6: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel7: TAdvSmoothExpanderPanel;
    RzPanel1: TRzPanel;
    AdvSmoothExpanderPanel17: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel18: TAdvSmoothExpanderPanel;
    pn_mesa: TRzPanel;
    bt_consumo: TAdvGlowButton;
    AdvSmoothExpanderPanel11: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel12: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel13: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel14: TAdvSmoothExpanderPanel;
    lb_mesa: TLabel;
    AdvSmoothExpanderPanel15: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel16: TAdvSmoothExpanderPanel;
    lb_funci: TLabel;
    AdvSmoothExpanderPanel23: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel24: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel25: TAdvSmoothExpanderPanel;
    lb_data: TLabel;
    AdvSmoothExpanderPanel26: TAdvSmoothExpanderPanel;
    lb_hora: TLabel;
    AdvSmoothExpanderPanel19: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel20: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel21: TAdvSmoothExpanderPanel;
    Label1: TLabel;
    ed_total_comanda: TRzNumericEdit;
    btcancelar: TAdvGlowButton;
    AdvMetroButton3: TAdvMetroButton;
    procedure bt_comandaClick(Sender: TObject);
    procedure bt_mesa_001Click(Sender: TObject);
    procedure pg_principalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure bt_consumoClick(Sender: TObject);
    procedure ed_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeExit(Sender: TObject);
    procedure btnLancarClick(Sender: TObject);
    procedure Mess1Click(Sender: TObject);
    procedure Consumo1Click(Sender: TObject);
    procedure bt_balancaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure ed_qtdeEnter(Sender: TObject);
    procedure timer_mesa_abertaTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
    procedure Balana1Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GravaIni(sArquivo, Secao, Linha, Valor: string);
    function LerIni(sArquivo, Secao, Linha, Def: string): string;
    procedure desmarca();
    procedure localiza_mesa(mesa: Integer);
    function somenteNumero(sNum: string): string;
    function zerarcodigo(codigo: string; Qtde: Integer): string;

  end;

var
  frmPrincipal: TfrmPrincipal;
  resultado_pesquisa: string;
  sFunci, snome_funci: string;
  UtilizaGerenciadorImpressao:Boolean;

  bContinua_mesa: boolean;
  // flag para verificar se foi efetivado o lancado da mesa
  sMesa_Numero: string;

implementation

uses comanda, Modulo, mesa_consumo, loc_produto, balanca, mesa_abertura,
  Unit_ativar, Consumo, Config;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.desmarca();
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TAdvGlowButton) then
    begin
      if TAdvGlowButton(Components[i]).Down then
      begin
        TAdvGlowButton(Components[i]).Picture := imgVerde.Picture;
        TAdvGlowButton(Components[i]).Refresh;
      end;
    end;

  pn_consumo.Enabled := false;
  lb_data.Caption := '';
  lb_hora.Caption := '';
  lb_mesa.Caption := '';
  ed_total_comanda.value := 0;
  pn_mesa.Enabled := false;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.localiza_mesa(mesa: Integer);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TAdvGlowButton) then
    begin
      if TAdvGlowButton(Components[i]).Tag = mesa then
      begin
        TAdvGlowButton(Components[i]).Appearance.ColorCheckedTo := $0078C7FE;
        TAdvGlowButton(Components[i]).Appearance.ColorChecked := $00B5DBFB;
        TAdvGlowButton(Components[i]).Appearance.ColorMirrorChecked :=
          $009FEBFD;
        TAdvGlowButton(Components[i]).Appearance.ColorMirrorCheckedTo :=
          $0056B4FE;
        TAdvGlowButton(Components[i]).Down := true;
        TAdvGlowButton(Components[i]).Refresh;
        break;
      end;
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_comandaClick(Sender: TObject);
var
  bparar: boolean;
  i, x: Integer;
  sMesa: string;
begin
  desmarca;
  bContinua_mesa := false;
  frmComanda := tfrmComanda.create(self);
  frmComanda.showmodal;
  if bContinua_mesa then begin
    if strtoint(lb_mesa.Caption) < 117 then begin
      sMesa := lb_mesa.Caption;
      desmarca;
      lb_mesa.Caption := sMesa;
      // verificar se a mesa já estah aberta
      query.close;
      query.sql.clear;
      query.sql.add('select * from r000001');
      query.sql.add('where codigo = ' + inttostr(strtoint(lb_mesa.Caption)));
      query.open;
      if query.RecordCount > 0 then begin
        lb_data.Caption := query.fieldbyname('data').asstring;
        lb_hora.Caption := query.fieldbyname('hora').asstring;
        qrConsumo.close;
        qrConsumo.sql.clear;
        qrConsumo.sql.add('select sum(total) as soma from r000002');
        qrConsumo.sql.add('where cod_mesa = ' + inttostr(strtoint(lb_mesa.Caption)));
        qrConsumo.sql.add('and cancelado = 0');
        qrConsumo.open;
        ed_total_comanda.value := qrConsumo.fieldbyname('soma').asfloat;
      end else begin
        bContinua_mesa := false;
        sFunci := '';
        snome_funci := '';
        frmmesa_abertura := tfrmmesa_abertura.create(self);
        frmmesa_abertura.lb_mesa.Caption := TAdvGlowButton(Sender).Caption;
        frmmesa_abertura.showmodal;
        if bContinua_mesa then begin
          // lancar a data e hora
          lb_funci.Caption := snome_funci;
          lb_mesa.Caption := TAdvGlowButton(Sender).Caption;
          lb_data.Caption := DateToStr(date);
          lb_hora.Caption := TimeToStr(time);
          ed_total_comanda.value := 0;
          frmModulo.qrConfig.Close;
          frmModulo.qrConfig.Open;
          frmmodulo.st_Mesa_Abertura.close;
          frmmodulo.st_Mesa_Abertura.ParamByName('codigo').asinteger := strtoint(sMesa);
          frmmodulo.st_Mesa_Abertura.ParamByName('data').asdatetime := date;
          frmmodulo.st_Mesa_Abertura.ParamByName('hora').asstring := TimeToStr(time);
          frmmodulo.st_Mesa_Abertura.ParamByName('cod_funcionario').asstring := sFunci;
          if frmModulo.qrConfigCOBRA_COMISSAO.AsString = 'O' then begin
            frmmodulo.st_Mesa_Abertura.ParamByName('cliente_autorizou').AsString:= 'S';
            frmmodulo.st_Mesa_Abertura.ParamByName('perguntou_comissao').AsString:= 'S';
          end else begin
            frmmodulo.st_Mesa_Abertura.ParamByName('cliente_autorizou').AsString:= 'N';
            frmmodulo.st_Mesa_Abertura.ParamByName('perguntou_comissao').AsString:= 'N';
          end;
          frmmodulo.st_Mesa_Abertura.Prepare;
          frmmodulo.st_Mesa_Abertura.Execute;
        end else begin
          desmarca;
          TAdvGlowButton(Sender).Down := false;
          exit;
        end;
      end;
      localiza_mesa(strtoint(lb_mesa.Caption));
    end else begin
      bparar := false;

      for i := 0 to 9 do begin
        for x := 0 to 12 do begin
          if grid.Cell[x, i].asstring <> '' then begin
            if grid.Cell[x, i].asstring = lb_mesa.Caption then begin
              bparar := true;
              break;
            end;
          end else begin
            bparar := true;
            grid.Cell[x, i].asstring := lb_mesa.Caption;
            break;
          end;
        end;
        if bparar then
          break;
      end;
    end;
    pn_consumo.Enabled := true;
    pn_mesa.Enabled := true;
  end else begin
    lb_funci.Caption := '';
    lb_mesa.Caption := '';
    lb_data.Caption := '';
    lb_hora.Caption := '';
    ed_total_comanda.value := 0;
  end;
  timer_mesa_abertaTimer(timer_mesa_aberta);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_mesa_001Click(Sender: TObject);
begin
  desmarca;
  TAdvGlowButton(Sender).Picture := imgVerm.Picture;
  TAdvGlowButton(Sender).Refresh;

  lb_funci.Caption := '';
  lb_mesa.Caption := '';
  lb_data.Caption := '';
  lb_hora.Caption := '';
  ed_total_comanda.value := 0;

  // verificar se a mesa já estah aberta
  query.close;
  query.sql.clear;
  query.sql.add('select * from r000001');
  query.sql.add('where codigo = ' + inttostr(strtoint(TAdvGlowButton(Sender).Caption)));
  query.open;
  if query.RecordCount > 0 then begin
    lb_mesa.Caption := TAdvGlowButton(Sender).Caption;
    lb_data.Caption := query.fieldbyname('data').asstring;
    lb_hora.Caption := query.fieldbyname('hora').asstring;

    qrapoio.close;
    qrapoio.sql.clear;
    qrapoio.sql.add('select nome from c000008 where codigo = ''' + query.fieldbyname('cod_funcionario').asstring + '''');
    qrapoio.open;

    lb_funci.Caption := qrapoio.fieldbyname('nome').asstring;

    qrConsumo.close;
    qrConsumo.sql.clear;
    qrConsumo.sql.add('select sum(total) as soma from r000002');
    qrConsumo.sql.add('where cod_mesa = ' + inttostr(strtoint(TAdvGlowButton(Sender).Caption)));
    qrConsumo.sql.add('and cancelado = 0');
    qrConsumo.open;
    ed_total_comanda.value := qrConsumo.fieldbyname('soma').asfloat;
    btcancelar.Enabled := ed_total_comanda.value <= 0;
  end else begin

    bContinua_mesa := false;
    sFunci := '';
    snome_funci := '';
    if bContinua_mesa then
    begin
      // lancar a data e hora
      lb_funci.Caption := snome_funci;
      lb_mesa.Caption := TAdvGlowButton(Sender).Caption;
      lb_data.Caption := DateToStr(date);
      lb_hora.Caption := TimeToStr(time);
      ed_total_comanda.value := 0;
      frmModulo.qrConfig.Close;
      frmModulo.qrConfig.Open;
      frmmodulo.st_Mesa_Abertura.close;
      frmmodulo.st_Mesa_Abertura.ParamByName('codigo').asinteger := strtoint(TAdvGlowButton(Sender).Caption);
      frmmodulo.st_Mesa_Abertura.ParamByName('data').asdatetime := date;
      frmmodulo.st_Mesa_Abertura.ParamByName('hora').asstring := TimeToStr(time);
      frmmodulo.st_Mesa_Abertura.ParamByName('cod_funcionario').asstring := sFunci;
      if frmModulo.qrConfigCOBRA_COMISSAO.AsString = 'O' then begin
        frmmodulo.st_Mesa_Abertura.ParamByName('cliente_autorizou').AsString:= 'S';
        frmmodulo.st_Mesa_Abertura.ParamByName('perguntou_comissao').AsString:= 'S';
      end else begin
        frmmodulo.st_Mesa_Abertura.ParamByName('cliente_autorizou').AsString:= 'N';
        frmmodulo.st_Mesa_Abertura.ParamByName('perguntou_comissao').AsString:= 'N';
      end;
      frmmodulo.st_Mesa_Abertura.Prepare;
      frmmodulo.st_Mesa_Abertura.Execute;
    end else begin
      desmarca;
      TAdvGlowButton(Sender).Picture := imgVerde.Picture;
      exit;
    end;
  end;

  TAdvGlowButton(Sender).Down := true;
  pn_consumo.Enabled := true;
  pn_mesa.Enabled := true;
  btnLancar.setfocus;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.pg_principalChange(Sender: TObject);
begin
  desmarca;
end;

procedure TfrmPrincipal.S1Click(Sender: TObject);
begin
  close
end;

function TfrmPrincipal.somenteNumero(sNum: string): string;
var
  S1, S2: string;
  i: Integer;
begin
  S1 := sNum;
  S2 := '';
  for i := 1 to Length(S1) do
    if S1[i] in ['0' .. '9'] then
      S2 := S2 + S1[i];
  result := S2;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  i, x: Integer;
  bparar: boolean;
  Registro: TRegistry;
begin
  //store_protect.IDSistema := 291304;
  //store_protect.executar;
  Image1.Picture.LoadFromFile('C:\TALOS\server\img\fundocomanda.jpg');
  // Abrindo Registro do Windows para buscar configuracoes
  Registro := TRegistry.create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;

  frmmodulo := TfrmModulo.create(self);
  frmmodulo.Conexao.Connected := false;
  frmmodulo.Conexao.Server := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'SERVIDOR', 'localhost');
  frmmodulo.Conexao.Database := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'BDSERVIDOR', 'C:\TALOS\server\bd\base.fdb');
  frmmodulo.Conexao.Connected := true;

  frmmodulo.balanca.Desativar;
  frmmodulo.balanca.Ativo := false;

  if strtoint(LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Modelo', '0')) <> 0 then begin
    frmmodulo.balanca.Modelo :=  TACBrBALModelo(StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Modelo', '0')));
    frmmodulo.balanca.Device.HandShake := TACBrHandShake(StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Handshaking', '0')));
    frmmodulo.balanca.Device.Parity := TACBrSerialParity(StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Parity', '0')));
    frmmodulo.balanca.Device.Stop := TACBrSerialStop(StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Stopbits', '0')));
    frmmodulo.balanca.Device.Porta := LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Porta', '');
    frmmodulo.balanca.Device.Data  :=  StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Databits', '0'));
    frmmodulo.balanca.Device.Baud :=  StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Baudrate', '0'));
    frmmodulo.balanca.Device.TimeOut :=  StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Timeout', ''));
  end;
  Caption := Caption + '   Servidor: ' + frmmodulo.Conexao.Server;

  grid.ClearRows;
  grid.AddRow(10);

  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TAdvGlowButton) then
    begin
      TAdvGlowButton(Components[i]).Down := false;
    end;

  // limpar o buffer de mesas jah encerradas
  query.close;
  query.sql.clear;
  query.sql.add('delete from r000003');
  query.execsql;

  // lancando as mesas em aberto
  query.close;
  query.sql.clear;
  query.sql.add('select * from r000001');
  query.sql.add('order by codigo');
  query.open;
  query.first;

  while not query.eof do begin
    if query.fieldbyname('codigo').asinteger < 117 then begin
      for i := 0 to ComponentCount - 1 do
        if (Components[i] is TAdvGlowButton) then
        begin
          if TAdvGlowButton(Components[i]).Tag = query.fieldbyname('codigo').asinteger
          then
          begin
            // TAdvGlowButton(Components[i]).Down := true;
            TAdvGlowButton(Components[i]).Picture := imgVerm.Picture;
          end;
        end;
    end
    else
    begin
      bparar := false;
      for i := 0 to 9 do
      begin
        for x := 0 to 12 do
        begin
          if grid.Cell[x, i].asstring = '' then
          begin
            grid.Cell[x, i].asstring := query.fieldbyname('codigo').asstring;
            bparar := true;
            break;
          end;
        end;
        if bparar then
          break;
      end;
    end;
    query.next;
  END;

  timer_mesa_aberta.Enabled := true;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.gridCellClick(Sender: TObject; ACol, ARow: Integer);
begin
  desmarca;

  if grid.Cell[ACol, ARow].asstring <> '' then
  begin
    lb_mesa.Caption := grid.Cell[ACol, ARow].asstring;
    // verificar se a mesa já estah aberta
    query.close;
    query.sql.clear;
    query.sql.add('select * from r000001');
    query.sql.add('where codigo = ' + inttostr(strtoint(grid.Cell[ACol,
      ARow].asstring)));
    query.open;
    if query.RecordCount > 0 then
    begin
      lb_data.Caption := query.fieldbyname('data').asstring;
      lb_hora.Caption := query.fieldbyname('hora').asstring;

      qrConsumo.close;
      qrConsumo.sql.clear;
      qrConsumo.sql.add('select sum(total) as soma from r000002');
      qrConsumo.sql.add('where cod_mesa = ' + inttostr(strtoint(grid.Cell[ACol,
        ARow].asstring)));
      qrConsumo.sql.add('and cancelado = 0');
      qrConsumo.open;
      ed_total_comanda.value := qrConsumo.fieldbyname('soma').asfloat;
      pn_consumo.Enabled := true;
      pn_mesa.Enabled := true;
      btnLancar.setfocus;
    END;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_consumoClick(Sender: TObject);
var
  i: Integer;
begin
  try
    timer_mesa_aberta.Enabled := false;
    if (Trim(lb_mesa.Caption) = '') or (Trim(lb_mesa.Caption) = '---') then begin
      Application.MessageBox('Selecione a Mesa!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
    timer_mesa_aberta.Enabled := false;

    qrConsumo.close;
    qrConsumo.sql.clear;
    qrConsumo.sql.add('select R000002.*, C000025.produto, C000025.unidade');
    qrConsumo.sql.add('from r000002, c000025');
    qrConsumo.sql.add('where r000002.cod_produto = c000025.codigo');
    qrConsumo.sql.add('and R000002.cod_mesa = ' +
      inttostr(strtoint(lb_mesa.Caption)));
    qrConsumo.sql.add('order by codigo');
    qrConsumo.open;
    qrConsumo.first;

    frmMesa_consumo := tfrmMesa_consumo.create(self);
    frmMesa_consumo.grid_consumo.ClearRows;

    while not qrConsumo.eof do
    begin
      i := frmMesa_consumo.grid_consumo.AddRow(1);
      frmMesa_consumo.grid_consumo.Cell[0, i].asinteger :=
        qrConsumo.fieldbyname('codigo').asinteger;
      frmMesa_consumo.grid_consumo.Cell[2, i].asstring :=
        qrConsumo.fieldbyname('cod_produto').asstring;
      frmMesa_consumo.grid_consumo.Cell[3, i].asstring :=
        qrConsumo.fieldbyname('produto').asstring;
      frmMesa_consumo.grid_consumo.Cell[4, i].asfloat :=
        qrConsumo.fieldbyname('qtde').asfloat;
      frmMesa_consumo.grid_consumo.Cell[5, i].asfloat :=
        qrConsumo.fieldbyname('unitario').asfloat;
      frmMesa_consumo.grid_consumo.Cell[6, i].asfloat :=
        qrConsumo.fieldbyname('total').asfloat;
      frmMesa_consumo.grid_consumo.Cell[7, i].asstring :=
        qrConsumo.fieldbyname('complemento').asstring;
      frmMesa_consumo.grid_consumo.Cell[8, i].asinteger :=
        qrConsumo.fieldbyname('cancelado').asinteger;
      qrConsumo.next;
    end;

    frmMesa_consumo.lb_mesa.Caption := lb_mesa.Caption;
    frmMesa_consumo.lb_data.Caption := lb_data.Caption;
    frmMesa_consumo.lb_hora.Caption := lb_hora.Caption;
    frmMesa_consumo.ed_total_comanda.value := ed_total_comanda.value;

    frmMesa_consumo.showmodal;

  finally
    timer_mesa_aberta.Enabled := true;
    timer_mesa_abertaTimer(timer_mesa_aberta);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_qtdeKeyPress(Sender: TObject; var Key: Char);
begin
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_qtdeExit(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.btnLancarClick(Sender: TObject);
begin
  try
    timer_mesa_aberta.Enabled := false;
    if (Trim(lb_mesa.Caption) = '') or (Trim(lb_mesa.Caption) = '---') then begin
      Application.MessageBox('Selecione a Mesa!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
    qrConsumo.close;
    qrConsumo.sql.clear;
    qrConsumo.sql.add('select R000002.*, C000025.produto, C000025.unidade');
    qrConsumo.sql.add('from r000002, c000025');
    qrConsumo.sql.add('where r000002.cod_produto = c000025.codigo');
    qrConsumo.sql.add('and R000002.cod_mesa = ' + inttostr(strtoint(lb_mesa.Caption)));
    qrConsumo.sql.add('order by codigo');
    qrConsumo.open;
    qrConsumo.first;

    Application.CreateForm(TfrmConsumo, frmConsumo);

    frmConsumo.lb_mesa.Caption := lb_mesa.Caption;
    frmConsumo.lb_data.Caption := lb_data.Caption;
    frmConsumo.lb_hora.Caption := lb_hora.Caption;
    frmConsumo.ed_total_comanda.value := ed_total_comanda.value;


    frmConsumo.ShowModal;
    ed_total_comanda.Value := frmConsumo.ed_total_comanda.Value;
    FreeAndNil(frmConsumo);
  finally
    timer_mesa_aberta.Enabled := true;
    timer_mesa_abertaTimer(timer_mesa_aberta);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Mess1Click(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Consumo1Click(Sender: TObject);
begin
  if bt_consumo.Enabled then
    bt_consumoClick(frmPrincipal);
end;

procedure TfrmPrincipal.cySpeedButton1Click(Sender: TObject);
begin
  form_ativar.ShowModal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_balancaClick(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.btcancelarClick(Sender: TObject);
var
  DataHora: TDateTime;
  str: string;
  SR: TSearchRec;
  i: Integer;
  Origem, Destino: string;
begin
  try
    timer_mesa_aberta.Enabled := false;
    if (Trim(lb_mesa.Caption) = '') or (Trim(lb_mesa.Caption) = '---') then begin
      Application.MessageBox('Selecione a Mesa!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
    qrConsumo.close;
    qrConsumo.sql.clear;
    qrConsumo.sql.add('select R000002.*, C000025.produto, C000025.unidade');
    qrConsumo.sql.add('from r000002, c000025');
    qrConsumo.sql.add('where r000002.cod_produto = c000025.codigo');
    qrConsumo.sql.add('and R000002.cod_mesa = ' + inttostr(strtoint(lb_mesa.Caption)));
    qrConsumo.sql.add('order by codigo');
    qrConsumo.open;
    qrConsumo.first;

    if qrConsumo.RecordCount > 0 then begin
      application.messagebox('Esta mesa possue consumo!' + #13 +
        'Faça o cancelamento dos itens e posteriormente emita o seu cupom fiscal!',
        'Atenção', mb_ok + mb_iconerror);
      exit;
    end;

    if application.messagebox('Confirma o cancelamento desta mesa?', 'Atenção', mb_yesno + mb_iconwarning) = idYes then begin
      query.close;
      query.sql.clear;
      query.sql.add('delete from r000001 where codigo = ' + inttostr(strtoint(lb_mesa.Caption)));
      query.execsql;
      desmarca;
      frmPrincipal.FormShow(frmPrincipal);
    end;
  finally
    timer_mesa_aberta.Enabled := true;
    timer_mesa_abertaTimer(timer_mesa_aberta);
  end;
end;

procedure TfrmPrincipal.AdvMetroButton1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmPrincipal.AdvMetroButton2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.AdvMetroButton3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmConfig, frmConfig);
  frmConfig.ShowModal;
  FreeAndNil(frmConfig);
  UtilizaGerenciadorImpressao := LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'Gerenciador_Impressao', 'N') = 'S';
end;

procedure TfrmPrincipal.Balana1Click(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Confirma o encerramento do sistema?', 'Aviso',
    mb_yesno + MB_ICONWARNING) = idNo then
  begin
    abort;
  end
  else
  begin
    action := cafree;
  end;
    frmmodulo.Destroy;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  UtilizaGerenciadorImpressao := LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'Gerenciador_Impressao', 'N') = 'S';
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_cancelarClick(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_qtdeEnter(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.timer_mesa_abertaTimer(Sender: TObject);
var
  i, x: Integer;
  bparar: boolean;

begin
  grid.ClearRows;
  grid.ClearRows;
  grid.AddRow(10);

  timer_mesa_aberta.Enabled := false;

  // lancando as mesas em aberto
  qrmesa_aberta.close;
  qrmesa_aberta.sql.clear;
  qrmesa_aberta.sql.add('select * from r000001');
  qrmesa_aberta.sql.add('order by codigo');
  qrmesa_aberta.open;
  qrmesa_aberta.first;

  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TAdvGlowButton) then
    begin
      // TAdvGlowButton(Components[i]).Down := false;
      if TAdvGlowButton(Components[i]).Tag <> 99 then
        TAdvGlowButton(Components[i]).Picture := imgVerde.Picture;
    end;

  while not qrmesa_aberta.eof do
  begin
    if qrmesa_aberta.fieldbyname('codigo').asinteger < 117 then
    begin
      for i := 0 to ComponentCount - 1 do
        if (Components[i] is TAdvGlowButton) then
        begin
          if TAdvGlowButton(Components[i]).Tag = qrmesa_aberta.fieldbyname
            ('codigo').asinteger then
          begin
            if TAdvGlowButton(Components[i]).Tag <> 99 then
              TAdvGlowButton(Components[i]).Picture := imgVerm.Picture;
          end;
        end;
    end
    else
    begin
      bparar := false;

      for i := 0 to 9 do
      begin
        for x := 0 to 12 do
        begin
          if grid.Cell[x, i].asstring = '' then
          begin
            grid.Cell[x, i].asstring := qrmesa_aberta.fieldbyname
              ('codigo').asstring;
            bparar := true;
            break;
          end;
        end;
        if bparar then
          break;
      end;
    end;

    qrmesa_aberta.next;
  end;

  timer_mesa_aberta.Enabled := true;

end;

function TfrmPrincipal.zerarcodigo(codigo: string; Qtde: Integer): string;
begin
  while Length(codigo) < Qtde do
    codigo := '0' + codigo;
  result := codigo;
end;

procedure TfrmPrincipal.L1Click(Sender: TObject);
begin
  btnLancar.Click;
end;

function TfrmPrincipal.LerIni(sArquivo, Secao, Linha, Def: string): string;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(sArquivo);
  Result := Ini.ReadString(Secao, Linha, Def);
  Ini.Free;
end;

procedure TfrmPrincipal.GravaIni(sArquivo, Secao, Linha, Valor: string);
var
  Ini: TIniFile;
  Arquivo: string;
begin
  Arquivo := sArquivo;
  Ini := TIniFile.Create(Arquivo);
  Ini.WriteString(Secao, Linha, Valor);
  Ini.Free;
end;


end.

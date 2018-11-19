unit ResultadoWebService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  AdvMetroButton, Vcl.StdCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel,
  Vcl.OleCtrls, SHDocVw,ACBrUtil;

type
  TfrmResultadoWebService = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    WBResposta: TWebBrowser;
    pnTexto: TPanel;
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
  end;

var
  frmResultadoWebService: TfrmResultadoWebService;

implementation

{$R *.dfm}

procedure TfrmResultadoWebService.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmResultadoWebService.LoadXML(RetWS: String;
  MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

end.
